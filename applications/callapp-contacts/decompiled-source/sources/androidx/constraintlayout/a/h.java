package androidx.constraintlayout.a;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;
import java.util.HashSet;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/h.class */
public final class h {
    private static int q = 1;
    private static int r = 1;
    private static int s = 1;
    private static int t = 1;
    private static int u = 1;

    /* renamed from: a  reason: collision with root package name */
    public boolean f1416a;

    /* renamed from: b  reason: collision with root package name */
    public int f1417b;

    /* renamed from: c  reason: collision with root package name */
    int f1418c;

    /* renamed from: d  reason: collision with root package name */
    public int f1419d;
    public float e;
    public boolean f;
    float[] g;
    float[] h;
    a i;
    b[] j;
    int k;
    public int l;
    boolean m;
    int n;
    float o;
    HashSet<b> p;
    private String v;

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/a/h$a.class */
    public enum a {
        UNRESTRICTED,
        CONSTANT,
        SLACK,
        ERROR,
        UNKNOWN
    }

    public h(a aVar, String str) {
        this.f1417b = -1;
        this.f1418c = -1;
        this.f1419d = 0;
        this.f = false;
        this.g = new float[9];
        this.h = new float[9];
        this.j = new b[16];
        this.k = 0;
        this.l = 0;
        this.m = false;
        this.n = -1;
        this.o = BitmapDescriptorFactory.HUE_RED;
        this.p = null;
        this.i = aVar;
    }

    public h(String str, a aVar) {
        this.f1417b = -1;
        this.f1418c = -1;
        this.f1419d = 0;
        this.f = false;
        this.g = new float[9];
        this.h = new float[9];
        this.j = new b[16];
        this.k = 0;
        this.l = 0;
        this.m = false;
        this.n = -1;
        this.o = BitmapDescriptorFactory.HUE_RED;
        this.p = null;
        this.v = str;
        this.i = aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a() {
        r++;
    }

    public final void a(b bVar) {
        int i = 0;
        while (true) {
            int i2 = this.k;
            if (i >= i2) {
                b[] bVarArr = this.j;
                if (i2 >= bVarArr.length) {
                    this.j = (b[]) Arrays.copyOf(bVarArr, bVarArr.length * 2);
                }
                b[] bVarArr2 = this.j;
                int i3 = this.k;
                bVarArr2[i3] = bVar;
                this.k = i3 + 1;
                return;
            } else if (this.j[i] != bVar) {
                i++;
            } else {
                return;
            }
        }
    }

    public final void a(d dVar, float f) {
        this.e = f;
        this.f = true;
        this.m = false;
        this.n = -1;
        this.o = BitmapDescriptorFactory.HUE_RED;
        int i = this.k;
        this.f1418c = -1;
        for (int i2 = 0; i2 < i; i2++) {
            this.j[i2].a(dVar, this, false);
        }
        this.k = 0;
    }

    public final void a(d dVar, b bVar) {
        int i = this.k;
        for (int i2 = 0; i2 < i; i2++) {
            this.j[i2].a(dVar, bVar, false);
        }
        this.k = 0;
    }

    public final void b() {
        this.v = null;
        this.i = a.UNKNOWN;
        this.f1419d = 0;
        this.f1417b = -1;
        this.f1418c = -1;
        this.e = BitmapDescriptorFactory.HUE_RED;
        this.f = false;
        this.m = false;
        this.n = -1;
        this.o = BitmapDescriptorFactory.HUE_RED;
        int i = this.k;
        for (int i2 = 0; i2 < i; i2++) {
            this.j[i2] = null;
        }
        this.k = 0;
        this.l = 0;
        this.f1416a = false;
        Arrays.fill(this.h, (float) BitmapDescriptorFactory.HUE_RED);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0034, code lost:
        r5.k--;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x003e, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x001a, code lost:
        if (r8 >= (r0 - 1)) goto L_0x0034;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x001d, code lost:
        r0 = r5.j;
        r0 = r8 + 1;
        r0[r8] = r0[r0];
        r8 = r0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(androidx.constraintlayout.a.b r6) {
        /*
            r5 = this;
            r0 = r5
            int r0 = r0.k
            r7 = r0
            r0 = 0
            r8 = r0
        L_0x0007:
            r0 = r8
            r1 = r7
            if (r0 >= r1) goto L_0x0045
            r0 = r5
            androidx.constraintlayout.a.b[] r0 = r0.j
            r1 = r8
            r0 = r0[r1]
            r1 = r6
            if (r0 != r1) goto L_0x003f
        L_0x0016:
            r0 = r8
            r1 = r7
            r2 = 1
            int r1 = r1 - r2
            if (r0 >= r1) goto L_0x0034
            r0 = r5
            androidx.constraintlayout.a.b[] r0 = r0.j
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
            goto L_0x0016
        L_0x0034:
            r0 = r5
            r1 = r5
            int r1 = r1.k
            r2 = 1
            int r1 = r1 - r2
            r0.k = r1
            return
        L_0x003f:
            int r8 = r8 + 1
            goto L_0x0007
        L_0x0045:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.a.h.b(androidx.constraintlayout.a.b):void");
    }

    public final String toString() {
        String str;
        if (this.v != null) {
            str = "" + this.v;
        } else {
            str = "" + this.f1417b;
        }
        return str;
    }
}
