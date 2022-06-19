package androidx.constraintlayout.motion.widget;

import android.os.Build;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintAttribute;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.DecimalFormat;
import java.util.Arrays;
import p020b.p037f.p038a.p039a.AbstractC1506b;
/* renamed from: androidx.constraintlayout.motion.widget.r */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r.class */
public abstract class AbstractC0419r {

    /* renamed from: a */
    protected AbstractC1506b f1917a;

    /* renamed from: b */
    protected int[] f1918b = new int[10];

    /* renamed from: c */
    protected float[] f1919c = new float[10];

    /* renamed from: d */
    private int f1920d;

    /* renamed from: e */
    private String f1921e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.r$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r$a.class */
    public static class C0420a extends AbstractC0419r {
        C0420a() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0419r
        /* renamed from: f */
        public void mo34204f(View view, float f) {
            view.setAlpha(m34216a(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.r$b */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r$b.class */
    public static class C0421b extends AbstractC0419r {

        /* renamed from: f */
        String f1922f;

        /* renamed from: g */
        SparseArray<ConstraintAttribute> f1923g;

        /* renamed from: h */
        float[] f1924h;

        public C0421b(String str, SparseArray<ConstraintAttribute> sparseArray) {
            this.f1922f = str.split(",")[1];
            this.f1923g = sparseArray;
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0419r
        /* renamed from: e */
        public void mo34211e(int i, float f) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute)");
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0419r
        /* renamed from: f */
        public void mo34204f(View view, float f) {
            this.f1917a.mo29877e(f, this.f1924h);
            this.f1923g.valueAt(0).m33710i(view, this.f1924h);
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0419r
        /* renamed from: h */
        public void mo34210h(int i) {
            float[] fArr;
            int size = this.f1923g.size();
            int m33713f = this.f1923g.valueAt(0).m33713f();
            double[] dArr = new double[size];
            this.f1924h = new float[m33713f];
            double[][] dArr2 = new double[size][m33713f];
            for (int i2 = 0; i2 < size; i2++) {
                dArr[i2] = this.f1923g.keyAt(i2) * 0.01d;
                this.f1923g.valueAt(i2).m33714e(this.f1924h);
                int i3 = 0;
                while (true) {
                    if (i3 < this.f1924h.length) {
                        dArr2[i2][i3] = fArr[i3];
                        i3++;
                    }
                }
            }
            this.f1917a = AbstractC1506b.m29886a(i, dArr, dArr2);
        }

        /* renamed from: i */
        public void m34209i(int i, ConstraintAttribute constraintAttribute) {
            this.f1923g.append(i, constraintAttribute);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.r$c */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r$c.class */
    public static class C0422c extends AbstractC0419r {
        C0422c() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0419r
        /* renamed from: f */
        public void mo34204f(View view, float f) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setElevation(m34216a(f));
            }
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.r$d */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r$d.class */
    public static class C0423d extends AbstractC0419r {
        C0423d() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0419r
        /* renamed from: f */
        public void mo34204f(View view, float f) {
        }

        /* renamed from: i */
        public void m34208i(View view, float f, double d, double d2) {
            view.setRotation(m34216a(f) + ((float) Math.toDegrees(Math.atan2(d2, d))));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.r$e */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r$e.class */
    public static class C0424e extends AbstractC0419r {
        C0424e() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0419r
        /* renamed from: f */
        public void mo34204f(View view, float f) {
            view.setPivotX(m34216a(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.r$f */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r$f.class */
    public static class C0425f extends AbstractC0419r {
        C0425f() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0419r
        /* renamed from: f */
        public void mo34204f(View view, float f) {
            view.setPivotY(m34216a(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.r$g */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r$g.class */
    public static class C0426g extends AbstractC0419r {

        /* renamed from: f */
        boolean f1925f = false;

        C0426g() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0419r
        /* renamed from: f */
        public void mo34204f(View view, float f) {
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress(m34216a(f));
            } else if (this.f1925f) {
            } else {
                Method method = null;
                try {
                    method = view.getClass().getMethod("setProgress", Float.TYPE);
                } catch (NoSuchMethodException e) {
                    this.f1925f = true;
                }
                if (method == null) {
                    return;
                }
                try {
                    method.invoke(view, Float.valueOf(m34216a(f)));
                } catch (IllegalAccessException e2) {
                    Log.e("SplineSet", "unable to setProgress", e2);
                } catch (InvocationTargetException e3) {
                    Log.e("SplineSet", "unable to setProgress", e3);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.r$h */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r$h.class */
    public static class C0427h extends AbstractC0419r {
        C0427h() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0419r
        /* renamed from: f */
        public void mo34204f(View view, float f) {
            view.setRotation(m34216a(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.r$i */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r$i.class */
    public static class C0428i extends AbstractC0419r {
        C0428i() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0419r
        /* renamed from: f */
        public void mo34204f(View view, float f) {
            view.setRotationX(m34216a(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.r$j */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r$j.class */
    public static class C0429j extends AbstractC0419r {
        C0429j() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0419r
        /* renamed from: f */
        public void mo34204f(View view, float f) {
            view.setRotationY(m34216a(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.r$k */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r$k.class */
    public static class C0430k extends AbstractC0419r {
        C0430k() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0419r
        /* renamed from: f */
        public void mo34204f(View view, float f) {
            view.setScaleX(m34216a(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.r$l */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r$l.class */
    public static class C0431l extends AbstractC0419r {
        C0431l() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0419r
        /* renamed from: f */
        public void mo34204f(View view, float f) {
            view.setScaleY(m34216a(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.constraintlayout.motion.widget.r$m */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r$m.class */
    public static class C0432m {
        /* renamed from: a */
        static void m34207a(int[] iArr, float[] fArr, int i, int i2) {
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
                    int m34206b = m34206b(iArr, fArr, i5, i7);
                    int i8 = i6 + 1;
                    iArr2[i6] = m34206b - 1;
                    int i9 = i8 + 1;
                    iArr2[i8] = i5;
                    int i10 = i9 + 1;
                    iArr2[i9] = i7;
                    i3 = i10 + 1;
                    iArr2[i10] = m34206b + 1;
                }
            }
        }

        /* renamed from: b */
        private static int m34206b(int[] iArr, float[] fArr, int i, int i2) {
            int i3 = iArr[i2];
            int i4 = i;
            while (true) {
                int i5 = i4;
                if (i >= i2) {
                    m34205c(iArr, fArr, i5, i2);
                    return i5;
                }
                int i6 = i5;
                if (iArr[i] <= i3) {
                    m34205c(iArr, fArr, i5, i);
                    i6 = i5 + 1;
                }
                i++;
                i4 = i6;
            }
        }

        /* renamed from: c */
        private static void m34205c(int[] iArr, float[] fArr, int i, int i2) {
            int i3 = iArr[i];
            iArr[i] = iArr[i2];
            iArr[i2] = i3;
            float f = fArr[i];
            fArr[i] = fArr[i2];
            fArr[i2] = f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.r$n */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r$n.class */
    public static class C0433n extends AbstractC0419r {
        C0433n() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0419r
        /* renamed from: f */
        public void mo34204f(View view, float f) {
            view.setTranslationX(m34216a(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.r$o */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r$o.class */
    public static class C0434o extends AbstractC0419r {
        C0434o() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0419r
        /* renamed from: f */
        public void mo34204f(View view, float f) {
            view.setTranslationY(m34216a(f));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.r$p */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/r$p.class */
    public static class C0435p extends AbstractC0419r {
        C0435p() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0419r
        /* renamed from: f */
        public void mo34204f(View view, float f) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setTranslationZ(m34216a(f));
            }
        }
    }

    /* renamed from: c */
    public static AbstractC0419r m34214c(String str, SparseArray<ConstraintAttribute> sparseArray) {
        return new C0421b(str, sparseArray);
    }

    /* renamed from: d */
    public static AbstractC0419r m34213d(String str) {
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
                return new C0428i();
            case true:
                return new C0429j();
            case true:
                return new C0433n();
            case true:
                return new C0434o();
            case true:
                return new C0435p();
            case true:
                return new C0426g();
            case true:
                return new C0430k();
            case true:
                return new C0431l();
            case true:
                return new C0420a();
            case true:
                return new C0424e();
            case true:
                return new C0425f();
            case true:
                return new C0427h();
            case true:
                return new C0422c();
            case true:
                return new C0423d();
            case true:
                return new C0420a();
            case true:
                return new C0420a();
            default:
                return null;
        }
    }

    /* renamed from: a */
    public float m34216a(float f) {
        return (float) this.f1917a.mo29879c(f, 0);
    }

    /* renamed from: b */
    public float m34215b(float f) {
        return (float) this.f1917a.mo29876f(f, 0);
    }

    /* renamed from: e */
    public void mo34211e(int i, float f) {
        int[] iArr = this.f1918b;
        if (iArr.length < this.f1920d + 1) {
            this.f1918b = Arrays.copyOf(iArr, iArr.length * 2);
            float[] fArr = this.f1919c;
            this.f1919c = Arrays.copyOf(fArr, fArr.length * 2);
        }
        int[] iArr2 = this.f1918b;
        int i2 = this.f1920d;
        iArr2[i2] = i;
        this.f1919c[i2] = f;
        this.f1920d = i2 + 1;
    }

    /* renamed from: f */
    public abstract void mo34204f(View view, float f);

    /* renamed from: g */
    public void m34212g(String str) {
        this.f1921e = str;
    }

    /* renamed from: h */
    public void mo34210h(int i) {
        int i2;
        int i3 = this.f1920d;
        if (i3 == 0) {
            return;
        }
        C0432m.m34207a(this.f1918b, this.f1919c, 0, i3 - 1);
        int i4 = 1;
        int i5 = 1;
        while (true) {
            i2 = i5;
            if (i4 >= this.f1920d) {
                break;
            }
            int[] iArr = this.f1918b;
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
        for (int i8 = 0; i8 < this.f1920d; i8++) {
            if (i8 > 0) {
                int[] iArr2 = this.f1918b;
                if (iArr2[i8] == iArr2[i8 - 1]) {
                }
            }
            dArr[i7] = this.f1918b[i8] * 0.01d;
            dArr2[i7][0] = this.f1919c[i8];
            i7++;
        }
        this.f1917a = AbstractC1506b.m29886a(i, dArr, dArr2);
    }

    public String toString() {
        String str = this.f1921e;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (int i = 0; i < this.f1920d; i++) {
            str = str + "[" + this.f1918b[i] + " , " + decimalFormat.format(this.f1919c[i]) + "] ";
        }
        return str;
    }
}
