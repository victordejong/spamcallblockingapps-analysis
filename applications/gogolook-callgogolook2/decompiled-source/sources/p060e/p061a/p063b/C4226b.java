package p060e.p061a.p063b;

import androidx.media2.exoplayer.external.extractor.p007ts.AdtsReader;
import androidx.media2.exoplayer.external.extractor.p007ts.PsExtractor;
import java.io.IOException;
import p060e.p061a.p062a.C4224a;
import p060e.p061a.p064c.C4230a;
import p060e.p061a.p064c.C4231b;
/* renamed from: e.a.b.b */
/* loaded from: classes-dex2jar.jar:e/a/b/b.class */
public class C4226b {

    /* renamed from: a */
    public C4224a f10252a = new C4224a();

    /* renamed from: b */
    public C4231b f10253b = new C4231b();

    /* renamed from: c */
    public short[] f10254c = new short[PsExtractor.AUDIO_STREAM];

    /* renamed from: d */
    public short[] f10255d = new short[12];

    /* renamed from: e */
    public short[] f10256e = new short[12];

    /* renamed from: f */
    public short[] f10257f = new short[12];

    /* renamed from: g */
    public short[] f10258g = new short[12];

    /* renamed from: h */
    public short[] f10259h = new short[PsExtractor.AUDIO_STREAM];

    /* renamed from: i */
    public C4230a[] f10260i = new C4230a[4];

    /* renamed from: j */
    public short[] f10261j = new short[114];

    /* renamed from: k */
    public C4230a f10262k = new C4230a(4);

    /* renamed from: l */
    public C4227a f10263l = new C4227a(this);

    /* renamed from: m */
    public C4227a f10264m = new C4227a(this);

    /* renamed from: n */
    public C4228b f10265n = new C4228b(this);

    /* renamed from: o */
    public int f10266o = -1;

    /* renamed from: p */
    public int f10267p = -1;

    /* renamed from: q */
    public int f10268q;

    /* renamed from: e.a.b.b$a */
    /* loaded from: classes-dex2jar.jar:e/a/b/b$a.class */
    public class C4227a {

        /* renamed from: a */
        public short[] f10269a = new short[2];

        /* renamed from: b */
        public C4230a[] f10270b = new C4230a[16];

        /* renamed from: c */
        public C4230a[] f10271c = new C4230a[16];

        /* renamed from: d */
        public C4230a f10272d = new C4230a(8);

        /* renamed from: e */
        public int f10273e = 0;

        public C4227a(C4226b bVar) {
        }

        /* renamed from: a */
        public int m29261a(C4231b bVar, int i) throws IOException {
            if (bVar.m29246a(this.f10269a, 0) == 0) {
                return this.f10270b[i].m29253a(bVar);
            }
            return (bVar.m29246a(this.f10269a, 1) == 0 ? this.f10271c[i].m29253a(bVar) : this.f10272d.m29253a(bVar) + 8) + 8;
        }

        /* renamed from: a */
        public void m29263a() {
            C4231b.m29247a(this.f10269a);
            for (int i = 0; i < this.f10273e; i++) {
                this.f10270b[i].m29254a();
                this.f10271c[i].m29254a();
            }
            this.f10272d.m29254a();
        }

        /* renamed from: a */
        public void m29262a(int i) {
            while (true) {
                int i2 = this.f10273e;
                if (i2 < i) {
                    this.f10270b[i2] = new C4230a(3);
                    this.f10271c[this.f10273e] = new C4230a(3);
                    this.f10273e++;
                } else {
                    return;
                }
            }
        }
    }

    /* renamed from: e.a.b.b$b */
    /* loaded from: classes-dex2jar.jar:e/a/b/b$b.class */
    public class C4228b {

        /* renamed from: a */
        public C4229a[] f10274a;

        /* renamed from: b */
        public int f10275b;

        /* renamed from: c */
        public int f10276c;

        /* renamed from: d */
        public int f10277d;

        /* renamed from: e.a.b.b$b$a */
        /* loaded from: classes-dex2jar.jar:e/a/b/b$b$a.class */
        public class C4229a {

            /* renamed from: a */
            public short[] f10278a = new short[AdtsReader.MATCH_STATE_I];

            public C4229a(C4228b bVar) {
            }

            /* renamed from: a */
            public byte m29256a(C4231b bVar) throws IOException {
                int a;
                int i = 1;
                do {
                    a = bVar.m29246a(this.f10278a, i) | (i << 1);
                    i = a;
                } while (a < 256);
                return (byte) a;
            }

            /* JADX WARN: Code restructure failed: missing block: B:6:0x003a, code lost:
                if (r7 < 256) goto L_0x0040;
             */
            /* JADX WARN: Code restructure failed: missing block: B:7:0x0040, code lost:
                r7 = (r7 << 1) | r6.m29246a(r5.f10278a, r7);
             */
            /* renamed from: a */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public byte m29255a(p060e.p061a.p064c.C4231b r6, byte r7) throws java.io.IOException {
                /*
                    r5 = this;
                    r0 = 1
                    r8 = r0
                    r0 = r7
                    r9 = r0
                L_0x0005:
                    r0 = r9
                    r1 = 7
                    int r0 = r0 >> r1
                    r1 = 1
                    r0 = r0 & r1
                    r10 = r0
                    r0 = r9
                    r1 = 1
                    int r0 = r0 << r1
                    byte r0 = (byte) r0
                    r9 = r0
                    r0 = r6
                    r1 = r5
                    short[] r1 = r1.f10278a
                    r2 = r10
                    r3 = 1
                    int r2 = r2 + r3
                    r3 = 8
                    int r2 = r2 << r3
                    r3 = r8
                    int r2 = r2 + r3
                    int r0 = r0.m29246a(r1, r2)
                    r11 = r0
                    r0 = r8
                    r1 = 1
                    int r0 = r0 << r1
                    r1 = r11
                    r0 = r0 | r1
                    r7 = r0
                    r0 = r10
                    r1 = r11
                    if (r0 == r1) goto L_0x0051
                L_0x0036:
                    r0 = r7
                    r1 = 256(0x100, float:3.59E-43)
                    if (r0 < r1) goto L_0x0040
                    goto L_0x005a
                L_0x0040:
                    r0 = r7
                    r1 = 1
                    int r0 = r0 << r1
                    r1 = r6
                    r2 = r5
                    short[] r2 = r2.f10278a
                    r3 = r7
                    int r1 = r1.m29246a(r2, r3)
                    r0 = r0 | r1
                    r7 = r0
                    goto L_0x0036
                L_0x0051:
                    r0 = r7
                    r8 = r0
                    r0 = r7
                    r1 = 256(0x100, float:3.59E-43)
                    if (r0 < r1) goto L_0x0005
                L_0x005a:
                    r0 = r7
                    byte r0 = (byte) r0
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: p060e.p061a.p063b.C4226b.C4228b.C4229a.m29255a(e.a.c.b, byte):byte");
            }

            /* renamed from: a */
            public void m29257a() {
                C4231b.m29247a(this.f10278a);
            }
        }

        public C4228b(C4226b bVar) {
        }

        /* renamed from: a */
        public C4229a m29259a(int i, byte b) {
            C4229a[] aVarArr = this.f10274a;
            int i2 = this.f10277d;
            int i3 = this.f10275b;
            return aVarArr[((i & i2) << i3) + ((b & 255) >>> (8 - i3))];
        }

        /* renamed from: a */
        public void m29260a() {
            int i = this.f10275b;
            int i2 = this.f10276c;
            for (int i3 = 0; i3 < (1 << (i + i2)); i3++) {
                this.f10274a[i3].m29257a();
            }
        }

        /* renamed from: a */
        public void m29258a(int i, int i2) {
            if (!(this.f10274a != null && this.f10275b == i2 && this.f10276c == i)) {
                this.f10276c = i;
                this.f10277d = (1 << i) - 1;
                this.f10275b = i2;
                int i3 = 1 << (this.f10275b + this.f10276c);
                this.f10274a = new C4229a[i3];
                for (int i4 = 0; i4 < i3; i4++) {
                    this.f10274a[i4] = new C4229a(this);
                }
            }
        }
    }

    public C4226b() {
        for (int i = 0; i < 4; i++) {
            this.f10260i[i] = new C4230a(6);
        }
    }

    /* renamed from: a */
    public void m29268a() throws IOException {
        this.f10252a.m29278a(false);
        C4231b.m29247a(this.f10254c);
        C4231b.m29247a(this.f10259h);
        C4231b.m29247a(this.f10255d);
        C4231b.m29247a(this.f10256e);
        C4231b.m29247a(this.f10257f);
        C4231b.m29247a(this.f10258g);
        C4231b.m29247a(this.f10261j);
        this.f10265n.m29260a();
        for (int i = 0; i < 4; i++) {
            this.f10260i[i].m29254a();
        }
        this.f10263l.m29263a();
        this.f10264m.m29263a();
        this.f10262k.m29254a();
        this.f10253b.m29245b();
    }

    /* renamed from: a */
    public boolean m29267a(int i) {
        if (i < 0) {
            return false;
        }
        if (this.f10266o == i) {
            return true;
        }
        this.f10266o = i;
        this.f10267p = Math.max(this.f10266o, 1);
        this.f10252a.m29281a(Math.max(this.f10267p, 4096));
        return true;
    }

    /* renamed from: a */
    public boolean m29266a(int i, int i2, int i3) {
        if (i > 8 || i2 > 4 || i3 > 4) {
            return false;
        }
        this.f10265n.m29258a(i2, i);
        int i4 = 1 << i3;
        this.f10263l.m29262a(i4);
        this.f10264m.m29262a(i4);
        this.f10268q = i4 - 1;
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x0261, code lost:
        r6.f10252a.m29277b();
        r6.f10252a.m29283a();
        r6.f10253b.m29250a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0277, code lost:
        return true;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m29265a(java.io.InputStream r7, java.io.OutputStream r8, long r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 752
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p060e.p061a.p063b.C4226b.m29265a(java.io.InputStream, java.io.OutputStream, long):boolean");
    }

    /* renamed from: a */
    public boolean m29264a(byte[] bArr) {
        if (bArr.length < 5) {
            return false;
        }
        int i = bArr[0] & 255;
        int i2 = i / 9;
        int i3 = i2 / 5;
        int i4 = 0;
        int i5 = 0;
        while (i4 < 4) {
            int i6 = i4 + 1;
            i5 += (bArr[i6] & 255) << (i4 * 8);
            i4 = i6;
        }
        if (!m29266a(i % 9, i2 % 5, i3)) {
            return false;
        }
        return m29267a(i5);
    }
}
