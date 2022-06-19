package androidx.constraintlayout.motion.widget;

import android.os.Build;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintAttribute;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.DecimalFormat;
import p020b.p037f.p038a.p039a.AbstractC1506b;
/* renamed from: androidx.constraintlayout.motion.widget.s */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/s.class */
public abstract class AbstractC0436s {

    /* renamed from: a */
    private static float f1926a = 6.2831855f;

    /* renamed from: b */
    protected AbstractC1506b f1927b;

    /* renamed from: f */
    private int f1931f;

    /* renamed from: g */
    private String f1932g;

    /* renamed from: j */
    long f1935j;

    /* renamed from: c */
    protected int f1928c = 0;

    /* renamed from: d */
    protected int[] f1929d = new int[10];

    /* renamed from: e */
    protected float[][] f1930e = new float[10][3];

    /* renamed from: h */
    private float[] f1933h = new float[3];

    /* renamed from: i */
    protected boolean f1934i = false;

    /* renamed from: k */
    float f1936k = Float.NaN;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.s$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/s$a.class */
    public static class C0437a extends AbstractC0436s {
        C0437a() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0436s
        /* renamed from: f */
        public boolean mo34190f(View view, float f, long j, C0383e c0383e) {
            view.setAlpha(m34202b(f, j, view, c0383e));
            return this.f1934i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.s$b */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/s$b.class */
    public static class C0438b extends AbstractC0436s {

        /* renamed from: l */
        String f1937l;

        /* renamed from: m */
        SparseArray<ConstraintAttribute> f1938m;

        /* renamed from: n */
        SparseArray<float[]> f1939n = new SparseArray<>();

        /* renamed from: o */
        float[] f1940o;

        /* renamed from: p */
        float[] f1941p;

        public C0438b(String str, SparseArray<ConstraintAttribute> sparseArray) {
            this.f1937l = str.split(",")[1];
            this.f1938m = sparseArray;
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0436s
        /* renamed from: e */
        public void mo34197e(int i, float f, float f2, int i2, float f3) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute,...)");
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0436s
        /* renamed from: f */
        public boolean mo34190f(View view, float f, long j, C0383e c0383e) {
            this.f1927b.mo29877e(f, this.f1940o);
            float[] fArr = this.f1940o;
            float f2 = fArr[fArr.length - 2];
            float f3 = fArr[fArr.length - 1];
            long j2 = this.f1935j;
            if (Float.isNaN(this.f1936k)) {
                float m34455a = c0383e.m34455a(view, this.f1937l, 0);
                this.f1936k = m34455a;
                if (Float.isNaN(m34455a)) {
                    this.f1936k = 0.0f;
                }
            }
            float f4 = (float) ((this.f1936k + (((j - j2) * 1.0E-9d) * f2)) % 1.0d);
            this.f1936k = f4;
            this.f1935j = j;
            float m34203a = m34203a(f4);
            this.f1934i = false;
            int i = 0;
            while (true) {
                float[] fArr2 = this.f1941p;
                if (i >= fArr2.length) {
                    break;
                }
                boolean z = this.f1934i;
                float[] fArr3 = this.f1940o;
                this.f1934i = z | (((double) fArr3[i]) != 0.0d);
                fArr2[i] = (fArr3[i] * m34203a) + f3;
                i++;
            }
            this.f1938m.valueAt(0).m33710i(view, this.f1941p);
            if (f2 != 0.0f) {
                this.f1934i = true;
            }
            return this.f1934i;
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0436s
        /* renamed from: i */
        public void mo34196i(int i) {
            float[] fArr;
            int size = this.f1938m.size();
            int m33713f = this.f1938m.valueAt(0).m33713f();
            double[] dArr = new double[size];
            int i2 = m33713f + 2;
            this.f1940o = new float[i2];
            this.f1941p = new float[m33713f];
            double[][] dArr2 = new double[size][i2];
            for (int i3 = 0; i3 < size; i3++) {
                int keyAt = this.f1938m.keyAt(i3);
                ConstraintAttribute valueAt = this.f1938m.valueAt(i3);
                float[] valueAt2 = this.f1939n.valueAt(i3);
                dArr[i3] = keyAt * 0.01d;
                valueAt.m33714e(this.f1940o);
                int i4 = 0;
                while (true) {
                    if (i4 < this.f1940o.length) {
                        dArr2[i3][i4] = fArr[i4];
                        i4++;
                    }
                }
                dArr2[i3][m33713f] = valueAt2[0];
                dArr2[i3][m33713f + 1] = valueAt2[1];
            }
            this.f1927b = AbstractC1506b.m29886a(i, dArr, dArr2);
        }

        /* renamed from: j */
        public void m34195j(int i, ConstraintAttribute constraintAttribute, float f, int i2, float f2) {
            this.f1938m.append(i, constraintAttribute);
            this.f1939n.append(i, new float[]{f, f2});
            this.f1928c = Math.max(this.f1928c, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.s$c */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/s$c.class */
    public static class C0439c extends AbstractC0436s {
        C0439c() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0436s
        /* renamed from: f */
        public boolean mo34190f(View view, float f, long j, C0383e c0383e) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setElevation(m34202b(f, j, view, c0383e));
            }
            return this.f1934i;
        }
    }

    /* renamed from: androidx.constraintlayout.motion.widget.s$d */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/s$d.class */
    public static class C0440d extends AbstractC0436s {
        C0440d() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0436s
        /* renamed from: f */
        public boolean mo34190f(View view, float f, long j, C0383e c0383e) {
            return this.f1934i;
        }

        /* renamed from: j */
        public boolean m34194j(View view, C0383e c0383e, float f, long j, double d, double d2) {
            view.setRotation(m34202b(f, j, view, c0383e) + ((float) Math.toDegrees(Math.atan2(d2, d))));
            return this.f1934i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.s$e */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/s$e.class */
    public static class C0441e extends AbstractC0436s {

        /* renamed from: l */
        boolean f1942l = false;

        C0441e() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0436s
        /* renamed from: f */
        public boolean mo34190f(View view, float f, long j, C0383e c0383e) {
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress(m34202b(f, j, view, c0383e));
            } else if (this.f1942l) {
                return false;
            } else {
                Method method = null;
                try {
                    method = view.getClass().getMethod("setProgress", Float.TYPE);
                } catch (NoSuchMethodException e) {
                    this.f1942l = true;
                }
                if (method != null) {
                    try {
                        method.invoke(view, Float.valueOf(m34202b(f, j, view, c0383e)));
                    } catch (IllegalAccessException e2) {
                        Log.e("SplineSet", "unable to setProgress", e2);
                    } catch (InvocationTargetException e3) {
                        Log.e("SplineSet", "unable to setProgress", e3);
                    }
                }
            }
            return this.f1934i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.s$f */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/s$f.class */
    public static class C0442f extends AbstractC0436s {
        C0442f() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0436s
        /* renamed from: f */
        public boolean mo34190f(View view, float f, long j, C0383e c0383e) {
            view.setRotation(m34202b(f, j, view, c0383e));
            return this.f1934i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.s$g */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/s$g.class */
    public static class C0443g extends AbstractC0436s {
        C0443g() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0436s
        /* renamed from: f */
        public boolean mo34190f(View view, float f, long j, C0383e c0383e) {
            view.setRotationX(m34202b(f, j, view, c0383e));
            return this.f1934i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.s$h */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/s$h.class */
    public static class C0444h extends AbstractC0436s {
        C0444h() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0436s
        /* renamed from: f */
        public boolean mo34190f(View view, float f, long j, C0383e c0383e) {
            view.setRotationY(m34202b(f, j, view, c0383e));
            return this.f1934i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.s$i */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/s$i.class */
    public static class C0445i extends AbstractC0436s {
        C0445i() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0436s
        /* renamed from: f */
        public boolean mo34190f(View view, float f, long j, C0383e c0383e) {
            view.setScaleX(m34202b(f, j, view, c0383e));
            return this.f1934i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.s$j */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/s$j.class */
    public static class C0446j extends AbstractC0436s {
        C0446j() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0436s
        /* renamed from: f */
        public boolean mo34190f(View view, float f, long j, C0383e c0383e) {
            view.setScaleY(m34202b(f, j, view, c0383e));
            return this.f1934i;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.constraintlayout.motion.widget.s$k */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/s$k.class */
    public static class C0447k {
        /* renamed from: a */
        static void m34193a(int[] iArr, float[][] fArr, int i, int i2) {
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
                    int m34192b = m34192b(iArr, fArr, i5, i7);
                    int i8 = i6 + 1;
                    iArr2[i6] = m34192b - 1;
                    int i9 = i8 + 1;
                    iArr2[i8] = i5;
                    int i10 = i9 + 1;
                    iArr2[i9] = i7;
                    i3 = i10 + 1;
                    iArr2[i10] = m34192b + 1;
                }
            }
        }

        /* renamed from: b */
        private static int m34192b(int[] iArr, float[][] fArr, int i, int i2) {
            int i3 = iArr[i2];
            int i4 = i;
            while (true) {
                int i5 = i4;
                if (i >= i2) {
                    m34191c(iArr, fArr, i5, i2);
                    return i5;
                }
                int i6 = i5;
                if (iArr[i] <= i3) {
                    m34191c(iArr, fArr, i5, i);
                    i6 = i5 + 1;
                }
                i++;
                i4 = i6;
            }
        }

        /* renamed from: c */
        private static void m34191c(int[] iArr, float[][] fArr, int i, int i2) {
            int i3 = iArr[i];
            iArr[i] = iArr[i2];
            iArr[i2] = i3;
            float[] fArr2 = fArr[i];
            fArr[i] = fArr[i2];
            fArr[i2] = fArr2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.s$l */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/s$l.class */
    public static class C0448l extends AbstractC0436s {
        C0448l() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0436s
        /* renamed from: f */
        public boolean mo34190f(View view, float f, long j, C0383e c0383e) {
            view.setTranslationX(m34202b(f, j, view, c0383e));
            return this.f1934i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.s$m */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/s$m.class */
    public static class C0449m extends AbstractC0436s {
        C0449m() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0436s
        /* renamed from: f */
        public boolean mo34190f(View view, float f, long j, C0383e c0383e) {
            view.setTranslationY(m34202b(f, j, view, c0383e));
            return this.f1934i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.constraintlayout.motion.widget.s$n */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/s$n.class */
    public static class C0450n extends AbstractC0436s {
        C0450n() {
        }

        @Override // androidx.constraintlayout.motion.widget.AbstractC0436s
        /* renamed from: f */
        public boolean mo34190f(View view, float f, long j, C0383e c0383e) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setTranslationZ(m34202b(f, j, view, c0383e));
            }
            return this.f1934i;
        }
    }

    /* renamed from: c */
    public static AbstractC0436s m34201c(String str, SparseArray<ConstraintAttribute> sparseArray) {
        return new C0438b(str, sparseArray);
    }

    /* renamed from: d */
    public static AbstractC0436s m34200d(String str, long j) {
        C0437a c0437a;
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
                c0437a = new C0443g();
                break;
            case true:
                c0437a = new C0444h();
                break;
            case true:
                c0437a = new C0448l();
                break;
            case true:
                c0437a = new C0449m();
                break;
            case true:
                c0437a = new C0450n();
                break;
            case true:
                c0437a = new C0441e();
                break;
            case true:
                c0437a = new C0445i();
                break;
            case true:
                c0437a = new C0446j();
                break;
            case true:
                c0437a = new C0442f();
                break;
            case true:
                c0437a = new C0439c();
                break;
            case true:
                c0437a = new C0440d();
                break;
            case true:
                c0437a = new C0437a();
                break;
            default:
                return null;
        }
        c0437a.m34199g(j);
        return c0437a;
    }

    /* renamed from: a */
    protected float m34203a(float f) {
        float abs;
        switch (this.f1928c) {
            case 1:
                return Math.signum(f * f1926a);
            case 2:
                abs = Math.abs(f);
                break;
            case 3:
                return (((f * 2.0f) + 1.0f) % 2.0f) - 1.0f;
            case 4:
                abs = ((f * 2.0f) + 1.0f) % 2.0f;
                break;
            case 5:
                return (float) Math.cos(f * f1926a);
            case 6:
                float abs2 = 1.0f - Math.abs(((f * 4.0f) % 4.0f) - 2.0f);
                abs = abs2 * abs2;
                break;
            default:
                return (float) Math.sin(f * f1926a);
        }
        return 1.0f - abs;
    }

    /* renamed from: b */
    public float m34202b(float f, long j, View view, C0383e c0383e) {
        this.f1927b.mo29877e(f, this.f1933h);
        float[] fArr = this.f1933h;
        float f2 = fArr[1];
        int i = (f2 > 0.0f ? 1 : (f2 == 0.0f ? 0 : -1));
        if (i == 0) {
            this.f1934i = false;
            return fArr[2];
        }
        if (Float.isNaN(this.f1936k)) {
            float m34455a = c0383e.m34455a(view, this.f1932g, 0);
            this.f1936k = m34455a;
            if (Float.isNaN(m34455a)) {
                this.f1936k = 0.0f;
            }
        }
        float f3 = (float) ((this.f1936k + (((j - this.f1935j) * 1.0E-9d) * f2)) % 1.0d);
        this.f1936k = f3;
        c0383e.m34454b(view, this.f1932g, 0, f3);
        this.f1935j = j;
        float f4 = this.f1933h[0];
        float m34203a = m34203a(this.f1936k);
        float f5 = this.f1933h[2];
        this.f1934i = (f4 == 0.0f && i == 0) ? false : true;
        return (m34203a * f4) + f5;
    }

    /* renamed from: e */
    public void mo34197e(int i, float f, float f2, int i2, float f3) {
        int[] iArr = this.f1929d;
        int i3 = this.f1931f;
        iArr[i3] = i;
        float[][] fArr = this.f1930e;
        fArr[i3][0] = f;
        fArr[i3][1] = f2;
        fArr[i3][2] = f3;
        this.f1928c = Math.max(this.f1928c, i2);
        this.f1931f++;
    }

    /* renamed from: f */
    public abstract boolean mo34190f(View view, float f, long j, C0383e c0383e);

    /* renamed from: g */
    protected void m34199g(long j) {
        this.f1935j = j;
    }

    /* renamed from: h */
    public void m34198h(String str) {
        this.f1932g = str;
    }

    /* renamed from: i */
    public void mo34196i(int i) {
        int i2;
        int i3 = this.f1931f;
        if (i3 == 0) {
            Log.e("SplineSet", "Error no points added to " + this.f1932g);
            return;
        }
        C0447k.m34193a(this.f1929d, this.f1930e, 0, i3 - 1);
        int i4 = 1;
        int i5 = 0;
        while (true) {
            i2 = i5;
            int[] iArr = this.f1929d;
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
        for (int i9 = 0; i9 < this.f1931f; i9++) {
            if (i9 > 0) {
                int[] iArr2 = this.f1929d;
                if (iArr2[i9] == iArr2[i9 - 1]) {
                }
            }
            dArr[i8] = this.f1929d[i9] * 0.01d;
            double[] dArr3 = dArr2[i8];
            float[][] fArr = this.f1930e;
            dArr3[0] = fArr[i9][0];
            dArr2[i8][1] = fArr[i9][1];
            dArr2[i8][2] = fArr[i9][2];
            i8++;
        }
        this.f1927b = AbstractC1506b.m29886a(i, dArr, dArr2);
    }

    public String toString() {
        String str = this.f1932g;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (int i = 0; i < this.f1931f; i++) {
            str = str + "[" + this.f1929d[i] + " , " + decimalFormat.format(this.f1930e[i]) + "] ";
        }
        return str;
    }
}
