package p1727n3.p1795i.p1799b;

import java.util.Arrays;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.i.b.g */
/* loaded from: classes-dex2jar.jar:n3/i/b/g.class */
public class C26358g {

    /* renamed from: n */
    public static int f73601n = 1;

    /* renamed from: a */
    public boolean f73602a;

    /* renamed from: e */
    public float f73606e;

    /* renamed from: i */
    public EnumC26359a f73610i;

    /* renamed from: b */
    public int f73603b = -1;

    /* renamed from: c */
    public int f73604c = -1;

    /* renamed from: d */
    public int f73605d = 0;

    /* renamed from: f */
    public boolean f73607f = false;

    /* renamed from: g */
    public float[] f73608g = new float[9];

    /* renamed from: h */
    public float[] f73609h = new float[9];

    /* renamed from: j */
    public C26352b[] f73611j = new C26352b[16];

    /* renamed from: k */
    public int f73612k = 0;

    /* renamed from: l */
    public int f73613l = 0;

    /* renamed from: m */
    public int f73614m = -1;

    /* renamed from: n3.i.b.g$a */
    /* loaded from: classes-dex2jar.jar:n3/i/b/g$a.class */
    public enum EnumC26359a {
        UNRESTRICTED,
        CONSTANT,
        SLACK,
        ERROR,
        UNKNOWN
    }

    public C26358g(EnumC26359a enumC26359a) {
        this.f73610i = enumC26359a;
    }

    /* renamed from: a */
    public final void m2112a(C26352b c26352b) {
        int i = 0;
        while (true) {
            int i2 = this.f73612k;
            if (i >= i2) {
                C26352b[] c26352bArr = this.f73611j;
                if (i2 >= c26352bArr.length) {
                    this.f73611j = (C26352b[]) Arrays.copyOf(c26352bArr, c26352bArr.length * 2);
                }
                C26352b[] c26352bArr2 = this.f73611j;
                int i3 = this.f73612k;
                c26352bArr2[i3] = c26352b;
                this.f73612k = i3 + 1;
                return;
            } else if (this.f73611j[i] == c26352b) {
                return;
            } else {
                i++;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0034, code lost:
        r5.f73612k--;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x003e, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001a, code lost:
        if (r8 >= (r0 - 1)) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001d, code lost:
        r0 = r5.f73611j;
        r0 = r8 + 1;
        r0[r8] = r0[r0];
        r8 = r0;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m2111b(p1727n3.p1795i.p1799b.C26352b r6) {
        /*
            r5 = this;
            r0 = r5
            int r0 = r0.f73612k
            r7 = r0
            r0 = 0
            r8 = r0
        L7:
            r0 = r8
            r1 = r7
            if (r0 >= r1) goto L45
            r0 = r5
            n3.i.b.b[] r0 = r0.f73611j
            r1 = r8
            r0 = r0[r1]
            r1 = r6
            if (r0 != r1) goto L3f
        L16:
            r0 = r8
            r1 = r7
            r2 = 1
            int r1 = r1 - r2
            if (r0 >= r1) goto L34
            r0 = r5
            n3.i.b.b[] r0 = r0.f73611j
            r6 = r0
            r0 = r8
            r1 = 1
            int r0 = r0 + r1
            r9 = r0
            r0 = r6
            r1 = r8
            r2 = r6
            r3 = r9
            r2 = r2[r3]
            r0[r1] = r2
            r0 = r9
            r8 = r0
            goto L16
        L34:
            r0 = r5
            r1 = r5
            int r1 = r1.f73612k
            r2 = 1
            int r1 = r1 - r2
            r0.f73612k = r1
            return
        L3f:
            int r8 = r8 + 1
            goto L7
        L45:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1795i.p1799b.C26358g.m2111b(n3.i.b.b):void");
    }

    /* renamed from: c */
    public void m2110c() {
        this.f73610i = EnumC26359a.UNKNOWN;
        this.f73605d = 0;
        this.f73603b = -1;
        this.f73604c = -1;
        this.f73606e = 0.0f;
        this.f73607f = false;
        this.f73614m = -1;
        int i = this.f73612k;
        for (int i2 = 0; i2 < i; i2++) {
            this.f73611j[i2] = null;
        }
        this.f73612k = 0;
        this.f73613l = 0;
        this.f73602a = false;
        Arrays.fill(this.f73609h, 0.0f);
    }

    /* renamed from: d */
    public void m2109d(C26355d c26355d, float f) {
        this.f73606e = f;
        this.f73607f = true;
        this.f73614m = -1;
        int i = this.f73612k;
        this.f73604c = -1;
        for (int i2 = 0; i2 < i; i2++) {
            this.f73611j[i2].m2150k(c26355d, this, false);
        }
        this.f73612k = 0;
    }

    /* renamed from: e */
    public final void m2108e(C26355d c26355d, C26352b c26352b) {
        int i = this.f73612k;
        for (int i2 = 0; i2 < i; i2++) {
            this.f73611j[i2].m2149l(c26355d, c26352b, false);
        }
        this.f73612k = 0;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("");
        m8728C.append(this.f73603b);
        return m8728C.toString();
    }
}
