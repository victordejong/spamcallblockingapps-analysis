package p193e.p1432d.p1443e.p1444x;

import android.os.SystemClock;
import android.support.annotation.VisibleForTesting;
import com.tenor.android.core.constant.StringConstant;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
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
import java.util.TreeMap;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1432d.p1443e.AbstractC22169b;
import p193e.p1432d.p1443e.C22178h;
import p193e.p1432d.p1443e.C22198w;
/* renamed from: e.d.e.x.d */
/* loaded from: classes-dex2jar.jar:e/d/e/x/d.class */
public class C22205d implements AbstractC22169b {

    /* renamed from: c */
    public final File f61677c;

    /* renamed from: a */
    public final Map<String, C22206a> f61675a = new LinkedHashMap(16, 0.75f, true);

    /* renamed from: b */
    public long f61676b = 0;

    /* renamed from: d */
    public final int f61678d = 5242880;

    /* renamed from: e.d.e.x.d$a */
    /* loaded from: classes-dex2jar.jar:e/d/e/x/d$a.class */
    public static class C22206a {

        /* renamed from: a */
        public long f61679a;

        /* renamed from: b */
        public final String f61680b;

        /* renamed from: c */
        public final String f61681c;

        /* renamed from: d */
        public final long f61682d;

        /* renamed from: e */
        public final long f61683e;

        /* renamed from: f */
        public final long f61684f;

        /* renamed from: g */
        public final long f61685g;

        /* renamed from: h */
        public final List<C22178h> f61686h;

        /* JADX WARN: Illegal instructions before constructor call */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r25v0 */
        /* JADX WARN: Type inference failed for: r25v1 */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C22206a(java.lang.String r14, p193e.p1432d.p1443e.AbstractC22169b.C22170a r15) {
            /*
                r13 = this;
                r0 = r15
                java.lang.String r0 = r0.f61597b
                r16 = r0
                r0 = r15
                long r0 = r0.f61598c
                r17 = r0
                r0 = r15
                long r0 = r0.f61599d
                r19 = r0
                r0 = r15
                long r0 = r0.f61600e
                r21 = r0
                r0 = r15
                long r0 = r0.f61601f
                r23 = r0
                r0 = r15
                java.util.List<e.d.e.h> r0 = r0.f61603h
                r25 = r0
                r0 = r25
                if (r0 == 0) goto L2b
                goto L89
            L2b:
                r0 = r15
                java.util.Map<java.lang.String, java.lang.String> r0 = r0.f61602g
                r26 = r0
                java.util.ArrayList r0 = new java.util.ArrayList
                r1 = r0
                r2 = r26
                int r2 = r2.size()
                r1.<init>(r2)
                r25 = r0
                r0 = r26
                java.util.Set r0 = r0.entrySet()
                java.util.Iterator r0 = r0.iterator()
                r26 = r0
            L4f:
                r0 = r26
                boolean r0 = r0.hasNext()
                if (r0 == 0) goto L89
                r0 = r26
                java.lang.Object r0 = r0.next()
                java.util.Map$Entry r0 = (java.util.Map.Entry) r0
                r27 = r0
                r0 = r25
                e.d.e.h r1 = new e.d.e.h
                r2 = r1
                r3 = r27
                java.lang.Object r3 = r3.getKey()
                java.lang.String r3 = (java.lang.String) r3
                r4 = r27
                java.lang.Object r4 = r4.getValue()
                java.lang.String r4 = (java.lang.String) r4
                r2.<init>(r3, r4)
                boolean r0 = r0.add(r1)
                goto L4f
            L89:
                r0 = r13
                r1 = r14
                r2 = r16
                r3 = r17
                r4 = r19
                r5 = r21
                r6 = r23
                r7 = r25
                r0.<init>(r1, r2, r3, r4, r5, r6, r7)
                r0 = r13
                r1 = r15
                byte[] r1 = r1.f61596a
                int r1 = r1.length
                long r1 = (long) r1
                r0.f61679a = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p1432d.p1443e.p1444x.C22205d.C22206a.<init>(java.lang.String, e.d.e.b$a):void");
        }

        public C22206a(String str, String str2, long j, long j2, long j3, long j4, List<C22178h> list) {
            this.f61680b = str;
            this.f61681c = "".equals(str2) ? null : str2;
            this.f61682d = j;
            this.f61683e = j2;
            this.f61684f = j3;
            this.f61685g = j4;
            this.f61686h = list;
        }

        /* renamed from: a */
        public static C22206a m8458a(C22207b c22207b) throws IOException {
            if (C22205d.m8466g(c22207b) == 538247942) {
                String m8464i = C22205d.m8464i(c22207b);
                String m8464i2 = C22205d.m8464i(c22207b);
                long m8465h = C22205d.m8465h(c22207b);
                long m8465h2 = C22205d.m8465h(c22207b);
                long m8465h3 = C22205d.m8465h(c22207b);
                long m8465h4 = C22205d.m8465h(c22207b);
                int m8466g = C22205d.m8466g(c22207b);
                if (m8466g < 0) {
                    throw new IOException(C22128a.m8611i2("readHeaderList size=", m8466g));
                }
                ArrayList emptyList = m8466g == 0 ? Collections.emptyList() : new ArrayList();
                for (int i = 0; i < m8466g; i++) {
                    emptyList.add(new C22178h(C22205d.m8464i(c22207b).intern(), C22205d.m8464i(c22207b).intern()));
                }
                return new C22206a(m8464i, m8464i2, m8465h, m8465h2, m8465h3, m8465h4, emptyList);
            }
            throw new IOException();
        }

        /* renamed from: b */
        public AbstractC22169b.C22170a m8457b(byte[] bArr) {
            AbstractC22169b.C22170a c22170a = new AbstractC22169b.C22170a();
            c22170a.f61596a = bArr;
            c22170a.f61597b = this.f61681c;
            c22170a.f61598c = this.f61682d;
            c22170a.f61599d = this.f61683e;
            c22170a.f61600e = this.f61684f;
            c22170a.f61601f = this.f61685g;
            List<C22178h> list = this.f61686h;
            TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
            for (C22178h c22178h : list) {
                treeMap.put(c22178h.f61624a, c22178h.f61625b);
            }
            c22170a.f61602g = treeMap;
            c22170a.f61603h = Collections.unmodifiableList(this.f61686h);
            return c22170a;
        }

        /* renamed from: c */
        public boolean m8456c(OutputStream outputStream) {
            try {
                C22205d.m8461l(outputStream, 538247942);
                C22205d.m8459n(outputStream, this.f61680b);
                String str = this.f61681c;
                String str2 = str;
                if (str == null) {
                    str2 = "";
                }
                C22205d.m8459n(outputStream, str2);
                C22205d.m8460m(outputStream, this.f61682d);
                C22205d.m8460m(outputStream, this.f61683e);
                C22205d.m8460m(outputStream, this.f61684f);
                C22205d.m8460m(outputStream, this.f61685g);
                List<C22178h> list = this.f61686h;
                if (list != null) {
                    C22205d.m8461l(outputStream, list.size());
                    for (C22178h c22178h : list) {
                        C22205d.m8459n(outputStream, c22178h.f61624a);
                        C22205d.m8459n(outputStream, c22178h.f61625b);
                    }
                } else {
                    C22205d.m8461l(outputStream, 0);
                }
                outputStream.flush();
                return true;
            } catch (IOException e) {
                C22198w.m8484a("%s", e.toString());
                return false;
            }
        }
    }

    @VisibleForTesting
    /* renamed from: e.d.e.x.d$b */
    /* loaded from: classes-dex2jar.jar:e/d/e/x/d$b.class */
    public static class C22207b extends FilterInputStream {

        /* renamed from: a */
        public final long f61687a;

        /* renamed from: b */
        public long f61688b;

        public C22207b(InputStream inputStream, long j) {
            super(inputStream);
            this.f61687a = j;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read() throws IOException {
            int read = super.read();
            if (read != -1) {
                this.f61688b++;
            }
            return read;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            int read = super.read(bArr, i, i2);
            if (read != -1) {
                this.f61688b += read;
            }
            return read;
        }
    }

    public C22205d(File file) {
        this.f61677c = file;
    }

    /* renamed from: f */
    public static int m8467f(InputStream inputStream) throws IOException {
        int read = inputStream.read();
        if (read != -1) {
            return read;
        }
        throw new EOFException();
    }

    /* renamed from: g */
    public static int m8466g(InputStream inputStream) throws IOException {
        return (m8467f(inputStream) << 24) | (m8467f(inputStream) << 0) | 0 | (m8467f(inputStream) << 8) | (m8467f(inputStream) << 16);
    }

    /* renamed from: h */
    public static long m8465h(InputStream inputStream) throws IOException {
        return ((m8467f(inputStream) & 255) << 0) | 0 | ((m8467f(inputStream) & 255) << 8) | ((m8467f(inputStream) & 255) << 16) | ((m8467f(inputStream) & 255) << 24) | ((m8467f(inputStream) & 255) << 32) | ((m8467f(inputStream) & 255) << 40) | ((m8467f(inputStream) & 255) << 48) | ((255 & m8467f(inputStream)) << 56);
    }

    /* renamed from: i */
    public static String m8464i(C22207b c22207b) throws IOException {
        return new String(m8462k(c22207b, m8465h(c22207b)), StringConstant.UTF8);
    }

    /* renamed from: k */
    public static byte[] m8462k(C22207b c22207b, long j) throws IOException {
        long j2 = c22207b.f61687a - c22207b.f61688b;
        if (j >= 0 && j <= j2) {
            int i = (int) j;
            if (i == j) {
                byte[] bArr = new byte[i];
                new DataInputStream(c22207b).readFully(bArr);
                return bArr;
            }
        }
        StringBuilder m8712G = C22128a.m8712G("streamToBytes length=", j, ", maxLength=");
        m8712G.append(j2);
        throw new IOException(m8712G.toString());
    }

    /* renamed from: l */
    public static void m8461l(OutputStream outputStream, int i) throws IOException {
        outputStream.write((i >> 0) & 255);
        outputStream.write((i >> 8) & 255);
        outputStream.write((i >> 16) & 255);
        outputStream.write((i >> 24) & 255);
    }

    /* renamed from: m */
    public static void m8460m(OutputStream outputStream, long j) throws IOException {
        outputStream.write((byte) (j >>> 0));
        outputStream.write((byte) (j >>> 8));
        outputStream.write((byte) (j >>> 16));
        outputStream.write((byte) (j >>> 24));
        outputStream.write((byte) (j >>> 32));
        outputStream.write((byte) (j >>> 40));
        outputStream.write((byte) (j >>> 48));
        outputStream.write((byte) (j >>> 56));
    }

    /* renamed from: n */
    public static void m8459n(OutputStream outputStream, String str) throws IOException {
        byte[] bytes = str.getBytes(StringConstant.UTF8);
        m8460m(outputStream, bytes.length);
        outputStream.write(bytes, 0, bytes.length);
    }

    /* renamed from: a */
    public File m8472a(String str) {
        return new File(this.f61677c, m8471b(str));
    }

    /* renamed from: b */
    public final String m8471b(String str) {
        int length = str.length() / 2;
        StringBuilder m8728C = C22128a.m8728C(String.valueOf(str.substring(0, length).hashCode()));
        m8728C.append(String.valueOf(str.substring(length).hashCode()));
        return m8728C.toString();
    }

    /* renamed from: c */
    public final void m8470c(int i) {
        int i2;
        long j = i;
        if (this.f61676b + j < this.f61678d) {
            return;
        }
        if (C22198w.f61659a) {
            C22198w.m8483b("Pruning old cache entries.", new Object[0]);
        }
        long j2 = this.f61676b;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        Iterator<Map.Entry<String, C22206a>> it = this.f61675a.entrySet().iterator();
        int i3 = 0;
        while (true) {
            i2 = i3;
            if (!it.hasNext()) {
                break;
            }
            C22206a value = it.next().getValue();
            if (m8472a(value.f61680b).delete()) {
                this.f61676b -= value.f61679a;
            } else {
                String str = value.f61680b;
                C22198w.m8484a("Could not delete cache entry for key=%s, filename=%s", str, m8471b(str));
            }
            it.remove();
            i3++;
            if (((float) (this.f61676b + j)) < this.f61678d * 0.9f) {
                i2 = i3;
                break;
            }
        }
        if (!C22198w.f61659a) {
            return;
        }
        C22198w.m8483b("pruned %d files, %d bytes, %d ms", Integer.valueOf(i2), Long.valueOf(this.f61676b - j2), Long.valueOf(SystemClock.elapsedRealtime() - elapsedRealtime));
    }

    /* renamed from: d */
    public void m8469d(String str, AbstractC22169b.C22170a c22170a) {
        synchronized (this) {
            m8470c(c22170a.f61596a.length);
            File m8472a = m8472a(str);
            try {
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(m8472a));
                C22206a c22206a = new C22206a(str, c22170a);
                if (!c22206a.m8456c(bufferedOutputStream)) {
                    bufferedOutputStream.close();
                    C22198w.m8484a("Failed to write header for %s", m8472a.getAbsolutePath());
                    throw new IOException();
                }
                bufferedOutputStream.write(c22170a.f61596a);
                bufferedOutputStream.close();
                m8468e(str, c22206a);
            } catch (IOException e) {
                if (!m8472a.delete()) {
                    C22198w.m8484a("Could not clean up file %s", m8472a.getAbsolutePath());
                }
            }
        }
    }

    /* renamed from: e */
    public final void m8468e(String str, C22206a c22206a) {
        if (!this.f61675a.containsKey(str)) {
            this.f61676b += c22206a.f61679a;
        } else {
            this.f61676b = (c22206a.f61679a - this.f61675a.get(str).f61679a) + this.f61676b;
        }
        this.f61675a.put(str, c22206a);
    }

    /* renamed from: j */
    public void m8463j(String str) {
        synchronized (this) {
            boolean delete = m8472a(str).delete();
            C22206a remove = this.f61675a.remove(str);
            if (remove != null) {
                this.f61676b -= remove.f61679a;
            }
            if (!delete) {
                C22198w.m8484a("Could not delete cache entry for key=%s, filename=%s", str, m8471b(str));
            }
        }
    }
}
