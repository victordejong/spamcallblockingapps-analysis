package com.mopub.volley.toolbox;

import android.os.SystemClock;
import android.text.TextUtils;
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
/* loaded from: classes4-dex2jar.jar:com/mopub/volley/toolbox/DiskBasedCache.class */
public class DiskBasedCache implements Cache {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, a> f34825a;

    /* renamed from: b  reason: collision with root package name */
    private long f34826b;

    /* renamed from: c  reason: collision with root package name */
    private final File f34827c;

    /* renamed from: d  reason: collision with root package name */
    private final int f34828d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/mopub/volley/toolbox/DiskBasedCache$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        long f34829a;

        /* renamed from: b  reason: collision with root package name */
        final String f34830b;

        /* renamed from: c  reason: collision with root package name */
        final String f34831c;

        /* renamed from: d  reason: collision with root package name */
        final long f34832d;
        final long e;
        final long f;
        final long g;
        final List<Header> h;

        a(String str, Cache.Entry entry) {
            this(str, entry.etag, entry.serverDate, entry.lastModified, entry.ttl, entry.softTtl, entry.allResponseHeaders != null ? entry.allResponseHeaders : HttpHeaderParser.a(entry.responseHeaders));
        }

        private a(String str, String str2, long j, long j2, long j3, long j4, List<Header> list) {
            this.f34830b = str;
            this.f34831c = "".equals(str2) ? null : str2;
            this.f34832d = j;
            this.e = j2;
            this.f = j3;
            this.g = j4;
            this.h = list;
        }

        static a a(b bVar) throws IOException {
            if (DiskBasedCache.a((InputStream) bVar) == 538247942) {
                return new a(DiskBasedCache.a(bVar), DiskBasedCache.a(bVar), DiskBasedCache.b((InputStream) bVar), DiskBasedCache.b((InputStream) bVar), DiskBasedCache.b((InputStream) bVar), DiskBasedCache.b((InputStream) bVar), DiskBasedCache.b(bVar));
            }
            throw new IOException();
        }

        final boolean a(OutputStream outputStream) {
            try {
                DiskBasedCache.a(outputStream, 538247942);
                DiskBasedCache.a(outputStream, this.f34830b);
                String str = this.f34831c;
                String str2 = str;
                if (str == null) {
                    str2 = "";
                }
                DiskBasedCache.a(outputStream, str2);
                DiskBasedCache.a(outputStream, this.f34832d);
                DiskBasedCache.a(outputStream, this.e);
                DiskBasedCache.a(outputStream, this.f);
                DiskBasedCache.a(outputStream, this.g);
                DiskBasedCache.a(this.h, outputStream);
                outputStream.flush();
                return true;
            } catch (IOException e) {
                VolleyLog.d("%s", e.toString());
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/mopub/volley/toolbox/DiskBasedCache$b.class */
    public static final class b extends FilterInputStream {

        /* renamed from: a  reason: collision with root package name */
        private final long f34833a;

        /* renamed from: b  reason: collision with root package name */
        private long f34834b;

        b(InputStream inputStream, long j) {
            super(inputStream);
            this.f34833a = j;
        }

        final long a() {
            return this.f34833a - this.f34834b;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public final int read() throws IOException {
            int read = super.read();
            if (read != -1) {
                this.f34834b++;
            }
            return read;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public final int read(byte[] bArr, int i, int i2) throws IOException {
            int read = super.read(bArr, i, i2);
            if (read != -1) {
                this.f34834b += read;
            }
            return read;
        }
    }

    public DiskBasedCache(File file) {
        this(file, 5242880);
    }

    public DiskBasedCache(File file, int i) {
        this.f34825a = new LinkedHashMap(16, 0.75f, true);
        this.f34826b = 0L;
        this.f34827c = file;
        this.f34828d = i;
    }

    static int a(InputStream inputStream) throws IOException {
        return (c(inputStream) << 24) | (c(inputStream) << 0) | 0 | (c(inputStream) << 8) | (c(inputStream) << 16);
    }

    private static InputStream a(File file) throws FileNotFoundException {
        return new FileInputStream(file);
    }

    static String a(b bVar) throws IOException {
        return new String(a(bVar, b((InputStream) bVar)), "UTF-8");
    }

    private static String a(String str) {
        int length = str.length() / 2;
        int hashCode = str.substring(0, length).hashCode();
        return String.valueOf(hashCode) + String.valueOf(str.substring(length).hashCode());
    }

    private void a() {
        int i;
        if (this.f34826b >= this.f34828d) {
            if (VolleyLog.DEBUG) {
                VolleyLog.v("Pruning old cache entries.", new Object[0]);
            }
            long j = this.f34826b;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            Iterator<Map.Entry<String, a>> it2 = this.f34825a.entrySet().iterator();
            int i2 = 0;
            do {
                i = i2;
                if (!it2.hasNext()) {
                    break;
                }
                a value = it2.next().getValue();
                if (getFileForKey(value.f34830b).delete()) {
                    this.f34826b -= value.f34829a;
                } else {
                    VolleyLog.d("Could not delete cache entry for key=%s, filename=%s", value.f34830b, a(value.f34830b));
                }
                it2.remove();
                i = i2 + 1;
                i2 = i;
            } while (((float) this.f34826b) >= this.f34828d * 0.9f);
            if (VolleyLog.DEBUG) {
                VolleyLog.v("pruned %d files, %d bytes, %d ms", Integer.valueOf(i), Long.valueOf(this.f34826b - j), Long.valueOf(SystemClock.elapsedRealtime() - elapsedRealtime));
            }
        }
    }

    static void a(OutputStream outputStream, int i) throws IOException {
        outputStream.write((i >> 0) & 255);
        outputStream.write((i >> 8) & 255);
        outputStream.write((i >> 16) & 255);
        outputStream.write((i >> 24) & 255);
    }

    static void a(OutputStream outputStream, long j) throws IOException {
        outputStream.write((byte) (j >>> 0));
        outputStream.write((byte) (j >>> 8));
        outputStream.write((byte) (j >>> 16));
        outputStream.write((byte) (j >>> 24));
        outputStream.write((byte) (j >>> 32));
        outputStream.write((byte) (j >>> 40));
        outputStream.write((byte) (j >>> 48));
        outputStream.write((byte) (j >>> 56));
    }

    static void a(OutputStream outputStream, String str) throws IOException {
        byte[] bytes = str.getBytes("UTF-8");
        a(outputStream, bytes.length);
        outputStream.write(bytes, 0, bytes.length);
    }

    private void a(String str, a aVar) {
        if (!this.f34825a.containsKey(str)) {
            this.f34826b += aVar.f34829a;
        } else {
            this.f34826b += aVar.f34829a - this.f34825a.get(str).f34829a;
        }
        this.f34825a.put(str, aVar);
    }

    static void a(List<Header> list, OutputStream outputStream) throws IOException {
        if (list != null) {
            a(outputStream, list.size());
            for (Header header : list) {
                a(outputStream, header.getName());
                a(outputStream, header.getValue());
            }
            return;
        }
        a(outputStream, 0);
    }

    private static byte[] a(b bVar, long j) throws IOException {
        long a2 = bVar.a();
        if (j >= 0 && j <= a2) {
            int i = (int) j;
            if (i == j) {
                byte[] bArr = new byte[i];
                new DataInputStream(bVar).readFully(bArr);
                return bArr;
            }
        }
        throw new IOException("streamToBytes length=" + j + ", maxLength=" + a2);
    }

    static long b(InputStream inputStream) throws IOException {
        return ((c(inputStream) & 255) << 0) | 0 | ((c(inputStream) & 255) << 8) | ((c(inputStream) & 255) << 16) | ((c(inputStream) & 255) << 24) | ((c(inputStream) & 255) << 32) | ((c(inputStream) & 255) << 40) | ((c(inputStream) & 255) << 48) | ((255 & c(inputStream)) << 56);
    }

    static List<Header> b(b bVar) throws IOException {
        int a2 = a((InputStream) bVar);
        if (a2 >= 0) {
            List<Header> emptyList = a2 == 0 ? Collections.emptyList() : new ArrayList<>();
            for (int i = 0; i < a2; i++) {
                emptyList.add(new Header(a(bVar).intern(), a(bVar).intern()));
            }
            return emptyList;
        }
        throw new IOException("readHeaderList size=".concat(String.valueOf(a2)));
    }

    private void b(String str) {
        a remove = this.f34825a.remove(str);
        if (remove != null) {
            this.f34826b -= remove.f34829a;
        }
    }

    private static int c(InputStream inputStream) throws IOException {
        int read = inputStream.read();
        if (read != -1) {
            return read;
        }
        throw new EOFException();
    }

    @Override // com.mopub.volley.Cache
    public void clear() {
        synchronized (this) {
            File[] listFiles = this.f34827c.listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    file.delete();
                }
            }
            this.f34825a.clear();
            this.f34826b = 0L;
            VolleyLog.d("Cache cleared.", new Object[0]);
        }
    }

    @Override // com.mopub.volley.Cache
    public Cache.Entry get(String str) {
        synchronized (this) {
            a aVar = this.f34825a.get(str);
            if (aVar == null) {
                return null;
            }
            File fileForKey = getFileForKey(str);
            try {
                b bVar = new b(new BufferedInputStream(a(fileForKey)), fileForKey.length());
                try {
                    a a2 = a.a(bVar);
                    if (!TextUtils.equals(str, a2.f34830b)) {
                        VolleyLog.d("%s: key=%s, found=%s", fileForKey.getAbsolutePath(), str, a2.f34830b);
                        b(str);
                        return null;
                    }
                    byte[] a3 = a(bVar, bVar.a());
                    Cache.Entry entry = new Cache.Entry();
                    entry.data = a3;
                    entry.etag = aVar.f34831c;
                    entry.serverDate = aVar.f34832d;
                    entry.lastModified = aVar.e;
                    entry.ttl = aVar.f;
                    entry.softTtl = aVar.g;
                    entry.responseHeaders = HttpHeaderParser.a(aVar.h);
                    entry.allResponseHeaders = Collections.unmodifiableList(aVar.h);
                    return entry;
                } finally {
                    bVar.close();
                }
            } catch (IOException e) {
                VolleyLog.d("%s: %s", fileForKey.getAbsolutePath(), e.toString());
                remove(str);
                return null;
            }
        }
    }

    public File getFileForKey(String str) {
        return new File(this.f34827c, a(str));
    }

    @Override // com.mopub.volley.Cache
    public void initialize() {
        synchronized (this) {
            if (!this.f34827c.exists()) {
                if (!this.f34827c.mkdirs()) {
                    VolleyLog.e("Unable to create cache dir %s", this.f34827c.getAbsolutePath());
                }
                return;
            }
            File[] listFiles = this.f34827c.listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    try {
                        long length = file.length();
                        b bVar = new b(new BufferedInputStream(a(file)), length);
                        try {
                            a a2 = a.a(bVar);
                            a2.f34829a = length;
                            a(a2.f34830b, a2);
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
            if (this.f34826b + entry.data.length <= this.f34828d || entry.data.length <= this.f34828d * 0.9f) {
                File fileForKey = getFileForKey(str);
                try {
                    BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(fileForKey));
                    a aVar = new a(str, entry);
                    if (aVar.a(bufferedOutputStream)) {
                        bufferedOutputStream.write(entry.data);
                        bufferedOutputStream.close();
                        aVar.f34829a = fileForKey.length();
                        a(str, aVar);
                        a();
                        return;
                    }
                    bufferedOutputStream.close();
                    VolleyLog.d("Failed to write header for %s", fileForKey.getAbsolutePath());
                    throw new IOException();
                } catch (IOException e) {
                    if (!fileForKey.delete()) {
                        VolleyLog.d("Could not clean up file %s", fileForKey.getAbsolutePath());
                    }
                }
            }
        }
    }

    @Override // com.mopub.volley.Cache
    public void remove(String str) {
        synchronized (this) {
            boolean delete = getFileForKey(str).delete();
            b(str);
            if (!delete) {
                VolleyLog.d("Could not delete cache entry for key=%s, filename=%s", str, a(str));
            }
        }
    }
}
