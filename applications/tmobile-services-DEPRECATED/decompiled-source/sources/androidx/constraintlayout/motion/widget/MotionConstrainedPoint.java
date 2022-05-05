package androidx.constraintlayout.motion.widget;

import android.os.Build;
import android.util.Log;
import android.view.View;
import androidx.constraintlayout.motion.utils.Easing;
import androidx.constraintlayout.motion.widget.SplineSet;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintSet;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionConstrainedPoint.class */
public class MotionConstrainedPoint implements Comparable<MotionConstrainedPoint> {

    /* renamed from: h */
    int f1783h;

    /* renamed from: t */
    private float f1795t;

    /* renamed from: f */
    private float f1781f = 1.0f;

    /* renamed from: g */
    int f1782g = 0;

    /* renamed from: i */
    private float f1784i = 0.0f;

    /* renamed from: j */
    private float f1785j = 0.0f;

    /* renamed from: k */
    private float f1786k = 0.0f;

    /* renamed from: l */
    public float f1787l = 0.0f;

    /* renamed from: m */
    private float f1788m = 1.0f;

    /* renamed from: n */
    private float f1789n = 1.0f;

    /* renamed from: o */
    private float f1790o = Float.NaN;

    /* renamed from: p */
    private float f1791p = Float.NaN;

    /* renamed from: q */
    private float f1792q = 0.0f;

    /* renamed from: r */
    private float f1793r = 0.0f;

    /* renamed from: s */
    private float f1794s = 0.0f;

    /* renamed from: u */
    private float f1796u = Float.NaN;

    /* renamed from: v */
    private float f1797v = Float.NaN;

    /* renamed from: w */
    LinkedHashMap<String, ConstraintAttribute> f1798w = new LinkedHashMap<>();

    /* renamed from: h */
    private boolean m20787h(float f, float f2) {
        boolean z = true;
        boolean z2 = true;
        if (Float.isNaN(f) || Float.isNaN(f2)) {
            if (Float.isNaN(f) == Float.isNaN(f2)) {
                z = false;
            }
            return z;
        }
        if (Math.abs(f - f2) <= 1.0E-6f) {
            z2 = false;
        }
        return z2;
    }

    /* renamed from: a */
    public void m20791a(HashMap<String, SplineSet> hashMap, int i) {
        for (String str : hashMap.keySet()) {
            SplineSet splineSet = hashMap.get(str);
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
                        c = 11;
                        break;
                    }
                    break;
                case -1225497656:
                    if (str.equals("translationY")) {
                        c = '\f';
                        break;
                    }
                    break;
                case -1225497655:
                    if (str.equals("translationZ")) {
                        c = '\r';
                        break;
                    }
                    break;
                case -1001078227:
                    if (str.equals("progress")) {
                        c = '\b';
                        break;
                    }
                    break;
                case -908189618:
                    if (str.equals("scaleX")) {
                        c = '\t';
                        break;
                    }
                    break;
                case -908189617:
                    if (str.equals("scaleY")) {
                        c = '\n';
                        break;
                    }
                    break;
                case -760884510:
                    if (str.equals("transformPivotX")) {
                        c = 5;
                        break;
                    }
                    break;
                case -760884509:
                    if (str.equals("transformPivotY")) {
                        c = 6;
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
                        c = 7;
                        break;
                    }
                    break;
                case 92909918:
                    if (str.equals("alpha")) {
                        c = 0;
                        break;
                    }
                    break;
            }
            float f = 1.0f;
            float f2 = 0.0f;
            float f3 = 0.0f;
            float f4 = 0.0f;
            float f5 = 0.0f;
            float f6 = 0.0f;
            float f7 = 0.0f;
            float f8 = 0.0f;
            float f9 = 0.0f;
            float f10 = 0.0f;
            float f11 = 0.0f;
            float f12 = 0.0f;
            switch (c) {
                case 0:
                    if (!Float.isNaN(this.f1781f)) {
                        f = this.f1781f;
                    }
                    splineSet.mo20574e(i, f);
                    break;
                case 1:
                    if (!Float.isNaN(this.f1784i)) {
                        f11 = this.f1784i;
                    }
                    splineSet.mo20574e(i, f11);
                    break;
                case 2:
                    if (!Float.isNaN(this.f1785j)) {
                        f10 = this.f1785j;
                    }
                    splineSet.mo20574e(i, f10);
                    break;
                case 3:
                    if (!Float.isNaN(this.f1786k)) {
                        f9 = this.f1786k;
                    }
                    splineSet.mo20574e(i, f9);
                    break;
                case 4:
                    if (!Float.isNaN(this.f1787l)) {
                        f8 = this.f1787l;
                    }
                    splineSet.mo20574e(i, f8);
                    break;
                case 5:
                    if (!Float.isNaN(this.f1790o)) {
                        f7 = this.f1790o;
                    }
                    splineSet.mo20574e(i, f7);
                    break;
                case 6:
                    if (!Float.isNaN(this.f1791p)) {
                        f6 = this.f1791p;
                    }
                    splineSet.mo20574e(i, f6);
                    break;
                case 7:
                    if (!Float.isNaN(this.f1796u)) {
                        f5 = this.f1796u;
                    }
                    splineSet.mo20574e(i, f5);
                    break;
                case '\b':
                    if (!Float.isNaN(this.f1797v)) {
                        f4 = this.f1797v;
                    }
                    splineSet.mo20574e(i, f4);
                    break;
                case '\t':
                    if (!Float.isNaN(this.f1788m)) {
                        f = this.f1788m;
                    }
                    splineSet.mo20574e(i, f);
                    break;
                case '\n':
                    if (!Float.isNaN(this.f1789n)) {
                        f = this.f1789n;
                    }
                    splineSet.mo20574e(i, f);
                    break;
                case 11:
                    if (!Float.isNaN(this.f1792q)) {
                        f3 = this.f1792q;
                    }
                    splineSet.mo20574e(i, f3);
                    break;
                case '\f':
                    if (!Float.isNaN(this.f1793r)) {
                        f2 = this.f1793r;
                    }
                    splineSet.mo20574e(i, f2);
                    break;
                case '\r':
                    if (!Float.isNaN(this.f1794s)) {
                        f12 = this.f1794s;
                    }
                    splineSet.mo20574e(i, f12);
                    break;
                default:
                    if (str.startsWith("CUSTOM")) {
                        String str2 = str.split(",")[1];
                        if (this.f1798w.containsKey(str2)) {
                            ConstraintAttribute constraintAttribute = this.f1798w.get(str2);
                            if (splineSet instanceof SplineSet.CustomSet) {
                                ((SplineSet.CustomSet) splineSet).m20572i(i, constraintAttribute);
                                break;
                            } else {
                                Log.e("MotionPaths", str + " splineSet not a CustomSet frame = " + i + ", value" + constraintAttribute.m20072d() + splineSet);
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

    /* renamed from: b */
    public void m20790b(View view) {
        this.f1783h = view.getVisibility();
        this.f1781f = view.getVisibility() != 0 ? 0.0f : view.getAlpha();
        if (Build.VERSION.SDK_INT >= 21) {
            this.f1784i = view.getElevation();
        }
        this.f1785j = view.getRotation();
        this.f1786k = view.getRotationX();
        this.f1787l = view.getRotationY();
        this.f1788m = view.getScaleX();
        this.f1789n = view.getScaleY();
        this.f1790o = view.getPivotX();
        this.f1791p = view.getPivotY();
        this.f1792q = view.getTranslationX();
        this.f1793r = view.getTranslationY();
        if (Build.VERSION.SDK_INT >= 21) {
            this.f1794s = view.getTranslationZ();
        }
    }

    /* renamed from: e */
    public void m20789e(ConstraintSet.Constraint constraint) {
        ConstraintSet.PropertySet propertySet = constraint.f2622b;
        int i = propertySet.f2700c;
        this.f1782g = i;
        int i2 = propertySet.f2699b;
        this.f1783h = i2;
        this.f1781f = (i2 == 0 || i != 0) ? constraint.f2622b.f2701d : 0.0f;
        ConstraintSet.Transform transform = constraint.f2625e;
        boolean z = transform.f2715l;
        this.f1784i = transform.f2716m;
        this.f1785j = transform.f2705b;
        this.f1786k = transform.f2706c;
        this.f1787l = transform.f2707d;
        this.f1788m = transform.f2708e;
        this.f1789n = transform.f2709f;
        this.f1790o = transform.f2710g;
        this.f1791p = transform.f2711h;
        this.f1792q = transform.f2712i;
        this.f1793r = transform.f2713j;
        this.f1794s = transform.f2714k;
        Easing.m20975c(constraint.f2623c.f2693c);
        ConstraintSet.Motion motion = constraint.f2623c;
        this.f1796u = motion.f2697g;
        int i3 = motion.f2695e;
        this.f1797v = constraint.f2622b.f2702e;
        for (String str : constraint.f2626f.keySet()) {
            ConstraintAttribute constraintAttribute = constraint.f2626f.get(str);
            if (constraintAttribute.m20073c() != ConstraintAttribute.AttributeType.STRING_TYPE) {
                this.f1798w.put(str, constraintAttribute);
            }
        }
    }

    /* renamed from: g */
    public int compareTo(MotionConstrainedPoint motionConstrainedPoint) {
        return Float.compare(this.f1795t, motionConstrainedPoint.f1795t);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public void m20786i(MotionConstrainedPoint motionConstrainedPoint, HashSet<String> hashSet) {
        if (m20787h(this.f1781f, motionConstrainedPoint.f1781f)) {
            hashSet.add("alpha");
        }
        if (m20787h(this.f1784i, motionConstrainedPoint.f1784i)) {
            hashSet.add("elevation");
        }
        int i = this.f1783h;
        int i2 = motionConstrainedPoint.f1783h;
        if (i != i2 && this.f1782g == 0 && (i == 0 || i2 == 0)) {
            hashSet.add("alpha");
        }
        if (m20787h(this.f1785j, motionConstrainedPoint.f1785j)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.f1796u) || !Float.isNaN(motionConstrainedPoint.f1796u)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.f1797v) || !Float.isNaN(motionConstrainedPoint.f1797v)) {
            hashSet.add("progress");
        }
        if (m20787h(this.f1786k, motionConstrainedPoint.f1786k)) {
            hashSet.add("rotationX");
        }
        if (m20787h(this.f1787l, motionConstrainedPoint.f1787l)) {
            hashSet.add("rotationY");
        }
        if (m20787h(this.f1790o, motionConstrainedPoint.f1790o)) {
            hashSet.add("transformPivotX");
        }
        if (m20787h(this.f1791p, motionConstrainedPoint.f1791p)) {
            hashSet.add("transformPivotY");
        }
        if (m20787h(this.f1788m, motionConstrainedPoint.f1788m)) {
            hashSet.add("scaleX");
        }
        if (m20787h(this.f1789n, motionConstrainedPoint.f1789n)) {
            hashSet.add("scaleY");
        }
        if (m20787h(this.f1792q, motionConstrainedPoint.f1792q)) {
            hashSet.add("translationX");
        }
        if (m20787h(this.f1793r, motionConstrainedPoint.f1793r)) {
            hashSet.add("translationY");
        }
        if (m20787h(this.f1794s, motionConstrainedPoint.f1794s)) {
            hashSet.add("translationZ");
        }
    }

    /* renamed from: k */
    void m20785k(float f, float f2, float f3, float f4) {
    }

    /* renamed from: l */
    public void m20784l(View view) {
        m20785k(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        m20790b(view);
    }

    /* renamed from: m */
    public void m20783m(ConstraintWidget constraintWidget, ConstraintSet constraintSet, int i) {
        m20785k(constraintWidget.m20354V(), constraintWidget.m20352W(), constraintWidget.m20356U(), constraintWidget.m20305y());
        m20789e(constraintSet.m19995s(i));
    }
}
