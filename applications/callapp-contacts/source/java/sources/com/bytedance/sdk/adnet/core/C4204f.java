package com.bytedance.sdk.adnet.core;

import android.os.SystemClock;
import android.text.TextUtils;
import com.bytedance.sdk.adnet.face.AbstractC4246a;
import com.bytedance.sdk.adnet.p143d.C4227c;
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
/* renamed from: com.bytedance.sdk.adnet.core.f */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/f.class */
public class C4204f implements AbstractC4246a {

    /* renamed from: a */
    private final Map<String, C4205a> f15422a;

    /* renamed from: b */
    private long f15423b;

    /* renamed from: c */
    private final File f15424c;

    /* renamed from: d */
    private final int f15425d;

    /* renamed from: com.bytedance.sdk.adnet.core.f$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/f$a.class */
    public static class C4205a {

        /* renamed from: a */
        long f15426a;

        /* renamed from: b */
        final String f15427b;

        /* renamed from: c */
        final String f15428c;

        /* renamed from: d */
        final long f15429d;

        /* renamed from: e */
        final long f15430e;

        /* renamed from: f */
        final long f15431f;

        /* renamed from: g */
        final long f15432g;

        /* renamed from: h */
        final List<Header> f15433h;

        C4205a(String str, AbstractC4246a.C4247a c4247a) {
            this(str, c4247a.f15505c, c4247a.f15506d, c4247a.f15507e, c4247a.f15508f, c4247a.f15509g, m36149a(c4247a));
        }

        private C4205a(String str, String str2, long j, long j2, long j3, long j4, List<Header> list) {
            this.f15427b = str;
            this.f15428c = "".equals(str2) ? null : str2;
            this.f15429d = j;
            this.f15430e = j2;
            this.f15431f = j3;
            this.f15432g = j4;
            this.f15433h = list;
        }

        /* renamed from: a */
        static C4205a m36150a(C4206b c4206b) throws Throwable {
            if (C4204f.m36165a((InputStream) c4206b) == 538247942) {
                return new C4205a(C4204f.m36168a(c4206b), C4204f.m36168a(c4206b), C4204f.m36156b((InputStream) c4206b), C4204f.m36156b((InputStream) c4206b), C4204f.m36156b((InputStream) c4206b), C4204f.m36156b((InputStream) c4206b), C4204f.m36158b(c4206b));
            }
            throw new IOException();
        }

        /* renamed from: a */
        private static List<Header> m36149a(AbstractC4246a.C4247a c4247a) {
            return c4247a.f15511i != null ? c4247a.f15511i : C4227c.m36089b(c4247a.f15510h);
        }

        /* renamed from: a */
        AbstractC4246a.C4247a m36147a(byte[] bArr) {
            AbstractC4246a.C4247a c4247a = new AbstractC4246a.C4247a();
            c4247a.f15504b = bArr;
            c4247a.f15505c = this.f15428c;
            c4247a.f15506d = this.f15429d;
            c4247a.f15507e = this.f15430e;
            c4247a.f15508f = this.f15431f;
            c4247a.f15509g = this.f15432g;
            c4247a.f15510h = C4227c.m36092a(this.f15433h);
            c4247a.f15511i = Collections.unmodifiableList(this.f15433h);
            return c4247a;
        }

        /* renamed from: a */
        boolean m36148a(OutputStream outputStream) {
            try {
                C4204f.m36164a(outputStream, 538247942);
                C4204f.m36162a(outputStream, this.f15427b);
                String str = this.f15428c;
                String str2 = str;
                if (str == null) {
                    str2 = "";
                }
                C4204f.m36162a(outputStream, str2);
                C4204f.m36163a(outputStream, this.f15429d);
                C4204f.m36163a(outputStream, this.f15430e);
                C4204f.m36163a(outputStream, this.f15431f);
                C4204f.m36163a(outputStream, this.f15432g);
                C4204f.m36160a(this.f15433h, outputStream);
                outputStream.flush();
                return true;
            } catch (Throwable th) {
                C4221o.m36106b("%s", th.toString());
                return false;
            }
        }
    }

    /* renamed from: com.bytedance.sdk.adnet.core.f$b */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/core/f$b.class */
    public static class C4206b extends FilterInputStream {

        /* renamed from: a */
        private final long f15434a;

        /* renamed from: b */
        private long f15435b;

        C4206b(InputStream inputStream, long j) {
            super(inputStream);
            this.f15434a = j;
        }

        /* renamed from: a */
        long m36146a() {
            return this.f15434a - this.f15435b;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read() throws IOException {
            int read = super.read();
            if (read != -1) {
                this.f15435b++;
            }
            return read;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            int read = super.read(bArr, i, i2);
            if (read != -1) {
                this.f15435b += read;
            }
            return read;
        }
    }

    public C4204f(File file) {
        this(file, 5242880);
    }

    public C4204f(File file, int i) {
        this.f15422a = new LinkedHashMap(16, 0.75f, true);
        this.f15423b = 0L;
        this.f15424c = file;
        this.f15425d = i;
    }

    /* renamed from: a */
    static int m36165a(InputStream inputStream) throws Throwable {
        return (m36154c(inputStream) << 24) | (m36154c(inputStream) << 0) | 0 | (m36154c(inputStream) << 8) | (m36154c(inputStream) << 16);
    }

    /* renamed from: a */
    static String m36168a(C4206b c4206b) throws Throwable {
        return new String(m36167a(c4206b, m36156b((InputStream) c4206b)), "UTF-8");
    }

    /* renamed from: a */
    static void m36164a(OutputStream outputStream, int i) throws Throwable {
        outputStream.write((i >> 0) & 255);
        outputStream.write((i >> 8) & 255);
        outputStream.write((i >> 16) & 255);
        outputStream.write((i >> 24) & 255);
    }

    /* renamed from: a */
    static void m36163a(OutputStream outputStream, long j) throws Throwable {
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
    static void m36162a(OutputStream outputStream, String str) throws Throwable {
        byte[] bytes = str.getBytes("UTF-8");
        m36163a(outputStream, bytes.length);
        outputStream.write(bytes, 0, bytes.length);
    }

    /* renamed from: a */
    private void m36161a(String str, C4205a c4205a) {
        if (!this.f15422a.containsKey(str)) {
            this.f15423b += c4205a.f15426a;
        } else {
            this.f15423b += c4205a.f15426a - this.f15422a.get(str).f15426a;
        }
        this.f15422a.put(str, c4205a);
    }

    /* renamed from: a */
    static void m36160a(List<Header> list, OutputStream outputStream) throws Throwable {
        if (list == null) {
            m36164a(outputStream, 0);
            return;
        }
        m36164a(outputStream, list.size());
        for (Header header : list) {
            m36162a(outputStream, header.getName());
            m36162a(outputStream, header.getValue());
        }
    }

    /* renamed from: a */
    static byte[] m36167a(C4206b c4206b, long j) throws Throwable {
        long m36146a = c4206b.m36146a();
        if (j >= 0 && j <= m36146a) {
            int i = (int) j;
            if (i == j) {
                byte[] bArr = new byte[i];
                new DataInputStream(c4206b).readFully(bArr);
                return bArr;
            }
        }
        throw new IOException("streamToBytes length=" + j + ", maxLength=" + m36146a);
    }

    /* renamed from: b */
    static long m36156b(InputStream inputStream) throws Throwable {
        return ((m36154c(inputStream) & 255) << 0) | 0 | ((m36154c(inputStream) & 255) << 8) | ((m36154c(inputStream) & 255) << 16) | ((m36154c(inputStream) & 255) << 24) | ((m36154c(inputStream) & 255) << 32) | ((m36154c(inputStream) & 255) << 40) | ((m36154c(inputStream) & 255) << 48) | ((255 & m36154c(inputStream)) << 56);
    }

    /* renamed from: b */
    static List<Header> m36158b(C4206b c4206b) throws Throwable {
        int m36165a = m36165a((InputStream) c4206b);
        if (m36165a >= 0) {
            ArrayList emptyList = m36165a == 0 ? Collections.emptyList() : new ArrayList();
            for (int i = 0; i < m36165a; i++) {
                emptyList.add(new Header(m36168a(c4206b).intern(), m36168a(c4206b).intern()));
            }
            return emptyList;
        }
        throw new IOException("readHeaderList size=".concat(String.valueOf(m36165a)));
    }

    /* renamed from: b */
    private void m36159b() {
        int i;
        if (this.f15423b < this.f15425d) {
            return;
        }
        if (C4221o.f15476a) {
            C4221o.m36108a("Pruning old cache entries.", new Object[0]);
        }
        long j = this.f15423b;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        Iterator<Map.Entry<String, C4205a>> it2 = this.f15422a.entrySet().iterator();
        int i2 = 0;
        do {
            i = i2;
            if (!it2.hasNext()) {
                break;
            }
            C4205a value = it2.next().getValue();
            if (m36153c(value.f15427b).delete()) {
                this.f15423b -= value.f15426a;
            } else {
                C4221o.m36106b("Could not delete cache entry for key=%s, filename=%s", value.f15427b, m36152d(value.f15427b));
            }
            it2.remove();
            i = i2 + 1;
            i2 = i;
        } while (((float) this.f15423b) >= this.f15425d * 0.9f);
        if (!C4221o.f15476a) {
            return;
        }
        C4221o.m36108a("pruned %d files, %d bytes, %d ms", Integer.valueOf(i), Long.valueOf(this.f15423b - j), Long.valueOf(SystemClock.elapsedRealtime() - elapsedRealtime));
    }

    /* renamed from: c */
    private static int m36154c(InputStream inputStream) throws Throwable {
        int read = inputStream.read();
        if (read != -1) {
            return read;
        }
        throw new EOFException();
    }

    /* renamed from: d */
    private String m36152d(String str) {
        int length = str.length() / 2;
        int hashCode = str.substring(0, length).hashCode();
        return String.valueOf(hashCode) + String.valueOf(str.substring(length).hashCode());
    }

    /* renamed from: e */
    private void m36151e(String str) {
        C4205a remove = this.f15422a.remove(str);
        if (remove != null) {
            this.f15423b -= remove.f15426a;
        }
    }

    @Override // com.bytedance.sdk.adnet.face.AbstractC4246a
    /* renamed from: a */
    public AbstractC4246a.C4247a mo36067a(String str) {
        C4206b c4206b;
        Throwable th;
        synchronized (this) {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            C4205a c4205a = this.f15422a.get(str);
            if (c4205a == null) {
                return null;
            }
            File m36153c = m36153c(str);
            try {
                c4206b = new C4206b(new BufferedInputStream(m36166a(m36153c)), m36153c.length());
                try {
                    C4205a m36150a = C4205a.m36150a(c4206b);
                    if (TextUtils.equals(str, m36150a.f15427b)) {
                        AbstractC4246a.C4247a m36147a = c4205a.m36147a(m36167a(c4206b, c4206b.m36146a()));
                        c4206b.close();
                        try {
                            c4206b.close();
                        } catch (Throwable th2) {
                        }
                        return m36147a;
                    }
                    C4221o.m36106b("%s: key=%s, found=%s", m36153c.getAbsolutePath(), str, m36150a.f15427b);
                    m36151e(str);
                    c4206b.close();
                    try {
                        c4206b.close();
                    } catch (Throwable th3) {
                    }
                    return null;
                } catch (Throwable th4) {
                    th = th4;
                    C4221o.m36106b("%s: %s", m36153c.getAbsolutePath(), th.toString());
                    m36155b(str);
                    if (c4206b != null) {
                        try {
                            c4206b.close();
                        } catch (Throwable th5) {
                        }
                    }
                    return null;
                }
            } catch (Throwable th6) {
                th = th6;
                c4206b = null;
            }
        }
    }

    /* renamed from: a */
    InputStream m36166a(File file) throws Throwable {
        return new FileInputStream(file);
    }

    @Override // com.bytedance.sdk.adnet.face.AbstractC4246a
    /* renamed from: a */
    public void mo36068a() {
        synchronized (this) {
            if (!this.f15424c.exists()) {
                if (!this.f15424c.mkdirs()) {
                    C4221o.m36105c("Unable to create cache dir %s", this.f15424c.getAbsolutePath());
                }
                return;
            }
            File[] listFiles = this.f15424c.listFiles();
            if (listFiles == null) {
                return;
            }
            for (File file : listFiles) {
                long length = file.length();
                C4206b c4206b = new C4206b(new BufferedInputStream(m36166a(file)), length);
                try {
                    C4205a m36150a = C4205a.m36150a(c4206b);
                    m36150a.f15426a = length;
                    m36161a(m36150a.f15427b, m36150a);
                } catch (Throwable th) {
                }
                c4206b.close();
            }
        }
    }

    @Override // com.bytedance.sdk.adnet.face.AbstractC4246a
    /* renamed from: a */
    public void mo36066a(String str, AbstractC4246a.C4247a c4247a) {
        BufferedOutputStream bufferedOutputStream;
        BufferedOutputStream bufferedOutputStream2;
        synchronized (this) {
            if (this.f15423b + c4247a.f15504b.length <= this.f15425d || c4247a.f15504b.length <= this.f15425d * 0.9f) {
                File m36153c = m36153c(str);
                try {
                    bufferedOutputStream2 = new BufferedOutputStream(m36157b(m36153c));
                } catch (Throwable th) {
                    bufferedOutputStream = null;
                }
                try {
                    C4205a c4205a = new C4205a(str, c4247a);
                    if (!c4205a.m36148a(bufferedOutputStream2)) {
                        bufferedOutputStream2.close();
                        C4221o.m36106b("Failed to write header for %s", m36153c.getAbsolutePath());
                        throw new IOException();
                    }
                    bufferedOutputStream2.write(c4247a.f15504b);
                    c4205a.f15426a = m36153c.length();
                    m36161a(str, c4205a);
                    m36159b();
                    try {
                        bufferedOutputStream2.close();
                    } catch (Throwable th2) {
                    }
                } catch (Throwable th3) {
                    bufferedOutputStream = bufferedOutputStream2;
                    if (bufferedOutputStream != null) {
                        try {
                            bufferedOutputStream.close();
                        } catch (Throwable th4) {
                        }
                    }
                    if (!m36153c.delete()) {
                        C4221o.m36106b("Could not clean up file %s", m36153c.getAbsolutePath());
                    }
                }
            }
        }
    }

    /* renamed from: b */
    OutputStream m36157b(File file) throws Throwable {
        return new FileOutputStream(file);
    }

    /* renamed from: b */
    public void m36155b(String str) {
        synchronized (this) {
            boolean delete = m36153c(str).delete();
            m36151e(str);
            if (!delete) {
                C4221o.m36106b("Could not delete cache entry for key=%s, filename=%s", str, m36152d(str));
            }
        }
    }

    /* renamed from: c */
    public File m36153c(String str) {
        return new File(this.f15424c, m36152d(str));
    }
}
