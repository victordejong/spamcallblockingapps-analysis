package androidx.constraintlayout.motion.widget;

import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.motion.p029a.AbstractC0572b;
import androidx.constraintlayout.motion.p029a.C0570a;
import androidx.constraintlayout.motion.p029a.C0574c;
import androidx.constraintlayout.motion.widget.AbstractC0598f;
import androidx.constraintlayout.motion.widget.AbstractC0631q;
import androidx.constraintlayout.p026a.p027a.C0541e;
import androidx.constraintlayout.widget.C0674a;
import androidx.constraintlayout.widget.C0680c;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
/* renamed from: androidx.constraintlayout.motion.widget.m */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/m.class */
public final class C0624m {

    /* renamed from: A */
    private HashMap<String, AbstractC0648r> f2710A;

    /* renamed from: B */
    private C0621k[] f2711B;

    /* renamed from: a */
    View f2712a;

    /* renamed from: b */
    int f2713b;

    /* renamed from: c */
    String f2714c;

    /* renamed from: g */
    public AbstractC0572b[] f2718g;

    /* renamed from: h */
    public AbstractC0572b f2719h;

    /* renamed from: l */
    public int[] f2723l;

    /* renamed from: m */
    public double[] f2724m;

    /* renamed from: n */
    public double[] f2725n;

    /* renamed from: q */
    public HashMap<String, AbstractC0631q> f2728q;

    /* renamed from: r */
    public HashMap<String, AbstractC0598f> f2729r;

    /* renamed from: v */
    private String[] f2733v;

    /* renamed from: w */
    private int[] f2734w;

    /* renamed from: t */
    private int f2731t = -1;

    /* renamed from: d */
    public C0626o f2715d = new C0626o();

    /* renamed from: e */
    public C0626o f2716e = new C0626o();

    /* renamed from: f */
    C0623l f2717f = new C0623l();

    /* renamed from: u */
    private C0623l f2732u = new C0623l();

    /* renamed from: i */
    float f2720i = Float.NaN;

    /* renamed from: j */
    float f2721j = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: k */
    float f2722k = 1.0f;

    /* renamed from: x */
    private int f2735x = 4;

    /* renamed from: y */
    private float[] f2736y = new float[4];

    /* renamed from: z */
    private ArrayList<C0626o> f2737z = new ArrayList<>();

    /* renamed from: o */
    public float[] f2726o = new float[1];

    /* renamed from: p */
    ArrayList<AbstractC0592b> f2727p = new ArrayList<>();

    /* renamed from: s */
    int f2730s = AbstractC0592b.f2555a;

    public C0624m(View view) {
        this.f2712a = view;
        this.f2713b = view.getId();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.LayoutParams) {
            this.f2714c = ((ConstraintLayout.LayoutParams) layoutParams).f2955V;
        }
    }

    /* renamed from: a */
    private void m44838a(C0626o c0626o) {
        c0626o.m44831a((int) this.f2712a.getX(), (int) this.f2712a.getY(), this.f2712a.getWidth(), this.f2712a.getHeight());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [double] */
    /* JADX WARN: Type inference failed for: r0v26, types: [androidx.constraintlayout.motion.a.b[]] */
    /* JADX WARN: Type inference failed for: r0v27, types: [androidx.constraintlayout.motion.a.b] */
    /* JADX WARN: Type inference failed for: r0v34, types: [double] */
    /* JADX WARN: Type inference failed for: r0v37, types: [double] */
    /* JADX WARN: Type inference failed for: r0v53, types: [double] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v2 */
    /* JADX WARN: Type inference failed for: r18v0 */
    /* JADX WARN: Type inference failed for: r18v1 */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r1v3, types: [double] */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* renamed from: b */
    private float m44835b() {
        float f;
        float[] fArr = new float[2];
        ?? r11 = false;
        ?? r13 = false;
        int i = 0;
        float f2 = BitmapDescriptorFactory.HUE_RED;
        while (true) {
            float f3 = f2;
            if (i < 100) {
                float f4 = i * 0.01010101f;
                ?? r18 = f4;
                C0574c c0574c = this.f2715d.f2739b;
                float f5 = Float.NaN;
                Iterator<C0626o> it2 = this.f2737z.iterator();
                float f6 = 0.0f;
                while (it2.hasNext()) {
                    C0626o next = it2.next();
                    if (next.f2739b != null) {
                        if (next.f2741d < f4) {
                            c0574c = next.f2739b;
                            f6 = next.f2741d;
                        } else if (Float.isNaN(f5)) {
                            f5 = next.f2741d;
                        }
                    }
                }
                if (c0574c != null) {
                    float f7 = f5;
                    if (Float.isNaN(f5)) {
                        f7 = 1.0f;
                    }
                    r18 = (((float) c0574c.mo45077a((f4 - f6) / f)) * (f7 - f6)) + f6;
                }
                this.f2718g[0].mo45070a(r18, this.f2724m);
                this.f2715d.m44826a(this.f2723l, this.f2724m, fArr, 0);
                float f8 = f3;
                if (i > 0) {
                    f8 = (float) (f3 + Math.hypot((r13 == true ? 1.0d : 0.0d) - fArr[1], (r11 == true ? 1.0d : 0.0d) - fArr[0]));
                }
                r11 = fArr[0];
                r13 = fArr[1];
                i++;
                f2 = f8;
            } else {
                return f3;
            }
        }
    }

    /* renamed from: a */
    public final float m44843a(float f, float[] fArr) {
        float f2;
        if (fArr != null) {
            fArr[0] = 1.0f;
            f2 = f;
        } else {
            float f3 = this.f2722k;
            f2 = f;
            if (f3 != 1.0d) {
                float f4 = this.f2721j;
                float f5 = f;
                if (f < f4) {
                    f5 = 0.0f;
                }
                f2 = f5;
                if (f5 > f4) {
                    f2 = f5;
                    if (f5 < 1.0d) {
                        f2 = (f5 - f4) * f3;
                    }
                }
            }
        }
        C0574c c0574c = this.f2715d.f2739b;
        float f6 = Float.NaN;
        Iterator<C0626o> it2 = this.f2737z.iterator();
        float f7 = 0.0f;
        while (it2.hasNext()) {
            C0626o next = it2.next();
            if (next.f2739b != null) {
                if (next.f2741d < f2) {
                    c0574c = next.f2739b;
                    f7 = next.f2741d;
                } else if (Float.isNaN(f6)) {
                    f6 = next.f2741d;
                }
            }
        }
        float f8 = f2;
        if (c0574c != null) {
            if (Float.isNaN(f6)) {
                f6 = 1.0f;
            }
            float f9 = f6 - f7;
            double d = (f2 - f7) / f9;
            float mo45077a = (((float) c0574c.mo45077a(d)) * f9) + f7;
            f8 = mo45077a;
            if (fArr != null) {
                fArr[0] = (float) c0574c.mo45076b(d);
                f8 = mo45077a;
            }
        }
        return f8;
    }

    /* renamed from: a */
    public final int m44845a() {
        int i = this.f2715d.f2740c;
        Iterator<C0626o> it2 = this.f2737z.iterator();
        while (it2.hasNext()) {
            i = Math.max(i, it2.next().f2740c);
        }
        return Math.max(i, this.f2716e.f2740c);
    }

    /* renamed from: a */
    public final int m44836a(float[] fArr, int[] iArr) {
        if (fArr != null) {
            double[] mo45073a = this.f2718g[0].mo45073a();
            if (iArr != null) {
                Iterator<C0626o> it2 = this.f2737z.iterator();
                int i = 0;
                while (it2.hasNext()) {
                    iArr[i] = it2.next().f2751n;
                    i++;
                }
            }
            int i2 = 0;
            for (double d : mo45073a) {
                this.f2718g[0].mo45070a(d, this.f2724m);
                this.f2715d.m44826a(this.f2723l, this.f2724m, fArr, i2);
                i2 += 2;
            }
            return i2 / 2;
        }
        return 0;
    }

    /* renamed from: a */
    public final C0626o m44842a(int i) {
        return this.f2737z.get(i);
    }

    /* renamed from: a */
    public final void m44844a(float f, float f2, float f3, float[] fArr) {
        double[] dArr;
        float m44843a = m44843a(f, this.f2726o);
        AbstractC0572b[] abstractC0572bArr = this.f2718g;
        int i = 0;
        if (abstractC0572bArr == null) {
            float f4 = this.f2716e.f2743f - this.f2715d.f2743f;
            float f5 = this.f2716e.f2744g - this.f2715d.f2744g;
            float f6 = this.f2716e.f2745h;
            float f7 = this.f2715d.f2745h;
            float f8 = this.f2716e.f2746i;
            float f9 = this.f2715d.f2746i;
            fArr[0] = (f4 * (1.0f - f2)) + (((f6 - f7) + f4) * f2);
            fArr[1] = (f5 * (1.0f - f3)) + (((f8 - f9) + f5) * f3);
            return;
        }
        AbstractC0572b abstractC0572b = abstractC0572bArr[0];
        double d = m44843a;
        abstractC0572b.mo45066b(d, this.f2725n);
        this.f2718g[0].mo45070a(d, this.f2724m);
        float f10 = this.f2726o[0];
        while (true) {
            dArr = this.f2725n;
            if (i >= dArr.length) {
                break;
            }
            dArr[i] = dArr[i] * f10;
            i++;
        }
        AbstractC0572b abstractC0572b2 = this.f2719h;
        if (abstractC0572b2 == null) {
            C0626o.m44830a(f2, f3, fArr, this.f2723l, dArr);
            return;
        }
        double[] dArr2 = this.f2724m;
        if (dArr2.length <= 0) {
            return;
        }
        abstractC0572b2.mo45070a(d, dArr2);
        this.f2719h.mo45066b(d, this.f2725n);
        C0626o.m44830a(f2, f3, fArr, this.f2723l, this.f2725n);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    public final void m44841a(int i, int i2, long j) {
        Object obj;
        Object obj2;
        ArrayList arrayList;
        Object obj3;
        Object obj4;
        Object obj5;
        Object obj6;
        Object obj7;
        Object obj8;
        Object obj9;
        HashSet<String> hashSet;
        Object obj10;
        AbstractC0598f.C0601b c0601b;
        boolean z;
        AbstractC0648r abstractC0648r;
        C0674a c0674a;
        AbstractC0631q.C0633b c0633b;
        HashSet<String> hashSet2;
        Object obj11;
        Object obj12;
        Object obj13;
        Object obj14;
        boolean z2;
        AbstractC0631q.C0632a c0640i;
        C0674a c0674a2;
        ArrayList arrayList2;
        ArrayList arrayList3;
        new HashSet();
        HashSet<String> hashSet3 = new HashSet<>();
        HashSet<String> hashSet4 = new HashSet<>();
        HashSet<String> hashSet5 = new HashSet<>();
        HashMap<String, Integer> hashMap = new HashMap<>();
        if (this.f2730s != AbstractC0592b.f2555a) {
            this.f2715d.f2749l = this.f2730s;
        }
        C0623l c0623l = this.f2717f;
        C0623l c0623l2 = this.f2732u;
        if (C0623l.m44849a(c0623l.f2685a, c0623l2.f2685a)) {
            hashSet4.add("alpha");
        }
        if (C0623l.m44849a(c0623l.f2689e, c0623l2.f2689e)) {
            hashSet4.add("elevation");
        }
        if (c0623l.f2687c != c0623l2.f2687c && c0623l.f2686b == 0 && (c0623l.f2687c == 0 || c0623l2.f2687c == 0)) {
            hashSet4.add("alpha");
        }
        if (C0623l.m44849a(c0623l.f2690f, c0623l2.f2690f)) {
            hashSet4.add("rotation");
        }
        if (!Float.isNaN(c0623l.f2700p) || !Float.isNaN(c0623l2.f2700p)) {
            hashSet4.add("transitionPathRotate");
        }
        if (!Float.isNaN(c0623l.f2701q) || !Float.isNaN(c0623l2.f2701q)) {
            hashSet4.add(EventConstants.PROGRESS);
        }
        if (C0623l.m44849a(c0623l.f2691g, c0623l2.f2691g)) {
            hashSet4.add("rotationX");
        }
        if (C0623l.m44849a(c0623l.f2692h, c0623l2.f2692h)) {
            hashSet4.add("rotationY");
        }
        if (C0623l.m44849a(c0623l.f2695k, c0623l2.f2695k)) {
            hashSet4.add("transformPivotX");
        }
        if (C0623l.m44849a(c0623l.f2696l, c0623l2.f2696l)) {
            hashSet4.add("transformPivotY");
        }
        if (C0623l.m44849a(c0623l.f2693i, c0623l2.f2693i)) {
            hashSet4.add("scaleX");
        }
        if (C0623l.m44849a(c0623l.f2694j, c0623l2.f2694j)) {
            hashSet4.add("scaleY");
        }
        if (C0623l.m44849a(c0623l.f2697m, c0623l2.f2697m)) {
            hashSet4.add("translationX");
        }
        if (C0623l.m44849a(c0623l.f2698n, c0623l2.f2698n)) {
            hashSet4.add("translationY");
        }
        if (C0623l.m44849a(c0623l.f2699o, c0623l2.f2699o)) {
            hashSet4.add("translationZ");
        }
        ArrayList<AbstractC0592b> arrayList4 = this.f2727p;
        if (arrayList4 != null) {
            Iterator<AbstractC0592b> it2 = arrayList4.iterator();
            ArrayList arrayList5 = null;
            while (true) {
                arrayList2 = arrayList5;
                if (!it2.hasNext()) {
                    break;
                }
                AbstractC0592b next = it2.next();
                if (next instanceof C0616h) {
                    C0616h c0616h = (C0616h) next;
                    C0626o c0626o = new C0626o(i, i2, c0616h, this.f2715d, this.f2716e);
                    int binarySearch = Collections.binarySearch(this.f2737z, c0626o);
                    if (binarySearch == 0) {
                        Log.e("MotionController", " KeyPath positon \"" + c0626o.f2742e + "\" outside of range");
                    }
                    this.f2737z.add((-binarySearch) - 1, c0626o);
                    arrayList3 = arrayList2;
                    if (c0616h.f2641q != AbstractC0592b.f2555a) {
                        this.f2731t = c0616h.f2641q;
                        arrayList3 = arrayList2;
                    }
                } else if (next instanceof C0596e) {
                    next.mo44858a(hashSet5);
                    arrayList3 = arrayList2;
                } else if (next instanceof C0619j) {
                    next.mo44858a(hashSet3);
                    arrayList3 = arrayList2;
                } else if (next instanceof C0621k) {
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList();
                    }
                    arrayList2.add((C0621k) next);
                    arrayList3 = arrayList2;
                } else {
                    next.mo44895b(hashMap);
                    next.mo44858a(hashSet4);
                    arrayList3 = arrayList2;
                }
                arrayList5 = arrayList3;
            }
            arrayList = arrayList2;
            obj3 = "scaleX";
            obj2 = "translationY";
            obj = "translationZ";
        } else {
            obj = "translationZ";
            obj2 = "translationY";
            obj3 = "scaleX";
            arrayList = null;
        }
        if (arrayList != null) {
            this.f2711B = (C0621k[]) arrayList.toArray(new C0621k[0]);
        }
        if (!hashSet4.isEmpty()) {
            this.f2728q = new HashMap<>();
            Iterator<String> it3 = hashSet4.iterator();
            Object obj15 = obj3;
            Object obj16 = "translationX";
            Object obj17 = "rotationY";
            Object obj18 = "rotationX";
            HashSet<String> hashSet6 = hashSet5;
            while (it3.hasNext()) {
                String next2 = it3.next();
                if (!next2.startsWith("CUSTOM,")) {
                    HashSet<String> hashSet7 = hashSet6;
                    next2.hashCode();
                    switch (next2.hashCode()) {
                        case -1249320806:
                            if (next2.equals(obj18)) {
                                z2 = false;
                                obj14 = obj16;
                                break;
                            }
                            z2 = true;
                            obj14 = obj16;
                            break;
                        case -1249320805:
                            if (next2.equals(obj17)) {
                                z2 = true;
                                obj14 = obj16;
                                break;
                            }
                            z2 = true;
                            obj14 = obj16;
                            break;
                        case -1225497657:
                            if (next2.equals(obj16)) {
                                z2 = true;
                                obj14 = obj16;
                                break;
                            }
                            z2 = true;
                            obj14 = obj16;
                            break;
                        case -1225497656:
                            if (next2.equals(obj2)) {
                                z2 = true;
                                obj14 = obj16;
                                break;
                            }
                            z2 = true;
                            obj14 = obj16;
                            break;
                        case -1225497655:
                            if (next2.equals(obj)) {
                                z2 = true;
                                obj14 = obj16;
                                break;
                            }
                            z2 = true;
                            obj14 = obj16;
                            break;
                        case -1001078227:
                            if (next2.equals(EventConstants.PROGRESS)) {
                                z2 = true;
                                obj14 = obj16;
                                break;
                            }
                            z2 = true;
                            obj14 = obj16;
                            break;
                        case -908189618:
                            if (next2.equals(obj15)) {
                                z2 = true;
                                obj14 = obj16;
                                break;
                            }
                            z2 = true;
                            obj14 = obj16;
                            break;
                        case -908189617:
                            if (next2.equals("scaleY")) {
                                z2 = true;
                                obj14 = obj16;
                                break;
                            }
                            z2 = true;
                            obj14 = obj16;
                            break;
                        case -797520672:
                            if (next2.equals("waveVariesBy")) {
                                z2 = true;
                                obj14 = obj16;
                                break;
                            }
                            z2 = true;
                            obj14 = obj16;
                            break;
                        case -760884510:
                            if (next2.equals("transformPivotX")) {
                                z2 = true;
                                obj14 = obj16;
                                break;
                            }
                            z2 = true;
                            obj14 = obj16;
                            break;
                        case -760884509:
                            if (next2.equals("transformPivotY")) {
                                z2 = true;
                                obj14 = obj16;
                                break;
                            }
                            z2 = true;
                            obj14 = obj16;
                            break;
                        case -40300674:
                            if (next2.equals("rotation")) {
                                z2 = true;
                                obj14 = obj16;
                                break;
                            }
                            z2 = true;
                            obj14 = obj16;
                            break;
                        case -4379043:
                            if (next2.equals("elevation")) {
                                z2 = true;
                                obj14 = obj16;
                                break;
                            }
                            z2 = true;
                            obj14 = obj16;
                            break;
                        case 37232917:
                            if (next2.equals("transitionPathRotate")) {
                                z2 = true;
                                obj14 = obj16;
                                break;
                            }
                            z2 = true;
                            obj14 = obj16;
                            break;
                        case 92909918:
                            if (next2.equals("alpha")) {
                                z2 = true;
                                obj14 = obj16;
                                break;
                            }
                            z2 = true;
                            obj14 = obj16;
                            break;
                        case 156108012:
                            if (next2.equals("waveOffset")) {
                                z2 = true;
                                obj14 = obj16;
                                break;
                            }
                            z2 = true;
                            obj14 = obj16;
                            break;
                        default:
                            z2 = true;
                            obj14 = obj16;
                            break;
                    }
                    switch (z2) {
                        case false:
                            c0640i = new AbstractC0631q.C0640i();
                            Object obj19 = obj18;
                            c0633b = c0640i;
                            obj13 = obj17;
                            obj11 = obj14;
                            obj12 = obj19;
                            hashSet2 = hashSet7;
                            break;
                        case true:
                            c0640i = new AbstractC0631q.C0641j();
                            Object obj192 = obj18;
                            c0633b = c0640i;
                            obj13 = obj17;
                            obj11 = obj14;
                            obj12 = obj192;
                            hashSet2 = hashSet7;
                            break;
                        case true:
                            c0640i = new AbstractC0631q.C0645n();
                            Object obj1922 = obj18;
                            c0633b = c0640i;
                            obj13 = obj17;
                            obj11 = obj14;
                            obj12 = obj1922;
                            hashSet2 = hashSet7;
                            break;
                        case true:
                            c0640i = new AbstractC0631q.C0646o();
                            Object obj19222 = obj18;
                            c0633b = c0640i;
                            obj13 = obj17;
                            obj11 = obj14;
                            obj12 = obj19222;
                            hashSet2 = hashSet7;
                            break;
                        case true:
                            c0640i = new AbstractC0631q.C0647p();
                            Object obj192222 = obj18;
                            c0633b = c0640i;
                            obj13 = obj17;
                            obj11 = obj14;
                            obj12 = obj192222;
                            hashSet2 = hashSet7;
                            break;
                        case true:
                            c0640i = new AbstractC0631q.C0638g();
                            Object obj1922222 = obj18;
                            c0633b = c0640i;
                            obj13 = obj17;
                            obj11 = obj14;
                            obj12 = obj1922222;
                            hashSet2 = hashSet7;
                            break;
                        case true:
                            c0640i = new AbstractC0631q.C0642k();
                            Object obj19222222 = obj18;
                            c0633b = c0640i;
                            obj13 = obj17;
                            obj11 = obj14;
                            obj12 = obj19222222;
                            hashSet2 = hashSet7;
                            break;
                        case true:
                            c0640i = new AbstractC0631q.C0643l();
                            Object obj192222222 = obj18;
                            c0633b = c0640i;
                            obj13 = obj17;
                            obj11 = obj14;
                            obj12 = obj192222222;
                            hashSet2 = hashSet7;
                            break;
                        case true:
                            c0640i = new AbstractC0631q.C0632a();
                            Object obj1922222222 = obj18;
                            c0633b = c0640i;
                            obj13 = obj17;
                            obj11 = obj14;
                            obj12 = obj1922222222;
                            hashSet2 = hashSet7;
                            break;
                        case true:
                            c0640i = new AbstractC0631q.C0636e();
                            Object obj19222222222 = obj18;
                            c0633b = c0640i;
                            obj13 = obj17;
                            obj11 = obj14;
                            obj12 = obj19222222222;
                            hashSet2 = hashSet7;
                            break;
                        case true:
                            c0640i = new AbstractC0631q.C0637f();
                            Object obj192222222222 = obj18;
                            c0633b = c0640i;
                            obj13 = obj17;
                            obj11 = obj14;
                            obj12 = obj192222222222;
                            hashSet2 = hashSet7;
                            break;
                        case true:
                            c0640i = new AbstractC0631q.C0639h();
                            Object obj1922222222222 = obj18;
                            c0633b = c0640i;
                            obj13 = obj17;
                            obj11 = obj14;
                            obj12 = obj1922222222222;
                            hashSet2 = hashSet7;
                            break;
                        case true:
                            c0640i = new AbstractC0631q.C0634c();
                            Object obj19222222222222 = obj18;
                            c0633b = c0640i;
                            obj13 = obj17;
                            obj11 = obj14;
                            obj12 = obj19222222222222;
                            hashSet2 = hashSet7;
                            break;
                        case true:
                            c0640i = new AbstractC0631q.C0635d();
                            Object obj192222222222222 = obj18;
                            c0633b = c0640i;
                            obj13 = obj17;
                            obj11 = obj14;
                            obj12 = obj192222222222222;
                            hashSet2 = hashSet7;
                            break;
                        case true:
                            c0640i = new AbstractC0631q.C0632a();
                            Object obj1922222222222222 = obj18;
                            c0633b = c0640i;
                            obj13 = obj17;
                            obj11 = obj14;
                            obj12 = obj1922222222222222;
                            hashSet2 = hashSet7;
                            break;
                        case true:
                            c0640i = new AbstractC0631q.C0632a();
                            Object obj19222222222222222 = obj18;
                            c0633b = c0640i;
                            obj13 = obj17;
                            obj11 = obj14;
                            obj12 = obj19222222222222222;
                            hashSet2 = hashSet7;
                            break;
                        default:
                            obj12 = obj18;
                            c0633b = null;
                            obj13 = obj17;
                            obj11 = obj14;
                            hashSet2 = hashSet7;
                            break;
                    }
                } else {
                    SparseArray sparseArray = new SparseArray();
                    String str = next2.split(",")[1];
                    Iterator<AbstractC0592b> it4 = this.f2727p.iterator();
                    while (it4.hasNext()) {
                        AbstractC0592b next3 = it4.next();
                        if (next3.f2560f != null && (c0674a2 = next3.f2560f.get(str)) != null) {
                            sparseArray.append(next3.f2556b, c0674a2);
                        }
                    }
                    AbstractC0631q.C0633b c0633b2 = new AbstractC0631q.C0633b(next2, sparseArray);
                    Object obj20 = obj18;
                    c0633b = c0633b2;
                    obj13 = obj17;
                    obj11 = obj16;
                    obj12 = obj20;
                    hashSet2 = hashSet6;
                }
                if (c0633b != null) {
                    c0633b.f2800d = next2;
                    this.f2728q.put(next2, c0633b);
                }
                hashSet6 = hashSet2;
                obj18 = obj12;
                obj17 = obj13;
                obj16 = obj11;
            }
            HashSet<String> hashSet8 = hashSet6;
            Object obj21 = obj;
            Object obj22 = obj18;
            ArrayList<AbstractC0592b> arrayList6 = this.f2727p;
            if (arrayList6 != null) {
                Iterator<AbstractC0592b> it5 = arrayList6.iterator();
                while (it5.hasNext()) {
                    AbstractC0592b next4 = it5.next();
                    if (next4 instanceof C0593c) {
                        next4.mo44859a(this.f2728q);
                    }
                }
            }
            this.f2717f.m44846a(this.f2728q, 0);
            this.f2732u.m44846a(this.f2728q, 100);
            Iterator<String> it6 = this.f2728q.keySet().iterator();
            while (true) {
                obj9 = obj15;
                obj7 = EventConstants.PROGRESS;
                obj6 = obj21;
                obj10 = obj17;
                obj5 = obj16;
                obj4 = obj22;
                hashSet = hashSet8;
                obj8 = obj2;
                if (it6.hasNext()) {
                    String next5 = it6.next();
                    this.f2728q.get(next5).mo44796a(hashMap.containsKey(next5) ? hashMap.get(next5).intValue() : 0);
                }
            }
        } else {
            obj6 = obj;
            obj4 = "rotationX";
            obj8 = obj2;
            hashSet = hashSet5;
            obj5 = "translationX";
            obj10 = "rotationY";
            obj7 = EventConstants.PROGRESS;
            obj9 = obj3;
        }
        if (!hashSet3.isEmpty()) {
            if (this.f2710A == null) {
                this.f2710A = new HashMap<>();
            }
            Iterator<String> it7 = hashSet3.iterator();
            Object obj23 = obj6;
            while (it7.hasNext()) {
                String next6 = it7.next();
                if (!this.f2710A.containsKey(next6)) {
                    if (next6.startsWith("CUSTOM,")) {
                        SparseArray sparseArray2 = new SparseArray();
                        String str2 = next6.split(",")[1];
                        Iterator<AbstractC0592b> it8 = this.f2727p.iterator();
                        while (it8.hasNext()) {
                            AbstractC0592b next7 = it8.next();
                            if (next7.f2560f != null && (c0674a = next7.f2560f.get(str2)) != null) {
                                sparseArray2.append(next7.f2556b, c0674a);
                            }
                        }
                        abstractC0648r = AbstractC0648r.m44788a(next6, sparseArray2);
                    } else {
                        abstractC0648r = AbstractC0648r.m44789a(next6, j);
                    }
                    if (abstractC0648r != null) {
                        abstractC0648r.f2811e = next6;
                        this.f2710A.put(next6, abstractC0648r);
                    }
                }
            }
            ArrayList<AbstractC0592b> arrayList7 = this.f2727p;
            if (arrayList7 != null) {
                Iterator<AbstractC0592b> it9 = arrayList7.iterator();
                while (it9.hasNext()) {
                    AbstractC0592b next8 = it9.next();
                    if (next8 instanceof C0619j) {
                        ((C0619j) next8).m44892c(this.f2710A);
                    }
                }
            }
            Iterator<String> it10 = this.f2710A.keySet().iterator();
            while (true) {
                obj6 = obj23;
                if (it10.hasNext()) {
                    String next9 = it10.next();
                    this.f2710A.get(next9).mo44787a(hashMap.containsKey(next9) ? hashMap.get(next9).intValue() : 0);
                }
            }
        }
        int size = this.f2737z.size() + 2;
        C0626o[] c0626oArr = new C0626o[size];
        c0626oArr[0] = this.f2715d;
        c0626oArr[size - 1] = this.f2716e;
        if (this.f2737z.size() > 0 && this.f2731t == -1) {
            this.f2731t = 0;
        }
        Iterator<C0626o> it11 = this.f2737z.iterator();
        int i3 = 1;
        while (it11.hasNext()) {
            c0626oArr[i3] = it11.next();
            i3++;
        }
        HashSet hashSet9 = new HashSet();
        for (String str3 : this.f2716e.f2750m.keySet()) {
            if (this.f2715d.f2750m.containsKey(str3) && !hashSet4.contains("CUSTOM,".concat(String.valueOf(str3)))) {
                hashSet9.add(str3);
            }
        }
        String[] strArr = (String[]) hashSet9.toArray(new String[0]);
        this.f2733v = strArr;
        this.f2734w = new int[strArr.length];
        int i4 = 0;
        while (true) {
            String[] strArr2 = this.f2733v;
            if (i4 < strArr2.length) {
                String str4 = strArr2[i4];
                this.f2734w[i4] = 0;
                int i5 = 0;
                while (true) {
                    if (i5 >= size) {
                        break;
                    } else if (c0626oArr[i5].f2750m.containsKey(str4)) {
                        int[] iArr = this.f2734w;
                        iArr[i4] = iArr[i4] + c0626oArr[i5].f2750m.get(str4).m44727a();
                    } else {
                        i5++;
                    }
                }
                i4++;
            } else {
                boolean z3 = c0626oArr[0].f2749l != AbstractC0592b.f2555a;
                int length = this.f2733v.length + 18;
                boolean[] zArr = new boolean[length];
                for (int i6 = 1; i6 < size; i6++) {
                    C0626o c0626o2 = c0626oArr[i6];
                    C0626o c0626o3 = c0626oArr[i6 - 1];
                    zArr[0] = zArr[0] | C0626o.m44832a(c0626o2.f2742e, c0626o3.f2742e);
                    zArr[1] = C0626o.m44832a(c0626o2.f2743f, c0626o3.f2743f) | z3 | zArr[1];
                    zArr[2] = C0626o.m44832a(c0626o2.f2744g, c0626o3.f2744g) | z3 | zArr[2];
                    zArr[3] = C0626o.m44832a(c0626o2.f2745h, c0626o3.f2745h) | zArr[3];
                    zArr[4] = C0626o.m44832a(c0626o2.f2746i, c0626o3.f2746i) | zArr[4];
                }
                Object obj24 = obj9;
                Object obj25 = obj7;
                int i7 = 1;
                int i8 = 0;
                while (true) {
                    int i9 = i8;
                    if (i7 < length) {
                        int i10 = i9;
                        if (zArr[i7]) {
                            i10 = i9 + 1;
                        }
                        i7++;
                        i8 = i10;
                    } else {
                        int[] iArr2 = new int[i9];
                        this.f2723l = iArr2;
                        this.f2724m = new double[iArr2.length];
                        this.f2725n = new double[iArr2.length];
                        int i11 = 1;
                        int i12 = 0;
                        while (true) {
                            int i13 = i12;
                            if (i11 < length) {
                                int i14 = i13;
                                if (zArr[i11]) {
                                    this.f2723l[i13] = i11;
                                    i14 = i13 + 1;
                                }
                                i11++;
                                i12 = i14;
                            } else {
                                double[][] dArr = new double[size][this.f2723l.length];
                                double[] dArr2 = new double[size];
                                for (int i15 = 0; i15 < size; i15++) {
                                    c0626oArr[i15].m44827a(dArr[i15], this.f2723l);
                                    dArr2[i15] = c0626oArr[i15].f2741d;
                                }
                                int i16 = 0;
                                while (true) {
                                    C0626o[] c0626oArr2 = c0626oArr;
                                    int[] iArr3 = this.f2723l;
                                    if (i16 < iArr3.length) {
                                        c0626oArr = c0626oArr2;
                                        if (iArr3[i16] < C0626o.f2738a.length) {
                                            String str5 = C0626o.f2738a[this.f2723l[i16]] + " [";
                                            int i17 = 0;
                                            while (true) {
                                                c0626oArr = c0626oArr2;
                                                if (i17 < size) {
                                                    str5 = str5 + dArr[i17][i16];
                                                    i17++;
                                                }
                                            }
                                        }
                                        i16++;
                                    } else {
                                        this.f2718g = new AbstractC0572b[this.f2733v.length + 1];
                                        int i18 = 0;
                                        Object obj26 = "rotation";
                                        while (true) {
                                            String[] strArr3 = this.f2733v;
                                            if (i18 >= strArr3.length) {
                                                Object obj27 = obj26;
                                                this.f2718g[0] = AbstractC0572b.m45079a(this.f2731t, dArr2, dArr);
                                                if (c0626oArr2[0].f2749l != AbstractC0592b.f2555a) {
                                                    int[] iArr4 = new int[size];
                                                    double[] dArr3 = new double[size];
                                                    double[][] dArr4 = new double[size][2];
                                                    for (int i19 = 0; i19 < size; i19++) {
                                                        iArr4[i19] = c0626oArr2[i19].f2749l;
                                                        dArr3[i19] = c0626oArr2[i19].f2741d;
                                                        dArr4[i19][0] = c0626oArr2[i19].f2743f;
                                                        dArr4[i19][1] = c0626oArr2[i19].f2744g;
                                                    }
                                                    this.f2719h = new C0570a(iArr4, dArr3, dArr4);
                                                }
                                                float f = Float.NaN;
                                                this.f2729r = new HashMap<>();
                                                if (this.f2727p == null) {
                                                    return;
                                                }
                                                Iterator<String> it12 = hashSet.iterator();
                                                Object obj28 = obj6;
                                                while (it12.hasNext()) {
                                                    String next10 = it12.next();
                                                    if (!next10.startsWith("CUSTOM")) {
                                                        next10.hashCode();
                                                        switch (next10.hashCode()) {
                                                            case -1249320806:
                                                                if (next10.equals(obj4)) {
                                                                    z = false;
                                                                    break;
                                                                }
                                                                z = true;
                                                                break;
                                                            case -1249320805:
                                                                if (next10.equals(obj10)) {
                                                                    z = true;
                                                                    break;
                                                                }
                                                                z = true;
                                                                break;
                                                            case -1225497657:
                                                                if (next10.equals(obj5)) {
                                                                    z = true;
                                                                    break;
                                                                }
                                                                z = true;
                                                                break;
                                                            case -1225497656:
                                                                if (next10.equals(obj8)) {
                                                                    z = true;
                                                                    break;
                                                                }
                                                                z = true;
                                                                break;
                                                            case -1225497655:
                                                                if (next10.equals(obj28)) {
                                                                    z = true;
                                                                    break;
                                                                }
                                                                z = true;
                                                                break;
                                                            case -1001078227:
                                                                if (next10.equals(obj25)) {
                                                                    z = true;
                                                                    break;
                                                                }
                                                                z = true;
                                                                break;
                                                            case -908189618:
                                                                if (next10.equals(obj24)) {
                                                                    z = true;
                                                                    break;
                                                                }
                                                                z = true;
                                                                break;
                                                            case -908189617:
                                                                if (next10.equals("scaleY")) {
                                                                    z = true;
                                                                    break;
                                                                }
                                                                z = true;
                                                                break;
                                                            case -797520672:
                                                                if (next10.equals("waveVariesBy")) {
                                                                    z = true;
                                                                    break;
                                                                }
                                                                z = true;
                                                                break;
                                                            case -40300674:
                                                                if (next10.equals(obj27)) {
                                                                    z = true;
                                                                    break;
                                                                }
                                                                z = true;
                                                                break;
                                                            case -4379043:
                                                                if (next10.equals("elevation")) {
                                                                    z = true;
                                                                    break;
                                                                }
                                                                z = true;
                                                                break;
                                                            case 37232917:
                                                                if (next10.equals("transitionPathRotate")) {
                                                                    z = true;
                                                                    break;
                                                                }
                                                                z = true;
                                                                break;
                                                            case 92909918:
                                                                if (next10.equals("alpha")) {
                                                                    z = true;
                                                                    break;
                                                                }
                                                                z = true;
                                                                break;
                                                            case 156108012:
                                                                if (next10.equals("waveOffset")) {
                                                                    z = true;
                                                                    break;
                                                                }
                                                                z = true;
                                                                break;
                                                            default:
                                                                z = true;
                                                                break;
                                                        }
                                                        switch (z) {
                                                            case false:
                                                                c0601b = new AbstractC0598f.C0607h();
                                                                break;
                                                            case true:
                                                                c0601b = new AbstractC0598f.C0608i();
                                                                break;
                                                            case true:
                                                                c0601b = new AbstractC0598f.C0611l();
                                                                break;
                                                            case true:
                                                                c0601b = new AbstractC0598f.C0612m();
                                                                break;
                                                            case true:
                                                                c0601b = new AbstractC0598f.C0613n();
                                                                break;
                                                            case true:
                                                                c0601b = new AbstractC0598f.C0605f();
                                                                break;
                                                            case true:
                                                                c0601b = new AbstractC0598f.C0609j();
                                                                break;
                                                            case true:
                                                                c0601b = new AbstractC0598f.C0610k();
                                                                break;
                                                            case true:
                                                                c0601b = new AbstractC0598f.C0600a();
                                                                break;
                                                            case true:
                                                                c0601b = new AbstractC0598f.C0606g();
                                                                break;
                                                            case true:
                                                                c0601b = new AbstractC0598f.C0603d();
                                                                break;
                                                            case true:
                                                                c0601b = new AbstractC0598f.C0604e();
                                                                break;
                                                            case true:
                                                                c0601b = new AbstractC0598f.C0600a();
                                                                break;
                                                            case true:
                                                                c0601b = new AbstractC0598f.C0600a();
                                                                break;
                                                            default:
                                                                c0601b = null;
                                                                break;
                                                        }
                                                    } else {
                                                        c0601b = new AbstractC0598f.C0601b();
                                                    }
                                                    if (c0601b != null) {
                                                        float f2 = f;
                                                        if (c0601b.f2602d == 1) {
                                                            f2 = f;
                                                            if (Float.isNaN(f)) {
                                                                f2 = m44835b();
                                                            }
                                                        }
                                                        c0601b.f2600b = next10;
                                                        this.f2729r.put(next10, c0601b);
                                                        f = f2;
                                                    }
                                                }
                                                Iterator<AbstractC0592b> it13 = this.f2727p.iterator();
                                                while (it13.hasNext()) {
                                                    AbstractC0592b next11 = it13.next();
                                                    if (next11 instanceof C0596e) {
                                                        ((C0596e) next11).m44937c(this.f2729r);
                                                    }
                                                }
                                                for (AbstractC0598f abstractC0598f : this.f2729r.values()) {
                                                    abstractC0598f.m44907c(f);
                                                }
                                                return;
                                            }
                                            String str6 = strArr3[i18];
                                            int i20 = 0;
                                            double[] dArr5 = null;
                                            double[][] dArr6 = null;
                                            Object obj29 = obj26;
                                            for (int i21 = 0; i21 < size; i21++) {
                                                if (c0626oArr2[i21].f2750m.containsKey(str6)) {
                                                    double[][] dArr7 = dArr6;
                                                    if (dArr6 == null) {
                                                        dArr5 = new double[size];
                                                        dArr7 = new double[size][c0626oArr2[i21].f2750m.get(str6).m44727a()];
                                                    }
                                                    dArr5[i20] = c0626oArr2[i21].f2741d;
                                                    c0626oArr2[i21].m44828a(str6, dArr7[i20], 0);
                                                    i20++;
                                                    dArr6 = dArr7;
                                                }
                                            }
                                            i18++;
                                            this.f2718g[i18] = AbstractC0572b.m45079a(this.f2731t, Arrays.copyOf(dArr5, i20), (double[][]) Arrays.copyOf(dArr6, i20));
                                            obj26 = obj29;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public final void m44839a(C0541e c0541e, C0680c c0680c) {
        this.f2715d.f2741d = BitmapDescriptorFactory.HUE_RED;
        this.f2715d.f2742e = BitmapDescriptorFactory.HUE_RED;
        m44838a(this.f2715d);
        this.f2715d.m44831a(c0541e.m45261m(), c0541e.m45259n(), c0541e.m45257o(), c0541e.m45255p());
        C0680c.C0681a m44688e = c0680c.m44688e(this.f2713b);
        this.f2715d.m44829a(m44688e);
        this.f2720i = m44688e.f3062c.f3135f;
        this.f2717f.m44847a(c0541e, c0680c, this.f2713b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v26, types: [double] */
    /* JADX WARN: Type inference failed for: r0v76, types: [double] */
    /* renamed from: a */
    public final void m44837a(float[] fArr, int i) {
        float f;
        float f2 = 1.0f / (i - 1);
        HashMap<String, AbstractC0631q> hashMap = this.f2728q;
        AbstractC0598f abstractC0598f = null;
        AbstractC0631q abstractC0631q = hashMap == null ? null : hashMap.get("translationX");
        HashMap<String, AbstractC0631q> hashMap2 = this.f2728q;
        AbstractC0631q abstractC0631q2 = hashMap2 == null ? null : hashMap2.get("translationY");
        HashMap<String, AbstractC0598f> hashMap3 = this.f2729r;
        AbstractC0598f abstractC0598f2 = hashMap3 == null ? null : hashMap3.get("translationX");
        HashMap<String, AbstractC0598f> hashMap4 = this.f2729r;
        if (hashMap4 != null) {
            abstractC0598f = hashMap4.get("translationY");
        }
        for (int i2 = 0; i2 < i; i2++) {
            float f3 = i2 * f2;
            float f4 = this.f2722k;
            float f5 = f3;
            if (f4 != 1.0f) {
                float f6 = this.f2721j;
                float f7 = f3;
                if (f3 < f6) {
                    f7 = 0.0f;
                }
                f5 = f7;
                if (f7 > f6) {
                    f5 = f7;
                    if (f7 < 1.0d) {
                        f5 = (f7 - f6) * f4;
                    }
                }
            }
            char c = f5;
            C0574c c0574c = this.f2715d.f2739b;
            float f8 = Float.NaN;
            Iterator<C0626o> it2 = this.f2737z.iterator();
            float f9 = 0.0f;
            while (it2.hasNext()) {
                C0626o next = it2.next();
                if (next.f2739b != null) {
                    if (next.f2741d < f5) {
                        c0574c = next.f2739b;
                        f9 = next.f2741d;
                    } else if (Float.isNaN(f8)) {
                        f8 = next.f2741d;
                    }
                }
            }
            if (c0574c != null) {
                float f10 = f8;
                if (Float.isNaN(f8)) {
                    f10 = 1.0f;
                }
                c = (((float) c0574c.mo45077a((f5 - f9) / f)) * (f10 - f9)) + f9;
            }
            this.f2718g[0].mo45070a(c, this.f2724m);
            AbstractC0572b abstractC0572b = this.f2719h;
            if (abstractC0572b != null) {
                double[] dArr = this.f2724m;
                if (dArr.length > 0) {
                    abstractC0572b.mo45070a(c, dArr);
                }
            }
            int i3 = i2 * 2;
            this.f2715d.m44826a(this.f2723l, this.f2724m, fArr, i3);
            if (abstractC0598f2 != null) {
                fArr[i3] = fArr[i3] + abstractC0598f2.m44910a(f5);
            } else if (abstractC0631q != null) {
                fArr[i3] = fArr[i3] + abstractC0631q.m44798a(f5);
            }
            if (abstractC0598f != null) {
                int i4 = i3 + 1;
                fArr[i4] = fArr[i4] + abstractC0598f.m44910a(f5);
            } else if (abstractC0631q2 != null) {
                int i5 = i3 + 1;
                fArr[i5] = fArr[i5] + abstractC0631q2.m44798a(f5);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:147:0x05c4  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x05f1  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0616  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x0647  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x08b0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:242:0x07d0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v508, types: [double] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m44840a(android.view.View r13, float r14, long r15, androidx.constraintlayout.motion.widget.C0595d r17) {
        /*
            Method dump skipped, instructions count: 2827
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.C0624m.m44840a(android.view.View, float, long, androidx.constraintlayout.motion.widget.d):boolean");
    }

    /* renamed from: b */
    public final void m44834b(C0541e c0541e, C0680c c0680c) {
        this.f2716e.f2741d = 1.0f;
        this.f2716e.f2742e = 1.0f;
        m44838a(this.f2716e);
        this.f2716e.m44831a(c0541e.m45261m(), c0541e.m45259n(), c0541e.m45257o(), c0541e.m45255p());
        this.f2716e.m44829a(c0680c.m44688e(this.f2713b));
        this.f2732u.m44847a(c0541e, c0680c, this.f2713b);
    }

    public final String toString() {
        return " start: x: " + this.f2715d.f2743f + " y: " + this.f2715d.f2744g + " end: x: " + this.f2716e.f2743f + " y: " + this.f2716e.f2744g;
    }
}
