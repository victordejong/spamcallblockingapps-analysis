package androidx.constraintlayout.motion.widget;

import android.os.Build;
import android.util.Log;
import android.view.View;
import androidx.constraintlayout.motion.widget.AbstractC0192r;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.widget.C0221b;
import androidx.constraintlayout.widget.ConstraintAttribute;
import d.f.a.a.c;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.constraintlayout.motion.widget.m */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/m.class */
public class C0184m implements Comparable<C0184m> {

    /* renamed from: d */
    int f871d;

    /* renamed from: p */
    private float f883p;

    /* renamed from: b */
    private float f869b = 1.0f;

    /* renamed from: c */
    int f870c = 0;

    /* renamed from: e */
    private float f872e = 0.0f;

    /* renamed from: f */
    private float f873f = 0.0f;

    /* renamed from: g */
    private float f874g = 0.0f;

    /* renamed from: h */
    public float f875h = 0.0f;

    /* renamed from: i */
    private float f876i = 1.0f;

    /* renamed from: j */
    private float f877j = 1.0f;

    /* renamed from: k */
    private float f878k = Float.NaN;

    /* renamed from: l */
    private float f879l = Float.NaN;

    /* renamed from: m */
    private float f880m = 0.0f;

    /* renamed from: n */
    private float f881n = 0.0f;

    /* renamed from: o */
    private float f882o = 0.0f;

    /* renamed from: q */
    private float f884q = Float.NaN;

    /* renamed from: r */
    private float f885r = Float.NaN;

    /* renamed from: s */
    LinkedHashMap<String, ConstraintAttribute> f886s = new LinkedHashMap<>();

    /* renamed from: k */
    private boolean m14245k(float f, float f2) {
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
    public void m14249a(HashMap<String, AbstractC0192r> hashMap, int i) {
        String str;
        float f;
        for (String str2 : hashMap.keySet()) {
            AbstractC0192r.b bVar = (AbstractC0192r) hashMap.get(str2);
            str2.hashCode();
            char c = 65535;
            switch (str2.hashCode()) {
                case -1249320806:
                    if (str2.equals("rotationX")) {
                        c = 0;
                        break;
                    }
                    break;
                case -1249320805:
                    if (str2.equals("rotationY")) {
                        c = 1;
                        break;
                    }
                    break;
                case -1225497657:
                    if (str2.equals("translationX")) {
                        c = 2;
                        break;
                    }
                    break;
                case -1225497656:
                    if (str2.equals("translationY")) {
                        c = 3;
                        break;
                    }
                    break;
                case -1225497655:
                    if (str2.equals("translationZ")) {
                        c = 4;
                        break;
                    }
                    break;
                case -1001078227:
                    if (str2.equals("progress")) {
                        c = 5;
                        break;
                    }
                    break;
                case -908189618:
                    if (str2.equals("scaleX")) {
                        c = 6;
                        break;
                    }
                    break;
                case -908189617:
                    if (str2.equals("scaleY")) {
                        c = 7;
                        break;
                    }
                    break;
                case -760884510:
                    if (str2.equals("transformPivotX")) {
                        c = '\b';
                        break;
                    }
                    break;
                case -760884509:
                    if (str2.equals("transformPivotY")) {
                        c = '\t';
                        break;
                    }
                    break;
                case -40300674:
                    if (str2.equals("rotation")) {
                        c = '\n';
                        break;
                    }
                    break;
                case -4379043:
                    if (str2.equals("elevation")) {
                        c = 11;
                        break;
                    }
                    break;
                case 37232917:
                    if (str2.equals("transitionPathRotate")) {
                        c = '\f';
                        break;
                    }
                    break;
                case 92909918:
                    if (str2.equals("alpha")) {
                        c = '\r';
                        break;
                    }
                    break;
            }
            float f2 = 1.0f;
            switch (c) {
                case 0:
                    f = Float.isNaN(this.f874g) ? 0.0f : this.f874g;
                    bVar.m14120e(i, f);
                    break;
                case 1:
                    f = Float.isNaN(this.f875h) ? 0.0f : this.f875h;
                    bVar.m14120e(i, f);
                    break;
                case 2:
                    f = Float.isNaN(this.f880m) ? 0.0f : this.f880m;
                    bVar.m14120e(i, f);
                    break;
                case 3:
                    f = Float.isNaN(this.f881n) ? 0.0f : this.f881n;
                    bVar.m14120e(i, f);
                    break;
                case 4:
                    f = Float.isNaN(this.f882o) ? 0.0f : this.f882o;
                    bVar.m14120e(i, f);
                    break;
                case 5:
                    f = Float.isNaN(this.f885r) ? 0.0f : this.f885r;
                    bVar.m14120e(i, f);
                    break;
                case 6:
                    if (!Float.isNaN(this.f876i)) {
                        f2 = this.f876i;
                    }
                    bVar.m14120e(i, f2);
                    break;
                case 7:
                    if (!Float.isNaN(this.f877j)) {
                        f2 = this.f877j;
                    }
                    bVar.m14120e(i, f2);
                    break;
                case '\b':
                    f = Float.isNaN(this.f878k) ? 0.0f : this.f878k;
                    bVar.m14120e(i, f);
                    break;
                case '\t':
                    f = Float.isNaN(this.f879l) ? 0.0f : this.f879l;
                    bVar.m14120e(i, f);
                    break;
                case '\n':
                    f = Float.isNaN(this.f873f) ? 0.0f : this.f873f;
                    bVar.m14120e(i, f);
                    break;
                case 11:
                    f = Float.isNaN(this.f872e) ? 0.0f : this.f872e;
                    bVar.m14120e(i, f);
                    break;
                case '\f':
                    f = Float.isNaN(this.f884q) ? 0.0f : this.f884q;
                    bVar.m14120e(i, f);
                    break;
                case '\r':
                    if (!Float.isNaN(this.f869b)) {
                        f2 = this.f869b;
                    }
                    bVar.m14120e(i, f2);
                    break;
                default:
                    if (str2.startsWith("CUSTOM")) {
                        String str3 = str2.split(",")[1];
                        if (this.f886s.containsKey(str3)) {
                            ConstraintAttribute constraintAttribute = this.f886s.get(str3);
                            if (bVar instanceof AbstractC0192r.b) {
                                bVar.i(i, constraintAttribute);
                                break;
                            } else {
                                str = str2 + " splineSet not a CustomSet frame = " + i + ", value" + constraintAttribute.m13869d() + bVar;
                            }
                        } else {
                            str = "UNKNOWN customName " + str3;
                        }
                    } else {
                        str = "UNKNOWN spline " + str2;
                    }
                    Log.e("MotionPaths", str);
                    break;
            }
        }
    }

    /* renamed from: e */
    public void m14248e(View view) {
        this.f871d = view.getVisibility();
        this.f869b = view.getVisibility() != 0 ? 0.0f : view.getAlpha();
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            this.f872e = view.getElevation();
        }
        this.f873f = view.getRotation();
        this.f874g = view.getRotationX();
        this.f875h = view.getRotationY();
        this.f876i = view.getScaleX();
        this.f877j = view.getScaleY();
        this.f878k = view.getPivotX();
        this.f879l = view.getPivotY();
        this.f880m = view.getTranslationX();
        this.f881n = view.getTranslationY();
        if (i >= 21) {
            this.f882o = view.getTranslationZ();
        }
    }

    /* renamed from: h */
    public void m14247h(C0221b.C0222a aVar) {
        C0221b.C0225d dVar = aVar.f1427b;
        int i = dVar.f1505c;
        this.f870c = i;
        int i2 = dVar.f1504b;
        this.f871d = i2;
        this.f869b = (i2 == 0 || i != 0) ? dVar.f1506d : 0.0f;
        C0221b.C0226e eVar = aVar.f1430e;
        boolean z = eVar.f1520l;
        this.f872e = eVar.f1521m;
        this.f873f = eVar.f1510b;
        this.f874g = eVar.f1511c;
        this.f875h = eVar.f1512d;
        this.f876i = eVar.f1513e;
        this.f877j = eVar.f1514f;
        this.f878k = eVar.f1515g;
        this.f879l = eVar.f1516h;
        this.f880m = eVar.f1517i;
        this.f881n = eVar.f1518j;
        this.f882o = eVar.f1519k;
        c.c(aVar.f1428c.f1498c);
        C0221b.C0224c cVar = aVar.f1428c;
        this.f884q = cVar.f1502g;
        int i3 = cVar.f1500e;
        this.f885r = aVar.f1427b.f1507e;
        for (String str : aVar.f1431f.keySet()) {
            ConstraintAttribute constraintAttribute = aVar.f1431f.get(str);
            if (constraintAttribute.m13870c() != ConstraintAttribute.AttributeType.STRING_TYPE) {
                this.f886s.put(str, constraintAttribute);
            }
        }
    }

    /* renamed from: j */
    public int compareTo(C0184m mVar) {
        return Float.compare(this.f883p, mVar.f883p);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public void m14244l(C0184m mVar, HashSet<String> hashSet) {
        if (m14245k(this.f869b, mVar.f869b)) {
            hashSet.add("alpha");
        }
        if (m14245k(this.f872e, mVar.f872e)) {
            hashSet.add("elevation");
        }
        int i = this.f871d;
        int i2 = mVar.f871d;
        if (i != i2 && this.f870c == 0 && (i == 0 || i2 == 0)) {
            hashSet.add("alpha");
        }
        if (m14245k(this.f873f, mVar.f873f)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.f884q) || !Float.isNaN(mVar.f884q)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.f885r) || !Float.isNaN(mVar.f885r)) {
            hashSet.add("progress");
        }
        if (m14245k(this.f874g, mVar.f874g)) {
            hashSet.add("rotationX");
        }
        if (m14245k(this.f875h, mVar.f875h)) {
            hashSet.add("rotationY");
        }
        if (m14245k(this.f878k, mVar.f878k)) {
            hashSet.add("transformPivotX");
        }
        if (m14245k(this.f879l, mVar.f879l)) {
            hashSet.add("transformPivotY");
        }
        if (m14245k(this.f876i, mVar.f876i)) {
            hashSet.add("scaleX");
        }
        if (m14245k(this.f877j, mVar.f877j)) {
            hashSet.add("scaleY");
        }
        if (m14245k(this.f880m, mVar.f880m)) {
            hashSet.add("translationX");
        }
        if (m14245k(this.f881n, mVar.f881n)) {
            hashSet.add("translationY");
        }
        if (m14245k(this.f882o, mVar.f882o)) {
            hashSet.add("translationZ");
        }
    }

    /* renamed from: m */
    void m14243m(float f, float f2, float f3, float f4) {
    }

    /* renamed from: n */
    public void m14242n(View view) {
        m14243m(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        m14248e(view);
    }

    /* renamed from: o */
    public void m14241o(ConstraintWidget constraintWidget, C0221b bVar, int i) {
        m14243m(constraintWidget.m13981R(), constraintWidget.m13980S(), constraintWidget.m13982Q(), constraintWidget.m13931w());
        m14247h(bVar.m13790s(i));
    }
}
