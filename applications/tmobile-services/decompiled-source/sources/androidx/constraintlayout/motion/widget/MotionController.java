package androidx.constraintlayout.motion.widget;

import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.motion.utils.CurveFit;
import androidx.constraintlayout.motion.utils.Easing;
import androidx.constraintlayout.motion.utils.VelocityMatrix;
import androidx.constraintlayout.motion.widget.KeyCycleOscillator;
import androidx.constraintlayout.motion.widget.SplineSet;
import androidx.constraintlayout.motion.widget.TimeCycleSplineSet;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionController.class */
public class MotionController {

    /* renamed from: a */
    View f1800a;

    /* renamed from: b */
    int f1801b;

    /* renamed from: h */
    private CurveFit[] f1807h;

    /* renamed from: i */
    private CurveFit f1808i;

    /* renamed from: m */
    private int[] f1812m;

    /* renamed from: n */
    private double[] f1813n;

    /* renamed from: o */
    private double[] f1814o;

    /* renamed from: p */
    private String[] f1815p;

    /* renamed from: q */
    private int[] f1816q;

    /* renamed from: w */
    private HashMap<String, TimeCycleSplineSet> f1822w;

    /* renamed from: x */
    private HashMap<String, SplineSet> f1823x;

    /* renamed from: y */
    private HashMap<String, KeyCycleOscillator> f1824y;

    /* renamed from: z */
    private KeyTrigger[] f1825z;

    /* renamed from: c */
    private int f1802c = -1;

    /* renamed from: d */
    private MotionPaths f1803d = new MotionPaths();

    /* renamed from: e */
    private MotionPaths f1804e = new MotionPaths();

    /* renamed from: f */
    private MotionConstrainedPoint f1805f = new MotionConstrainedPoint();

    /* renamed from: g */
    private MotionConstrainedPoint f1806g = new MotionConstrainedPoint();

    /* renamed from: j */
    float f1809j = Float.NaN;

    /* renamed from: k */
    float f1810k = 0.0f;

    /* renamed from: l */
    float f1811l = 1.0f;

    /* renamed from: r */
    private int f1817r = 4;

    /* renamed from: s */
    private float[] f1818s = new float[4];

    /* renamed from: t */
    private ArrayList<MotionPaths> f1819t = new ArrayList<>();

    /* renamed from: u */
    private float[] f1820u = new float[1];

    /* renamed from: v */
    private ArrayList<Key> f1821v = new ArrayList<>();

    /* renamed from: A */
    private int f1799A = Key.f1667e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MotionController(View view) {
        m20762u(view);
    }

    /* renamed from: f */
    private float m20777f(float f, float[] fArr) {
        float f2;
        float f3 = 0.0f;
        float f4 = 1.0f;
        if (fArr != null) {
            fArr[0] = 1.0f;
            f2 = f;
        } else {
            f2 = f;
            if (this.f1811l != 1.0d) {
                float f5 = f;
                if (f < this.f1810k) {
                    f5 = 0.0f;
                }
                float f6 = this.f1810k;
                f2 = f5;
                if (f5 > f6) {
                    f2 = f5;
                    if (f5 < 1.0d) {
                        f2 = (f5 - f6) * this.f1811l;
                    }
                }
            }
        }
        Easing easing = this.f1803d.f1928f;
        f4 = Float.NaN;
        Iterator<MotionPaths> it = this.f1819t.iterator();
        while (it.hasNext()) {
            MotionPaths next = it.next();
            Easing easing2 = next.f1928f;
            if (easing2 != null) {
                float f7 = next.f1930h;
                if (f7 < f2) {
                    easing = easing2;
                    f3 = f7;
                } else if (Float.isNaN(f4)) {
                    f4 = next.f1930h;
                }
            }
        }
        float f8 = f2;
        if (easing != null) {
            if (Float.isNaN(f4)) {
            }
            float f9 = f4 - f3;
            double d = (f2 - f3) / f9;
            float a = (((float) easing.mo20974a(d)) * f9) + f3;
            f8 = a;
            if (fArr != null) {
                fArr[0] = (float) easing.mo20973b(d);
                f8 = a;
            }
        }
        return f8;
    }

    /* renamed from: m */
    private float m20770m() {
        float f;
        float[] fArr = new float[2];
        float f2 = 1.0f / 99;
        double d = 0.0d;
        double d2 = 0.0d;
        float f3 = 0.0f;
        for (int i = 0; i < 100; i++) {
            float f4 = i * f2;
            double d3 = f4;
            Easing easing = this.f1803d.f1928f;
            float f5 = Float.NaN;
            Iterator<MotionPaths> it = this.f1819t.iterator();
            float f6 = 0.0f;
            while (it.hasNext()) {
                MotionPaths next = it.next();
                Easing easing2 = next.f1928f;
                easing = easing;
                f5 = f5;
                f6 = f6;
                if (easing2 != null) {
                    f6 = next.f1930h;
                    if (f6 < f4) {
                        easing = easing2;
                        f5 = f5;
                    } else {
                        easing = easing;
                        f5 = f5;
                        f6 = f6;
                        if (Float.isNaN(f5)) {
                            f5 = next.f1930h;
                            f6 = f6;
                            easing = easing;
                        }
                    }
                }
            }
            if (easing != null) {
                float f7 = f5;
                if (Float.isNaN(f5)) {
                    f7 = 1.0f;
                }
                d3 = (((float) easing.mo20974a((f4 - f6) / f)) * (f7 - f6)) + f6;
            }
            this.f1807h[0].mo20969d(d3, this.f1813n);
            this.f1803d.m20668i(this.f1812m, this.f1813n, fArr, 0);
            f3 = f3;
            if (i > 0) {
                f3 = (float) (f3 + Math.hypot(d2 - fArr[1], d - fArr[0]));
            }
            d = fArr[0];
            d2 = fArr[1];
        }
        return f3;
    }

    /* renamed from: n */
    private void m20769n(MotionPaths motionPaths) {
        int binarySearch = Collections.binarySearch(this.f1819t, motionPaths);
        if (binarySearch == 0) {
            Log.e("MotionController", " KeyPath positon \"" + motionPaths.f1931i + "\" outside of range");
        }
        this.f1819t.add((-binarySearch) - 1, motionPaths);
    }

    /* renamed from: p */
    private void m20767p(MotionPaths motionPaths) {
        motionPaths.m20660w((int) this.f1800a.getX(), (int) this.f1800a.getY(), this.f1800a.getWidth(), this.f1800a.getHeight());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m20782a(Key key) {
        this.f1821v.add(key);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m20781b(ArrayList<Key> arrayList) {
        this.f1821v.addAll(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public int m20780c(float[] fArr, int[] iArr) {
        if (fArr == null) {
            return 0;
        }
        double[] h = this.f1807h[0].mo20965h();
        if (iArr != null) {
            Iterator<MotionPaths> it = this.f1819t.iterator();
            int i = 0;
            while (it.hasNext()) {
                iArr[i] = it.next().f1939q;
                i++;
            }
        }
        int i2 = 0;
        for (double d : h) {
            this.f1807h[0].mo20969d(d, this.f1813n);
            this.f1803d.m20668i(this.f1812m, this.f1813n, fArr, i2);
            i2 += 2;
        }
        return i2 / 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public void m20779d(float[] fArr, int i) {
        float f;
        float f2 = 1.0f / (i - 1);
        HashMap<String, SplineSet> hashMap = this.f1823x;
        KeyCycleOscillator keyCycleOscillator = null;
        SplineSet splineSet = hashMap == null ? null : hashMap.get("translationX");
        HashMap<String, SplineSet> hashMap2 = this.f1823x;
        SplineSet splineSet2 = hashMap2 == null ? null : hashMap2.get("translationY");
        HashMap<String, KeyCycleOscillator> hashMap3 = this.f1824y;
        KeyCycleOscillator keyCycleOscillator2 = hashMap3 == null ? null : hashMap3.get("translationX");
        HashMap<String, KeyCycleOscillator> hashMap4 = this.f1824y;
        if (hashMap4 != null) {
            keyCycleOscillator = hashMap4.get("translationY");
        }
        for (int i2 = 0; i2 < i; i2++) {
            float f3 = i2 * f2;
            float f4 = 0.0f;
            float f5 = f3;
            if (this.f1811l != 1.0f) {
                float f6 = f3;
                if (f3 < this.f1810k) {
                    f6 = 0.0f;
                }
                float f7 = this.f1810k;
                f5 = f6;
                if (f6 > f7) {
                    f5 = f6;
                    if (f6 < 1.0d) {
                        f5 = (f6 - f7) * this.f1811l;
                    }
                }
            }
            double d = f5;
            Easing easing = this.f1803d.f1928f;
            float f8 = Float.NaN;
            Iterator<MotionPaths> it = this.f1819t.iterator();
            while (it.hasNext()) {
                MotionPaths next = it.next();
                Easing easing2 = next.f1928f;
                easing = easing;
                f4 = f4;
                f8 = f8;
                if (easing2 != null) {
                    f4 = next.f1930h;
                    if (f4 < f5) {
                        easing = easing2;
                        f8 = f8;
                    } else {
                        easing = easing;
                        f4 = f4;
                        f8 = f8;
                        if (Float.isNaN(f8)) {
                            f8 = next.f1930h;
                            f4 = f4;
                            easing = easing;
                        }
                    }
                }
            }
            if (easing != null) {
                float f9 = f8;
                if (Float.isNaN(f8)) {
                    f9 = 1.0f;
                }
                d = (((float) easing.mo20974a((f5 - f4) / f)) * (f9 - f4)) + f4;
            }
            this.f1807h[0].mo20969d(d, this.f1813n);
            CurveFit curveFit = this.f1808i;
            if (curveFit != null) {
                double[] dArr = this.f1813n;
                if (dArr.length > 0) {
                    curveFit.mo20969d(d, dArr);
                }
            }
            int i3 = i2 * 2;
            this.f1803d.m20668i(this.f1812m, this.f1813n, fArr, i3);
            if (keyCycleOscillator2 != null) {
                fArr[i3] = fArr[i3] + keyCycleOscillator2.m20864a(f5);
            } else if (splineSet != null) {
                fArr[i3] = fArr[i3] + splineSet.m20579a(f5);
            }
            if (keyCycleOscillator != null) {
                int i4 = i3 + 1;
                fArr[i4] = fArr[i4] + keyCycleOscillator.m20864a(f5);
            } else if (splineSet2 != null) {
                int i5 = i3 + 1;
                fArr[i5] = fArr[i5] + splineSet2.m20579a(f5);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public void m20778e(float f, float[] fArr, int i) {
        this.f1807h[0].mo20969d(m20777f(f, null), this.f1813n);
        this.f1803d.m20665m(this.f1812m, this.f1813n, fArr, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public void m20776g(float f, float f2, float f3, float[] fArr) {
        double[] dArr;
        float f4 = m20777f(f, this.f1820u);
        CurveFit[] curveFitArr = this.f1807h;
        int i = 0;
        if (curveFitArr != null) {
            CurveFit curveFit = curveFitArr[0];
            double d = f4;
            curveFit.mo20966g(d, this.f1814o);
            this.f1807h[0].mo20969d(d, this.f1813n);
            float f5 = this.f1820u[0];
            while (true) {
                dArr = this.f1814o;
                if (i >= dArr.length) {
                    break;
                }
                dArr[i] = dArr[i] * f5;
                i++;
            }
            CurveFit curveFit2 = this.f1808i;
            if (curveFit2 != null) {
                double[] dArr2 = this.f1813n;
                if (dArr2.length > 0) {
                    curveFit2.mo20969d(d, dArr2);
                    this.f1808i.mo20966g(d, this.f1814o);
                    this.f1803d.m20659x(f2, f3, fArr, this.f1812m, this.f1814o, this.f1813n);
                    return;
                }
                return;
            }
            this.f1803d.m20659x(f2, f3, fArr, this.f1812m, dArr, this.f1813n);
            return;
        }
        MotionPaths motionPaths = this.f1804e;
        float f6 = motionPaths.f1932j;
        MotionPaths motionPaths2 = this.f1803d;
        float f7 = f6 - motionPaths2.f1932j;
        float f8 = motionPaths.f1933k - motionPaths2.f1933k;
        float f9 = motionPaths.f1934l;
        float f10 = motionPaths2.f1934l;
        float f11 = motionPaths.f1935m;
        float f12 = motionPaths2.f1935m;
        fArr[0] = (f7 * (1.0f - f2)) + (((f9 - f10) + f7) * f2);
        fArr[1] = (f8 * (1.0f - f3)) + (((f11 - f12) + f8) * f3);
    }

    /* renamed from: h */
    public int m20775h() {
        int i = this.f1803d.f1929g;
        Iterator<MotionPaths> it = this.f1819t.iterator();
        while (it.hasNext()) {
            i = Math.max(i, it.next().f1929g);
        }
        return Math.max(i, this.f1804e.f1929g);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public float m20774i() {
        return this.f1804e.f1932j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public float m20773j() {
        return this.f1804e.f1933k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public MotionPaths m20772k(int i) {
        return this.f1819t.get(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public void m20771l(float f, int i, int i2, float f2, float f3, float[] fArr) {
        float f4 = m20777f(f, this.f1820u);
        HashMap<String, SplineSet> hashMap = this.f1823x;
        KeyCycleOscillator keyCycleOscillator = null;
        SplineSet splineSet = hashMap == null ? null : hashMap.get("translationX");
        HashMap<String, SplineSet> hashMap2 = this.f1823x;
        SplineSet splineSet2 = hashMap2 == null ? null : hashMap2.get("translationY");
        HashMap<String, SplineSet> hashMap3 = this.f1823x;
        SplineSet splineSet3 = hashMap3 == null ? null : hashMap3.get("rotation");
        HashMap<String, SplineSet> hashMap4 = this.f1823x;
        SplineSet splineSet4 = hashMap4 == null ? null : hashMap4.get("scaleX");
        HashMap<String, SplineSet> hashMap5 = this.f1823x;
        SplineSet splineSet5 = hashMap5 == null ? null : hashMap5.get("scaleY");
        HashMap<String, KeyCycleOscillator> hashMap6 = this.f1824y;
        KeyCycleOscillator keyCycleOscillator2 = hashMap6 == null ? null : hashMap6.get("translationX");
        HashMap<String, KeyCycleOscillator> hashMap7 = this.f1824y;
        KeyCycleOscillator keyCycleOscillator3 = hashMap7 == null ? null : hashMap7.get("translationY");
        HashMap<String, KeyCycleOscillator> hashMap8 = this.f1824y;
        KeyCycleOscillator keyCycleOscillator4 = hashMap8 == null ? null : hashMap8.get("rotation");
        HashMap<String, KeyCycleOscillator> hashMap9 = this.f1824y;
        KeyCycleOscillator keyCycleOscillator5 = hashMap9 == null ? null : hashMap9.get("scaleX");
        HashMap<String, KeyCycleOscillator> hashMap10 = this.f1824y;
        if (hashMap10 != null) {
            keyCycleOscillator = hashMap10.get("scaleY");
        }
        VelocityMatrix velocityMatrix = new VelocityMatrix();
        velocityMatrix.m20950b();
        velocityMatrix.m20948d(splineSet3, f4);
        velocityMatrix.m20944h(splineSet, splineSet2, f4);
        velocityMatrix.m20946f(splineSet4, splineSet5, f4);
        velocityMatrix.m20949c(keyCycleOscillator4, f4);
        velocityMatrix.m20945g(keyCycleOscillator2, keyCycleOscillator3, f4);
        velocityMatrix.m20947e(keyCycleOscillator5, keyCycleOscillator, f4);
        CurveFit curveFit = this.f1808i;
        if (curveFit != null) {
            double[] dArr = this.f1813n;
            if (dArr.length > 0) {
                double d = f4;
                curveFit.mo20969d(d, dArr);
                this.f1808i.mo20966g(d, this.f1814o);
                this.f1803d.m20659x(f2, f3, fArr, this.f1812m, this.f1814o, this.f1813n);
            }
            velocityMatrix.m20951a(f2, f3, i, i2, fArr);
            return;
        }
        int i3 = 0;
        if (this.f1807h != null) {
            double f5 = m20777f(f4, this.f1820u);
            this.f1807h[0].mo20966g(f5, this.f1814o);
            this.f1807h[0].mo20969d(f5, this.f1813n);
            float f6 = this.f1820u[0];
            while (true) {
                double[] dArr2 = this.f1814o;
                if (i3 < dArr2.length) {
                    dArr2[i3] = dArr2[i3] * f6;
                    i3++;
                } else {
                    this.f1803d.m20659x(f2, f3, fArr, this.f1812m, dArr2, this.f1813n);
                    velocityMatrix.m20951a(f2, f3, i, i2, fArr);
                    return;
                }
            }
        } else {
            MotionPaths motionPaths = this.f1804e;
            float f7 = motionPaths.f1932j;
            MotionPaths motionPaths2 = this.f1803d;
            float f8 = f7 - motionPaths2.f1932j;
            float f9 = motionPaths.f1933k - motionPaths2.f1933k;
            float f10 = motionPaths.f1934l;
            float f11 = motionPaths2.f1934l;
            float f12 = motionPaths.f1935m;
            float f13 = motionPaths2.f1935m;
            fArr[0] = (f8 * (1.0f - f2)) + (((f10 - f11) + f8) * f2);
            fArr[1] = (f9 * (1.0f - f3)) + (((f12 - f13) + f9) * f3);
            velocityMatrix.m20950b();
            velocityMatrix.m20948d(splineSet3, f4);
            velocityMatrix.m20944h(splineSet, splineSet2, f4);
            velocityMatrix.m20946f(splineSet4, splineSet5, f4);
            velocityMatrix.m20949c(keyCycleOscillator4, f4);
            velocityMatrix.m20945g(keyCycleOscillator2, keyCycleOscillator3, f4);
            velocityMatrix.m20947e(keyCycleOscillator5, keyCycleOscillator, f4);
            velocityMatrix.m20951a(f2, f3, i, i2, fArr);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public boolean m20768o(View view, float f, long j, KeyCache keyCache) {
        boolean z;
        TimeCycleSplineSet.PathRotate pathRotate;
        boolean z2;
        float f2 = m20777f(f, null);
        HashMap<String, SplineSet> hashMap = this.f1823x;
        if (hashMap != null) {
            for (SplineSet splineSet : hashMap.values()) {
                splineSet.mo20567f(view, f2);
            }
        }
        HashMap<String, TimeCycleSplineSet> hashMap2 = this.f1822w;
        if (hashMap2 != null) {
            pathRotate = null;
            z = false;
            for (TimeCycleSplineSet timeCycleSplineSet : hashMap2.values()) {
                if (timeCycleSplineSet instanceof TimeCycleSplineSet.PathRotate) {
                    pathRotate = (TimeCycleSplineSet.PathRotate) timeCycleSplineSet;
                } else {
                    z |= timeCycleSplineSet.mo20553f(view, f2, j, keyCache);
                }
            }
        } else {
            pathRotate = null;
            z = false;
        }
        CurveFit[] curveFitArr = this.f1807h;
        if (curveFitArr != null) {
            CurveFit curveFit = curveFitArr[0];
            double d = f2;
            curveFit.mo20969d(d, this.f1813n);
            this.f1807h[0].mo20966g(d, this.f1814o);
            CurveFit curveFit2 = this.f1808i;
            if (curveFit2 != null) {
                double[] dArr = this.f1813n;
                if (dArr.length > 0) {
                    curveFit2.mo20969d(d, dArr);
                    this.f1808i.mo20966g(d, this.f1814o);
                }
            }
            this.f1803d.m20658y(view, this.f1812m, this.f1813n, this.f1814o, null);
            HashMap<String, SplineSet> hashMap3 = this.f1823x;
            if (hashMap3 != null) {
                for (SplineSet splineSet2 : hashMap3.values()) {
                    if (splineSet2 instanceof SplineSet.PathRotate) {
                        SplineSet.PathRotate pathRotate2 = (SplineSet.PathRotate) splineSet2;
                        double[] dArr2 = this.f1814o;
                        pathRotate2.m20571i(view, f2, dArr2[0], dArr2[1]);
                    }
                }
            }
            if (pathRotate != null) {
                double[] dArr3 = this.f1814o;
                z = pathRotate.m20557j(view, keyCache, f2, j, dArr3[0], dArr3[1]) | z;
            }
            int i = 1;
            while (true) {
                CurveFit[] curveFitArr2 = this.f1807h;
                if (i >= curveFitArr2.length) {
                    break;
                }
                curveFitArr2[i].mo20968e(d, this.f1818s);
                this.f1803d.f1938p.get(this.f1815p[i - 1]).m20067i(view, this.f1818s);
                i++;
            }
            MotionConstrainedPoint motionConstrainedPoint = this.f1805f;
            if (motionConstrainedPoint.f1782g == 0) {
                if (f2 <= 0.0f) {
                    view.setVisibility(motionConstrainedPoint.f1783h);
                } else if (f2 >= 1.0f) {
                    view.setVisibility(this.f1806g.f1783h);
                } else if (this.f1806g.f1783h != motionConstrainedPoint.f1783h) {
                    view.setVisibility(0);
                }
            }
            z2 = z;
            if (this.f1825z != null) {
                int i2 = 0;
                while (true) {
                    KeyTrigger[] keyTriggerArr = this.f1825z;
                    z2 = z;
                    if (i2 >= keyTriggerArr.length) {
                        break;
                    }
                    keyTriggerArr[i2].m20794r(f2, view);
                    i2++;
                }
            }
        } else {
            MotionPaths motionPaths = this.f1803d;
            float f3 = motionPaths.f1932j;
            MotionPaths motionPaths2 = this.f1804e;
            float f4 = motionPaths2.f1932j;
            float f5 = motionPaths.f1933k;
            float f6 = motionPaths2.f1933k;
            float f7 = motionPaths.f1934l;
            float f8 = motionPaths2.f1934l;
            float f9 = motionPaths.f1935m;
            float f10 = motionPaths2.f1935m;
            float f11 = f3 + ((f4 - f3) * f2) + 0.5f;
            int i3 = (int) f11;
            float f12 = f5 + ((f6 - f5) * f2) + 0.5f;
            int i4 = (int) f12;
            int i5 = (int) (f11 + ((f8 - f7) * f2) + f7);
            int i6 = (int) (f12 + ((f10 - f9) * f2) + f9);
            if (!(f8 == f7 && f10 == f9)) {
                view.measure(View.MeasureSpec.makeMeasureSpec(i5 - i3, 1073741824), View.MeasureSpec.makeMeasureSpec(i6 - i4, 1073741824));
            }
            view.layout(i3, i4, i5, i6);
            z2 = z;
        }
        HashMap<String, KeyCycleOscillator> hashMap4 = this.f1824y;
        if (hashMap4 != null) {
            for (KeyCycleOscillator keyCycleOscillator : hashMap4.values()) {
                if (keyCycleOscillator instanceof KeyCycleOscillator.PathRotateSet) {
                    KeyCycleOscillator.PathRotateSet pathRotateSet = (KeyCycleOscillator.PathRotateSet) keyCycleOscillator;
                    double[] dArr4 = this.f1814o;
                    pathRotateSet.m20851j(view, f2, dArr4[0], dArr4[1]);
                } else {
                    keyCycleOscillator.mo20850f(view, f2);
                }
            }
        }
        return z2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public void m20766q(ConstraintWidget constraintWidget, ConstraintSet constraintSet) {
        MotionPaths motionPaths = this.f1804e;
        motionPaths.f1930h = 1.0f;
        motionPaths.f1931i = 1.0f;
        m20767p(motionPaths);
        this.f1804e.m20660w(constraintWidget.m20354V(), constraintWidget.m20352W(), constraintWidget.m20356U(), constraintWidget.m20305y());
        this.f1804e.m20673a(constraintSet.m19995s(this.f1801b));
        this.f1806g.m20783m(constraintWidget, constraintSet, this.f1801b);
    }

    /* renamed from: r */
    public void m20765r(int i) {
        this.f1799A = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: s */
    public void m20764s(View view) {
        MotionPaths motionPaths = this.f1803d;
        motionPaths.f1930h = 0.0f;
        motionPaths.f1931i = 0.0f;
        motionPaths.m20660w(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        this.f1805f.m20784l(view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: t */
    public void m20763t(ConstraintWidget constraintWidget, ConstraintSet constraintSet) {
        MotionPaths motionPaths = this.f1803d;
        motionPaths.f1930h = 0.0f;
        motionPaths.f1931i = 0.0f;
        m20767p(motionPaths);
        this.f1803d.m20660w(constraintWidget.m20354V(), constraintWidget.m20352W(), constraintWidget.m20356U(), constraintWidget.m20305y());
        ConstraintSet.Constraint s = constraintSet.m19995s(this.f1801b);
        this.f1803d.m20673a(s);
        this.f1809j = s.f2623c.f2696f;
        this.f1805f.m20783m(constraintWidget, constraintSet, this.f1801b);
    }

    public String toString() {
        return " start: x: " + this.f1803d.f1932j + " y: " + this.f1803d.f1933k + " end: x: " + this.f1804e.f1932j + " y: " + this.f1804e.f1933k;
    }

    /* renamed from: u */
    public void m20762u(View view) {
        this.f1800a = view;
        this.f1801b = view.getId();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.LayoutParams) {
            ((ConstraintLayout.LayoutParams) layoutParams).m20032a();
        }
    }

    /* renamed from: v */
    public void m20761v(int i, int i2, float f, long j) {
        ArrayList arrayList;
        TimeCycleSplineSet timeCycleSplineSet;
        ConstraintAttribute constraintAttribute;
        SplineSet splineSet;
        ConstraintAttribute constraintAttribute2;
        new HashSet();
        HashSet<String> hashSet = new HashSet<>();
        HashSet<String> hashSet2 = new HashSet<>();
        HashSet<String> hashSet3 = new HashSet<>();
        HashMap<String, Integer> hashMap = new HashMap<>();
        int i3 = this.f1799A;
        if (i3 != Key.f1667e) {
            this.f1803d.f1937o = i3;
        }
        this.f1805f.m20786i(this.f1806g, hashSet2);
        ArrayList<Key> arrayList2 = this.f1821v;
        if (arrayList2 != null) {
            Iterator<Key> it = arrayList2.iterator();
            ArrayList arrayList3 = null;
            while (true) {
                arrayList = arrayList3;
                if (!it.hasNext()) {
                    break;
                }
                Key next = it.next();
                if (next instanceof KeyPosition) {
                    KeyPosition keyPosition = (KeyPosition) next;
                    m20769n(new MotionPaths(i, i2, keyPosition, this.f1803d, this.f1804e));
                    int i4 = keyPosition.f1742f;
                    if (i4 != Key.f1667e) {
                        this.f1802c = i4;
                    }
                } else if (next instanceof KeyCycle) {
                    next.mo20808b(hashSet3);
                } else if (next instanceof KeyTimeCycle) {
                    next.mo20808b(hashSet);
                } else if (next instanceof KeyTrigger) {
                    ArrayList arrayList4 = arrayList3;
                    if (arrayList3 == null) {
                        arrayList4 = new ArrayList();
                    }
                    arrayList4.add((KeyTrigger) next);
                    arrayList3 = arrayList4;
                } else {
                    next.mo20832e(hashMap);
                    next.mo20808b(hashSet2);
                }
            }
        } else {
            arrayList = null;
        }
        if (arrayList != null) {
            this.f1825z = (KeyTrigger[]) arrayList.toArray(new KeyTrigger[0]);
        }
        if (!hashSet2.isEmpty()) {
            this.f1823x = new HashMap<>();
            Iterator<String> it2 = hashSet2.iterator();
            while (it2.hasNext()) {
                String next2 = it2.next();
                if (next2.startsWith("CUSTOM,")) {
                    SparseArray sparseArray = new SparseArray();
                    String str = next2.split(",")[1];
                    Iterator<Key> it3 = this.f1821v.iterator();
                    while (it3.hasNext()) {
                        Key next3 = it3.next();
                        HashMap<String, ConstraintAttribute> hashMap2 = next3.f1671d;
                        if (!(hashMap2 == null || (constraintAttribute2 = hashMap2.get(str)) == null)) {
                            sparseArray.append(next3.f1668a, constraintAttribute2);
                        }
                    }
                    splineSet = SplineSet.m20577c(next2, sparseArray);
                } else {
                    splineSet = SplineSet.m20576d(next2);
                }
                if (splineSet != null) {
                    splineSet.m20575g(next2);
                    this.f1823x.put(next2, splineSet);
                }
            }
            ArrayList<Key> arrayList5 = this.f1821v;
            if (arrayList5 != null) {
                Iterator<Key> it4 = arrayList5.iterator();
                while (it4.hasNext()) {
                    Key next4 = it4.next();
                    if (next4 instanceof KeyAttributes) {
                        next4.mo20809a(this.f1823x);
                    }
                }
            }
            this.f1805f.m20791a(this.f1823x, 0);
            this.f1806g.m20791a(this.f1823x, 100);
            for (String str2 : this.f1823x.keySet()) {
                this.f1823x.get(str2).mo20573h(hashMap.containsKey(str2) ? hashMap.get(str2).intValue() : 0);
            }
        }
        if (!hashSet.isEmpty()) {
            if (this.f1822w == null) {
                this.f1822w = new HashMap<>();
            }
            Iterator<String> it5 = hashSet.iterator();
            while (it5.hasNext()) {
                String next5 = it5.next();
                if (!this.f1822w.containsKey(next5)) {
                    if (next5.startsWith("CUSTOM,")) {
                        SparseArray sparseArray2 = new SparseArray();
                        String str3 = next5.split(",")[1];
                        Iterator<Key> it6 = this.f1821v.iterator();
                        while (it6.hasNext()) {
                            Key next6 = it6.next();
                            HashMap<String, ConstraintAttribute> hashMap3 = next6.f1671d;
                            if (!(hashMap3 == null || (constraintAttribute = hashMap3.get(str3)) == null)) {
                                sparseArray2.append(next6.f1668a, constraintAttribute);
                            }
                        }
                        timeCycleSplineSet = TimeCycleSplineSet.m20564c(next5, sparseArray2);
                    } else {
                        timeCycleSplineSet = TimeCycleSplineSet.m20563d(next5, j);
                    }
                    if (timeCycleSplineSet != null) {
                        timeCycleSplineSet.m20561h(next5);
                        this.f1822w.put(next5, timeCycleSplineSet);
                    }
                }
            }
            ArrayList<Key> arrayList6 = this.f1821v;
            if (arrayList6 != null) {
                Iterator<Key> it7 = arrayList6.iterator();
                while (it7.hasNext()) {
                    Key next7 = it7.next();
                    if (next7 instanceof KeyTimeCycle) {
                        ((KeyTimeCycle) next7).m20833M(this.f1822w);
                    }
                }
            }
            for (String str4 : this.f1822w.keySet()) {
                this.f1822w.get(str4).mo20559i(hashMap.containsKey(str4) ? hashMap.get(str4).intValue() : 0);
            }
        }
        int size = this.f1819t.size() + 2;
        MotionPaths[] motionPathsArr = new MotionPaths[size];
        motionPathsArr[0] = this.f1803d;
        motionPathsArr[size - 1] = this.f1804e;
        if (this.f1819t.size() > 0 && this.f1802c == -1) {
            this.f1802c = 0;
        }
        Iterator<MotionPaths> it8 = this.f1819t.iterator();
        int i5 = 1;
        while (it8.hasNext()) {
            motionPathsArr[i5] = it8.next();
            i5++;
        }
        HashSet hashSet4 = new HashSet();
        for (String str5 : this.f1804e.f1938p.keySet()) {
            if (this.f1803d.f1938p.containsKey(str5)) {
                if (!hashSet2.contains("CUSTOM," + str5)) {
                    hashSet4.add(str5);
                }
            }
        }
        String[] strArr = (String[]) hashSet4.toArray(new String[0]);
        this.f1815p = strArr;
        this.f1816q = new int[strArr.length];
        int i6 = 0;
        while (true) {
            String[] strArr2 = this.f1815p;
            if (i6 >= strArr2.length) {
                break;
            }
            String str6 = strArr2[i6];
            this.f1816q[i6] = 0;
            int i7 = 0;
            while (true) {
                if (i7 >= size) {
                    break;
                } else if (motionPathsArr[i7].f1938p.containsKey(str6)) {
                    int[] iArr = this.f1816q;
                    iArr[i6] = iArr[i6] + motionPathsArr[i7].f1938p.get(str6).m20070f();
                    break;
                } else {
                    i7++;
                }
            }
            i6++;
        }
        boolean z = motionPathsArr[0].f1937o != Key.f1667e;
        int length = 18 + this.f1815p.length;
        boolean[] zArr = new boolean[length];
        for (int i8 = 1; i8 < size; i8++) {
            motionPathsArr[i8].m20670g(motionPathsArr[i8 - 1], zArr, this.f1815p, z);
        }
        int i9 = 0;
        for (int i10 = 1; i10 < length; i10++) {
            i9 = i9;
            if (zArr[i10]) {
                i9++;
            }
        }
        int[] iArr2 = new int[i9];
        this.f1812m = iArr2;
        this.f1813n = new double[iArr2.length];
        this.f1814o = new double[iArr2.length];
        int i11 = 0;
        for (int i12 = 1; i12 < length; i12++) {
            i11 = i11;
            if (zArr[i12]) {
                this.f1812m[i11] = i12;
                i11++;
            }
        }
        double[][] dArr = new double[size][this.f1812m.length];
        double[] dArr2 = new double[size];
        for (int i13 = 0; i13 < size; i13++) {
            motionPathsArr[i13].m20669h(dArr[i13], this.f1812m);
            dArr2[i13] = motionPathsArr[i13].f1930h;
        }
        int i14 = 0;
        while (true) {
            int[] iArr3 = this.f1812m;
            if (i14 >= iArr3.length) {
                break;
            }
            if (iArr3[i14] < MotionPaths.f1927t.length) {
                String str7 = MotionPaths.f1927t[this.f1812m[i14]] + " [";
                for (int i15 = 0; i15 < size; i15++) {
                    str7 = str7 + dArr[i15][i14];
                }
            }
            i14++;
        }
        this.f1807h = new CurveFit[this.f1815p.length + 1];
        int i16 = 0;
        while (true) {
            String[] strArr3 = this.f1815p;
            if (i16 >= strArr3.length) {
                break;
            }
            String str8 = strArr3[i16];
            double[] dArr3 = null;
            int i17 = 0;
            double[][] dArr4 = null;
            for (int i18 = 0; i18 < size; i18++) {
                dArr3 = dArr3;
                i17 = i17;
                dArr4 = dArr4;
                if (motionPathsArr[i18].m20664o(str8)) {
                    dArr3 = dArr3;
                    double[][] dArr5 = dArr4;
                    if (dArr4 == null) {
                        dArr3 = new double[size];
                        dArr5 = new double[size][motionPathsArr[i18].m20666l(str8)];
                    }
                    dArr3[i17] = motionPathsArr[i18].f1930h;
                    motionPathsArr[i18].m20667k(str8, dArr5[i17], 0);
                    i17++;
                    dArr4 = dArr5;
                }
            }
            i16++;
            this.f1807h[i16] = CurveFit.m20977a(this.f1802c, Arrays.copyOf(dArr3, i17), (double[][]) Arrays.copyOf(dArr4, i17));
        }
        this.f1807h[0] = CurveFit.m20977a(this.f1802c, dArr2, dArr);
        if (motionPathsArr[0].f1937o != Key.f1667e) {
            int[] iArr4 = new int[size];
            double[] dArr6 = new double[size];
            double[][] dArr7 = new double[size][2];
            for (int i19 = 0; i19 < size; i19++) {
                iArr4[i19] = motionPathsArr[i19].f1937o;
                dArr6[i19] = motionPathsArr[i19].f1930h;
                dArr7[i19][0] = motionPathsArr[i19].f1932j;
                dArr7[i19][1] = motionPathsArr[i19].f1933k;
            }
            this.f1808i = CurveFit.m20976b(iArr4, dArr6, dArr7);
        }
        float f2 = Float.NaN;
        this.f1824y = new HashMap<>();
        if (this.f1821v != null) {
            Iterator<String> it9 = hashSet3.iterator();
            while (it9.hasNext()) {
                String next8 = it9.next();
                KeyCycleOscillator c = KeyCycleOscillator.m20862c(next8);
                if (c != null) {
                    f2 = f2;
                    if (c.m20857i()) {
                        f2 = f2;
                        if (Float.isNaN(f2)) {
                            f2 = m20770m();
                        }
                    }
                    c.m20859g(next8);
                    this.f1824y.put(next8, c);
                }
            }
            Iterator<Key> it10 = this.f1821v.iterator();
            while (it10.hasNext()) {
                Key next9 = it10.next();
                if (next9 instanceof KeyCycle) {
                    ((KeyCycle) next9).m20889O(this.f1824y);
                }
            }
            for (KeyCycleOscillator keyCycleOscillator : this.f1824y.values()) {
                keyCycleOscillator.m20858h(f2);
            }
        }
    }
}
