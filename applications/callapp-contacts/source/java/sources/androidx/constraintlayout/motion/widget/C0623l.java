package androidx.constraintlayout.motion.widget;

import android.util.Log;
import androidx.constraintlayout.motion.p029a.C0574c;
import androidx.constraintlayout.motion.widget.AbstractC0631q;
import androidx.constraintlayout.p026a.p027a.C0541e;
import androidx.constraintlayout.widget.C0674a;
import androidx.constraintlayout.widget.C0680c;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.HashMap;
import java.util.LinkedHashMap;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
/* renamed from: androidx.constraintlayout.motion.widget.l */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/l.class */
public final class C0623l implements Comparable<C0623l> {

    /* renamed from: r */
    static String[] f2681r = {"position", "x", "y", "width", "height", "pathRotate"};

    /* renamed from: A */
    private float f2682A;

    /* renamed from: B */
    private float f2683B;

    /* renamed from: C */
    private float f2684C;

    /* renamed from: c */
    int f2687c;

    /* renamed from: w */
    private C0574c f2706w;

    /* renamed from: y */
    private float f2708y;

    /* renamed from: z */
    private float f2709z;

    /* renamed from: a */
    float f2685a = 1.0f;

    /* renamed from: b */
    int f2686b = 0;

    /* renamed from: d */
    boolean f2688d = false;

    /* renamed from: e */
    float f2689e = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: f */
    float f2690f = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: g */
    float f2691g = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: h */
    public float f2692h = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: i */
    float f2693i = 1.0f;

    /* renamed from: j */
    float f2694j = 1.0f;

    /* renamed from: k */
    float f2695k = Float.NaN;

    /* renamed from: l */
    float f2696l = Float.NaN;

    /* renamed from: m */
    float f2697m = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: n */
    float f2698n = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: o */
    float f2699o = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: x */
    private int f2707x = 0;

    /* renamed from: p */
    float f2700p = Float.NaN;

    /* renamed from: q */
    float f2701q = Float.NaN;

    /* renamed from: s */
    LinkedHashMap<String, C0674a> f2702s = new LinkedHashMap<>();

    /* renamed from: t */
    int f2703t = 0;

    /* renamed from: u */
    double[] f2704u = new double[18];

    /* renamed from: v */
    double[] f2705v = new double[18];

    /* renamed from: a */
    public static boolean m44849a(float f, float f2) {
        return (Float.isNaN(f) || Float.isNaN(f2)) ? Float.isNaN(f) != Float.isNaN(f2) : Math.abs(f - f2) > 1.0E-6f;
    }

    /* renamed from: a */
    public final void m44848a(float f, float f2, float f3, float f4) {
        this.f2709z = f;
        this.f2682A = f2;
        this.f2683B = f3;
        this.f2684C = f4;
    }

    /* renamed from: a */
    public final void m44847a(C0541e c0541e, C0680c c0680c, int i) {
        m44848a(c0541e.m45261m(), c0541e.m45259n(), c0541e.m45257o(), c0541e.m45255p());
        C0680c.C0681a m44688e = c0680c.m44688e(i);
        this.f2686b = m44688e.f3061b.f3139c;
        this.f2687c = m44688e.f3061b.f3138b;
        this.f2685a = (m44688e.f3061b.f3138b == 0 || this.f2686b != 0) ? m44688e.f3061b.f3140d : 0.0f;
        this.f2688d = m44688e.f3064e.f3154l;
        this.f2689e = m44688e.f3064e.f3155m;
        this.f2690f = m44688e.f3064e.f3144b;
        this.f2691g = m44688e.f3064e.f3145c;
        this.f2692h = m44688e.f3064e.f3146d;
        this.f2693i = m44688e.f3064e.f3147e;
        this.f2694j = m44688e.f3064e.f3148f;
        this.f2695k = m44688e.f3064e.f3149g;
        this.f2696l = m44688e.f3064e.f3150h;
        this.f2697m = m44688e.f3064e.f3151i;
        this.f2698n = m44688e.f3064e.f3152j;
        this.f2699o = m44688e.f3064e.f3153k;
        this.f2706w = C0574c.m45078a(m44688e.f3062c.f3132c);
        this.f2700p = m44688e.f3062c.f3136g;
        this.f2707x = m44688e.f3062c.f3134e;
        this.f2701q = m44688e.f3061b.f3141e;
        for (String str : m44688e.f3065f.keySet()) {
            C0674a c0674a = m44688e.f3065f.get(str);
            if (c0674a.f3030b != C0674a.EnumC0676a.STRING_TYPE) {
                this.f2702s.put(str, c0674a);
            }
        }
    }

    /* renamed from: a */
    public final void m44846a(HashMap<String, AbstractC0631q> hashMap, int i) {
        for (String str : hashMap.keySet()) {
            AbstractC0631q abstractC0631q = hashMap.get(str);
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
                    if (str.equals(EventConstants.PROGRESS)) {
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
                    abstractC0631q.mo44795a(i, Float.isNaN(this.f2691g) ? 0.0f : this.f2691g);
                    break;
                case true:
                    abstractC0631q.mo44795a(i, Float.isNaN(this.f2692h) ? 0.0f : this.f2692h);
                    break;
                case true:
                    abstractC0631q.mo44795a(i, Float.isNaN(this.f2697m) ? 0.0f : this.f2697m);
                    break;
                case true:
                    abstractC0631q.mo44795a(i, Float.isNaN(this.f2698n) ? 0.0f : this.f2698n);
                    break;
                case true:
                    abstractC0631q.mo44795a(i, Float.isNaN(this.f2699o) ? 0.0f : this.f2699o);
                    break;
                case true:
                    abstractC0631q.mo44795a(i, Float.isNaN(this.f2701q) ? 0.0f : this.f2701q);
                    break;
                case true:
                    if (!Float.isNaN(this.f2693i)) {
                        f = this.f2693i;
                    }
                    abstractC0631q.mo44795a(i, f);
                    break;
                case true:
                    if (!Float.isNaN(this.f2694j)) {
                        f = this.f2694j;
                    }
                    abstractC0631q.mo44795a(i, f);
                    break;
                case true:
                    abstractC0631q.mo44795a(i, Float.isNaN(this.f2695k) ? 0.0f : this.f2695k);
                    break;
                case true:
                    abstractC0631q.mo44795a(i, Float.isNaN(this.f2696l) ? 0.0f : this.f2696l);
                    break;
                case true:
                    abstractC0631q.mo44795a(i, Float.isNaN(this.f2690f) ? 0.0f : this.f2690f);
                    break;
                case true:
                    abstractC0631q.mo44795a(i, Float.isNaN(this.f2689e) ? 0.0f : this.f2689e);
                    break;
                case true:
                    abstractC0631q.mo44795a(i, Float.isNaN(this.f2700p) ? 0.0f : this.f2700p);
                    break;
                case true:
                    if (!Float.isNaN(this.f2685a)) {
                        f = this.f2685a;
                    }
                    abstractC0631q.mo44795a(i, f);
                    break;
                default:
                    if (str.startsWith("CUSTOM")) {
                        String str2 = str.split(",")[1];
                        if (this.f2702s.containsKey(str2)) {
                            C0674a c0674a = this.f2702s.get(str2);
                            if (abstractC0631q instanceof AbstractC0631q.C0633b) {
                                ((AbstractC0631q.C0633b) abstractC0631q).m44794a(i, c0674a);
                                break;
                            } else {
                                Log.e("MotionPaths", str + " splineSet not a CustomSet frame = " + i + ", value" + c0674a.m44719b() + abstractC0631q);
                                break;
                            }
                        } else {
                            Log.e("MotionPaths", "UNKNOWN customName ".concat(String.valueOf(str2)));
                            break;
                        }
                    } else {
                        Log.e("MotionPaths", "UNKNOWN spline ".concat(String.valueOf(str)));
                        break;
                    }
            }
        }
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(C0623l c0623l) {
        return Float.compare(this.f2708y, c0623l.f2708y);
    }
}
