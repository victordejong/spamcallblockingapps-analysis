package androidx.constraintlayout.motion.widget;

import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintAttribute;
import d.f.a.a.b;
import java.text.DecimalFormat;
/* renamed from: androidx.constraintlayout.motion.widget.s */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/s.class */
public abstract class AbstractC0194s {

    /* renamed from: k */
    private static float f975k = 6.2831855f;

    /* renamed from: a */
    protected b f976a;

    /* renamed from: e */
    private int f980e;

    /* renamed from: f */
    private String f981f;

    /* renamed from: i */
    long f984i;

    /* renamed from: b */
    protected int f977b = 0;

    /* renamed from: c */
    protected int[] f978c = new int[10];

    /* renamed from: d */
    protected float[][] f979d = new float[10][3];

    /* renamed from: g */
    private float[] f982g = new float[3];

    /* renamed from: h */
    protected boolean f983h = false;

    /* renamed from: j */
    float f985j = Float.NaN;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.constraintlayout.motion.widget.s$k */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/s$k.class */
    public static class C0195k {
        /* renamed from: a */
        static void m14104a(int[] iArr, float[][] fArr, int i, int i2) {
            int[] iArr2 = new int[iArr.length + 10];
            iArr2[0] = i2;
            iArr2[1] = i;
            int i3 = 2;
            while (i3 > 0) {
                int i4 = i3 - 1;
                int i5 = iArr2[i4];
                int i6 = i4 - 1;
                int i7 = iArr2[i6];
                i3 = i6;
                if (i5 < i7) {
                    int m14103b = m14103b(iArr, fArr, i5, i7);
                    int i8 = i6 + 1;
                    iArr2[i6] = m14103b - 1;
                    int i9 = i8 + 1;
                    iArr2[i8] = i5;
                    int i10 = i9 + 1;
                    iArr2[i9] = i7;
                    i3 = i10 + 1;
                    iArr2[i10] = m14103b + 1;
                }
            }
        }

        /* renamed from: b */
        private static int m14103b(int[] iArr, float[][] fArr, int i, int i2) {
            int i3 = iArr[i2];
            int i4 = i;
            while (true) {
                int i5 = i4;
                if (i >= i2) {
                    m14102c(iArr, fArr, i5, i2);
                    return i5;
                }
                int i6 = i5;
                if (iArr[i] <= i3) {
                    m14102c(iArr, fArr, i5, i);
                    i6 = i5 + 1;
                }
                i++;
                i4 = i6;
            }
        }

        /* renamed from: c */
        private static void m14102c(int[] iArr, float[][] fArr, int i, int i2) {
            int i3 = iArr[i];
            iArr[i] = iArr[i2];
            iArr[i2] = i3;
            float[] fArr2 = fArr[i];
            fArr[i] = fArr[i2];
            fArr[i2] = fArr2;
        }
    }

    /* renamed from: c */
    public static AbstractC0194s m14111c(String str, SparseArray<ConstraintAttribute> sparseArray) {
        return new b(str, sparseArray);
    }

    /* renamed from: d */
    public static AbstractC0194s m14110d(String str, long j) {
        AbstractC0194s abstractC0194s;
        str.hashCode();
        boolean z = true;
        switch (str.hashCode()) {
            case -1249320806:
                if (str.equals("rotationX")) {
                    z = false;
                    break;
                }
                break;
            case -1249320805:
                if (str.equals("rotationY")) {
                    z = true;
                    break;
                }
                break;
            case -1225497657:
                if (str.equals("translationX")) {
                    z = true;
                    break;
                }
                break;
            case -1225497656:
                if (str.equals("translationY")) {
                    z = true;
                    break;
                }
                break;
            case -1225497655:
                if (str.equals("translationZ")) {
                    z = true;
                    break;
                }
                break;
            case -1001078227:
                if (str.equals("progress")) {
                    z = true;
                    break;
                }
                break;
            case -908189618:
                if (str.equals("scaleX")) {
                    z = true;
                    break;
                }
                break;
            case -908189617:
                if (str.equals("scaleY")) {
                    z = true;
                    break;
                }
                break;
            case -40300674:
                if (str.equals("rotation")) {
                    z = true;
                    break;
                }
                break;
            case -4379043:
                if (str.equals("elevation")) {
                    z = true;
                    break;
                }
                break;
            case 37232917:
                if (str.equals("transitionPathRotate")) {
                    z = true;
                    break;
                }
                break;
            case 92909918:
                if (str.equals("alpha")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                abstractC0194s = new g();
                break;
            case true:
                abstractC0194s = new h();
                break;
            case true:
                abstractC0194s = new l();
                break;
            case true:
                abstractC0194s = new m();
                break;
            case true:
                abstractC0194s = new n();
                break;
            case true:
                abstractC0194s = new e();
                break;
            case true:
                abstractC0194s = new i();
                break;
            case true:
                abstractC0194s = new j();
                break;
            case true:
                abstractC0194s = new f();
                break;
            case true:
                abstractC0194s = new c();
                break;
            case true:
                abstractC0194s = new d();
                break;
            case true:
                abstractC0194s = new a();
                break;
            default:
                return null;
        }
        abstractC0194s.m14107g(j);
        return abstractC0194s;
    }

    /* renamed from: a */
    protected float m14113a(float f) {
        float abs;
        switch (this.f977b) {
            case 1:
                return Math.signum(f * f975k);
            case 2:
                abs = Math.abs(f);
                break;
            case 3:
                return (((f * 2.0f) + 1.0f) % 2.0f) - 1.0f;
            case 4:
                abs = ((f * 2.0f) + 1.0f) % 2.0f;
                break;
            case 5:
                return (float) Math.cos(f * f975k);
            case 6:
                float abs2 = 1.0f - Math.abs(((f * 4.0f) % 4.0f) - 2.0f);
                abs = abs2 * abs2;
                break;
            default:
                return (float) Math.sin(f * f975k);
        }
        return 1.0f - abs;
    }

    /* renamed from: b */
    public float m14112b(float f, long j, View view, C0178e c0178e) {
        this.f976a.e(f, this.f982g);
        float[] fArr = this.f982g;
        float f2 = fArr[1];
        if (f2 == 0.0f) {
            this.f983h = false;
            return fArr[2];
        }
        if (Float.isNaN(this.f985j)) {
            float m14273a = c0178e.m14273a(view, this.f981f, 0);
            this.f985j = m14273a;
            if (Float.isNaN(m14273a)) {
                this.f985j = 0.0f;
            }
        }
        long j2 = this.f984i;
        double d = this.f985j;
        double d2 = j - j2;
        Double.isNaN(d2);
        double d3 = f2;
        Double.isNaN(d3);
        Double.isNaN(d);
        float f3 = (float) ((d + ((d2 * 1.0E-9d) * d3)) % 1.0d);
        this.f985j = f3;
        c0178e.m14272b(view, this.f981f, 0, f3);
        this.f984i = j;
        float f4 = this.f982g[0];
        float m14113a = m14113a(this.f985j);
        float f5 = this.f982g[2];
        boolean z = true;
        if (f4 == 0.0f) {
            z = f2 != 0.0f;
        }
        this.f983h = z;
        return (m14113a * f4) + f5;
    }

    /* renamed from: e */
    public void m14109e(int i, float f, float f2, int i2, float f3) {
        int[] iArr = this.f978c;
        int i3 = this.f980e;
        iArr[i3] = i;
        float[][] fArr = this.f979d;
        fArr[i3][0] = f;
        fArr[i3][1] = f2;
        fArr[i3][2] = f3;
        this.f977b = Math.max(this.f977b, i2);
        this.f980e++;
    }

    /* renamed from: f */
    public abstract boolean m14108f(View view, float f, long j, C0178e c0178e);

    /* renamed from: g */
    protected void m14107g(long j) {
        this.f984i = j;
    }

    /* renamed from: h */
    public void m14106h(String str) {
        this.f981f = str;
    }

    /* renamed from: i */
    public void m14105i(int i) {
        int i2;
        int i3 = this.f980e;
        if (i3 == 0) {
            Log.e("SplineSet", "Error no points added to " + this.f981f);
            return;
        }
        C0195k.m14104a(this.f978c, this.f979d, 0, i3 - 1);
        int i4 = 1;
        int i5 = 0;
        while (true) {
            i2 = i5;
            int[] iArr = this.f978c;
            if (i4 >= iArr.length) {
                break;
            }
            int i6 = i2;
            if (iArr[i4] != iArr[i4 - 1]) {
                i6 = i2 + 1;
            }
            i4++;
            i5 = i6;
        }
        int i7 = i2;
        if (i2 == 0) {
            i7 = 1;
        }
        double[] dArr = new double[i7];
        double[][] dArr2 = new double[i7][3];
        int i8 = 0;
        for (int i9 = 0; i9 < this.f980e; i9++) {
            if (i9 > 0) {
                int[] iArr2 = this.f978c;
                if (iArr2[i9] == iArr2[i9 - 1]) {
                }
            }
            double d = this.f978c[i9];
            Double.isNaN(d);
            dArr[i8] = d * 0.01d;
            double[] dArr3 = dArr2[i8];
            float[][] fArr = this.f979d;
            dArr3[0] = fArr[i9][0];
            dArr2[i8][1] = fArr[i9][1];
            dArr2[i8][2] = fArr[i9][2];
            i8++;
        }
        this.f976a = b.a(i, dArr, dArr2);
    }

    public String toString() {
        String str = this.f981f;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (int i = 0; i < this.f980e; i++) {
            str = str + "[" + this.f978c[i] + " , " + decimalFormat.format(this.f979d[i]) + "] ";
        }
        return str;
    }
}
