package p193e.p194a.p1146q2.p1148b1.p1149f;

import java.io.Closeable;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.CRC32;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.a.q2.b1.f.b */
/* loaded from: classes5-dex2jar.jar:e/a/q2/b1/f/b.class */
public class C19477b implements Closeable {

    /* renamed from: a */
    public final RandomAccessFile f54072a;

    /* renamed from: b */
    public int f54073b;

    /* renamed from: c */
    public int f54074c;

    /* renamed from: d */
    public C19480c f54075d;

    /* renamed from: e */
    public C19480c f54076e;

    /* renamed from: f */
    public final byte[] f54077f;

    /* renamed from: g */
    public final CRC32 f54078g = new CRC32();

    /* renamed from: e.a.q2.b1.f.b$b */
    /* loaded from: classes5-dex2jar.jar:e/a/q2/b1/f/b$b.class */
    public static class C19479b extends Exception {
        public C19479b(String str) {
            super(str);
        }
    }

    /* renamed from: e.a.q2.b1.f.b$c */
    /* loaded from: classes5-dex2jar.jar:e/a/q2/b1/f/b$c.class */
    public static class C19480c {

        /* renamed from: d */
        public static final C19480c f54079d = new C19480c(0, 0, 0);

        /* renamed from: a */
        public final int f54080a;

        /* renamed from: b */
        public final int f54081b;

        /* renamed from: c */
        public final long f54082c;

        public C19480c(int i, int i2, long j) {
            this.f54080a = i;
            this.f54081b = i2;
            this.f54082c = j;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(C19480c.class.getSimpleName());
            sb.append("[position = ");
            sb.append(this.f54080a);
            sb.append(", length = ");
            sb.append(this.f54081b);
            sb.append(", checksum = ");
            return C22128a.m8693K2(sb, this.f54082c, "]");
        }
    }

    /* renamed from: e.a.q2.b1.f.b$d */
    /* loaded from: classes5-dex2jar.jar:e/a/q2/b1/f/b$d.class */
    public class C19481d {

        /* renamed from: b */
        public final int f54084b;

        /* renamed from: a */
        public final List<C19480c> f54083a = new ArrayList();

        /* renamed from: c */
        public int f54085c = -1;

        public C19481d(int i, C19478a c19478a) throws IOException {
            C19477b.this = r5;
            int i2 = r5.f54075d.f54080a;
            this.f54084b = i2;
            C19480c c19480c = r5.f54076e;
            int i3 = c19480c.f54080a + c19480c.f54081b + 8;
            int i4 = r5.f54073b;
            i3 = i3 >= i4 ? (i3 + 16) - i4 : i3;
            while (i2 != i3) {
                try {
                    if (this.f54083a.size() >= i) {
                        return;
                    }
                    C19480c m13298b = r5.m13298b(i2);
                    int i5 = m13298b.f54081b;
                    if (!(i5 > 0 && i5 < 65535)) {
                        return;
                    }
                    this.f54083a.add(m13298b);
                    i2 = i2 + m13298b.f54081b + 8;
                    int i6 = r5.f54073b;
                    if (i2 >= i6) {
                        i2 = (i2 + 16) - i6;
                    }
                } catch (C19479b e) {
                    return;
                }
            }
        }

        /* renamed from: a */
        public byte[] m13294a() throws IOException {
            while (true) {
                boolean z = true;
                int i = this.f54085c + 1;
                this.f54085c = i;
                if (i < this.f54083a.size()) {
                    C19480c c19480c = this.f54083a.get(this.f54085c);
                    int i2 = c19480c.f54081b;
                    byte[] bArr = new byte[i2];
                    try {
                        C19477b.this.m13296j(c19480c.f54080a + 8, bArr, 0, i2);
                        C19477b c19477b = C19477b.this;
                        c19477b.f54078g.reset();
                        c19477b.f54078g.update(bArr);
                        if (c19477b.f54078g.getValue() != c19480c.f54082c) {
                            z = false;
                        }
                    } catch (C19479b e) {
                    }
                    if (z) {
                        return bArr;
                    }
                } else {
                    return null;
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:48:0x0222, code lost:
        if (r10 == null) goto L91;
     */
    /* JADX WARN: Finally extract failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C19477b(java.io.File r8) throws java.io.IOException, p193e.p194a.p1146q2.p1148b1.p1149f.C19477b.C19479b {
        /*
            Method dump skipped, instructions count: 820
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1146q2.p1148b1.p1149f.C19477b.<init>(java.io.File):void");
    }

    /* renamed from: d */
    public static int m13297d(byte[] bArr, int i) {
        return ((bArr[i] & 255) << 24) + ((bArr[i + 1] & 255) << 16) + ((bArr[i + 2] & 255) << 8) + (bArr[i + 3] & 255);
    }

    /* renamed from: k */
    public static void m13295k(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) (i2 >> 24);
        bArr[i + 1] = (byte) (i2 >> 16);
        bArr[i + 2] = (byte) (i2 >> 8);
        bArr[i + 3] = (byte) i2;
    }

    /* renamed from: b */
    public final C19480c m13298b(int i) throws IOException, C19479b {
        if (i == 0) {
            return C19480c.f54079d;
        }
        m13296j(i, this.f54077f, 0, 8);
        int m13297d = m13297d(this.f54077f, 0);
        byte[] bArr = this.f54077f;
        return new C19480c(i, m13297d, ((bArr[4] & 255) << 24) + ((bArr[5] & 255) << 16) + ((bArr[6] & 255) << 8) + (bArr[7] & 255));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f54072a.close();
    }

    /* renamed from: j */
    public final void m13296j(int i, byte[] bArr, int i2, int i3) throws IOException, C19479b {
        int i4 = this.f54073b;
        if (i >= i4) {
            i = (i + 16) - i4;
        }
        if (i + i3 <= i4) {
            this.f54072a.seek(i);
            this.f54072a.readFully(bArr, i2, i3);
        } else if (i > i4) {
            throw new C19479b("Position is after file end. Queue is broken");
        } else {
            int i5 = i4 - i;
            this.f54072a.seek(i);
            this.f54072a.readFully(bArr, i2, i5);
            this.f54072a.seek(16L);
            this.f54072a.readFully(bArr, i2 + i5, i3 - i5);
        }
    }

    public String toString() {
        return C19477b.class.getSimpleName() + "[mFileLength=" + this.f54073b + ", size=" + this.f54074c + ", mFirst=" + this.f54075d + ", mLast=" + this.f54076e + "]]";
    }
}
