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

    /* renamed from: androidx.constraintlayout.motion.widget.r$m */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r$m.class */
    private static class C0193m {
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
                    int b = m14115b(iArr, fArr, i5, i7);
                    int i8 = i6 + 1;
                    iArr2[i6] = b - 1;
                    int i9 = i8 + 1;
                    iArr2[i8] = i5;
                    int i10 = i9 + 1;
                    iArr2[i9] = i7;
                    i3 = i10 + 1;
                    iArr2[i10] = b + 1;
                }
            }
        }

        /* renamed from: b */
        private static int m14115b(int[] iArr, float[] fArr, int i, int i2) {
            int i3 = iArr[i2];
            int i4 = i;
            while (i < i2) {
                i4 = i4;
                if (iArr[i] <= i3) {
                    m14114c(iArr, fArr, i4, i);
                    i4++;
                }
                i++;
            }
            m14114c(iArr, fArr, i4, i2);
            return i4;
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static AbstractC0192r m14122c(String str, SparseArray<ConstraintAttribute> sparseArray) {
        return new b(str, sparseArray);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static AbstractC0192r m14121d(String str) {
        str.hashCode();
        char c = 65535;
        switch (str.hashCode()) {
            case -1249320806:
                if (str.equals("rotationX")) {
                    c = 0;
                    break;
                }
                break;
            case -1249320805:
                if (str.equals("rotationY")) {
                    c = 1;
                    break;
                }
                break;
            case -1225497657:
                if (str.equals("translationX")) {
                    c = 2;
                    break;
                }
                break;
            case -1225497656:
                if (str.equals("translationY")) {
                    c = 3;
                    break;
                }
                break;
            case -1225497655:
                if (str.equals("translationZ")) {
                    c = 4;
                    break;
                }
                break;
            case -1001078227:
                if (str.equals("progress")) {
                    c = 5;
                    break;
                }
                break;
            case -908189618:
                if (str.equals("scaleX")) {
                    c = 6;
                    break;
                }
                break;
            case -908189617:
                if (str.equals("scaleY")) {
                    c = 7;
                    break;
                }
                break;
            case -797520672:
                if (str.equals("waveVariesBy")) {
                    c = '\b';
                    break;
                }
                break;
            case -760884510:
                if (str.equals("transformPivotX")) {
                    c = '\t';
                    break;
                }
                break;
            case -760884509:
                if (str.equals("transformPivotY")) {
                    c = '\n';
                    break;
                }
                break;
            case -40300674:
                if (str.equals("rotation")) {
                    c = 11;
                    break;
                }
                break;
            case -4379043:
                if (str.equals("elevation")) {
                    c = '\f';
                    break;
                }
                break;
            case 37232917:
                if (str.equals("transitionPathRotate")) {
                    c = '\r';
                    break;
                }
                break;
            case 92909918:
                if (str.equals("alpha")) {
                    c = 14;
                    break;
                }
                break;
            case 156108012:
                if (str.equals("waveOffset")) {
                    c = 15;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return new i();
            case 1:
                return new j();
            case 2:
                return new n();
            case 3:
                return new o();
            case 4:
                return new p();
            case 5:
                return new g();
            case 6:
                return new k();
            case 7:
                return new l();
            case '\b':
                return new a();
            case '\t':
                return new e();
            case '\n':
                return new f();
            case 11:
                return new h();
            case '\f':
                return new c();
            case '\r':
                return new d();
            case 14:
                return new a();
            case 15:
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
        int i2 = this.f973d;
        if (i2 != 0) {
            C0193m.m14116a(this.f971b, this.f972c, 0, i2 - 1);
            int i3 = 1;
            for (int i4 = 1; i4 < this.f973d; i4++) {
                int[] iArr = this.f971b;
                i3 = i3;
                if (iArr[i4 - 1] != iArr[i4]) {
                    i3++;
                }
            }
            double[] dArr = new double[i3];
            double[][] dArr2 = new double[i3][1];
            int i5 = 0;
            for (int i6 = 0; i6 < this.f973d; i6++) {
                if (i6 > 0) {
                    int[] iArr2 = this.f971b;
                    if (iArr2[i6] == iArr2[i6 - 1]) {
                    }
                }
                double d = this.f971b[i6];
                Double.isNaN(d);
                dArr[i5] = d * 0.01d;
                dArr2[i5][0] = this.f972c[i6];
                i5++;
            }
            this.f970a = b.a(i, dArr, dArr2);
        }
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
