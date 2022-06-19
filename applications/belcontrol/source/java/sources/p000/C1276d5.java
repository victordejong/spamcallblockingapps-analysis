package p000;

import android.os.Build;
import android.util.Log;
import android.view.View;
import i5;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import p000.C0012a7;
import y6;
/* renamed from: d5 */
/* loaded from: classes-dex2jar.jar:d5.class */
public class C1276d5 implements Comparable<C1276d5> {

    /* renamed from: c */
    public int f5759c;

    /* renamed from: q */
    public float f5771q;

    /* renamed from: a */
    public float f5757a = 1.0f;

    /* renamed from: b */
    public int f5758b = 0;

    /* renamed from: d */
    public float f5760d = 0.0f;

    /* renamed from: f */
    public float f5761f = 0.0f;

    /* renamed from: g */
    public float f5762g = 0.0f;

    /* renamed from: h */
    public float f5763h = 0.0f;

    /* renamed from: j */
    public float f5764j = 1.0f;

    /* renamed from: k */
    public float f5765k = 1.0f;

    /* renamed from: l */
    public float f5766l = Float.NaN;

    /* renamed from: m */
    public float f5767m = Float.NaN;

    /* renamed from: n */
    public float f5768n = 0.0f;

    /* renamed from: o */
    public float f5769o = 0.0f;

    /* renamed from: p */
    public float f5770p = 0.0f;

    /* renamed from: r */
    public float f5772r = Float.NaN;

    /* renamed from: s */
    public float f5773s = Float.NaN;

    /* renamed from: t */
    public LinkedHashMap<String, y6> f5774t = new LinkedHashMap<>();

    /* renamed from: a */
    public void m2820a(HashMap<String, i5> hashMap, int i) {
        String str;
        float f;
        for (String str2 : hashMap.keySet()) {
            i5.b bVar = (i5) hashMap.get(str2);
            str2.hashCode();
            boolean z = true;
            switch (str2.hashCode()) {
                case -1249320806:
                    if (str2.equals("rotationX")) {
                        z = false;
                        break;
                    }
                    break;
                case -1249320805:
                    if (str2.equals("rotationY")) {
                        z = true;
                        break;
                    }
                    break;
                case -1225497657:
                    if (str2.equals("translationX")) {
                        z = true;
                        break;
                    }
                    break;
                case -1225497656:
                    if (str2.equals("translationY")) {
                        z = true;
                        break;
                    }
                    break;
                case -1225497655:
                    if (str2.equals("translationZ")) {
                        z = true;
                        break;
                    }
                    break;
                case -1001078227:
                    if (str2.equals("progress")) {
                        z = true;
                        break;
                    }
                    break;
                case -908189618:
                    if (str2.equals("scaleX")) {
                        z = true;
                        break;
                    }
                    break;
                case -908189617:
                    if (str2.equals("scaleY")) {
                        z = true;
                        break;
                    }
                    break;
                case -760884510:
                    if (str2.equals("transformPivotX")) {
                        z = true;
                        break;
                    }
                    break;
                case -760884509:
                    if (str2.equals("transformPivotY")) {
                        z = true;
                        break;
                    }
                    break;
                case -40300674:
                    if (str2.equals("rotation")) {
                        z = true;
                        break;
                    }
                    break;
                case -4379043:
                    if (str2.equals("elevation")) {
                        z = true;
                        break;
                    }
                    break;
                case 37232917:
                    if (str2.equals("transitionPathRotate")) {
                        z = true;
                        break;
                    }
                    break;
                case 92909918:
                    if (str2.equals("alpha")) {
                        z = true;
                        break;
                    }
                    break;
            }
            float f2 = 1.0f;
            switch (z) {
                case false:
                    f = Float.isNaN(this.f5762g) ? 0.0f : this.f5762g;
                    bVar.e(i, f);
                    break;
                case true:
                    f = Float.isNaN(this.f5763h) ? 0.0f : this.f5763h;
                    bVar.e(i, f);
                    break;
                case true:
                    f = Float.isNaN(this.f5768n) ? 0.0f : this.f5768n;
                    bVar.e(i, f);
                    break;
                case true:
                    f = Float.isNaN(this.f5769o) ? 0.0f : this.f5769o;
                    bVar.e(i, f);
                    break;
                case true:
                    f = Float.isNaN(this.f5770p) ? 0.0f : this.f5770p;
                    bVar.e(i, f);
                    break;
                case true:
                    f = Float.isNaN(this.f5773s) ? 0.0f : this.f5773s;
                    bVar.e(i, f);
                    break;
                case true:
                    if (!Float.isNaN(this.f5764j)) {
                        f2 = this.f5764j;
                    }
                    bVar.e(i, f2);
                    break;
                case true:
                    if (!Float.isNaN(this.f5765k)) {
                        f2 = this.f5765k;
                    }
                    bVar.e(i, f2);
                    break;
                case true:
                    f = Float.isNaN(this.f5766l) ? 0.0f : this.f5766l;
                    bVar.e(i, f);
                    break;
                case true:
                    f = Float.isNaN(this.f5767m) ? 0.0f : this.f5767m;
                    bVar.e(i, f);
                    break;
                case true:
                    f = Float.isNaN(this.f5761f) ? 0.0f : this.f5761f;
                    bVar.e(i, f);
                    break;
                case true:
                    f = Float.isNaN(this.f5760d) ? 0.0f : this.f5760d;
                    bVar.e(i, f);
                    break;
                case true:
                    f = Float.isNaN(this.f5772r) ? 0.0f : this.f5772r;
                    bVar.e(i, f);
                    break;
                case true:
                    if (!Float.isNaN(this.f5757a)) {
                        f2 = this.f5757a;
                    }
                    bVar.e(i, f2);
                    break;
                default:
                    if (str2.startsWith("CUSTOM")) {
                        String str3 = str2.split(",")[1];
                        if (this.f5774t.containsKey(str3)) {
                            y6 y6Var = this.f5774t.get(str3);
                            if (bVar instanceof i5.b) {
                                bVar.i(i, y6Var);
                                break;
                            } else {
                                str = str2 + " splineSet not a CustomSet frame = " + i + ", value" + y6Var.d() + bVar;
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

    /* renamed from: b */
    public void m2819b(View view) {
        this.f5759c = view.getVisibility();
        this.f5757a = view.getVisibility() != 0 ? 0.0f : view.getAlpha();
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            this.f5760d = view.getElevation();
        }
        this.f5761f = view.getRotation();
        this.f5762g = view.getRotationX();
        this.f5763h = view.getRotationY();
        this.f5764j = view.getScaleX();
        this.f5765k = view.getScaleY();
        this.f5766l = view.getPivotX();
        this.f5767m = view.getPivotY();
        this.f5768n = view.getTranslationX();
        this.f5769o = view.getTranslationY();
        if (i >= 21) {
            this.f5770p = view.getTranslationZ();
        }
    }

    /* renamed from: c */
    public void m2818c(C0012a7.C0013a c0013a) {
        C0012a7.C0016d c0016d = c0013a.f81b;
        int i = c0016d.f159c;
        this.f5758b = i;
        int i2 = c0016d.f158b;
        this.f5759c = i2;
        this.f5757a = (i2 == 0 || i != 0) ? c0016d.f160d : 0.0f;
        C0012a7.C0017e c0017e = c0013a.f84e;
        boolean z = c0017e.f174l;
        this.f5760d = c0017e.f175m;
        this.f5761f = c0017e.f164b;
        this.f5762g = c0017e.f165c;
        this.f5763h = c0017e.f166d;
        this.f5764j = c0017e.f167e;
        this.f5765k = c0017e.f168f;
        this.f5766l = c0017e.f169g;
        this.f5767m = c0017e.f170h;
        this.f5768n = c0017e.f171i;
        this.f5769o = c0017e.f172j;
        this.f5770p = c0017e.f173k;
        l4.c(c0013a.f82c.f152c);
        C0012a7.C0015c c0015c = c0013a.f82c;
        this.f5772r = c0015c.f156g;
        int i3 = c0015c.f154e;
        this.f5773s = c0013a.f81b.f161e;
        for (String str : c0013a.f85f.keySet()) {
            y6 y6Var = c0013a.f85f.get(str);
            if (y6Var.c() != y6.b.f) {
                this.f5774t.put(str, y6Var);
            }
        }
    }

    /* renamed from: d */
    public int compareTo(C1276d5 c1276d5) {
        return Float.compare(this.f5771q, c1276d5.f5771q);
    }

    /* renamed from: e */
    public final boolean m2816e(float f, float f2) {
        boolean z = true;
        if (Float.isNaN(f) || Float.isNaN(f2)) {
            return Float.isNaN(f) != Float.isNaN(f2);
        }
        if (Math.abs(f - f2) <= 1.0E-6f) {
            z = false;
        }
        return z;
    }

    /* renamed from: f */
    public void m2815f(C1276d5 c1276d5, HashSet<String> hashSet) {
        if (m2816e(this.f5757a, c1276d5.f5757a)) {
            hashSet.add("alpha");
        }
        if (m2816e(this.f5760d, c1276d5.f5760d)) {
            hashSet.add("elevation");
        }
        int i = this.f5759c;
        int i2 = c1276d5.f5759c;
        if (i != i2 && this.f5758b == 0 && (i == 0 || i2 == 0)) {
            hashSet.add("alpha");
        }
        if (m2816e(this.f5761f, c1276d5.f5761f)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.f5772r) || !Float.isNaN(c1276d5.f5772r)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.f5773s) || !Float.isNaN(c1276d5.f5773s)) {
            hashSet.add("progress");
        }
        if (m2816e(this.f5762g, c1276d5.f5762g)) {
            hashSet.add("rotationX");
        }
        if (m2816e(this.f5763h, c1276d5.f5763h)) {
            hashSet.add("rotationY");
        }
        if (m2816e(this.f5766l, c1276d5.f5766l)) {
            hashSet.add("transformPivotX");
        }
        if (m2816e(this.f5767m, c1276d5.f5767m)) {
            hashSet.add("transformPivotY");
        }
        if (m2816e(this.f5764j, c1276d5.f5764j)) {
            hashSet.add("scaleX");
        }
        if (m2816e(this.f5765k, c1276d5.f5765k)) {
            hashSet.add("scaleY");
        }
        if (m2816e(this.f5768n, c1276d5.f5768n)) {
            hashSet.add("translationX");
        }
        if (m2816e(this.f5769o, c1276d5.f5769o)) {
            hashSet.add("translationY");
        }
        if (m2816e(this.f5770p, c1276d5.f5770p)) {
            hashSet.add("translationZ");
        }
    }

    /* renamed from: g */
    public void m2814g(float f, float f2, float f3, float f4) {
    }

    /* renamed from: h */
    public void m2813h(View view) {
        m2814g(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        m2819b(view);
    }

    /* renamed from: i */
    public void m2812i(z5 z5Var, C0012a7 c0012a7, int i) {
        m2814g(z5Var.V(), z5Var.W(), z5Var.U(), z5Var.y());
        m2818c(c0012a7.m7356u(i));
    }
}
