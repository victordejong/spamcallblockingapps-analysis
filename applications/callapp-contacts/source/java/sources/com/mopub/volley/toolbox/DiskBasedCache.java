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

    /* renamed from: a */
    private final Map<String, C17016a> f60407a;

    /* renamed from: b */
    private long f60408b;

    /* renamed from: c */
    private final File f60409c;

    /* renamed from: d */
    private final int f60410d;

    /* renamed from: com.mopub.volley.toolbox.DiskBasedCache$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/volley/toolbox/DiskBasedCache$a.class */
    public static final class C17016a {

        /* renamed from: a */
        long f60411a;

        /* renamed from: b */
        final String f60412b;

        /* renamed from: c */
        final String f60413c;

        /* renamed from: d */
        final long f60414d;

        /* renamed from: e */
        final long f60415e;

        /* renamed from: f */
        final long f60416f;

        /* renamed from: g */
        final long f60417g;

        /* renamed from: h */
        final List<Header> f60418h;

        C17016a(String str, Cache.Entry entry) {
            this(str, entry.etag, entry.serverDate, entry.lastModified, entry.ttl, entry.softTtl, entry.allResponseHeaders != null ? entry.allResponseHeaders : HttpHeaderParser.m6000a(entry.responseHeaders));
        }

        private C17016a(String str, String str2, long j, long j2, long j3, long j4, List<Header> list) {
            this.f60412b = str;
            this.f60413c = "".equals(str2) ? null : str2;
            this.f60414d = j;
            this.f60415e = j2;
            this.f60416f = j3;
            this.f60417g = j4;
            this.f60418h = list;
        }

        /* renamed from: a */
        static C17016a m6006a(C17017b c17017b) throws IOException {
            if (DiskBasedCache.m6017a((InputStream) c17017b) == 538247942) {
                return new C17016a(DiskBasedCache.m6020a(c17017b), DiskBasedCache.m6020a(c17017b), DiskBasedCache.m6009b((InputStream) c17017b), DiskBasedCache.m6009b((InputStream) c17017b), DiskBasedCache.m6009b((InputStream) c17017b), DiskBasedCache.m6009b((InputStream) c17017b), DiskBasedCache.m6010b(c17017b));
            }
            throw new IOException();
        }

        /* renamed from: a */
        final boolean m6005a(OutputStream outputStream) {
            try {
                DiskBasedCache.m6016a(outputStream, 538247942);
                DiskBasedCache.m6014a(outputStream, this.f60412b);
                String str = this.f60413c;
                String str2 = str;
                if (str == null) {
                    str2 = "";
                }
                DiskBasedCache.m6014a(outputStream, str2);
                DiskBasedCache.m6015a(outputStream, this.f60414d);
                DiskBasedCache.m6015a(outputStream, this.f60415e);
                DiskBasedCache.m6015a(outputStream, this.f60416f);
                DiskBasedCache.m6015a(outputStream, this.f60417g);
                DiskBasedCache.m6011a(this.f60418h, outputStream);
                outputStream.flush();
                return true;
            } catch (IOException e) {
                VolleyLog.m6029d("%s", e.toString());
                return false;
            }
        }
    }

    /* renamed from: com.mopub.volley.toolbox.DiskBasedCache$b */
    /* loaded from: classes4-dex2jar.jar:com/mopub/volley/toolbox/DiskBasedCache$b.class */
    public static final class C17017b extends FilterInputStream {

        /* renamed from: a */
        private final long f60419a;

        /* renamed from: b */
        private long f60420b;

        C17017b(InputStream inputStream, long j) {
            super(inputStream);
            this.f60419a = j;
        }

        /* renamed from: a */
        final long m6004a() {
            return this.f60419a - this.f60420b;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public final int read() throws IOException {
            int read = super.read();
            if (read != -1) {
                this.f60420b++;
            }
            return read;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public final int read(byte[] bArr, int i, int i2) throws IOException {
            int read = super.read(bArr, i, i2);
            if (read != -1) {
                this.f60420b += read;
            }
            return read;
        }
    }

    public DiskBasedCache(File file) {
        this(file, 5242880);
    }

    public DiskBasedCache(File file, int i) {
        this.f60407a = new LinkedHashMap(16, 0.75f, true);
        this.f60408b = 0L;
        this.f60409c = file;
        this.f60410d = i;
    }

    /* renamed from: a */
    static int m6017a(InputStream inputStream) throws IOException {
        return (m6007c(inputStream) << 24) | (m6007c(inputStream) << 0) | 0 | (m6007c(inputStream) << 8) | (m6007c(inputStream) << 16);
    }

    /* renamed from: a */
    private static InputStream m6018a(File file) throws FileNotFoundException {
        return new FileInputStream(file);
    }

    /* renamed from: a */
    static String m6020a(C17017b c17017b) throws IOException {
        return new String(m6019a(c17017b, m6009b((InputStream) c17017b)), "UTF-8");
    }

    /* renamed from: a */
    private static String m6013a(String str) {
        int length = str.length() / 2;
        int hashCode = str.substring(0, length).hashCode();
        return String.valueOf(hashCode) + String.valueOf(str.substring(length).hashCode());
    }

    /* renamed from: a */
    private void m6021a() {
        int i;
        if (this.f60408b < this.f60410d) {
            return;
        }
        if (VolleyLog.DEBUG) {
            VolleyLog.m6026v("Pruning old cache entries.", new Object[0]);
        }
        long j = this.f60408b;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        Iterator<Map.Entry<String, C17016a>> it2 = this.f60407a.entrySet().iterator();
        int i2 = 0;
        do {
            i = i2;
            if (!it2.hasNext()) {
                break;
            }
            C17016a value = it2.next().getValue();
            if (getFileForKey(value.f60412b).delete()) {
                this.f60408b -= value.f60411a;
            } else {
                VolleyLog.m6029d("Could not delete cache entry for key=%s, filename=%s", value.f60412b, m6013a(value.f60412b));
            }
            it2.remove();
            i = i2 + 1;
            i2 = i;
        } while (((float) this.f60408b) >= this.f60410d * 0.9f);
        if (!VolleyLog.DEBUG) {
            return;
        }
        VolleyLog.m6026v("pruned %d files, %d bytes, %d ms", Integer.valueOf(i), Long.valueOf(this.f60408b - j), Long.valueOf(SystemClock.elapsedRealtime() - elapsedRealtime));
    }

    /* renamed from: a */
    static void m6016a(OutputStream outputStream, int i) throws IOException {
        outputStream.write((i >> 0) & 255);
        outputStream.write((i >> 8) & 255);
        outputStream.write((i >> 16) & 255);
        outputStream.write((i >> 24) & 255);
    }

    /* renamed from: a */
    static void m6015a(OutputStream outputStream, long j) throws IOException {
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
    static void m6014a(OutputStream outputStream, String str) throws IOException {
        byte[] bytes = str.getBytes("UTF-8");
        m6015a(outputStream, bytes.length);
        outputStream.write(bytes, 0, bytes.length);
    }

    /* renamed from: a */
    private void m6012a(String str, C17016a c17016a) {
        if (!this.f60407a.containsKey(str)) {
            this.f60408b += c17016a.f60411a;
        } else {
            this.f60408b += c17016a.f60411a - this.f60407a.get(str).f60411a;
        }
        this.f60407a.put(str, c17016a);
    }

    /* renamed from: a */
    static void m6011a(List<Header> list, OutputStream outputStream) throws IOException {
        if (list == null) {
            m6016a(outputStream, 0);
            return;
        }
        m6016a(outputStream, list.size());
        for (Header header : list) {
            m6014a(outputStream, header.getName());
            m6014a(outputStream, header.getValue());
        }
    }

    /* renamed from: a */
    private static byte[] m6019a(C17017b c17017b, long j) throws IOException {
        long m6004a = c17017b.m6004a();
        if (j >= 0 && j <= m6004a) {
            int i = (int) j;
            if (i == j) {
                byte[] bArr = new byte[i];
                new DataInputStream(c17017b).readFully(bArr);
                return bArr;
            }
        }
        throw new IOException("streamToBytes length=" + j + ", maxLength=" + m6004a);
    }

    /* renamed from: b */
    static long m6009b(InputStream inputStream) throws IOException {
        return ((m6007c(inputStream) & 255) << 0) | 0 | ((m6007c(inputStream) & 255) << 8) | ((m6007c(inputStream) & 255) << 16) | ((m6007c(inputStream) & 255) << 24) | ((m6007c(inputStream) & 255) << 32) | ((m6007c(inputStream) & 255) << 40) | ((m6007c(inputStream) & 255) << 48) | ((255 & m6007c(inputStream)) << 56);
    }

    /* renamed from: b */
    static List<Header> m6010b(C17017b c17017b) throws IOException {
        int m6017a = m6017a((InputStream) c17017b);
        if (m6017a >= 0) {
            ArrayList emptyList = m6017a == 0 ? Collections.emptyList() : new ArrayList();
            for (int i = 0; i < m6017a; i++) {
                emptyList.add(new Header(m6020a(c17017b).intern(), m6020a(c17017b).intern()));
            }
            return emptyList;
        }
        throw new IOException("readHeaderList size=".concat(String.valueOf(m6017a)));
    }

    /* renamed from: b */
    private void m6008b(String str) {
        C17016a remove = this.f60407a.remove(str);
        if (remove != null) {
            this.f60408b -= remove.f60411a;
        }
    }

    /* renamed from: c */
    private static int m6007c(InputStream inputStream) throws IOException {
        int read = inputStream.read();
        if (read != -1) {
            return read;
        }
        throw new EOFException();
    }

    @Override // com.mopub.volley.Cache
    public void clear() {
        synchronized (this) {
            File[] listFiles = this.f60409c.listFiles();
            if (listFiles != null) {
                for (File file : listFiles) {
                    file.delete();
                }
            }
            this.f60407a.clear();
            this.f60408b = 0L;
            VolleyLog.m6029d("Cache cleared.", new Object[0]);
        }
    }

    @Override // com.mopub.volley.Cache
    public Cache.Entry get(String str) {
        synchronized (this) {
            C17016a c17016a = this.f60407a.get(str);
            if (c17016a == null) {
                return null;
            }
            File fileForKey = getFileForKey(str);
            try {
                C17017b c17017b = new C17017b(new BufferedInputStream(m6018a(fileForKey)), fileForKey.length());
                try {
                    C17016a m6006a = C17016a.m6006a(c17017b);
                    if (!TextUtils.equals(str, m6006a.f60412b)) {
                        VolleyLog.m6029d("%s: key=%s, found=%s", fileForKey.getAbsolutePath(), str, m6006a.f60412b);
                        m6008b(str);
                        return null;
                    }
                    byte[] m6019a = m6019a(c17017b, c17017b.m6004a());
                    Cache.Entry entry = new Cache.Entry();
                    entry.data = m6019a;
                    entry.etag = c17016a.f60413c;
                    entry.serverDate = c17016a.f60414d;
                    entry.lastModified = c17016a.f60415e;
                    entry.ttl = c17016a.f60416f;
                    entry.softTtl = c17016a.f60417g;
                    entry.responseHeaders = HttpHeaderParser.m6001a(c17016a.f60418h);
                    entry.allResponseHeaders = Collections.unmodifiableList(c17016a.f60418h);
                    return entry;
                } finally {
                    c17017b.close();
                }
            } catch (IOException e) {
                VolleyLog.m6029d("%s: %s", fileForKey.getAbsolutePath(), e.toString());
                remove(str);
                return null;
            }
        }
    }

    public File getFileForKey(String str) {
        return new File(this.f60409c, m6013a(str));
    }

    @Override // com.mopub.volley.Cache
    public void initialize() {
        synchronized (this) {
            if (!this.f60409c.exists()) {
                if (!this.f60409c.mkdirs()) {
                    VolleyLog.m6028e("Unable to create cache dir %s", this.f60409c.getAbsolutePath());
                }
                return;
            }
            File[] listFiles = this.f60409c.listFiles();
            if (listFiles == null) {
                return;
            }
            for (File file : listFiles) {
                try {
                    long length = file.length();
                    C17017b c17017b = new C17017b(new BufferedInputStream(m6018a(file)), length);
                    try {
                        C17016a m6006a = C17016a.m6006a(c17017b);
                        m6006a.f60411a = length;
                        m6012a(m6006a.f60412b, m6006a);
                        c17017b.close();
                    } catch (Throwable th) {
                        c17017b.close();
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

    @Override // com.mopub.volley.Cache
    public void put(String str, Cache.Entry entry) {
        synchronized (this) {
            if (this.f60408b + entry.data.length <= this.f60410d || entry.data.length <= this.f60410d * 0.9f) {
                File fileForKey = getFileForKey(str);
                try {
                    BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(fileForKey));
                    C17016a c17016a = new C17016a(str, entry);
                    if (!c17016a.m6005a(bufferedOutputStream)) {
                        bufferedOutputStream.close();
                        VolleyLog.m6029d("Failed to write header for %s", fileForKey.getAbsolutePath());
                        throw new IOException();
                    }
                    bufferedOutputStream.write(entry.data);
                    bufferedOutputStream.close();
                    c17016a.f60411a = fileForKey.length();
                    m6012a(str, c17016a);
                    m6021a();
                } catch (IOException e) {
                    if (!fileForKey.delete()) {
                        VolleyLog.m6029d("Could not clean up file %s", fileForKey.getAbsolutePath());
                    }
                }
            }
        }
    }

    @Override // com.mopub.volley.Cache
    public void remove(String str) {
        synchronized (this) {
            boolean delete = getFileForKey(str).delete();
            m6008b(str);
            if (!delete) {
                VolleyLog.m6029d("Could not delete cache entry for key=%s, filename=%s", str, m6013a(str));
            }
        }
    }
}
