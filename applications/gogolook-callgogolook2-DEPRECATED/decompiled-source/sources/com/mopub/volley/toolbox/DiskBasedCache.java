package com.mopub.volley.toolbox;

import android.os.SystemClock;
import android.text.TextUtils;
import androidx.annotation.VisibleForTesting;
import com.mopub.volley.Cache;
import com.mopub.volley.Header;
import com.mopub.volley.VolleyLog;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/DiskBasedCache.class */
public class DiskBasedCache implements Cache {

    /* renamed from: a */
    public final Map<String, C4050a> f9544a;

    /* renamed from: b */
    public long f9545b;

    /* renamed from: c */
    public final File f9546c;

    /* renamed from: d */
    public final int f9547d;

    @VisibleForTesting
    /* renamed from: com.mopub.volley.toolbox.DiskBasedCache$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/DiskBasedCache$a.class */
    public static class C4050a {

        /* renamed from: a */
        public long f9548a;

        /* renamed from: b */
        public final String f9549b;

        /* renamed from: c */
        public final String f9550c;

        /* renamed from: d */
        public final long f9551d;

        /* renamed from: e */
        public final long f9552e;

        /* renamed from: f */
        public final long f9553f;

        /* renamed from: g */
        public final long f9554g;

        /* renamed from: h */
        public final List<Header> f9555h;

        public C4050a(String str, Cache.Entry entry) {
            this(str, entry.etag, entry.serverDate, entry.lastModified, entry.ttl, entry.softTtl, m29913a(entry));
        }

        public C4050a(String str, String str2, long j, long j2, long j3, long j4, List<Header> list) {
            this.f9549b = str;
            this.f9550c = "".equals(str2) ? null : str2;
            this.f9551d = j;
            this.f9552e = j2;
            this.f9553f = j3;
            this.f9554g = j4;
            this.f9555h = list;
        }

        /* renamed from: a */
        public static C4050a m29912a(C4051b bVar) throws IOException {
            if (DiskBasedCache.m29916b((InputStream) bVar) == 538247942) {
                return new C4050a(DiskBasedCache.m29918b(bVar), DiskBasedCache.m29918b(bVar), DiskBasedCache.m29914c(bVar), DiskBasedCache.m29914c(bVar), DiskBasedCache.m29914c(bVar), DiskBasedCache.m29914c(bVar), DiskBasedCache.m29928a(bVar));
            }
            throw new IOException();
        }

        /* renamed from: a */
        public static List<Header> m29913a(Cache.Entry entry) {
            List<Header> list = entry.allResponseHeaders;
            return list != null ? list : HttpHeaderParser.m29905a(entry.responseHeaders);
        }

        /* renamed from: a */
        public Cache.Entry m29910a(byte[] bArr) {
            Cache.Entry entry = new Cache.Entry();
            entry.data = bArr;
            entry.etag = this.f9550c;
            entry.serverDate = this.f9551d;
            entry.lastModified = this.f9552e;
            entry.ttl = this.f9553f;
            entry.softTtl = this.f9554g;
            entry.responseHeaders = HttpHeaderParser.m29906a(this.f9555h);
            entry.allResponseHeaders = Collections.unmodifiableList(this.f9555h);
            return entry;
        }

        /* renamed from: a */
        public boolean m29911a(OutputStream outputStream) {
            try {
                DiskBasedCache.m29924a(outputStream, (int) com.aotter.net.volley.toolbox.DiskBasedCache.CACHE_MAGIC);
                DiskBasedCache.m29922a(outputStream, this.f9549b);
                DiskBasedCache.m29922a(outputStream, this.f9550c == null ? "" : this.f9550c);
                DiskBasedCache.m29923a(outputStream, this.f9551d);
                DiskBasedCache.m29923a(outputStream, this.f9552e);
                DiskBasedCache.m29923a(outputStream, this.f9553f);
                DiskBasedCache.m29923a(outputStream, this.f9554g);
                DiskBasedCache.m29919a(this.f9555h, outputStream);
                outputStream.flush();
                return true;
            } catch (IOException e) {
                VolleyLog.m29940d("%s", e.toString());
                return false;
            }
        }
    }

    @VisibleForTesting
    /* renamed from: com.mopub.volley.toolbox.DiskBasedCache$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/DiskBasedCache$b.class */
    public static class C4051b extends FilterInputStream {

        /* renamed from: a */
        public final long f9556a;

        /* renamed from: b */
        public long f9557b;

        public C4051b(InputStream inputStream, long j) {
            super(inputStream);
            this.f9556a = j;
        }

        /* renamed from: a */
        public long m29909a() {
            return this.f9556a - this.f9557b;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read() throws IOException {
            int read = super.read();
            if (read != -1) {
                this.f9557b++;
            }
            return read;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            int read = super.read(bArr, i, i2);
            if (read != -1) {
                this.f9557b += read;
            }
            return read;
        }
    }

    public DiskBasedCache(File file) {
        this(file, com.aotter.net.volley.toolbox.DiskBasedCache.DEFAULT_DISK_USAGE_BYTES);
    }

    public DiskBasedCache(File file, int i) {
        this.f9544a = new LinkedHashMap(16, 0.75f, true);
        this.f9545b = 0L;
        this.f9546c = file;
        this.f9547d = i;
    }

    /* renamed from: a */
    public static int m29925a(InputStream inputStream) throws IOException {
        int read = inputStream.read();
        if (read != -1) {
            return read;
        }
        throw new EOFException();
    }

    /* renamed from: a */
    public static List<Header> m29928a(C4051b bVar) throws IOException {
        int b = m29916b((InputStream) bVar);
        if (b >= 0) {
            List<Header> emptyList = b == 0 ? Collections.emptyList() : new ArrayList<>();
            for (int i = 0; i < b; i++) {
                emptyList.add(new Header(m29918b(bVar).intern(), m29918b(bVar).intern()));
            }
            return emptyList;
        }
        throw new IOException("readHeaderList size=" + b);
    }

    /* renamed from: a */
    public static void m29924a(OutputStream outputStream, int i) throws IOException {
        outputStream.write((i >> 0) & 255);
        outputStream.write((i >> 8) & 255);
        outputStream.write((i >> 16) & 255);
        outputStream.write((i >> 24) & 255);
    }

    /* renamed from: a */
    public static void m29923a(OutputStream outputStream, long j) throws IOException {
        outputStream.write((byte) (j >>> 0));
        outputStream.write((byte) (j >>> 8));
        outputStream.write((byte) (j >>> 16));
        outputStream.write((byte) (j >>> 24));
        outputStream.write((byte) (j >>> 32));
        outputStream.write((byte) (j >>> 40));
        outputStream.write((byte) (j >>> 48));
        outputStream.write((byte) (j >>> 56));
    }

    /* renamed from: a */
    public static void m29922a(OutputStream outputStream, String str) throws IOException {
        byte[] bytes = str.getBytes("UTF-8");
        m29923a(outputStream, bytes.length);
        outputStream.write(bytes, 0, bytes.length);
    }

    /* renamed from: a */
    public static void m29919a(List<Header> list, OutputStream outputStream) throws IOException {
        if (list != null) {
            m29924a(outputStream, list.size());
            for (Header header : list) {
                m29922a(outputStream, header.getName());
                m29922a(outputStream, header.getValue());
            }
            return;
        }
        m29924a(outputStream, 0);
    }

    @VisibleForTesting
    /* renamed from: a */
    public static byte[] m29927a(C4051b bVar, long j) throws IOException {
        long a = bVar.m29909a();
        if (j >= 0 && j <= a) {
            int i = (int) j;
            if (i == j) {
                byte[] bArr = new byte[i];
                new DataInputStream(bVar).readFully(bArr);
                return bArr;
            }
        }
        throw new IOException("streamToBytes length=" + j + ", maxLength=" + a);
    }

    /* renamed from: b */
    public static int m29916b(InputStream inputStream) throws IOException {
        return (m29925a(inputStream) << 24) | (m29925a(inputStream) << 0) | 0 | (m29925a(inputStream) << 8) | (m29925a(inputStream) << 16);
    }

    /* renamed from: b */
    public static String m29918b(C4051b bVar) throws IOException {
        return new String(m29927a(bVar, m29914c(bVar)), "UTF-8");
    }

    /* renamed from: c */
    public static long m29914c(InputStream inputStream) throws IOException {
        return ((m29925a(inputStream) & 255) << 0) | 0 | ((m29925a(inputStream) & 255) << 8) | ((m29925a(inputStream) & 255) << 16) | ((m29925a(inputStream) & 255) << 24) | ((m29925a(inputStream) & 255) << 32) | ((m29925a(inputStream) & 255) << 40) | ((m29925a(inputStream) & 255) << 48) | ((255 & m29925a(inputStream)) << 56);
    }

    @VisibleForTesting
    /* renamed from: a */
    public InputStream m29926a(File file) throws FileNotFoundException {
        return new FileInputStream(file);
    }

    /* renamed from: a */
    public final String m29921a(String str) {
        int length = str.length() / 2;
        int hashCode = str.substring(0, length).hashCode();
        return String.valueOf(hashCode) + String.valueOf(str.substring(length).hashCode());
    }

    /* renamed from: a */
    public final void m29929a() {
        int i;
        if (this.f9545b >= this.f9547d) {
            if (VolleyLog.DEBUG) {
                VolleyLog.m29937v("Pruning old cache entries.", new Object[0]);
            }
            long j = this.f9545b;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            Iterator<Map.Entry<String, C4050a>> it = this.f9544a.entrySet().iterator();
            int i2 = 0;
            do {
                i = i2;
                if (!it.hasNext()) {
                    break;
                }
                C4050a value = it.next().getValue();
                if (getFileForKey(value.f9549b).delete()) {
                    this.f9545b -= value.f9548a;
                } else {
                    String str = value.f9549b;
                    VolleyLog.m29940d("Could not delete cache entry for key=%s, filename=%s", str, m29921a(str));
                }
                it.remove();
                i = i2 + 1;
                i2 = i;
            } while (((float) this.f9545b) >= this.f9547d * 0.9f);
            if (VolleyLog.DEBUG) {
                VolleyLog.m29937v("pruned %d files, %d bytes, %d ms", Integer.valueOf(i), Long.valueOf(this.f9545b - j), Long.valueOf(SystemClock.elapsedRealtime() - elapsedRealtime));
            }
        }
    }

    /* renamed from: a */
    public final void m29920a(String str, C4050a aVar) {
        if (!this.f9544a.containsKey(str)) {
            this.f9545b += aVar.f9548a;
        } else {
            this.f9545b += aVar.f9548a - this.f9544a.get(str).f9548a;
        }
        this.f9544a.put(str, aVar);
    }

    @VisibleForTesting
    /* renamed from: b */
    public OutputStream m29917b(File file) throws FileNotFoundException {
        return new FileOutputStream(file);
    }

    /* renamed from: b */
    public final void m29915b(String str) {
        C4050a remove = this.f9544a.remove(str);
        if (remove != null) {
            this.f9545b -= remove.f9548a;
        }
    }

    @Override // com.mopub.volley.Cache
    public void clear() {
        synchronized (this) {
            File[] listFiles = this.f9546c.listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    file.delete();
                }
            }
            this.f9544a.clear();
            this.f9545b = 0L;
            VolleyLog.m29940d("Cache cleared.", new Object[0]);
        }
    }

    @Override // com.mopub.volley.Cache
    public Cache.Entry get(String str) {
        synchronized (this) {
            C4050a aVar = this.f9544a.get(str);
            if (aVar == null) {
                return null;
            }
            File fileForKey = getFileForKey(str);
            try {
                C4051b bVar = new C4051b(new BufferedInputStream(m29926a(fileForKey)), fileForKey.length());
                try {
                    C4050a a = C4050a.m29912a(bVar);
                    if (!TextUtils.equals(str, a.f9549b)) {
                        VolleyLog.m29940d("%s: key=%s, found=%s", fileForKey.getAbsolutePath(), str, a.f9549b);
                        m29915b(str);
                        return null;
                    }
                    return aVar.m29910a(m29927a(bVar, bVar.m29909a()));
                } finally {
                    bVar.close();
                }
            } catch (IOException e) {
                VolleyLog.m29940d("%s: %s", fileForKey.getAbsolutePath(), e.toString());
                remove(str);
                return null;
            }
        }
    }

    public File getFileForKey(String str) {
        return new File(this.f9546c, m29921a(str));
    }

    @Override // com.mopub.volley.Cache
    public void initialize() {
        synchronized (this) {
            if (!this.f9546c.exists()) {
                if (!this.f9546c.mkdirs()) {
                    VolleyLog.m29939e("Unable to create cache dir %s", this.f9546c.getAbsolutePath());
                }
                return;
            }
            File[] listFiles = this.f9546c.listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    try {
                        long length = file.length();
                        C4051b bVar = new C4051b(new BufferedInputStream(m29926a(file)), length);
                        try {
                            C4050a a = C4050a.m29912a(bVar);
                            a.f9548a = length;
                            m29920a(a.f9549b, a);
                            bVar.close();
                        } catch (Throwable th) {
                            bVar.close();
                            throw th;
                            break;
                        }
                    } catch (IOException e) {
                        file.delete();
                    }
                }
            }
        }
    }

    @Override // com.mopub.volley.Cache
    public void invalidate(String str, boolean z) {
        synchronized (this) {
            Cache.Entry entry = get(str);
            if (entry != null) {
                entry.softTtl = 0L;
                if (z) {
                    entry.ttl = 0L;
                }
                put(str, entry);
            }
        }
    }

    @Override // com.mopub.volley.Cache
    public void put(String str, Cache.Entry entry) {
        synchronized (this) {
            if (this.f9545b + entry.data.length <= this.f9547d || entry.data.length <= this.f9547d * 0.9f) {
                File fileForKey = getFileForKey(str);
                try {
                    BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(m29917b(fileForKey));
                    C4050a aVar = new C4050a(str, entry);
                    if (aVar.m29911a(bufferedOutputStream)) {
                        bufferedOutputStream.write(entry.data);
                        bufferedOutputStream.close();
                        aVar.f9548a = fileForKey.length();
                        m29920a(str, aVar);
                        m29929a();
                        return;
                    }
                    bufferedOutputStream.close();
                    VolleyLog.m29940d("Failed to write header for %s", fileForKey.getAbsolutePath());
                    throw new IOException();
                } catch (IOException e) {
                    if (!fileForKey.delete()) {
                        VolleyLog.m29940d("Could not clean up file %s", fileForKey.getAbsolutePath());
                    }
                }
            }
        }
    }

    @Override // com.mopub.volley.Cache
    public void remove(String str) {
        synchronized (this) {
            boolean delete = getFileForKey(str).delete();
            m29915b(str);
            if (!delete) {
                VolleyLog.m29940d("Could not delete cache entry for key=%s, filename=%s", str, m29921a(str));
            }
        }
    }
}
