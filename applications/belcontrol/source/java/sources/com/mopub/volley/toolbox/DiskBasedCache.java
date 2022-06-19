package com.mopub.volley.toolbox;

import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.exoplayer2.C0515C;
import com.mopub.volley.Cache;
import com.mopub.volley.Header;
import com.mopub.volley.VolleyLog;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
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
/* loaded from: classes3-dex2jar.jar:com/mopub/volley/toolbox/DiskBasedCache.class */
public class DiskBasedCache implements Cache {

    /* renamed from: a */
    public final Map<String, C1236a> f5518a;

    /* renamed from: b */
    public long f5519b;

    /* renamed from: c */
    public final File f5520c;

    /* renamed from: d */
    public final int f5521d;

    /* renamed from: com.mopub.volley.toolbox.DiskBasedCache$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/volley/toolbox/DiskBasedCache$a.class */
    public static class C1236a {

        /* renamed from: a */
        public long f5522a;

        /* renamed from: b */
        public final String f5523b;

        /* renamed from: c */
        public final String f5524c;

        /* renamed from: d */
        public final long f5525d;

        /* renamed from: e */
        public final long f5526e;

        /* renamed from: f */
        public final long f5527f;

        /* renamed from: g */
        public final long f5528g;

        /* renamed from: h */
        public final List<Header> f5529h;

        public C1236a(String str, Cache.Entry entry) {
            this(str, entry.etag, entry.serverDate, entry.lastModified, entry.ttl, entry.softTtl, m3129a(entry));
        }

        public C1236a(String str, String str2, long j, long j2, long j3, long j4, List<Header> list) {
            this.f5523b = str;
            this.f5524c = "".equals(str2) ? null : str2;
            this.f5525d = j;
            this.f5526e = j2;
            this.f5527f = j3;
            this.f5528g = j4;
            this.f5529h = list;
        }

        /* renamed from: a */
        public static List<Header> m3129a(Cache.Entry entry) {
            List<Header> list = entry.allResponseHeaders;
            return list != null ? list : HttpHeaderParser.m3122c(entry.responseHeaders);
        }

        /* renamed from: b */
        public static C1236a m3128b(C1237b c1237b) {
            if (DiskBasedCache.m3138h(c1237b) == 538247942) {
                return new C1236a(DiskBasedCache.m3136j(c1237b), DiskBasedCache.m3136j(c1237b), DiskBasedCache.m3137i(c1237b), DiskBasedCache.m3137i(c1237b), DiskBasedCache.m3137i(c1237b), DiskBasedCache.m3137i(c1237b), DiskBasedCache.m3139g(c1237b));
            }
            throw new IOException();
        }

        /* renamed from: c */
        public Cache.Entry m3127c(byte[] bArr) {
            Cache.Entry entry = new Cache.Entry();
            entry.data = bArr;
            entry.etag = this.f5524c;
            entry.serverDate = this.f5525d;
            entry.lastModified = this.f5526e;
            entry.ttl = this.f5527f;
            entry.softTtl = this.f5528g;
            entry.responseHeaders = HttpHeaderParser.m3121d(this.f5529h);
            entry.allResponseHeaders = Collections.unmodifiableList(this.f5529h);
            return entry;
        }

        /* renamed from: d */
        public boolean m3126d(OutputStream outputStream) {
            try {
                DiskBasedCache.m3132n(outputStream, 538247942);
                DiskBasedCache.m3130p(outputStream, this.f5523b);
                String str = this.f5524c;
                String str2 = str;
                if (str == null) {
                    str2 = "";
                }
                DiskBasedCache.m3130p(outputStream, str2);
                DiskBasedCache.m3131o(outputStream, this.f5525d);
                DiskBasedCache.m3131o(outputStream, this.f5526e);
                DiskBasedCache.m3131o(outputStream, this.f5527f);
                DiskBasedCache.m3131o(outputStream, this.f5528g);
                DiskBasedCache.m3133m(this.f5529h, outputStream);
                outputStream.flush();
                return true;
            } catch (IOException e) {
                VolleyLog.m3156d("%s", e.toString());
                return false;
            }
        }
    }

    /* renamed from: com.mopub.volley.toolbox.DiskBasedCache$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/volley/toolbox/DiskBasedCache$b.class */
    public static class C1237b extends FilterInputStream {

        /* renamed from: a */
        public final long f5530a;

        /* renamed from: b */
        public long f5531b;

        public C1237b(InputStream inputStream, long j) {
            super(inputStream);
            this.f5530a = j;
        }

        /* renamed from: a */
        public long m3125a() {
            return this.f5530a - this.f5531b;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read() {
            int read = super.read();
            if (read != -1) {
                this.f5531b++;
            }
            return read;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i, int i2) {
            int read = super.read(bArr, i, i2);
            if (read != -1) {
                this.f5531b += read;
            }
            return read;
        }
    }

    public DiskBasedCache(File file) {
        this(file, 5242880);
    }

    public DiskBasedCache(File file, int i) {
        this.f5518a = new LinkedHashMap(16, 0.75f, true);
        this.f5519b = 0L;
        this.f5520c = file;
        this.f5521d = i;
    }

    /* renamed from: f */
    public static int m3140f(InputStream inputStream) {
        int read = inputStream.read();
        if (read != -1) {
            return read;
        }
        throw new EOFException();
    }

    /* renamed from: g */
    public static List<Header> m3139g(C1237b c1237b) {
        int m3138h = m3138h(c1237b);
        if (m3138h < 0) {
            throw new IOException("readHeaderList size=" + m3138h);
        }
        ArrayList emptyList = m3138h == 0 ? Collections.emptyList() : new ArrayList();
        for (int i = 0; i < m3138h; i++) {
            emptyList.add(new Header(m3136j(c1237b).intern(), m3136j(c1237b).intern()));
        }
        return emptyList;
    }

    /* renamed from: h */
    public static int m3138h(InputStream inputStream) {
        return (m3140f(inputStream) << 24) | (m3140f(inputStream) << 0) | 0 | (m3140f(inputStream) << 8) | (m3140f(inputStream) << 16);
    }

    /* renamed from: i */
    public static long m3137i(InputStream inputStream) {
        return ((m3140f(inputStream) & 255) << 0) | 0 | ((m3140f(inputStream) & 255) << 8) | ((m3140f(inputStream) & 255) << 16) | ((m3140f(inputStream) & 255) << 24) | ((m3140f(inputStream) & 255) << 32) | ((m3140f(inputStream) & 255) << 40) | ((m3140f(inputStream) & 255) << 48) | ((255 & m3140f(inputStream)) << 56);
    }

    /* renamed from: j */
    public static String m3136j(C1237b c1237b) {
        return new String(m3134l(c1237b, m3137i(c1237b)), C0515C.UTF8_NAME);
    }

    /* renamed from: l */
    public static byte[] m3134l(C1237b c1237b, long j) {
        long m3125a = c1237b.m3125a();
        if (j >= 0 && j <= m3125a) {
            int i = (int) j;
            if (i == j) {
                byte[] bArr = new byte[i];
                new DataInputStream(c1237b).readFully(bArr);
                return bArr;
            }
        }
        throw new IOException("streamToBytes length=" + j + ", maxLength=" + m3125a);
    }

    /* renamed from: m */
    public static void m3133m(List<Header> list, OutputStream outputStream) {
        if (list == null) {
            m3132n(outputStream, 0);
            return;
        }
        m3132n(outputStream, list.size());
        for (Header header : list) {
            m3130p(outputStream, header.getName());
            m3130p(outputStream, header.getValue());
        }
    }

    /* renamed from: n */
    public static void m3132n(OutputStream outputStream, int i) {
        outputStream.write((i >> 0) & 255);
        outputStream.write((i >> 8) & 255);
        outputStream.write((i >> 16) & 255);
        outputStream.write((i >> 24) & 255);
    }

    /* renamed from: o */
    public static void m3131o(OutputStream outputStream, long j) {
        outputStream.write((byte) (j >>> 0));
        outputStream.write((byte) (j >>> 8));
        outputStream.write((byte) (j >>> 16));
        outputStream.write((byte) (j >>> 24));
        outputStream.write((byte) (j >>> 32));
        outputStream.write((byte) (j >>> 40));
        outputStream.write((byte) (j >>> 48));
        outputStream.write((byte) (j >>> 56));
    }

    /* renamed from: p */
    public static void m3130p(OutputStream outputStream, String str) {
        byte[] bytes = str.getBytes(C0515C.UTF8_NAME);
        m3131o(outputStream, bytes.length);
        outputStream.write(bytes, 0, bytes.length);
    }

    /* renamed from: a */
    public InputStream m3145a(File file) {
        return new FileInputStream(file);
    }

    /* renamed from: b */
    public OutputStream m3144b(File file) {
        return new FileOutputStream(file);
    }

    /* renamed from: c */
    public final String m3143c(String str) {
        int length = str.length() / 2;
        int hashCode = str.substring(0, length).hashCode();
        return String.valueOf(hashCode) + String.valueOf(str.substring(length).hashCode());
    }

    @Override // com.mopub.volley.Cache
    public void clear() {
        synchronized (this) {
            File[] listFiles = this.f5520c.listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    file.delete();
                }
            }
            this.f5518a.clear();
            this.f5519b = 0L;
            VolleyLog.m3156d("Cache cleared.", new Object[0]);
        }
    }

    /* renamed from: d */
    public final void m3142d() {
        int i;
        if (this.f5519b < this.f5521d) {
            return;
        }
        if (VolleyLog.DEBUG) {
            VolleyLog.m3153v("Pruning old cache entries.", new Object[0]);
        }
        long j = this.f5519b;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        Iterator<Map.Entry<String, C1236a>> it = this.f5518a.entrySet().iterator();
        int i2 = 0;
        do {
            i = i2;
            if (!it.hasNext()) {
                break;
            }
            C1236a value = it.next().getValue();
            if (getFileForKey(value.f5523b).delete()) {
                this.f5519b -= value.f5522a;
            } else {
                String str = value.f5523b;
                VolleyLog.m3156d("Could not delete cache entry for key=%s, filename=%s", str, m3143c(str));
            }
            it.remove();
            i = i2 + 1;
            i2 = i;
        } while (((float) this.f5519b) >= this.f5521d * 0.9f);
        if (!VolleyLog.DEBUG) {
            return;
        }
        VolleyLog.m3153v("pruned %d files, %d bytes, %d ms", Integer.valueOf(i), Long.valueOf(this.f5519b - j), Long.valueOf(SystemClock.elapsedRealtime() - elapsedRealtime));
    }

    /* renamed from: e */
    public final void m3141e(String str, C1236a c1236a) {
        if (!this.f5518a.containsKey(str)) {
            this.f5519b += c1236a.f5522a;
        } else {
            this.f5519b += c1236a.f5522a - this.f5518a.get(str).f5522a;
        }
        this.f5518a.put(str, c1236a);
    }

    @Override // com.mopub.volley.Cache
    public Cache.Entry get(String str) {
        synchronized (this) {
            C1236a c1236a = this.f5518a.get(str);
            if (c1236a == null) {
                return null;
            }
            File fileForKey = getFileForKey(str);
            try {
                C1237b c1237b = new C1237b(new BufferedInputStream(m3145a(fileForKey)), fileForKey.length());
                try {
                    C1236a m3128b = C1236a.m3128b(c1237b);
                    if (TextUtils.equals(str, m3128b.f5523b)) {
                        return c1236a.m3127c(m3134l(c1237b, c1237b.m3125a()));
                    }
                    VolleyLog.m3156d("%s: key=%s, found=%s", fileForKey.getAbsolutePath(), str, m3128b.f5523b);
                    m3135k(str);
                    return null;
                } finally {
                    c1237b.close();
                }
            } catch (IOException e) {
                VolleyLog.m3156d("%s: %s", fileForKey.getAbsolutePath(), e.toString());
                remove(str);
                return null;
            }
        }
    }

    public File getFileForKey(String str) {
        return new File(this.f5520c, m3143c(str));
    }

    @Override // com.mopub.volley.Cache
    public void initialize() {
        synchronized (this) {
            if (!this.f5520c.exists()) {
                if (!this.f5520c.mkdirs()) {
                    VolleyLog.m3155e("Unable to create cache dir %s", this.f5520c.getAbsolutePath());
                }
                return;
            }
            File[] listFiles = this.f5520c.listFiles();
            if (listFiles == null) {
                return;
            }
            for (File file : listFiles) {
                try {
                    long length = file.length();
                    C1237b c1237b = new C1237b(new BufferedInputStream(m3145a(file)), length);
                    try {
                        C1236a m3128b = C1236a.m3128b(c1237b);
                        m3128b.f5522a = length;
                        m3141e(m3128b.f5523b, m3128b);
                        c1237b.close();
                    } catch (Throwable th) {
                        c1237b.close();
                        throw th;
                        break;
                    }
                } catch (IOException e) {
                    file.delete();
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

    /* renamed from: k */
    public final void m3135k(String str) {
        C1236a remove = this.f5518a.remove(str);
        if (remove != null) {
            this.f5519b -= remove.f5522a;
        }
    }

    @Override // com.mopub.volley.Cache
    public void put(String str, Cache.Entry entry) {
        byte[] bArr;
        synchronized (this) {
            long j = this.f5519b;
            long length = entry.data.length;
            int i = this.f5521d;
            if (j + length <= i || bArr.length <= i * 0.9f) {
                File fileForKey = getFileForKey(str);
                try {
                    BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(m3144b(fileForKey));
                    C1236a c1236a = new C1236a(str, entry);
                    if (!c1236a.m3126d(bufferedOutputStream)) {
                        bufferedOutputStream.close();
                        VolleyLog.m3156d("Failed to write header for %s", fileForKey.getAbsolutePath());
                        throw new IOException();
                    }
                    bufferedOutputStream.write(entry.data);
                    bufferedOutputStream.close();
                    c1236a.f5522a = fileForKey.length();
                    m3141e(str, c1236a);
                    m3142d();
                } catch (IOException e) {
                    if (!fileForKey.delete()) {
                        VolleyLog.m3156d("Could not clean up file %s", fileForKey.getAbsolutePath());
                    }
                }
            }
        }
    }

    @Override // com.mopub.volley.Cache
    public void remove(String str) {
        synchronized (this) {
            boolean delete = getFileForKey(str).delete();
            m3135k(str);
            if (!delete) {
                VolleyLog.m3156d("Could not delete cache entry for key=%s, filename=%s", str, m3143c(str));
            }
        }
    }
}
