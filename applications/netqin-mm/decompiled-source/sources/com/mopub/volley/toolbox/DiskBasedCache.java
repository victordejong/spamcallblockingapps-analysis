package com.mopub.volley.toolbox;

import android.os.SystemClock;
import android.text.TextUtils;
import com.android.volley.Request;
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
    public final Map<String, C9003a> f35137a;

    /* renamed from: b */
    public long f35138b;

    /* renamed from: c */
    public final File f35139c;

    /* renamed from: d */
    public final int f35140d;

    /* renamed from: com.mopub.volley.toolbox.DiskBasedCache$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/DiskBasedCache$a.class */
    public static class C9003a {

        /* renamed from: a */
        public long f35141a;

        /* renamed from: b */
        public final String f35142b;

        /* renamed from: c */
        public final String f35143c;

        /* renamed from: d */
        public final long f35144d;

        /* renamed from: e */
        public final long f35145e;

        /* renamed from: f */
        public final long f35146f;

        /* renamed from: g */
        public final long f35147g;

        /* renamed from: h */
        public final List<Header> f35148h;

        public C9003a(String str, Cache.Entry entry) {
            this(str, entry.etag, entry.serverDate, entry.lastModified, entry.ttl, entry.softTtl, m3711a(entry));
        }

        public C9003a(String str, String str2, long j, long j2, long j3, long j4, List<Header> list) {
            this.f35142b = str;
            this.f35143c = "".equals(str2) ? null : str2;
            this.f35144d = j;
            this.f35145e = j2;
            this.f35146f = j3;
            this.f35147g = j4;
            this.f35148h = list;
        }

        /* renamed from: a */
        public static C9003a m3710a(C9004b bVar) throws IOException {
            if (DiskBasedCache.m3714b((InputStream) bVar) == 538247942) {
                return new C9003a(DiskBasedCache.m3716b(bVar), DiskBasedCache.m3716b(bVar), DiskBasedCache.m3712c(bVar), DiskBasedCache.m3712c(bVar), DiskBasedCache.m3712c(bVar), DiskBasedCache.m3712c(bVar), DiskBasedCache.m3726a(bVar));
            }
            throw new IOException();
        }

        /* renamed from: a */
        public static List<Header> m3711a(Cache.Entry entry) {
            List<Header> list = entry.allResponseHeaders;
            return list != null ? list : HttpHeaderParser.m3703a(entry.responseHeaders);
        }

        /* renamed from: a */
        public Cache.Entry m3708a(byte[] bArr) {
            Cache.Entry entry = new Cache.Entry();
            entry.data = bArr;
            entry.etag = this.f35143c;
            entry.serverDate = this.f35144d;
            entry.lastModified = this.f35145e;
            entry.ttl = this.f35146f;
            entry.softTtl = this.f35147g;
            entry.responseHeaders = HttpHeaderParser.m3704a(this.f35148h);
            entry.allResponseHeaders = Collections.unmodifiableList(this.f35148h);
            return entry;
        }

        /* renamed from: a */
        public boolean m3709a(OutputStream outputStream) {
            try {
                DiskBasedCache.m3722a(outputStream, (int) com.android.volley.toolbox.DiskBasedCache.CACHE_MAGIC);
                DiskBasedCache.m3720a(outputStream, this.f35142b);
                DiskBasedCache.m3720a(outputStream, this.f35143c == null ? "" : this.f35143c);
                DiskBasedCache.m3721a(outputStream, this.f35144d);
                DiskBasedCache.m3721a(outputStream, this.f35145e);
                DiskBasedCache.m3721a(outputStream, this.f35146f);
                DiskBasedCache.m3721a(outputStream, this.f35147g);
                DiskBasedCache.m3717a(this.f35148h, outputStream);
                outputStream.flush();
                return true;
            } catch (IOException e) {
                VolleyLog.m3738d("%s", e.toString());
                return false;
            }
        }
    }

    /* renamed from: com.mopub.volley.toolbox.DiskBasedCache$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/toolbox/DiskBasedCache$b.class */
    public static class C9004b extends FilterInputStream {

        /* renamed from: a */
        public final long f35149a;

        /* renamed from: b */
        public long f35150b;

        public C9004b(InputStream inputStream, long j) {
            super(inputStream);
            this.f35149a = j;
        }

        /* renamed from: a */
        public long m3707a() {
            return this.f35149a - this.f35150b;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read() throws IOException {
            int read = super.read();
            if (read != -1) {
                this.f35150b++;
            }
            return read;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            int read = super.read(bArr, i, i2);
            if (read != -1) {
                this.f35150b += read;
            }
            return read;
        }
    }

    public DiskBasedCache(File file) {
        this(file, 5242880);
    }

    public DiskBasedCache(File file, int i) {
        this.f35137a = new LinkedHashMap(16, 0.75f, true);
        this.f35138b = 0L;
        this.f35139c = file;
        this.f35140d = i;
    }

    /* renamed from: a */
    public static int m3723a(InputStream inputStream) throws IOException {
        int read = inputStream.read();
        if (read != -1) {
            return read;
        }
        throw new EOFException();
    }

    /* renamed from: a */
    public static List<Header> m3726a(C9004b bVar) throws IOException {
        int b = m3714b((InputStream) bVar);
        if (b >= 0) {
            List<Header> emptyList = b == 0 ? Collections.emptyList() : new ArrayList<>();
            for (int i = 0; i < b; i++) {
                emptyList.add(new Header(m3716b(bVar).intern(), m3716b(bVar).intern()));
            }
            return emptyList;
        }
        throw new IOException("readHeaderList size=" + b);
    }

    /* renamed from: a */
    public static void m3722a(OutputStream outputStream, int i) throws IOException {
        outputStream.write((i >> 0) & 255);
        outputStream.write((i >> 8) & 255);
        outputStream.write((i >> 16) & 255);
        outputStream.write((i >> 24) & 255);
    }

    /* renamed from: a */
    public static void m3721a(OutputStream outputStream, long j) throws IOException {
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
    public static void m3720a(OutputStream outputStream, String str) throws IOException {
        byte[] bytes = str.getBytes(Request.DEFAULT_PARAMS_ENCODING);
        m3721a(outputStream, bytes.length);
        outputStream.write(bytes, 0, bytes.length);
    }

    /* renamed from: a */
    public static void m3717a(List<Header> list, OutputStream outputStream) throws IOException {
        if (list != null) {
            m3722a(outputStream, list.size());
            for (Header header : list) {
                m3720a(outputStream, header.getName());
                m3720a(outputStream, header.getValue());
            }
            return;
        }
        m3722a(outputStream, 0);
    }

    /* renamed from: a */
    public static byte[] m3725a(C9004b bVar, long j) throws IOException {
        long a = bVar.m3707a();
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
    public static int m3714b(InputStream inputStream) throws IOException {
        return (m3723a(inputStream) << 24) | (m3723a(inputStream) << 0) | 0 | (m3723a(inputStream) << 8) | (m3723a(inputStream) << 16);
    }

    /* renamed from: b */
    public static String m3716b(C9004b bVar) throws IOException {
        return new String(m3725a(bVar, m3712c(bVar)), Request.DEFAULT_PARAMS_ENCODING);
    }

    /* renamed from: c */
    public static long m3712c(InputStream inputStream) throws IOException {
        return ((m3723a(inputStream) & 255) << 0) | 0 | ((m3723a(inputStream) & 255) << 8) | ((m3723a(inputStream) & 255) << 16) | ((m3723a(inputStream) & 255) << 24) | ((m3723a(inputStream) & 255) << 32) | ((m3723a(inputStream) & 255) << 40) | ((m3723a(inputStream) & 255) << 48) | ((255 & m3723a(inputStream)) << 56);
    }

    /* renamed from: a */
    public InputStream m3724a(File file) throws FileNotFoundException {
        return new FileInputStream(file);
    }

    /* renamed from: a */
    public final String m3719a(String str) {
        int length = str.length() / 2;
        int hashCode = str.substring(0, length).hashCode();
        return String.valueOf(hashCode) + String.valueOf(str.substring(length).hashCode());
    }

    /* renamed from: a */
    public final void m3727a() {
        int i;
        if (this.f35138b >= this.f35140d) {
            if (VolleyLog.DEBUG) {
                VolleyLog.m3735v("Pruning old cache entries.", new Object[0]);
            }
            long j = this.f35138b;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            Iterator<Map.Entry<String, C9003a>> it = this.f35137a.entrySet().iterator();
            int i2 = 0;
            do {
                i = i2;
                if (!it.hasNext()) {
                    break;
                }
                C9003a value = it.next().getValue();
                if (getFileForKey(value.f35142b).delete()) {
                    this.f35138b -= value.f35141a;
                } else {
                    String str = value.f35142b;
                    VolleyLog.m3738d("Could not delete cache entry for key=%s, filename=%s", str, m3719a(str));
                }
                it.remove();
                i = i2 + 1;
                i2 = i;
            } while (((float) this.f35138b) >= this.f35140d * 0.9f);
            if (VolleyLog.DEBUG) {
                VolleyLog.m3735v("pruned %d files, %d bytes, %d ms", Integer.valueOf(i), Long.valueOf(this.f35138b - j), Long.valueOf(SystemClock.elapsedRealtime() - elapsedRealtime));
            }
        }
    }

    /* renamed from: a */
    public final void m3718a(String str, C9003a aVar) {
        if (!this.f35137a.containsKey(str)) {
            this.f35138b += aVar.f35141a;
        } else {
            this.f35138b += aVar.f35141a - this.f35137a.get(str).f35141a;
        }
        this.f35137a.put(str, aVar);
    }

    /* renamed from: b */
    public OutputStream m3715b(File file) throws FileNotFoundException {
        return new FileOutputStream(file);
    }

    /* renamed from: b */
    public final void m3713b(String str) {
        C9003a remove = this.f35137a.remove(str);
        if (remove != null) {
            this.f35138b -= remove.f35141a;
        }
    }

    @Override // com.mopub.volley.Cache
    public void clear() {
        synchronized (this) {
            File[] listFiles = this.f35139c.listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    file.delete();
                }
            }
            this.f35137a.clear();
            this.f35138b = 0L;
            VolleyLog.m3738d("Cache cleared.", new Object[0]);
        }
    }

    @Override // com.mopub.volley.Cache
    public Cache.Entry get(String str) {
        synchronized (this) {
            C9003a aVar = this.f35137a.get(str);
            if (aVar == null) {
                return null;
            }
            File fileForKey = getFileForKey(str);
            try {
                C9004b bVar = new C9004b(new BufferedInputStream(m3724a(fileForKey)), fileForKey.length());
                try {
                    C9003a a = C9003a.m3710a(bVar);
                    if (!TextUtils.equals(str, a.f35142b)) {
                        VolleyLog.m3738d("%s: key=%s, found=%s", fileForKey.getAbsolutePath(), str, a.f35142b);
                        m3713b(str);
                        return null;
                    }
                    return aVar.m3708a(m3725a(bVar, bVar.m3707a()));
                } finally {
                    bVar.close();
                }
            } catch (IOException e) {
                VolleyLog.m3738d("%s: %s", fileForKey.getAbsolutePath(), e.toString());
                remove(str);
                return null;
            }
        }
    }

    public File getFileForKey(String str) {
        return new File(this.f35139c, m3719a(str));
    }

    @Override // com.mopub.volley.Cache
    public void initialize() {
        synchronized (this) {
            if (!this.f35139c.exists()) {
                if (!this.f35139c.mkdirs()) {
                    VolleyLog.m3737e("Unable to create cache dir %s", this.f35139c.getAbsolutePath());
                }
                return;
            }
            File[] listFiles = this.f35139c.listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    try {
                        long length = file.length();
                        C9004b bVar = new C9004b(new BufferedInputStream(m3724a(file)), length);
                        try {
                            C9003a a = C9003a.m3710a(bVar);
                            a.f35141a = length;
                            m3718a(a.f35142b, a);
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
            if (this.f35138b + entry.data.length <= this.f35140d || entry.data.length <= this.f35140d * 0.9f) {
                File fileForKey = getFileForKey(str);
                try {
                    BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(m3715b(fileForKey));
                    C9003a aVar = new C9003a(str, entry);
                    if (aVar.m3709a(bufferedOutputStream)) {
                        bufferedOutputStream.write(entry.data);
                        bufferedOutputStream.close();
                        aVar.f35141a = fileForKey.length();
                        m3718a(str, aVar);
                        m3727a();
                        return;
                    }
                    bufferedOutputStream.close();
                    VolleyLog.m3738d("Failed to write header for %s", fileForKey.getAbsolutePath());
                    throw new IOException();
                } catch (IOException e) {
                    if (!fileForKey.delete()) {
                        VolleyLog.m3738d("Could not clean up file %s", fileForKey.getAbsolutePath());
                    }
                }
            }
        }
    }

    public void remove(String str) {
        synchronized (this) {
            boolean delete = getFileForKey(str).delete();
            m3713b(str);
            if (!delete) {
                VolleyLog.m3738d("Could not delete cache entry for key=%s, filename=%s", str, m3719a(str));
            }
        }
    }
}
