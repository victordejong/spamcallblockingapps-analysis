package androidx.constraintlayout.motion.widget;

import android.os.Build;
import android.util.Log;
import android.view.View;
import androidx.constraintlayout.motion.widget.AbstractC0419r;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.widget.C0515b;
import androidx.constraintlayout.widget.ConstraintAttribute;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import p020b.p037f.p038a.p039a.C1508c;
/* renamed from: androidx.constraintlayout.motion.widget.m */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/m.class */
public class C0411m implements Comparable<C0411m> {

    /* renamed from: d */
    static String[] f1801d = {"position", "x", "y", "width", "height", "pathRotate"};

    /* renamed from: g */
    int f1810g;

    /* renamed from: t */
    private C1508c f1823t;

    /* renamed from: v */
    private float f1825v;

    /* renamed from: w */
    private float f1826w;

    /* renamed from: x */
    private float f1827x;

    /* renamed from: y */
    private float f1828y;

    /* renamed from: z */
    private float f1829z;

    /* renamed from: e */
    private float f1808e = 1.0f;

    /* renamed from: f */
    int f1809f = 0;

    /* renamed from: h */
    private boolean f1811h = false;

    /* renamed from: i */
    private float f1812i = 0.0f;

    /* renamed from: j */
    private float f1813j = 0.0f;

    /* renamed from: k */
    private float f1814k = 0.0f;

    /* renamed from: l */
    public float f1815l = 0.0f;

    /* renamed from: m */
    private float f1816m = 1.0f;

    /* renamed from: n */
    private float f1817n = 1.0f;

    /* renamed from: o */
    private float f1818o = Float.NaN;

    /* renamed from: p */
    private float f1819p = Float.NaN;

    /* renamed from: q */
    private float f1820q = 0.0f;

    /* renamed from: r */
    private float f1821r = 0.0f;

    /* renamed from: s */
    private float f1822s = 0.0f;

    /* renamed from: u */
    private int f1824u = 0;

    /* renamed from: A */
    private float f1802A = Float.NaN;

    /* renamed from: B */
    private float f1803B = Float.NaN;

    /* renamed from: C */
    LinkedHashMap<String, ConstraintAttribute> f1804C = new LinkedHashMap<>();

    /* renamed from: D */
    int f1805D = 0;

    /* renamed from: E */
    double[] f1806E = new double[18];

    /* renamed from: F */
    double[] f1807F = new double[18];

    /* renamed from: g */
    private boolean m34337g(float f, float f2) {
        boolean z = true;
        if (Float.isNaN(f) || Float.isNaN(f2)) {
            return Float.isNaN(f) != Float.isNaN(f2);
        }
        if (Math.abs(f - f2) <= 1.0E-6f) {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    public void m34341a(HashMap<String, AbstractC0419r> hashMap, int i) {
        for (String str : hashMap.keySet()) {
            AbstractC0419r abstractC0419r = hashMap.get(str);
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
            }
            float f = 1.0f;
            switch (z) {
                case false:
                    abstractC0419r.mo34211e(i, Float.isNaN(this.f1814k) ? 0.0f : this.f1814k);
                    break;
                case true:
                    abstractC0419r.mo34211e(i, Float.isNaN(this.f1815l) ? 0.0f : this.f1815l);
                    break;
                case true:
                    abstractC0419r.mo34211e(i, Float.isNaN(this.f1820q) ? 0.0f : this.f1820q);
                    break;
                case true:
                    abstractC0419r.mo34211e(i, Float.isNaN(this.f1821r) ? 0.0f : this.f1821r);
                    break;
                case true:
                    abstractC0419r.mo34211e(i, Float.isNaN(this.f1822s) ? 0.0f : this.f1822s);
                    break;
                case true:
                    abstractC0419r.mo34211e(i, Float.isNaN(this.f1803B) ? 0.0f : this.f1803B);
                    break;
                case true:
                    if (!Float.isNaN(this.f1816m)) {
                        f = this.f1816m;
                    }
                    abstractC0419r.mo34211e(i, f);
                    break;
                case true:
                    if (!Float.isNaN(this.f1817n)) {
                        f = this.f1817n;
                    }
                    abstractC0419r.mo34211e(i, f);
                    break;
                case true:
                    abstractC0419r.mo34211e(i, Float.isNaN(this.f1818o) ? 0.0f : this.f1818o);
                    break;
                case true:
                    abstractC0419r.mo34211e(i, Float.isNaN(this.f1819p) ? 0.0f : this.f1819p);
                    break;
                case true:
                    abstractC0419r.mo34211e(i, Float.isNaN(this.f1813j) ? 0.0f : this.f1813j);
                    break;
                case true:
                    abstractC0419r.mo34211e(i, Float.isNaN(this.f1812i) ? 0.0f : this.f1812i);
                    break;
                case true:
                    abstractC0419r.mo34211e(i, Float.isNaN(this.f1802A) ? 0.0f : this.f1802A);
                    break;
                case true:
                    if (!Float.isNaN(this.f1808e)) {
                        f = this.f1808e;
                    }
                    abstractC0419r.mo34211e(i, f);
                    break;
                default:
                    if (str.startsWith("CUSTOM")) {
                        String str2 = str.split(",")[1];
                        if (this.f1804C.containsKey(str2)) {
                            ConstraintAttribute constraintAttribute = this.f1804C.get(str2);
                            if (abstractC0419r instanceof AbstractC0419r.C0421b) {
                                ((AbstractC0419r.C0421b) abstractC0419r).m34209i(i, constraintAttribute);
                                break;
                            } else {
                                Log.e("MotionPaths", str + " splineSet not a CustomSet frame = " + i + ", value" + constraintAttribute.m33715d() + abstractC0419r);
                                break;
                            }
                        } else {
                            Log.e("MotionPaths", "UNKNOWN customName " + str2);
                            break;
                        }
                    } else {
                        Log.e("MotionPaths", "UNKNOWN spline " + str);
                        break;
                    }
            }
        }
    }

    /* renamed from: d */
    public void m34340d(View view) {
        this.f1810g = view.getVisibility();
        this.f1808e = view.getVisibility() != 0 ? 0.0f : view.getAlpha();
        this.f1811h = false;
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            this.f1812i = view.getElevation();
        }
        this.f1813j = view.getRotation();
        this.f1814k = view.getRotationX();
        this.f1815l = view.getRotationY();
        this.f1816m = view.getScaleX();
        this.f1817n = view.getScaleY();
        this.f1818o = view.getPivotX();
        this.f1819p = view.getPivotY();
        this.f1820q = view.getTranslationX();
        this.f1821r = view.getTranslationY();
        if (i >= 21) {
            this.f1822s = view.getTranslationZ();
        }
    }

    /* renamed from: e */
    public void m34339e(C0515b.C0516a c0516a) {
        C0515b.C0519d c0519d = c0516a.f2622b;
        int i = c0519d.f2700c;
        this.f1809f = i;
        int i2 = c0519d.f2699b;
        this.f1810g = i2;
        this.f1808e = (i2 == 0 || i != 0) ? c0519d.f2701d : 0.0f;
        C0515b.C0520e c0520e = c0516a.f2625e;
        this.f1811h = c0520e.f2715m;
        this.f1812i = c0520e.f2716n;
        this.f1813j = c0520e.f2705c;
        this.f1814k = c0520e.f2706d;
        this.f1815l = c0520e.f2707e;
        this.f1816m = c0520e.f2708f;
        this.f1817n = c0520e.f2709g;
        this.f1818o = c0520e.f2710h;
        this.f1819p = c0520e.f2711i;
        this.f1820q = c0520e.f2712j;
        this.f1821r = c0520e.f2713k;
        this.f1822s = c0520e.f2714l;
        this.f1823t = C1508c.m29884c(c0516a.f2623c.f2693d);
        C0515b.C0518c c0518c = c0516a.f2623c;
        this.f1802A = c0518c.f2697h;
        this.f1824u = c0518c.f2695f;
        this.f1803B = c0516a.f2622b.f2702e;
        for (String str : c0516a.f2626f.keySet()) {
            ConstraintAttribute constraintAttribute = c0516a.f2626f.get(str);
            if (constraintAttribute.m33716c() != ConstraintAttribute.AttributeType.STRING_TYPE) {
                this.f1804C.put(str, constraintAttribute);
            }
        }
    }

    /* renamed from: f */
    public int compareTo(C0411m c0411m) {
        return Float.compare(this.f1825v, c0411m.f1825v);
    }

    /* renamed from: h */
    public void m34336h(C0411m c0411m, HashSet<String> hashSet) {
        if (m34337g(this.f1808e, c0411m.f1808e)) {
            hashSet.add("alpha");
        }
        if (m34337g(this.f1812i, c0411m.f1812i)) {
            hashSet.add("elevation");
        }
        int i = this.f1810g;
        int i2 = c0411m.f1810g;
        if (i != i2 && this.f1809f == 0 && (i == 0 || i2 == 0)) {
            hashSet.add("alpha");
        }
        if (m34337g(this.f1813j, c0411m.f1813j)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.f1802A) || !Float.isNaN(c0411m.f1802A)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.f1803B) || !Float.isNaN(c0411m.f1803B)) {
            hashSet.add("progress");
        }
        if (m34337g(this.f1814k, c0411m.f1814k)) {
            hashSet.add("rotationX");
        }
        if (m34337g(this.f1815l, c0411m.f1815l)) {
            hashSet.add("rotationY");
        }
        if (m34337g(this.f1818o, c0411m.f1818o)) {
            hashSet.add("transformPivotX");
        }
        if (m34337g(this.f1819p, c0411m.f1819p)) {
            hashSet.add("transformPivotY");
        }
        if (m34337g(this.f1816m, c0411m.f1816m)) {
            hashSet.add("scaleX");
        }
        if (m34337g(this.f1817n, c0411m.f1817n)) {
            hashSet.add("scaleY");
        }
        if (m34337g(this.f1820q, c0411m.f1820q)) {
            hashSet.add("translationX");
        }
        if (m34337g(this.f1821r, c0411m.f1821r)) {
            hashSet.add("translationY");
        }
        if (m34337g(this.f1822s, c0411m.f1822s)) {
            hashSet.add("translationZ");
        }
    }

    /* renamed from: i */
    void m34335i(float f, float f2, float f3, float f4) {
        this.f1826w = f;
        this.f1827x = f2;
        this.f1828y = f3;
        this.f1829z = f4;
    }

    /* renamed from: j */
    public void m34334j(View view) {
        m34335i(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        m34340d(view);
    }

    /* renamed from: k */
    public void m34333k(ConstraintWidget constraintWidget, C0515b c0515b, int i) {
        m34335i(constraintWidget.m34011V(), constraintWidget.m34009W(), constraintWidget.m34013U(), constraintWidget.m33962y());
        m34339e(c0515b.m33629s(i));
    }
}
