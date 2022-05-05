package androidx.constraintlayout.motion.widget;

import android.os.Build;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.motion.utils.CurveFit;
import androidx.constraintlayout.widget.ConstraintAttribute;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.DecimalFormat;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/SplineSet.class */
public abstract class SplineSet {

    /* renamed from: a */
    protected CurveFit f1984a;

    /* renamed from: b */
    protected int[] f1985b = new int[10];

    /* renamed from: c */
    protected float[] f1986c = new float[10];

    /* renamed from: d */
    private int f1987d;

    /* renamed from: e */
    private String f1988e;

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/SplineSet$AlphaSet.class */
    static class AlphaSet extends SplineSet {
        AlphaSet() {
        }

        @Override // androidx.constraintlayout.motion.widget.SplineSet
        /* renamed from: f */
        public void mo20567f(View view, float f) {
            view.setAlpha(m20579a(f));
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/SplineSet$CustomSet.class */
    static class CustomSet extends SplineSet {

        /* renamed from: f */
        SparseArray<ConstraintAttribute> f1989f;

        /* renamed from: g */
        float[] f1990g;

        public CustomSet(String str, SparseArray<ConstraintAttribute> sparseArray) {
            String str2 = str.split(",")[1];
            this.f1989f = sparseArray;
        }

        @Override // androidx.constraintlayout.motion.widget.SplineSet
        /* renamed from: e */
        public void mo20574e(int i, float f) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute)");
        }

        @Override // androidx.constraintlayout.motion.widget.SplineSet
        /* renamed from: f */
        public void mo20567f(View view, float f) {
            this.f1984a.mo20968e(f, this.f1990g);
            this.f1989f.valueAt(0).m20067i(view, this.f1990g);
        }

        @Override // androidx.constraintlayout.motion.widget.SplineSet
        /* renamed from: h */
        public void mo20573h(int i) {
            int size = this.f1989f.size();
            int f = this.f1989f.valueAt(0).m20070f();
            double[] dArr = new double[size];
            this.f1990g = new float[f];
            double[][] dArr2 = new double[size][f];
            for (int i2 = 0; i2 < size; i2++) {
                dArr[i2] = this.f1989f.keyAt(i2) * 0.01d;
                this.f1989f.valueAt(i2).m20071e(this.f1990g);
                int i3 = 0;
                while (true) {
                    float[] fArr = this.f1990g;
                    if (i3 < fArr.length) {
                        dArr2[i2][i3] = fArr[i3];
                        i3++;
                    }
                }
            }
            this.f1984a = CurveFit.m20977a(i, dArr, dArr2);
        }

        /* renamed from: i */
        public void m20572i(int i, ConstraintAttribute constraintAttribute) {
            this.f1989f.append(i, constraintAttribute);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/SplineSet$ElevationSet.class */
    static class ElevationSet extends SplineSet {
        ElevationSet() {
        }

        @Override // androidx.constraintlayout.motion.widget.SplineSet
        /* renamed from: f */
        public void mo20567f(View view, float f) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setElevation(m20579a(f));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/SplineSet$PathRotate.class */
    public static class PathRotate extends SplineSet {
        PathRotate() {
        }

        @Override // androidx.constraintlayout.motion.widget.SplineSet
        /* renamed from: f */
        public void mo20567f(View view, float f) {
        }

        /* renamed from: i */
        public void m20571i(View view, float f, double d, double d2) {
            view.setRotation(m20579a(f) + ((float) Math.toDegrees(Math.atan2(d2, d))));
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/SplineSet$PivotXset.class */
    static class PivotXset extends SplineSet {
        PivotXset() {
        }

        @Override // androidx.constraintlayout.motion.widget.SplineSet
        /* renamed from: f */
        public void mo20567f(View view, float f) {
            view.setPivotX(m20579a(f));
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/SplineSet$PivotYset.class */
    static class PivotYset extends SplineSet {
        PivotYset() {
        }

        @Override // androidx.constraintlayout.motion.widget.SplineSet
        /* renamed from: f */
        public void mo20567f(View view, float f) {
            view.setPivotY(m20579a(f));
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/SplineSet$ProgressSet.class */
    static class ProgressSet extends SplineSet {

        /* renamed from: f */
        boolean f1991f = false;

        ProgressSet() {
        }

        @Override // androidx.constraintlayout.motion.widget.SplineSet
        /* renamed from: f */
        public void mo20567f(View view, float f) {
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress(m20579a(f));
            } else if (!this.f1991f) {
                Method method = null;
                try {
                    method = view.getClass().getMethod("setProgress", Float.TYPE);
                } catch (NoSuchMethodException e) {
                    this.f1991f = true;
                }
                if (method != null) {
                    try {
                        method.invoke(view, Float.valueOf(m20579a(f)));
                    } catch (IllegalAccessException e2) {
                        Log.e("SplineSet", "unable to setProgress", e2);
                    } catch (InvocationTargetException e3) {
                        Log.e("SplineSet", "unable to setProgress", e3);
                    }
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/SplineSet$RotationSet.class */
    static class RotationSet extends SplineSet {
        RotationSet() {
        }

        @Override // androidx.constraintlayout.motion.widget.SplineSet
        /* renamed from: f */
        public void mo20567f(View view, float f) {
            view.setRotation(m20579a(f));
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/SplineSet$RotationXset.class */
    static class RotationXset extends SplineSet {
        RotationXset() {
        }

        @Override // androidx.constraintlayout.motion.widget.SplineSet
        /* renamed from: f */
        public void mo20567f(View view, float f) {
            view.setRotationX(m20579a(f));
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/SplineSet$RotationYset.class */
    static class RotationYset extends SplineSet {
        RotationYset() {
        }

        @Override // androidx.constraintlayout.motion.widget.SplineSet
        /* renamed from: f */
        public void mo20567f(View view, float f) {
            view.setRotationY(m20579a(f));
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/SplineSet$ScaleXset.class */
    static class ScaleXset extends SplineSet {
        ScaleXset() {
        }

        @Override // androidx.constraintlayout.motion.widget.SplineSet
        /* renamed from: f */
        public void mo20567f(View view, float f) {
            view.setScaleX(m20579a(f));
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/SplineSet$ScaleYset.class */
    static class ScaleYset extends SplineSet {
        ScaleYset() {
        }

        @Override // androidx.constraintlayout.motion.widget.SplineSet
        /* renamed from: f */
        public void mo20567f(View view, float f) {
            view.setScaleY(m20579a(f));
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/SplineSet$Sort.class */
    private static class Sort {
        private Sort() {
        }

        /* renamed from: a */
        static void m20570a(int[] iArr, float[] fArr, int i, int i2) {
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
                    int b = m20569b(iArr, fArr, i5, i7);
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
        private static int m20569b(int[] iArr, float[] fArr, int i, int i2) {
            int i3 = iArr[i2];
            int i4 = i;
            while (i < i2) {
                i4 = i4;
                if (iArr[i] <= i3) {
                    m20568c(iArr, fArr, i4, i);
                    i4++;
                }
                i++;
            }
            m20568c(iArr, fArr, i4, i2);
            return i4;
        }

        /* renamed from: c */
        private static void m20568c(int[] iArr, float[] fArr, int i, int i2) {
            int i3 = iArr[i];
            iArr[i] = iArr[i2];
            iArr[i2] = i3;
            float f = fArr[i];
            fArr[i] = fArr[i2];
            fArr[i2] = f;
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/SplineSet$TranslationXset.class */
    static class TranslationXset extends SplineSet {
        TranslationXset() {
        }

        @Override // androidx.constraintlayout.motion.widget.SplineSet
        /* renamed from: f */
        public void mo20567f(View view, float f) {
            view.setTranslationX(m20579a(f));
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/SplineSet$TranslationYset.class */
    static class TranslationYset extends SplineSet {
        TranslationYset() {
        }

        @Override // androidx.constraintlayout.motion.widget.SplineSet
        /* renamed from: f */
        public void mo20567f(View view, float f) {
            view.setTranslationY(m20579a(f));
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/SplineSet$TranslationZset.class */
    static class TranslationZset extends SplineSet {
        TranslationZset() {
        }

        @Override // androidx.constraintlayout.motion.widget.SplineSet
        /* renamed from: f */
        public void mo20567f(View view, float f) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setTranslationZ(m20579a(f));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static SplineSet m20577c(String str, SparseArray<ConstraintAttribute> sparseArray) {
        return new CustomSet(str, sparseArray);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: d */
    public static SplineSet m20576d(String str) {
        char c;
        switch (str.hashCode()) {
            case -1249320806:
                if (str.equals("rotationX")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -1249320805:
                if (str.equals("rotationY")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case -1225497657:
                if (str.equals("translationX")) {
                    c = '\f';
                    break;
                }
                c = 65535;
                break;
            case -1225497656:
                if (str.equals("translationY")) {
                    c = '\r';
                    break;
                }
                c = 65535;
                break;
            case -1225497655:
                if (str.equals("translationZ")) {
                    c = 14;
                    break;
                }
                c = 65535;
                break;
            case -1001078227:
                if (str.equals("progress")) {
                    c = 15;
                    break;
                }
                c = 65535;
                break;
            case -908189618:
                if (str.equals("scaleX")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case -908189617:
                if (str.equals("scaleY")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case -797520672:
                if (str.equals("waveVariesBy")) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            case -760884510:
                if (str.equals("transformPivotX")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case -760884509:
                if (str.equals("transformPivotY")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case -40300674:
                if (str.equals("rotation")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -4379043:
                if (str.equals("elevation")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 37232917:
                if (str.equals("transitionPathRotate")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 92909918:
                if (str.equals("alpha")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 156108012:
                if (str.equals("waveOffset")) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                return new AlphaSet();
            case 1:
                return new ElevationSet();
            case 2:
                return new RotationSet();
            case 3:
                return new RotationXset();
            case 4:
                return new RotationYset();
            case 5:
                return new PivotXset();
            case 6:
                return new PivotYset();
            case 7:
                return new PathRotate();
            case '\b':
                return new ScaleXset();
            case '\t':
                return new ScaleYset();
            case '\n':
                return new AlphaSet();
            case 11:
                return new AlphaSet();
            case '\f':
                return new TranslationXset();
            case '\r':
                return new TranslationYset();
            case 14:
                return new TranslationZset();
            case 15:
                return new ProgressSet();
            default:
                return null;
        }
    }

    /* renamed from: a */
    public float m20579a(float f) {
        return (float) this.f1984a.mo20970c(f, 0);
    }

    /* renamed from: b */
    public float m20578b(float f) {
        return (float) this.f1984a.mo20967f(f, 0);
    }

    /* renamed from: e */
    public void mo20574e(int i, float f) {
        int[] iArr = this.f1985b;
        if (iArr.length < this.f1987d + 1) {
            this.f1985b = Arrays.copyOf(iArr, iArr.length * 2);
            float[] fArr = this.f1986c;
            this.f1986c = Arrays.copyOf(fArr, fArr.length * 2);
        }
        int[] iArr2 = this.f1985b;
        int i2 = this.f1987d;
        iArr2[i2] = i;
        this.f1986c[i2] = f;
        this.f1987d = i2 + 1;
    }

    /* renamed from: f */
    public abstract void mo20567f(View view, float f);

    /* renamed from: g */
    public void m20575g(String str) {
        this.f1988e = str;
    }

    /* renamed from: h */
    public void mo20573h(int i) {
        int i2 = this.f1987d;
        if (i2 != 0) {
            Sort.m20570a(this.f1985b, this.f1986c, 0, i2 - 1);
            int i3 = 1;
            for (int i4 = 1; i4 < this.f1987d; i4++) {
                int[] iArr = this.f1985b;
                i3 = i3;
                if (iArr[i4 - 1] != iArr[i4]) {
                    i3++;
                }
            }
            double[] dArr = new double[i3];
            double[][] dArr2 = new double[i3][1];
            int i5 = 0;
            for (int i6 = 0; i6 < this.f1987d; i6++) {
                if (i6 > 0) {
                    int[] iArr2 = this.f1985b;
                    if (iArr2[i6] == iArr2[i6 - 1]) {
                    }
                }
                dArr[i5] = this.f1985b[i6] * 0.01d;
                dArr2[i5][0] = this.f1986c[i6];
                i5++;
            }
            this.f1984a = CurveFit.m20977a(i, dArr, dArr2);
        }
    }

    public String toString() {
        String str = this.f1988e;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (int i = 0; i < this.f1987d; i++) {
            str = str + "[" + this.f1985b[i] + " , " + decimalFormat.format(this.f1986c[i]) + "] ";
        }
        return str;
    }
}
