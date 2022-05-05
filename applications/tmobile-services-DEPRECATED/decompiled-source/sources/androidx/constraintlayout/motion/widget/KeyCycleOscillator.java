package androidx.constraintlayout.motion.widget;

import android.annotation.TargetApi;
import android.os.Build;
import android.util.Log;
import android.view.View;
import androidx.constraintlayout.motion.utils.CurveFit;
import androidx.constraintlayout.motion.utils.Oscillator;
import androidx.constraintlayout.widget.ConstraintAttribute;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/KeyCycleOscillator.class */
public abstract class KeyCycleOscillator {

    /* renamed from: a */
    private CycleOscillator f1709a;

    /* renamed from: b */
    protected ConstraintAttribute f1710b;

    /* renamed from: c */
    private String f1711c;

    /* renamed from: d */
    private int f1712d = 0;

    /* renamed from: e */
    public int f1713e = 0;

    /* renamed from: f */
    ArrayList<WavePoint> f1714f = new ArrayList<>();

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/KeyCycleOscillator$AlphaSet.class */
    static class AlphaSet extends KeyCycleOscillator {
        AlphaSet() {
        }

        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        /* renamed from: f */
        public void mo20850f(View view, float f) {
            view.setAlpha(m20864a(f));
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/KeyCycleOscillator$CustomSet.class */
    static class CustomSet extends KeyCycleOscillator {

        /* renamed from: g */
        float[] f1715g = new float[1];

        CustomSet() {
        }

        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        /* renamed from: f */
        public void mo20850f(View view, float f) {
            this.f1715g[0] = m20864a(f);
            this.f1710b.m20067i(view, this.f1715g);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/KeyCycleOscillator$CycleOscillator.class */
    public static class CycleOscillator {

        /* renamed from: a */
        Oscillator f1716a = new Oscillator();

        /* renamed from: b */
        float[] f1717b;

        /* renamed from: c */
        double[] f1718c;

        /* renamed from: d */
        float[] f1719d;

        /* renamed from: e */
        float[] f1720e;

        /* renamed from: f */
        CurveFit f1721f;

        /* renamed from: g */
        double[] f1722g;

        /* renamed from: h */
        double[] f1723h;

        CycleOscillator(int i, int i2, int i3) {
            new HashMap();
            this.f1716a.m20956g(i);
            this.f1717b = new float[i3];
            this.f1718c = new double[i3];
            this.f1719d = new float[i3];
            this.f1720e = new float[i3];
            float[] fArr = new float[i3];
        }

        /* renamed from: a */
        public double m20855a(float f) {
            CurveFit curveFit = this.f1721f;
            if (curveFit != null) {
                double d = f;
                curveFit.mo20966g(d, this.f1723h);
                this.f1721f.mo20969d(d, this.f1722g);
            } else {
                double[] dArr = this.f1723h;
                dArr[0] = 0.0d;
                dArr[1] = 0.0d;
            }
            double d2 = f;
            double e = this.f1716a.m20958e(d2);
            double d3 = this.f1716a.m20959d(d2);
            double[] dArr2 = this.f1723h;
            return dArr2[0] + (e * dArr2[1]) + (d3 * this.f1722g[1]);
        }

        /* renamed from: b */
        public double m20854b(float f) {
            CurveFit curveFit = this.f1721f;
            if (curveFit != null) {
                curveFit.mo20969d(f, this.f1722g);
            } else {
                double[] dArr = this.f1722g;
                dArr[0] = this.f1720e[0];
                dArr[1] = this.f1717b[0];
            }
            return this.f1722g[0] + (this.f1716a.m20958e(f) * this.f1722g[1]);
        }

        /* renamed from: c */
        public void m20853c(int i, int i2, float f, float f2, float f3) {
            this.f1718c[i] = i2 / 100.0d;
            this.f1719d[i] = f;
            this.f1720e[i] = f2;
            this.f1717b[i] = f3;
        }

        /* renamed from: d */
        public void m20852d(float f) {
            double[][] dArr = new double[this.f1718c.length][2];
            float[] fArr = this.f1717b;
            this.f1722g = new double[fArr.length + 1];
            this.f1723h = new double[fArr.length + 1];
            if (this.f1718c[0] > 0.0d) {
                this.f1716a.m20962a(0.0d, this.f1719d[0]);
            }
            double[] dArr2 = this.f1718c;
            int length = dArr2.length - 1;
            if (dArr2[length] < 1.0d) {
                this.f1716a.m20962a(1.0d, this.f1719d[length]);
            }
            for (int i = 0; i < dArr.length; i++) {
                dArr[i][0] = this.f1720e[i];
                int i2 = 0;
                while (true) {
                    float[] fArr2 = this.f1717b;
                    if (i2 < fArr2.length) {
                        dArr[i2][1] = fArr2[i2];
                        i2++;
                    }
                }
                this.f1716a.m20962a(this.f1718c[i], this.f1719d[i]);
            }
            this.f1716a.m20957f();
            double[] dArr3 = this.f1718c;
            if (dArr3.length > 1) {
                this.f1721f = CurveFit.m20977a(0, dArr3, dArr);
            } else {
                this.f1721f = null;
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/KeyCycleOscillator$ElevationSet.class */
    static class ElevationSet extends KeyCycleOscillator {
        ElevationSet() {
        }

        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        /* renamed from: f */
        public void mo20850f(View view, float f) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setElevation(m20864a(f));
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/KeyCycleOscillator$IntDoubleSort.class */
    private static class IntDoubleSort {
        private IntDoubleSort() {
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/KeyCycleOscillator$IntFloatFloatSort.class */
    private static class IntFloatFloatSort {
        private IntFloatFloatSort() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/KeyCycleOscillator$PathRotateSet.class */
    public static class PathRotateSet extends KeyCycleOscillator {
        PathRotateSet() {
        }

        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        /* renamed from: f */
        public void mo20850f(View view, float f) {
        }

        /* renamed from: j */
        public void m20851j(View view, float f, double d, double d2) {
            view.setRotation(m20864a(f) + ((float) Math.toDegrees(Math.atan2(d2, d))));
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/KeyCycleOscillator$ProgressSet.class */
    static class ProgressSet extends KeyCycleOscillator {

        /* renamed from: g */
        boolean f1724g = false;

        ProgressSet() {
        }

        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        /* renamed from: f */
        public void mo20850f(View view, float f) {
            if (view instanceof MotionLayout) {
                ((MotionLayout) view).setProgress(m20864a(f));
            } else if (!this.f1724g) {
                Method method = null;
                try {
                    method = view.getClass().getMethod("setProgress", Float.TYPE);
                } catch (NoSuchMethodException e) {
                    this.f1724g = true;
                }
                if (method != null) {
                    try {
                        method.invoke(view, Float.valueOf(m20864a(f)));
                    } catch (IllegalAccessException e2) {
                        Log.e("KeyCycleOscillator", "unable to setProgress", e2);
                    } catch (InvocationTargetException e3) {
                        Log.e("KeyCycleOscillator", "unable to setProgress", e3);
                    }
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/KeyCycleOscillator$RotationSet.class */
    static class RotationSet extends KeyCycleOscillator {
        RotationSet() {
        }

        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        /* renamed from: f */
        public void mo20850f(View view, float f) {
            view.setRotation(m20864a(f));
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/KeyCycleOscillator$RotationXset.class */
    static class RotationXset extends KeyCycleOscillator {
        RotationXset() {
        }

        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        /* renamed from: f */
        public void mo20850f(View view, float f) {
            view.setRotationX(m20864a(f));
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/KeyCycleOscillator$RotationYset.class */
    static class RotationYset extends KeyCycleOscillator {
        RotationYset() {
        }

        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        /* renamed from: f */
        public void mo20850f(View view, float f) {
            view.setRotationY(m20864a(f));
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/KeyCycleOscillator$ScaleXset.class */
    static class ScaleXset extends KeyCycleOscillator {
        ScaleXset() {
        }

        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        /* renamed from: f */
        public void mo20850f(View view, float f) {
            view.setScaleX(m20864a(f));
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/KeyCycleOscillator$ScaleYset.class */
    static class ScaleYset extends KeyCycleOscillator {
        ScaleYset() {
        }

        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        /* renamed from: f */
        public void mo20850f(View view, float f) {
            view.setScaleY(m20864a(f));
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/KeyCycleOscillator$TranslationXset.class */
    static class TranslationXset extends KeyCycleOscillator {
        TranslationXset() {
        }

        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        /* renamed from: f */
        public void mo20850f(View view, float f) {
            view.setTranslationX(m20864a(f));
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/KeyCycleOscillator$TranslationYset.class */
    static class TranslationYset extends KeyCycleOscillator {
        TranslationYset() {
        }

        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        /* renamed from: f */
        public void mo20850f(View view, float f) {
            view.setTranslationY(m20864a(f));
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/KeyCycleOscillator$TranslationZset.class */
    static class TranslationZset extends KeyCycleOscillator {
        TranslationZset() {
        }

        @Override // androidx.constraintlayout.motion.widget.KeyCycleOscillator
        /* renamed from: f */
        public void mo20850f(View view, float f) {
            if (Build.VERSION.SDK_INT >= 21) {
                view.setTranslationZ(m20864a(f));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/KeyCycleOscillator$WavePoint.class */
    public static class WavePoint {

        /* renamed from: a */
        int f1725a;

        /* renamed from: b */
        float f1726b;

        /* renamed from: c */
        float f1727c;

        /* renamed from: d */
        float f1728d;

        public WavePoint(int i, float f, float f2, float f3) {
            this.f1725a = i;
            this.f1726b = f3;
            this.f1727c = f2;
            this.f1728d = f;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static KeyCycleOscillator m20862c(String str) {
        if (str.startsWith("CUSTOM")) {
            return new CustomSet();
        }
        char c = 65535;
        switch (str.hashCode()) {
            case -1249320806:
                if (str.equals("rotationX")) {
                    c = 3;
                    break;
                }
                break;
            case -1249320805:
                if (str.equals("rotationY")) {
                    c = 4;
                    break;
                }
                break;
            case -1225497657:
                if (str.equals("translationX")) {
                    c = '\n';
                    break;
                }
                break;
            case -1225497656:
                if (str.equals("translationY")) {
                    c = 11;
                    break;
                }
                break;
            case -1225497655:
                if (str.equals("translationZ")) {
                    c = '\f';
                    break;
                }
                break;
            case -1001078227:
                if (str.equals("progress")) {
                    c = '\r';
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
                    c = '\t';
                    break;
                }
                break;
            case -40300674:
                if (str.equals("rotation")) {
                    c = 2;
                    break;
                }
                break;
            case -4379043:
                if (str.equals("elevation")) {
                    c = 1;
                    break;
                }
                break;
            case 37232917:
                if (str.equals("transitionPathRotate")) {
                    c = 5;
                    break;
                }
                break;
            case 92909918:
                if (str.equals("alpha")) {
                    c = 0;
                    break;
                }
                break;
            case 156108012:
                if (str.equals("waveOffset")) {
                    c = '\b';
                    break;
                }
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
                return new PathRotateSet();
            case 6:
                return new ScaleXset();
            case 7:
                return new ScaleYset();
            case '\b':
                return new AlphaSet();
            case '\t':
                return new AlphaSet();
            case '\n':
                return new TranslationXset();
            case 11:
                return new TranslationYset();
            case '\f':
                return new TranslationZset();
            case '\r':
                return new ProgressSet();
            default:
                return null;
        }
    }

    /* renamed from: a */
    public float m20864a(float f) {
        return (float) this.f1709a.m20854b(f);
    }

    /* renamed from: b */
    public float m20863b(float f) {
        return (float) this.f1709a.m20855a(f);
    }

    /* renamed from: d */
    public void m20861d(int i, int i2, int i3, float f, float f2, float f3) {
        this.f1714f.add(new WavePoint(i, f, f2, f3));
        if (i3 != -1) {
            this.f1713e = i3;
        }
        this.f1712d = i2;
    }

    /* renamed from: e */
    public void m20860e(int i, int i2, int i3, float f, float f2, float f3, ConstraintAttribute constraintAttribute) {
        this.f1714f.add(new WavePoint(i, f, f2, f3));
        if (i3 != -1) {
            this.f1713e = i3;
        }
        this.f1712d = i2;
        this.f1710b = constraintAttribute;
    }

    /* renamed from: f */
    public abstract void mo20850f(View view, float f);

    /* renamed from: g */
    public void m20859g(String str) {
        this.f1711c = str;
    }

    @TargetApi(19)
    /* renamed from: h */
    public void m20858h(float f) {
        int size = this.f1714f.size();
        if (size != 0) {
            Collections.sort(this.f1714f, new Comparator<WavePoint>(this) { // from class: androidx.constraintlayout.motion.widget.KeyCycleOscillator.1
                /* renamed from: a */
                public int compare(WavePoint wavePoint, WavePoint wavePoint2) {
                    return Integer.compare(wavePoint.f1725a, wavePoint2.f1725a);
                }
            });
            double[] dArr = new double[size];
            double[][] dArr2 = new double[size][2];
            this.f1709a = new CycleOscillator(this.f1712d, this.f1713e, size);
            Iterator<WavePoint> it = this.f1714f.iterator();
            int i = 0;
            while (it.hasNext()) {
                WavePoint next = it.next();
                float f2 = next.f1728d;
                dArr[i] = f2 * 0.01d;
                double[] dArr3 = dArr2[i];
                float f3 = next.f1726b;
                dArr3[0] = f3;
                double[] dArr4 = dArr2[i];
                float f4 = next.f1727c;
                dArr4[1] = f4;
                this.f1709a.m20853c(i, next.f1725a, f2, f4, f3);
                i++;
            }
            this.f1709a.m20852d(f);
            CurveFit.m20977a(0, dArr, dArr2);
        }
    }

    /* renamed from: i */
    public boolean m20857i() {
        boolean z = true;
        if (this.f1713e != 1) {
            z = false;
        }
        return z;
    }

    public String toString() {
        String str = this.f1711c;
        DecimalFormat decimalFormat = new DecimalFormat("##.##");
        Iterator<WavePoint> it = this.f1714f.iterator();
        while (it.hasNext()) {
            WavePoint next = it.next();
            str = str + "[" + next.f1725a + " , " + decimalFormat.format(next.f1726b) + "] ";
        }
        return str;
    }
}
