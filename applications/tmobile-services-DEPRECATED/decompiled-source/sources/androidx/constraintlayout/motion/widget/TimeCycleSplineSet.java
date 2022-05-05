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
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/TimeCycleSplineSet.class */
public abstract class TimeCycleSplineSet {

    /* renamed from: k */
    private static float f1992k = 6.2831855f;

    /* renamed from: a */
    protected CurveFit f1993a;

    /* renamed from: e */
    private int f1997e;

    /* renamed from: f */
    private String f1998f;

    /* renamed from: i */
    long f2001i;

    /* renamed from: b */
    protected int f1994b = 0;

    /* renamed from: c */
    protected int[] f1995c = new int[10];

    /* renamed from: d */
    protected float[][] f1996d = new float[10][3];

    /* renamed from: g */
    private float[] f1999g = new float[3];

    /* renamed from: h */
    protected boolean f2000h = false;

    /* renamed from: j */
    float f2002j = Float.NaN;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/TimeCycleSplineSet$AlphaSet.class */
    public static class AlphaSet extends TimeCycleSplineSet {
        AlphaSet() {
        }

        @Override // androidx.constraintlayout.motion.widget.TimeCycleSplineSet
        /* renamed from: f */
        public boolean mo20553f(View view, float f, long j, KeyCache keyCache) {
            view.setAlpha(m20565b(f, j, view, keyCache));
            return this.f2000h;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/TimeCycleSplineSet$CustomSet.class */
    public static class CustomSet extends TimeCycleSplineSet {

        /* renamed from: l */
        String f2003l;

        /* renamed from: m */
        SparseArray<ConstraintAttribute> f2004m;

        /* renamed from: n */
        SparseArray<float[]> f2005n = new SparseArray<>();

        /* renamed from: o */
        float[] f2006o;

        /* renamed from: p */
        float[] f2007p;

        public CustomSet(String str, SparseArray<ConstraintAttribute> sparseArray) {
            this.f2003l = str.split(",")[1];
            this.f2004m = sparseArray;
        }

        @Override // androidx.constraintlayout.motion.widget.TimeCycleSplineSet
        /* renamed from: e */
        public void mo20560e(int i, float f, float f2, int i2, float f3) {
            throw new RuntimeException("don't call for custom attribute call setPoint(pos, ConstraintAttribute,...)");
        }

        @Override // androidx.constraintlayout.motion.widget.TimeCycleSplineSet
        /* renamed from: f */
        public boolean mo20553f(View view, float f, long j, KeyCache keyCache) {
            this.f1993a.mo20968e(f, this.f2006o);
            float[] fArr = this.f2006o;
            float f2 = fArr[fArr.length - 2];
            float f3 = fArr[fArr.length - 1];
            long j2 = this.f2001i;
            if (Float.isNaN(this.f2002j)) {
                float a = keyCache.m20905a(view, this.f2003l, 0);
                this.f2002j = a;
                if (Float.isNaN(a)) {
                    this.f2002j = 0.0f;
                }
            }
            float f4 = (float) ((this.f2002j + (((j - j2) * 1.0E-9d) * f2)) % 1.0d);
            this.f2002j = f4;
            this.f2001i = j;
            float a2 = m20566a(f4);
            this.f2000h = false;
            for (int i = 0; i < this.f2007p.length; i++) {
                this.f2000h |= ((double) this.f2006o[i]) != 0.0d;
                this.f2007p[i] = (this.f2006o[i] * a2) + f3;
            }
            this.f2004m.valueAt(0).m20067i(view, this.f2007p);
            if (f2 != 0.0f) {
                this.f2000h = true;
            }
            return this.f2000h;
        }

        @Override // androidx.constraintlayout.motion.widget.TimeCycleSplineSet
        /* renamed from: i */
        public void mo20559i(int i) {
            int size = this.f2004m.size();
            int f = this.f2004m.valueAt(0).m20070f();
            double[] dArr = new double[size];
            int i2 = f + 2;
            this.f2006o = new float[i2];
            this.f2007p = new float[f];
            double[][] dArr2 = new double[size][i2];
            for (int i3 = 0; i3 < size; i3++) {
                int keyAt = this.f2004m.keyAt(i3);
                ConstraintAttribute valueAt = this.f2004m.valueAt(i3);
                float[] valueAt2 = this.f2005n.valueAt(i3);
                dArr[i3] = keyAt * 0.01d;
                valueAt.m20071e(this.f2006o);
                int i4 = 0;
                while (true) {
                    float[] fArr = this.f2006o;
                    if (i4 < fArr.length) {
                        dArr2[i3][i4] = fArr[i4];
                        i4++;
                    }
                }
                dArr2[i3][f] = valueAt2[0];
                dArr2[i3][f + 1] = valueAt2[1];
            }
            this.f1993a = CurveFit.m20977a(i, dArr, dArr2);
        }

        /* renamed from: j */
        public void m20558j(int i, ConstraintAttribute constraintAttribute, float f, int i2, float f2) {
            this.f2004m.append(i, constraintAttribute);
            this.f2005n.append(i, new float[]{f, f2});
            this.f1994b = Math.max(this.f1994b, i2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/TimeCycleSplineSet$ElevationSet.class */
    public static class ElevationSet extends TimeCycleSplineSet {
        ElevationSet() {
        }

        @Override // androidx.constraintlayout.motion.widget.TimeCycleSplineSet
        /* renamed from: f */
        public boolean mo20553f(View view, float f, long j, KeyCache keyCache) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setElevation(m20565b(f, j, view, keyCache));
            }
            return this.f2000h;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/TimeCycleSplineSet$PathRotate.class */
    public static class PathRotate extends TimeCycleSplineSet {
        PathRotate() {
        }

        @Override // androidx.constraintlayout.motion.widget.TimeCycleSplineSet
        /* renamed from: f */
        public boolean mo20553f(View view, float f, long j, KeyCache keyCache) {
            return this.f2000h;
        }

        /* renamed from: j */
        public boolean m20557j(View view, KeyCache keyCache, float f, long j, double d, double d2) {
            view.setRotation(m20565b(f, j, view, keyCache) + ((float) Math.toDegrees(Math.atan2(d2, d))));
            return this.f2000h;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/TimeCycleSplineSet$ProgressSet.class */
    public static class ProgressSet extends TimeCycleSplineSet {

        /* renamed from: l */
        boolean f2008l = false;

        ProgressSet() {
        }

        @Override // androidx.constraintlayout.motion.widget.TimeCycleSplineSet
        /* renamed from: f */
        public boolean mo20553f(View view, float f, long j, KeyCache keyCache) {
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress(m20565b(f, j, view, keyCache));
            } else if (this.f2008l) {
                return false;
            } else {
                Method method = null;
                try {
                    method = view.getClass().getMethod("setProgress", Float.TYPE);
                } catch (NoSuchMethodException e) {
                    this.f2008l = true;
                }
                if (method != null) {
                    try {
                        method.invoke(view, Float.valueOf(m20565b(f, j, view, keyCache)));
                    } catch (IllegalAccessException e2) {
                        Log.e("SplineSet", "unable to setProgress", e2);
                    } catch (InvocationTargetException e3) {
                        Log.e("SplineSet", "unable to setProgress", e3);
                    }
                }
            }
            return this.f2000h;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/TimeCycleSplineSet$RotationSet.class */
    public static class RotationSet extends TimeCycleSplineSet {
        RotationSet() {
        }

        @Override // androidx.constraintlayout.motion.widget.TimeCycleSplineSet
        /* renamed from: f */
        public boolean mo20553f(View view, float f, long j, KeyCache keyCache) {
            view.setRotation(m20565b(f, j, view, keyCache));
            return this.f2000h;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/TimeCycleSplineSet$RotationXset.class */
    public static class RotationXset extends TimeCycleSplineSet {
        RotationXset() {
        }

        @Override // androidx.constraintlayout.motion.widget.TimeCycleSplineSet
        /* renamed from: f */
        public boolean mo20553f(View view, float f, long j, KeyCache keyCache) {
            view.setRotationX(m20565b(f, j, view, keyCache));
            return this.f2000h;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/TimeCycleSplineSet$RotationYset.class */
    public static class RotationYset extends TimeCycleSplineSet {
        RotationYset() {
        }

        @Override // androidx.constraintlayout.motion.widget.TimeCycleSplineSet
        /* renamed from: f */
        public boolean mo20553f(View view, float f, long j, KeyCache keyCache) {
            view.setRotationY(m20565b(f, j, view, keyCache));
            return this.f2000h;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/TimeCycleSplineSet$ScaleXset.class */
    public static class ScaleXset extends TimeCycleSplineSet {
        ScaleXset() {
        }

        @Override // androidx.constraintlayout.motion.widget.TimeCycleSplineSet
        /* renamed from: f */
        public boolean mo20553f(View view, float f, long j, KeyCache keyCache) {
            view.setScaleX(m20565b(f, j, view, keyCache));
            return this.f2000h;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/TimeCycleSplineSet$ScaleYset.class */
    public static class ScaleYset extends TimeCycleSplineSet {
        ScaleYset() {
        }

        @Override // androidx.constraintlayout.motion.widget.TimeCycleSplineSet
        /* renamed from: f */
        public boolean mo20553f(View view, float f, long j, KeyCache keyCache) {
            view.setScaleY(m20565b(f, j, view, keyCache));
            return this.f2000h;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/TimeCycleSplineSet$Sort.class */
    public static class Sort {
        private Sort() {
        }

        /* renamed from: a */
        static void m20556a(int[] iArr, float[][] fArr, int i, int i2) {
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
                    int b = m20555b(iArr, fArr, i5, i7);
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
        private static int m20555b(int[] iArr, float[][] fArr, int i, int i2) {
            int i3 = iArr[i2];
            int i4 = i;
            while (i < i2) {
                i4 = i4;
                if (iArr[i] <= i3) {
                    m20554c(iArr, fArr, i4, i);
                    i4++;
                }
                i++;
            }
            m20554c(iArr, fArr, i4, i2);
            return i4;
        }

        /* renamed from: c */
        private static void m20554c(int[] iArr, float[][] fArr, int i, int i2) {
            int i3 = iArr[i];
            iArr[i] = iArr[i2];
            iArr[i2] = i3;
            float[] fArr2 = fArr[i];
            fArr[i] = fArr[i2];
            fArr[i2] = fArr2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/TimeCycleSplineSet$TranslationXset.class */
    public static class TranslationXset extends TimeCycleSplineSet {
        TranslationXset() {
        }

        @Override // androidx.constraintlayout.motion.widget.TimeCycleSplineSet
        /* renamed from: f */
        public boolean mo20553f(View view, float f, long j, KeyCache keyCache) {
            view.setTranslationX(m20565b(f, j, view, keyCache));
            return this.f2000h;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/TimeCycleSplineSet$TranslationYset.class */
    public static class TranslationYset extends TimeCycleSplineSet {
        TranslationYset() {
        }

        @Override // androidx.constraintlayout.motion.widget.TimeCycleSplineSet
        /* renamed from: f */
        public boolean mo20553f(View view, float f, long j, KeyCache keyCache) {
            view.setTranslationY(m20565b(f, j, view, keyCache));
            return this.f2000h;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/TimeCycleSplineSet$TranslationZset.class */
    public static class TranslationZset extends TimeCycleSplineSet {
        TranslationZset() {
        }

        @Override // androidx.constraintlayout.motion.widget.TimeCycleSplineSet
        /* renamed from: f */
        public boolean mo20553f(View view, float f, long j, KeyCache keyCache) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setTranslationZ(m20565b(f, j, view, keyCache));
            }
            return this.f2000h;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static TimeCycleSplineSet m20564c(String str, SparseArray<ConstraintAttribute> sparseArray) {
        return new CustomSet(str, sparseArray);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: d */
    public static TimeCycleSplineSet m20563d(String str, long j) {
        char c;
        TimeCycleSplineSet timeCycleSplineSet;
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
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case -1225497656:
                if (str.equals("translationY")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case -1225497655:
                if (str.equals("translationZ")) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case -1001078227:
                if (str.equals("progress")) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            case -908189618:
                if (str.equals("scaleX")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case -908189617:
                if (str.equals("scaleY")) {
                    c = 7;
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
                    c = 5;
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
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                timeCycleSplineSet = new AlphaSet();
                break;
            case 1:
                timeCycleSplineSet = new ElevationSet();
                break;
            case 2:
                timeCycleSplineSet = new RotationSet();
                break;
            case 3:
                timeCycleSplineSet = new RotationXset();
                break;
            case 4:
                timeCycleSplineSet = new RotationYset();
                break;
            case 5:
                timeCycleSplineSet = new PathRotate();
                break;
            case 6:
                timeCycleSplineSet = new ScaleXset();
                break;
            case 7:
                timeCycleSplineSet = new ScaleYset();
                break;
            case '\b':
                timeCycleSplineSet = new TranslationXset();
                break;
            case '\t':
                timeCycleSplineSet = new TranslationYset();
                break;
            case '\n':
                timeCycleSplineSet = new TranslationZset();
                break;
            case 11:
                timeCycleSplineSet = new ProgressSet();
                break;
            default:
                return null;
        }
        timeCycleSplineSet.m20562g(j);
        return timeCycleSplineSet;
    }

    /* renamed from: a */
    protected float m20566a(float f) {
        float abs;
        switch (this.f1994b) {
            case 1:
                return Math.signum(f * f1992k);
            case 2:
                abs = Math.abs(f);
                break;
            case 3:
                return (((f * 2.0f) + 1.0f) % 2.0f) - 1.0f;
            case 4:
                abs = ((f * 2.0f) + 1.0f) % 2.0f;
                break;
            case 5:
                return (float) Math.cos(f * f1992k);
            case 6:
                float abs2 = 1.0f - Math.abs(((f * 4.0f) % 4.0f) - 2.0f);
                abs = abs2 * abs2;
                break;
            default:
                return (float) Math.sin(f * f1992k);
        }
        return 1.0f - abs;
    }

    /* renamed from: b */
    public float m20565b(float f, long j, View view, KeyCache keyCache) {
        this.f1993a.mo20968e(f, this.f1999g);
        float[] fArr = this.f1999g;
        float f2 = fArr[1];
        int i = (f2 > 0.0f ? 1 : (f2 == 0.0f ? 0 : -1));
        if (i == 0) {
            this.f2000h = false;
            return fArr[2];
        }
        if (Float.isNaN(this.f2002j)) {
            float a = keyCache.m20905a(view, this.f1998f, 0);
            this.f2002j = a;
            if (Float.isNaN(a)) {
                this.f2002j = 0.0f;
            }
        }
        float f3 = (float) ((this.f2002j + (((j - this.f2001i) * 1.0E-9d) * f2)) % 1.0d);
        this.f2002j = f3;
        keyCache.m20904b(view, this.f1998f, 0, f3);
        this.f2001i = j;
        float f4 = this.f1999g[0];
        float a2 = m20566a(this.f2002j);
        float f5 = this.f1999g[2];
        this.f2000h = (f4 == 0.0f && i == 0) ? false : true;
        return (a2 * f4) + f5;
    }

    /* renamed from: e */
    public void mo20560e(int i, float f, float f2, int i2, float f3) {
        int[] iArr = this.f1995c;
        int i3 = this.f1997e;
        iArr[i3] = i;
        float[][] fArr = this.f1996d;
        fArr[i3][0] = f;
        fArr[i3][1] = f2;
        fArr[i3][2] = f3;
        this.f1994b = Math.max(this.f1994b, i2);
        this.f1997e++;
    }

    /* renamed from: f */
    public abstract boolean mo20553f(View view, float f, long j, KeyCache keyCache);

    /* renamed from: g */
    protected void m20562g(long j) {
        this.f2001i = j;
    }

    /* renamed from: h */
    public void m20561h(String str) {
        this.f1998f = str;
    }

    /* renamed from: i */
    public void mo20559i(int i) {
        int i2 = this.f1997e;
        if (i2 == 0) {
            Log.e("SplineSet", "Error no points added to " + this.f1998f);
            return;
        }
        Sort.m20556a(this.f1995c, this.f1996d, 0, i2 - 1);
        int i3 = 1;
        int i4 = 0;
        while (true) {
            int[] iArr = this.f1995c;
            if (i3 >= iArr.length) {
                break;
            }
            i4 = i4;
            if (iArr[i3] != iArr[i3 - 1]) {
                i4++;
            }
            i3++;
        }
        int i5 = i4;
        if (i4 == 0) {
            i5 = 1;
        }
        double[] dArr = new double[i5];
        double[][] dArr2 = new double[i5][3];
        int i6 = 0;
        for (int i7 = 0; i7 < this.f1997e; i7++) {
            if (i7 > 0) {
                int[] iArr2 = this.f1995c;
                if (iArr2[i7] == iArr2[i7 - 1]) {
                }
            }
            dArr[i6] = this.f1995c[i7] * 0.01d;
            double[] dArr3 = dArr2[i6];
            float[][] fArr = this.f1996d;
            dArr3[0] = fArr[i7][0];
            dArr2[i6][1] = fArr[i7][1];
            dArr2[i6][2] = fArr[i7][2];
            i6++;
        }
        this.f1993a = CurveFit.m20977a(i, dArr, dArr2);
    }

    public String toString() {
        String str = this.f1998f;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        for (int i = 0; i < this.f1997e; i++) {
            str = str + "[" + this.f1995c[i] + " , " + decimalFormat.format(this.f1996d[i]) + "] ";
        }
        return str;
    }
}
