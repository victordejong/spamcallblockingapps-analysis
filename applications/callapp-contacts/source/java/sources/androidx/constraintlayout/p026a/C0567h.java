package androidx.constraintlayout.p026a;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;
import java.util.HashSet;
/* renamed from: androidx.constraintlayout.a.h */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/h.class */
public final class C0567h {

    /* renamed from: q */
    private static int f2314q = 1;

    /* renamed from: r */
    private static int f2315r = 1;

    /* renamed from: s */
    private static int f2316s = 1;

    /* renamed from: t */
    private static int f2317t = 1;

    /* renamed from: u */
    private static int f2318u = 1;

    /* renamed from: a */
    public boolean f2319a;

    /* renamed from: b */
    public int f2320b;

    /* renamed from: c */
    int f2321c;

    /* renamed from: d */
    public int f2322d;

    /* renamed from: e */
    public float f2323e;

    /* renamed from: f */
    public boolean f2324f;

    /* renamed from: g */
    float[] f2325g;

    /* renamed from: h */
    float[] f2326h;

    /* renamed from: i */
    EnumC0568a f2327i;

    /* renamed from: j */
    C0554b[] f2328j;

    /* renamed from: k */
    int f2329k;

    /* renamed from: l */
    public int f2330l;

    /* renamed from: m */
    boolean f2331m;

    /* renamed from: n */
    int f2332n;

    /* renamed from: o */
    float f2333o;

    /* renamed from: p */
    HashSet<C0554b> f2334p;

    /* renamed from: v */
    private String f2335v;

    /* renamed from: androidx.constraintlayout.a.h$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/h$a.class */
    public enum EnumC0568a {
        UNRESTRICTED,
        CONSTANT,
        SLACK,
        ERROR,
        UNKNOWN
    }

    public C0567h(EnumC0568a enumC0568a, String str) {
        this.f2320b = -1;
        this.f2321c = -1;
        this.f2322d = 0;
        this.f2324f = false;
        this.f2325g = new float[9];
        this.f2326h = new float[9];
        this.f2328j = new C0554b[16];
        this.f2329k = 0;
        this.f2330l = 0;
        this.f2331m = false;
        this.f2332n = -1;
        this.f2333o = BitmapDescriptorFactory.HUE_RED;
        this.f2334p = null;
        this.f2327i = enumC0568a;
    }

    public C0567h(String str, EnumC0568a enumC0568a) {
        this.f2320b = -1;
        this.f2321c = -1;
        this.f2322d = 0;
        this.f2324f = false;
        this.f2325g = new float[9];
        this.f2326h = new float[9];
        this.f2328j = new C0554b[16];
        this.f2329k = 0;
        this.f2330l = 0;
        this.f2331m = false;
        this.f2332n = -1;
        this.f2333o = BitmapDescriptorFactory.HUE_RED;
        this.f2334p = null;
        this.f2335v = str;
        this.f2327i = enumC0568a;
    }

    /* renamed from: a */
    public static void m45112a() {
        f2315r++;
    }

    /* renamed from: a */
    public final void m45111a(C0554b c0554b) {
        int i = 0;
        while (true) {
            int i2 = this.f2329k;
            if (i >= i2) {
                C0554b[] c0554bArr = this.f2328j;
                if (i2 >= c0554bArr.length) {
                    this.f2328j = (C0554b[]) Arrays.copyOf(c0554bArr, c0554bArr.length * 2);
                }
                C0554b[] c0554bArr2 = this.f2328j;
                int i3 = this.f2329k;
                c0554bArr2[i3] = c0554b;
                this.f2329k = i3 + 1;
                return;
            } else if (this.f2328j[i] == c0554b) {
                return;
            } else {
                i++;
            }
        }
    }

    /* renamed from: a */
    public final void m45110a(C0557d c0557d, float f) {
        this.f2323e = f;
        this.f2324f = true;
        this.f2331m = false;
        this.f2332n = -1;
        this.f2333o = BitmapDescriptorFactory.HUE_RED;
        int i = this.f2329k;
        this.f2321c = -1;
        for (int i2 = 0; i2 < i; i2++) {
            this.f2328j[i2].m45158a(c0557d, this, false);
        }
        this.f2329k = 0;
    }

    /* renamed from: a */
    public final void m45109a(C0557d c0557d, C0554b c0554b) {
        int i = this.f2329k;
        for (int i2 = 0; i2 < i; i2++) {
            this.f2328j[i2].mo45119a(c0557d, c0554b, false);
        }
        this.f2329k = 0;
    }

    /* renamed from: b */
    public final void m45108b() {
        this.f2335v = null;
        this.f2327i = EnumC0568a.UNKNOWN;
        this.f2322d = 0;
        this.f2320b = -1;
        this.f2321c = -1;
        this.f2323e = BitmapDescriptorFactory.HUE_RED;
        this.f2324f = false;
        this.f2331m = false;
        this.f2332n = -1;
        this.f2333o = BitmapDescriptorFactory.HUE_RED;
        int i = this.f2329k;
        for (int i2 = 0; i2 < i; i2++) {
            this.f2328j[i2] = null;
        }
        this.f2329k = 0;
        this.f2330l = 0;
        this.f2319a = false;
        Arrays.fill(this.f2326h, (float) BitmapDescriptorFactory.HUE_RED);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0034, code lost:
        r5.f2329k--;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x003e, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001a, code lost:
        if (r8 >= (r0 - 1)) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001d, code lost:
        r0 = r5.f2328j;
        r0 = r8 + 1;
        r0[r8] = r0[r0];
        r8 = r0;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m45107b(androidx.constraintlayout.p026a.C0554b r6) {
        /*
            r5 = this;
            r0 = r5
            int r0 = r0.f2329k
            r7 = r0
            r0 = 0
            r8 = r0
        L7:
            r0 = r8
            r1 = r7
            if (r0 >= r1) goto L45
            r0 = r5
            androidx.constraintlayout.a.b[] r0 = r0.f2328j
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
            androidx.constraintlayout.a.b[] r0 = r0.f2328j
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
            int r1 = r1.f2329k
            r2 = 1
            int r1 = r1 - r2
            r0.f2329k = r1
            return
        L3f:
            int r8 = r8 + 1
            goto L7
        L45:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.p026a.C0567h.m45107b(androidx.constraintlayout.a.b):void");
    }

    public final String toString() {
        String str;
        if (this.f2335v != null) {
            str = "" + this.f2335v;
        } else {
            str = "" + this.f2320b;
        }
        return str;
    }
}
