package androidx.constraintlayout.motion.widget;

import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintAttribute;
import d.f.a.a.b;
import java.text.DecimalFormat;
import java.util.Arrays;
/* renamed from: androidx.constraintlayout.motion.widget.r */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r.class */
public abstract class AbstractC0192r {

    /* renamed from: a */
    protected b f970a;

    /* renamed from: b */
    protected int[] f971b = new int[10];

    /* renamed from: c */
    protected float[] f972c = new float[10];

    /* renamed from: d */
    private int f973d;

    /* renamed from: e */
    private String f974e;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.constraintlayout.motion.widget.r$m */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r$m.class */
    public static class C0193m {
        /* renamed from: a */
        static void m14116a(int[] iArr, float[] fArr, int i, int i2) {
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
                    int m14115b = m14115b(iArr, fArr, i5, i7);
                    int i8 = i6 + 1;
                    iArr2[i6] = m14115b - 1;
                    int i9 = i8 + 1;
                    iArr2[i8] = i5;
                    int i10 = i9 + 1;
                    iArr2[i9] = i7;
                    i3 = i10 + 1;
                    iArr2[i10] = m14115b + 1;
                }
            }
        }

        /* renamed from: b */
        private static int m14115b(int[] iArr, float[] fArr, int i, int i2) {
            int i3 = iArr[i2];
            int i4 = i;
            while (true) {
                int i5 = i4;
                if (i >= i2) {
                    m14114c(iArr, fArr, i5, i2);
                    return i5;
                }
                int i6 = i5;
                if (iArr[i] <= i3) {
                    m14114c(iArr, fArr, i5, i);
                    i6 = i5 + 1;
                }
                i++;
                i4 = i6;
            }
        }

        /* renamed from: c */
        private static void m14114c(int[] iArr, float[] fArr, int i, int i2) {
            int i3 = iArr[i];
            iArr[i] = iArr[i2];
            iArr[i2] = i3;
            float f = fArr[i];
            fArr[i] = fArr[i2];
            fArr[i2] = f;
        }
    }

    /* renamed from: c */
    public static AbstractC0192r m14122c(String str, SparseArray<ConstraintAttribute> sparseArray) {
        return new b(str, sparseArray);
    }

    /* renamed from: d */
    public static AbstractC0192r m14121d(String str) {
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
            case -797520672:
                if (str.equals("waveVariesBy")) {
                    z = true;
                    break;
                }
                break;
            case -760884510:
                if (str.equals("transformPivotX")) {
                    z = true;
                    break;
                }
                break;
            case -760884509:
                if (str.equals("transformPivotY")) {
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
            case 156108012:
                if (str.equals("waveOffset")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                return new i();
            case true:
                return new j();
            case true:
                return new n();
            case true:
                return new o();
            case true:
                return new p();
            case true:
                return new g();
            case true:
                return new k();
            case true:
                return new l();
            case true:
                return new a();
            case true:
                return new e();
            case true:
                return new f();
            case true:
                return new h();
            case true:
                return new c();
            case true:
                return new d();
            case true:
                return new a();
            case true:
                return new a();
            default:
                return null;
        }
    }

    /* renamed from: a */
    public float m14124a(float f) {
        return (float) this.f970a.c(f, 0);
    }

    /* renamed from: b */
    public float m14123b(float f) {
        return (float) this.f970a.f(f, 0);
    }

    /* renamed from: e */
    public void m14120e(int i, float f) {
        int[] iArr = this.f971b;
        if (iArr.length < this.f973d + 1) {
            this.f971b = Arrays.copyOf(iArr, iArr.length * 2);
            float[] fArr = this.f972c;
            this.f972c = Arrays.copyOf(fArr, fArr.length * 2);
        }
        int[] iArr2 = this.f971b;
        int i2 = this.f973d;
        iArr2[i2] = i;
        this.f972c[i2] = f;
        this.f973d = i2 + 1;
    }

    /* renamed from: f */
    public abstract void m14119f(View view, float f);

    /* renamed from: g */
    public void m14118g(String str) {
        this.f974e = str;
    }

    /* renamed from: h */
    public void m14117h(int i) {
        int i2;
        int i3 = this.f973d;
        if (i3 == 0) {
            return;
        }
        C0193m.m14116a(this.f971b, this.f972c, 0, i3 - 1);
        int i4 = 1;
        int i5 = 1;
        while (true) {
            i2 = i5;
            if (i4 >= this.f973d) {
                break;
            }
            int[] iArr = this.f971b;
            int i6 = i2;
            if (iArr[i4 - 1] != iArr[i4]) {
                i6 = i2 + 1;
            }
            i4++;
            i5 = i6;
        }
        double[] dArr = new double[i2];
        double[][] dArr2 = new double[i2][1];
        int i7 = 0;
        for (int i8 = 0; i8 < this.f973d; i8++) {
            if (i8 > 0) {
                int[] iArr2 = this.f971b;
                if (iArr2[i8] == iArr2[i8 - 1]) {
                }
            }
            double d = this.f971b[i8];
            Double.isNaN(d);
            dArr[i7] = d * 0.01d;
            dArr2[i7][0] = this.f972c[i8];
            i7++;
        }
        this.f970a = b.a(i, dArr, dArr2);
    }

    public String toString() {
        String str = this.f974e;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (int i = 0; i < this.f973d; i++) {
            str = str + "[" + this.f971b[i] + " , " + decimalFormat.format(this.f972c[i]) + "] ";
        }
        return str;
    }
}
