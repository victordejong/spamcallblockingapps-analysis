package p1727n3.p1795i.p1796a.p1798b;

import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import p1727n3.p1795i.p1796a.p1797a.AbstractC26271b;
import p1727n3.p1795i.p1796a.p1797a.C26269a;
import p1727n3.p1795i.p1796a.p1797a.C26273c;
import p1727n3.p1795i.p1796a.p1798b.AbstractC26286f;
import p1727n3.p1795i.p1796a.p1798b.AbstractC26318r;
import p1727n3.p1795i.p1796a.p1798b.AbstractC26334s;
import p1727n3.p1795i.p1802c.C26383a;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.i.a.b.m */
/* loaded from: classes-dex2jar.jar:n3/i/a/b/m.class */
public class C26310m {

    /* renamed from: a */
    public View f73428a;

    /* renamed from: b */
    public int f73429b;

    /* renamed from: h */
    public AbstractC26271b[] f73435h;

    /* renamed from: i */
    public AbstractC26271b f73436i;

    /* renamed from: m */
    public int[] f73440m;

    /* renamed from: n */
    public double[] f73441n;

    /* renamed from: o */
    public double[] f73442o;

    /* renamed from: p */
    public String[] f73443p;

    /* renamed from: q */
    public int[] f73444q;

    /* renamed from: w */
    public HashMap<String, AbstractC26334s> f73450w;

    /* renamed from: x */
    public HashMap<String, AbstractC26318r> f73451x;

    /* renamed from: y */
    public HashMap<String, AbstractC26286f> f73452y;

    /* renamed from: z */
    public C26307k[] f73453z;

    /* renamed from: c */
    public int f73430c = -1;

    /* renamed from: d */
    public C26313p f73431d = new C26313p();

    /* renamed from: e */
    public C26313p f73432e = new C26313p();

    /* renamed from: f */
    public C26309l f73433f = new C26309l();

    /* renamed from: g */
    public C26309l f73434g = new C26309l();

    /* renamed from: j */
    public float f73437j = Float.NaN;

    /* renamed from: k */
    public float f73438k = 0.0f;

    /* renamed from: l */
    public float f73439l = 1.0f;

    /* renamed from: r */
    public int f73445r = 4;

    /* renamed from: s */
    public float[] f73446s = new float[4];

    /* renamed from: t */
    public ArrayList<C26313p> f73447t = new ArrayList<>();

    /* renamed from: u */
    public float[] f73448u = new float[1];

    /* renamed from: v */
    public ArrayList<AbstractC26280b> f73449v = new ArrayList<>();

    /* renamed from: A */
    public int f73427A = -1;

    public C26310m(View view) {
        this.f73428a = view;
        this.f73429b = view.getId();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.C0111a) {
            String str = ((ConstraintLayout.C0111a) layoutParams).f617U;
        }
    }

    /* renamed from: a */
    public final float m2203a(float f, float[] fArr) {
        float f2;
        if (fArr != null) {
            fArr[0] = 1.0f;
            f2 = f;
        } else {
            float f3 = this.f73439l;
            f2 = f;
            if (f3 != 1.0d) {
                float f4 = this.f73438k;
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
        C26273c c26273c = this.f73431d.f73459a;
        float f6 = Float.NaN;
        Iterator<C26313p> it = this.f73447t.iterator();
        float f7 = 0.0f;
        while (it.hasNext()) {
            C26313p next = it.next();
            C26273c c26273c2 = next.f73459a;
            if (c26273c2 != null) {
                float f8 = next.f73461c;
                if (f8 < f2) {
                    c26273c = c26273c2;
                    f7 = f8;
                } else if (Float.isNaN(f6)) {
                    f6 = next.f73461c;
                }
            }
        }
        float f9 = f2;
        if (c26273c != null) {
            if (Float.isNaN(f6)) {
                f6 = 1.0f;
            }
            float f10 = f6 - f7;
            double d = (f2 - f7) / f10;
            float mo2232a = (((float) c26273c.mo2232a(d)) * f10) + f7;
            f9 = mo2232a;
            if (fArr != null) {
                fArr[0] = (float) c26273c.mo2231b(d);
                f9 = mo2232a;
            }
        }
        return f9;
    }

    /* JADX WARN: Removed duplicated region for block: B:144:0x05a7  */
    /* JADX WARN: Removed duplicated region for block: B:149:0x05d5  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x05fa  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0628  */
    /* JADX WARN: Type inference failed for: r0v449, types: [double] */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m2202b(android.view.View r9, float r10, long r11, p1727n3.p1795i.p1796a.p1798b.C26283d r13) {
        /*
            Method dump skipped, instructions count: 2383
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1795i.p1796a.p1798b.C26310m.m2202b(android.view.View, float, long, n3.i.a.b.d):boolean");
    }

    /* renamed from: c */
    public final void m2201c(C26313p c26313p) {
        c26313p.m2190e((int) this.f73428a.getX(), (int) this.f73428a.getY(), this.f73428a.getWidth(), this.f73428a.getHeight());
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v423, types: [double] */
    /* JADX WARN: Type inference failed for: r0v444, types: [double] */
    /* JADX WARN: Type inference failed for: r0v447, types: [double] */
    /* JADX WARN: Type inference failed for: r0v465, types: [double] */
    /* renamed from: d */
    public void m2200d(int i, int i2, long j) {
        Object obj;
        Object obj2;
        Object obj3;
        Object obj4;
        ArrayList arrayList;
        HashSet<String> hashSet;
        Object obj5;
        Object obj6;
        Object obj7;
        Object obj8;
        Object obj9;
        Object obj10;
        Object obj11;
        HashSet<String> hashSet2;
        Object obj12;
        Object obj13;
        Object obj14;
        boolean z;
        float f;
        AbstractC26286f.C26289c c26289c;
        Object obj15;
        Object obj16;
        float f2;
        boolean z2;
        AbstractC26286f.C26288b c26295i;
        float[] fArr;
        Object obj17;
        boolean z3;
        HashMap<String, Integer> hashMap;
        AbstractC26334s.C26336b c26336b;
        boolean z4;
        AbstractC26334s.C26335a c26335a;
        C26383a c26383a;
        Iterator<String> it;
        Object obj18;
        AbstractC26318r.C26320b c26320b;
        boolean z5;
        AbstractC26318r.C26319a c26319a;
        C26383a c26383a2;
        ArrayList arrayList2;
        new HashSet();
        HashSet<String> hashSet3 = new HashSet<>();
        HashSet<String> hashSet4 = new HashSet<>();
        HashSet<String> hashSet5 = new HashSet<>();
        HashMap<String, Integer> hashMap2 = new HashMap<>();
        int i3 = this.f73427A;
        if (i3 != -1) {
            this.f73431d.f73468j = i3;
        }
        C26309l c26309l = this.f73433f;
        C26309l c26309l2 = this.f73434g;
        if (c26309l.m2205c(c26309l.f73410a, c26309l2.f73410a)) {
            hashSet4.add("alpha");
        }
        if (c26309l.m2205c(c26309l.f73413d, c26309l2.f73413d)) {
            hashSet4.add("elevation");
        }
        int i4 = c26309l.f73412c;
        int i5 = c26309l2.f73412c;
        if (i4 != i5 && c26309l.f73411b == 0 && (i4 == 0 || i5 == 0)) {
            hashSet4.add("alpha");
        }
        if (c26309l.m2205c(c26309l.f73414e, c26309l2.f73414e)) {
            hashSet4.add("rotation");
        }
        if (!Float.isNaN(c26309l.f73424o) || !Float.isNaN(c26309l2.f73424o)) {
            hashSet4.add("transitionPathRotate");
        }
        if (!Float.isNaN(c26309l.f73425p) || !Float.isNaN(c26309l2.f73425p)) {
            hashSet4.add("progress");
        }
        if (c26309l.m2205c(c26309l.f73415f, c26309l2.f73415f)) {
            hashSet4.add("rotationX");
        }
        if (c26309l.m2205c(c26309l.f73416g, c26309l2.f73416g)) {
            hashSet4.add("rotationY");
        }
        if (c26309l.m2205c(c26309l.f73419j, c26309l2.f73419j)) {
            hashSet4.add("transformPivotX");
        }
        if (c26309l.m2205c(c26309l.f73420k, c26309l2.f73420k)) {
            hashSet4.add("transformPivotY");
        }
        if (c26309l.m2205c(c26309l.f73417h, c26309l2.f73417h)) {
            hashSet4.add("scaleX");
        }
        if (c26309l.m2205c(c26309l.f73418i, c26309l2.f73418i)) {
            hashSet4.add("scaleY");
        }
        if (c26309l.m2205c(c26309l.f73421l, c26309l2.f73421l)) {
            hashSet4.add("translationX");
        }
        if (c26309l.m2205c(c26309l.f73422m, c26309l2.f73422m)) {
            hashSet4.add("translationY");
        }
        if (c26309l.m2205c(c26309l.f73423n, c26309l2.f73423n)) {
            hashSet4.add("translationZ");
        }
        ArrayList<AbstractC26280b> arrayList3 = this.f73449v;
        if (arrayList3 != null) {
            Iterator<AbstractC26280b> it2 = arrayList3.iterator();
            ArrayList arrayList4 = null;
            while (true) {
                arrayList = arrayList4;
                if (!it2.hasNext()) {
                    break;
                }
                h hVar = (AbstractC26280b) it2.next();
                if (hVar instanceof h) {
                    h hVar2 = hVar;
                    C26313p c26313p = new C26313p(i, i2, hVar2, this.f73431d, this.f73432e);
                    this.f73447t.add((-Collections.binarySearch(this.f73447t, c26313p)) - 1, c26313p);
                    int i6 = hVar2.f73372e;
                    arrayList2 = arrayList;
                    if (i6 != -1) {
                        this.f73430c = i6;
                        arrayList2 = arrayList;
                    }
                } else if (hVar instanceof C26284e) {
                    hVar.mo2209b(hashSet5);
                    arrayList2 = arrayList;
                } else if (hVar instanceof C26305j) {
                    hVar.mo2209b(hashSet3);
                    arrayList2 = arrayList;
                } else if (hVar instanceof C26307k) {
                    arrayList2 = arrayList;
                    if (arrayList == null) {
                        arrayList2 = new ArrayList();
                    }
                    arrayList2.add((C26307k) hVar);
                } else {
                    hVar.mo2211d(hashMap2);
                    hVar.mo2209b(hashSet4);
                    arrayList2 = arrayList;
                }
                arrayList4 = arrayList2;
            }
            obj = "translationY";
            obj2 = "scaleX";
            obj3 = "translationZ";
            obj4 = "progress";
        } else {
            obj3 = "translationZ";
            obj4 = "progress";
            obj = "translationY";
            obj2 = "scaleX";
            arrayList = null;
        }
        if (arrayList != null) {
            this.f73453z = (C26307k[]) arrayList.toArray(new C26307k[0]);
        }
        if (!hashSet4.isEmpty()) {
            this.f73451x = new HashMap<>();
            Iterator<String> it3 = hashSet4.iterator();
            Object obj19 = "rotationX";
            while (it3.hasNext()) {
                String next = it3.next();
                if (next.startsWith("CUSTOM,")) {
                    SparseArray sparseArray = new SparseArray();
                    String str = next.split(",")[1];
                    Iterator<AbstractC26280b> it4 = this.f73449v.iterator();
                    while (it4.hasNext()) {
                        AbstractC26280b next2 = it4.next();
                        HashMap<String, C26383a> hashMap3 = next2.f73314d;
                        if (hashMap3 != null && (c26383a2 = hashMap3.get(str)) != null) {
                            sparseArray.append(next2.f73311a, c26383a2);
                        }
                    }
                    Iterator<String> it5 = it3;
                    c26320b = new AbstractC26318r.C26320b(next, sparseArray);
                    obj18 = obj19;
                    it = it5;
                } else {
                    Iterator<String> it6 = it3;
                    switch (next.hashCode()) {
                        case -1249320806:
                            if (next.equals(obj19)) {
                                z5 = false;
                                break;
                            }
                            z5 = true;
                            break;
                        case -1249320805:
                            if (next.equals("rotationY")) {
                                z5 = true;
                                break;
                            }
                            z5 = true;
                            break;
                        case -1225497657:
                            if (next.equals("translationX")) {
                                z5 = true;
                                break;
                            }
                            z5 = true;
                            break;
                        case -1225497656:
                            if (next.equals(obj)) {
                                z5 = true;
                                break;
                            }
                            z5 = true;
                            break;
                        case -1225497655:
                            if (next.equals(obj3)) {
                                z5 = true;
                                break;
                            }
                            z5 = true;
                            break;
                        case -1001078227:
                            if (next.equals(obj4)) {
                                z5 = true;
                                break;
                            }
                            z5 = true;
                            break;
                        case -908189618:
                            if (next.equals(obj2)) {
                                z5 = true;
                                break;
                            }
                            z5 = true;
                            break;
                        case -908189617:
                            if (next.equals("scaleY")) {
                                z5 = true;
                                break;
                            }
                            z5 = true;
                            break;
                        case -797520672:
                            if (next.equals("waveVariesBy")) {
                                z5 = true;
                                break;
                            }
                            z5 = true;
                            break;
                        case -760884510:
                            if (next.equals("transformPivotX")) {
                                z5 = true;
                                break;
                            }
                            z5 = true;
                            break;
                        case -760884509:
                            if (next.equals("transformPivotY")) {
                                z5 = true;
                                break;
                            }
                            z5 = true;
                            break;
                        case -40300674:
                            if (next.equals("rotation")) {
                                z5 = true;
                                break;
                            }
                            z5 = true;
                            break;
                        case -4379043:
                            if (next.equals("elevation")) {
                                z5 = true;
                                break;
                            }
                            z5 = true;
                            break;
                        case 37232917:
                            if (next.equals("transitionPathRotate")) {
                                z5 = true;
                                break;
                            }
                            z5 = true;
                            break;
                        case 92909918:
                            if (next.equals("alpha")) {
                                z5 = true;
                                break;
                            }
                            z5 = true;
                            break;
                        case 156108012:
                            if (next.equals("waveOffset")) {
                                z5 = true;
                                break;
                            }
                            z5 = true;
                            break;
                        default:
                            z5 = true;
                            break;
                    }
                    switch (z5) {
                        case false:
                            c26319a = new AbstractC26318r.C26327i();
                            break;
                        case true:
                            c26319a = new AbstractC26318r.C26328j();
                            break;
                        case true:
                            c26319a = new AbstractC26318r.C26331m();
                            break;
                        case true:
                            c26319a = new AbstractC26318r.C26332n();
                            break;
                        case true:
                            c26319a = new AbstractC26318r.C26333o();
                            break;
                        case true:
                            c26319a = new AbstractC26318r.C26325g();
                            break;
                        case true:
                            c26319a = new AbstractC26318r.C26329k();
                            break;
                        case true:
                            c26319a = new AbstractC26318r.C26330l();
                            break;
                        case true:
                            c26319a = new AbstractC26318r.C26319a();
                            break;
                        case true:
                            c26319a = new AbstractC26318r.C26323e();
                            break;
                        case true:
                            c26319a = new AbstractC26318r.C26324f();
                            break;
                        case true:
                            c26319a = new AbstractC26318r.C26326h();
                            break;
                        case true:
                            c26319a = new AbstractC26318r.C26321c();
                            break;
                        case true:
                            c26319a = new AbstractC26318r.C26322d();
                            break;
                        case true:
                            c26319a = new AbstractC26318r.C26319a();
                            break;
                        case true:
                            c26319a = new AbstractC26318r.C26319a();
                            break;
                        default:
                            c26319a = null;
                            break;
                    }
                    Object obj20 = obj19;
                    AbstractC26318r abstractC26318r = c26319a;
                    it = it6;
                    obj18 = obj20;
                    c26320b = abstractC26318r;
                }
                if (c26320b == null) {
                    Object obj21 = obj18;
                    it3 = it;
                    obj19 = obj21;
                } else {
                    c26320b.f73517e = next;
                    this.f73451x.put(next, c26320b);
                    Object obj22 = obj18;
                    it3 = it;
                    obj19 = obj22;
                }
            }
            Object obj23 = obj;
            Object obj24 = obj3;
            Object obj25 = obj4;
            Object obj26 = obj19;
            ArrayList<AbstractC26280b> arrayList5 = this.f73449v;
            if (arrayList5 != null) {
                Iterator<AbstractC26280b> it7 = arrayList5.iterator();
                while (it7.hasNext()) {
                    AbstractC26280b next3 = it7.next();
                    if (next3 instanceof C26281c) {
                        next3.mo2210a(this.f73451x);
                    }
                }
            }
            this.f73433f.m2206a(this.f73451x, 0);
            this.f73434g.m2206a(this.f73451x, 100);
            Iterator<String> it8 = this.f73451x.keySet().iterator();
            while (true) {
                obj7 = obj2;
                obj8 = obj25;
                obj5 = obj24;
                obj6 = obj23;
                obj10 = "translationX";
                obj9 = "rotationY";
                obj11 = obj26;
                hashSet2 = hashSet4;
                hashSet = hashSet5;
                if (it8.hasNext()) {
                    String next4 = it8.next();
                    this.f73451x.get(next4).mo2168d(hashMap2.containsKey(next4) ? hashMap2.get(next4).intValue() : 0);
                }
            }
        } else {
            obj10 = "translationX";
            Object obj27 = obj3;
            obj11 = "rotationX";
            obj9 = "rotationY";
            hashSet = hashSet5;
            hashSet2 = hashSet4;
            obj6 = obj;
            obj5 = obj27;
            obj8 = obj4;
            obj7 = obj2;
        }
        if (!hashSet3.isEmpty()) {
            if (this.f73450w == null) {
                this.f73450w = new HashMap<>();
            }
            Iterator<String> it9 = hashSet3.iterator();
            Object obj28 = obj11;
            HashMap<String, Integer> hashMap4 = hashMap2;
            while (it9.hasNext()) {
                String next5 = it9.next();
                if (!this.f73450w.containsKey(next5)) {
                    if (!next5.startsWith("CUSTOM,")) {
                        hashMap = hashMap4;
                        switch (next5.hashCode()) {
                            case -1249320806:
                                if (next5.equals(obj28)) {
                                    z4 = false;
                                    break;
                                }
                                z4 = true;
                                break;
                            case -1249320805:
                                if (next5.equals(obj9)) {
                                    z4 = true;
                                    break;
                                }
                                z4 = true;
                                break;
                            case -1225497657:
                                if (next5.equals(obj10)) {
                                    z4 = true;
                                    break;
                                }
                                z4 = true;
                                break;
                            case -1225497656:
                                if (next5.equals(obj6)) {
                                    z4 = true;
                                    break;
                                }
                                z4 = true;
                                break;
                            case -1225497655:
                                if (next5.equals(obj5)) {
                                    z4 = true;
                                    break;
                                }
                                z4 = true;
                                break;
                            case -1001078227:
                                if (next5.equals(obj8)) {
                                    z4 = true;
                                    break;
                                }
                                z4 = true;
                                break;
                            case -908189618:
                                if (next5.equals(obj7)) {
                                    z4 = true;
                                    break;
                                }
                                z4 = true;
                                break;
                            case -908189617:
                                if (next5.equals("scaleY")) {
                                    z4 = true;
                                    break;
                                }
                                z4 = true;
                                break;
                            case -40300674:
                                if (next5.equals("rotation")) {
                                    z4 = true;
                                    break;
                                }
                                z4 = true;
                                break;
                            case -4379043:
                                if (next5.equals("elevation")) {
                                    z4 = true;
                                    break;
                                }
                                z4 = true;
                                break;
                            case 37232917:
                                if (next5.equals("transitionPathRotate")) {
                                    z4 = true;
                                    break;
                                }
                                z4 = true;
                                break;
                            case 92909918:
                                if (next5.equals("alpha")) {
                                    z4 = true;
                                    break;
                                }
                                z4 = true;
                                break;
                            default:
                                z4 = true;
                                break;
                        }
                        switch (z4) {
                            case false:
                                c26335a = new AbstractC26334s.C26341g();
                                c26335a.f73529i = j;
                                c26336b = c26335a;
                                break;
                            case true:
                                c26335a = new AbstractC26334s.C26342h();
                                c26335a.f73529i = j;
                                c26336b = c26335a;
                                break;
                            case true:
                                c26335a = new AbstractC26334s.C26345k();
                                c26335a.f73529i = j;
                                c26336b = c26335a;
                                break;
                            case true:
                                c26335a = new AbstractC26334s.C26346l();
                                c26335a.f73529i = j;
                                c26336b = c26335a;
                                break;
                            case true:
                                c26335a = new AbstractC26334s.C26347m();
                                c26335a.f73529i = j;
                                c26336b = c26335a;
                                break;
                            case true:
                                c26335a = new AbstractC26334s.C26339e();
                                c26335a.f73529i = j;
                                c26336b = c26335a;
                                break;
                            case true:
                                c26335a = new AbstractC26334s.C26343i();
                                c26335a.f73529i = j;
                                c26336b = c26335a;
                                break;
                            case true:
                                c26335a = new AbstractC26334s.C26344j();
                                c26335a.f73529i = j;
                                c26336b = c26335a;
                                break;
                            case true:
                                c26335a = new AbstractC26334s.C26340f();
                                c26335a.f73529i = j;
                                c26336b = c26335a;
                                break;
                            case true:
                                c26335a = new AbstractC26334s.C26337c();
                                c26335a.f73529i = j;
                                c26336b = c26335a;
                                break;
                            case true:
                                c26335a = new AbstractC26334s.C26338d();
                                c26335a.f73529i = j;
                                c26336b = c26335a;
                                break;
                            case true:
                                c26335a = new AbstractC26334s.C26335a();
                                c26335a.f73529i = j;
                                c26336b = c26335a;
                                break;
                            default:
                                c26336b = null;
                                break;
                        }
                    } else {
                        SparseArray sparseArray2 = new SparseArray();
                        String str2 = next5.split(",")[1];
                        Iterator<AbstractC26280b> it10 = this.f73449v.iterator();
                        while (it10.hasNext()) {
                            AbstractC26280b next6 = it10.next();
                            HashMap<String, C26383a> hashMap5 = next6.f73314d;
                            if (hashMap5 != null && (c26383a = hashMap5.get(str2)) != null) {
                                sparseArray2.append(next6.f73311a, c26383a);
                            }
                        }
                        hashMap = hashMap4;
                        c26336b = new AbstractC26334s.C26336b(next5, sparseArray2);
                    }
                    if (c26336b != null) {
                        c26336b.f73526f = next5;
                        this.f73450w.put(next5, c26336b);
                    }
                    hashMap4 = hashMap;
                }
            }
            HashMap<String, Integer> hashMap6 = hashMap4;
            Object obj29 = obj9;
            Object obj30 = obj10;
            ArrayList<AbstractC26280b> arrayList6 = this.f73449v;
            Object obj31 = obj29;
            Object obj32 = obj28;
            Object obj33 = obj30;
            if (arrayList6 != null) {
                Iterator<AbstractC26280b> it11 = arrayList6.iterator();
                Object obj34 = obj29;
                while (true) {
                    obj31 = obj34;
                    obj32 = obj28;
                    obj33 = obj30;
                    if (it11.hasNext()) {
                        AbstractC26280b next7 = it11.next();
                        Object obj35 = obj34;
                        Iterator<AbstractC26280b> it12 = it11;
                        Object obj36 = obj28;
                        Object obj37 = obj30;
                        if (next7 instanceof C26305j) {
                            C26305j c26305j = (C26305j) next7;
                            HashMap<String, AbstractC26334s> hashMap7 = this.f73450w;
                            Objects.requireNonNull(c26305j);
                            Iterator<String> it13 = hashMap7.keySet().iterator();
                            Object obj38 = obj30;
                            while (true) {
                                obj35 = obj34;
                                it12 = it11;
                                obj36 = obj28;
                                obj37 = obj38;
                                if (it13.hasNext()) {
                                    String next8 = it13.next();
                                    AbstractC26334s abstractC26334s = hashMap7.get(next8);
                                    if (!next8.startsWith("CUSTOM")) {
                                        switch (next8.hashCode()) {
                                            case -1249320806:
                                                if (next8.equals(obj28)) {
                                                    z3 = false;
                                                    break;
                                                }
                                                z3 = true;
                                                break;
                                            case -1249320805:
                                                if (next8.equals(obj34)) {
                                                    z3 = true;
                                                    break;
                                                }
                                                z3 = true;
                                                break;
                                            case -1225497657:
                                                if (next8.equals(obj38)) {
                                                    z3 = true;
                                                    break;
                                                }
                                                z3 = true;
                                                break;
                                            case -1225497656:
                                                if (next8.equals(obj6)) {
                                                    z3 = true;
                                                    break;
                                                }
                                                z3 = true;
                                                break;
                                            case -1225497655:
                                                if (next8.equals(obj5)) {
                                                    z3 = true;
                                                    break;
                                                }
                                                z3 = true;
                                                break;
                                            case -1001078227:
                                                if (next8.equals(obj8)) {
                                                    z3 = true;
                                                    break;
                                                }
                                                z3 = true;
                                                break;
                                            case -908189618:
                                                if (next8.equals(obj7)) {
                                                    z3 = true;
                                                    break;
                                                }
                                                z3 = true;
                                                break;
                                            case -908189617:
                                                if (next8.equals("scaleY")) {
                                                    z3 = true;
                                                    break;
                                                }
                                                z3 = true;
                                                break;
                                            case -40300674:
                                                if (next8.equals("rotation")) {
                                                    z3 = true;
                                                    break;
                                                }
                                                z3 = true;
                                                break;
                                            case -4379043:
                                                if (next8.equals("elevation")) {
                                                    z3 = true;
                                                    break;
                                                }
                                                z3 = true;
                                                break;
                                            case 37232917:
                                                if (next8.equals("transitionPathRotate")) {
                                                    z3 = true;
                                                    break;
                                                }
                                                z3 = true;
                                                break;
                                            case 92909918:
                                                if (next8.equals("alpha")) {
                                                    z3 = true;
                                                    break;
                                                }
                                                z3 = true;
                                                break;
                                            default:
                                                z3 = true;
                                                break;
                                        }
                                        switch (z3) {
                                            case false:
                                                if (!Float.isNaN(c26305j.f73377i)) {
                                                    abstractC26334s.mo2164c(c26305j.f73311a, c26305j.f73377i, c26305j.f73387s, c26305j.f73386r, c26305j.f73388t);
                                                    break;
                                                } else {
                                                    break;
                                                }
                                            case true:
                                                if (!Float.isNaN(c26305j.f73378j)) {
                                                    abstractC26334s.mo2164c(c26305j.f73311a, c26305j.f73378j, c26305j.f73387s, c26305j.f73386r, c26305j.f73388t);
                                                    break;
                                                } else {
                                                    break;
                                                }
                                            case true:
                                                if (!Float.isNaN(c26305j.f73382n)) {
                                                    abstractC26334s.mo2164c(c26305j.f73311a, c26305j.f73382n, c26305j.f73387s, c26305j.f73386r, c26305j.f73388t);
                                                    break;
                                                } else {
                                                    break;
                                                }
                                            case true:
                                                if (!Float.isNaN(c26305j.f73383o)) {
                                                    abstractC26334s.mo2164c(c26305j.f73311a, c26305j.f73383o, c26305j.f73387s, c26305j.f73386r, c26305j.f73388t);
                                                    break;
                                                } else {
                                                    break;
                                                }
                                            case true:
                                                if (!Float.isNaN(c26305j.f73384p)) {
                                                    abstractC26334s.mo2164c(c26305j.f73311a, c26305j.f73384p, c26305j.f73387s, c26305j.f73386r, c26305j.f73388t);
                                                    break;
                                                } else {
                                                    break;
                                                }
                                            case true:
                                                if (!Float.isNaN(c26305j.f73385q)) {
                                                    abstractC26334s.mo2164c(c26305j.f73311a, c26305j.f73385q, c26305j.f73387s, c26305j.f73386r, c26305j.f73388t);
                                                    break;
                                                } else {
                                                    break;
                                                }
                                            case true:
                                                if (!Float.isNaN(c26305j.f73380l)) {
                                                    abstractC26334s.mo2164c(c26305j.f73311a, c26305j.f73380l, c26305j.f73387s, c26305j.f73386r, c26305j.f73388t);
                                                    break;
                                                } else {
                                                    break;
                                                }
                                            case true:
                                                if (!Float.isNaN(c26305j.f73381m)) {
                                                    abstractC26334s.mo2164c(c26305j.f73311a, c26305j.f73381m, c26305j.f73387s, c26305j.f73386r, c26305j.f73388t);
                                                    break;
                                                } else {
                                                    break;
                                                }
                                            case true:
                                                if (!Float.isNaN(c26305j.f73376h)) {
                                                    abstractC26334s.mo2164c(c26305j.f73311a, c26305j.f73376h, c26305j.f73387s, c26305j.f73386r, c26305j.f73388t);
                                                    break;
                                                } else {
                                                    break;
                                                }
                                            case true:
                                                if (!Float.isNaN(c26305j.f73375g)) {
                                                    abstractC26334s.mo2164c(c26305j.f73311a, c26305j.f73375g, c26305j.f73387s, c26305j.f73386r, c26305j.f73388t);
                                                    break;
                                                } else {
                                                    break;
                                                }
                                            case true:
                                                if (!Float.isNaN(c26305j.f73379k)) {
                                                    abstractC26334s.mo2164c(c26305j.f73311a, c26305j.f73379k, c26305j.f73387s, c26305j.f73386r, c26305j.f73388t);
                                                    break;
                                                } else {
                                                    break;
                                                }
                                            case true:
                                                if (!Float.isNaN(c26305j.f73374f)) {
                                                    abstractC26334s.mo2164c(c26305j.f73311a, c26305j.f73374f, c26305j.f73387s, c26305j.f73386r, c26305j.f73388t);
                                                    break;
                                                } else {
                                                    break;
                                                }
                                        }
                                    } else {
                                        C26383a c26383a3 = c26305j.f73314d.get(next8.substring(7));
                                        if (c26383a3 != null) {
                                            AbstractC26334s.C26336b c26336b2 = (AbstractC26334s.C26336b) abstractC26334s;
                                            int i7 = c26305j.f73311a;
                                            float f3 = c26305j.f73387s;
                                            int i8 = c26305j.f73386r;
                                            float f4 = c26305j.f73388t;
                                            c26336b2.f73532l.append(i7, c26383a3);
                                            c26336b2.f73533m.append(i7, new float[]{f3, f4});
                                            c26336b2.f73522b = Math.max(c26336b2.f73522b, i8);
                                        }
                                    }
                                }
                            }
                        }
                        it11 = it12;
                        obj28 = obj36;
                        obj34 = obj35;
                        obj30 = obj37;
                    }
                }
            }
            Iterator<String> it14 = this.f73450w.keySet().iterator();
            while (true) {
                obj14 = obj33;
                obj12 = obj32;
                obj13 = obj31;
                if (it14.hasNext()) {
                    String next9 = it14.next();
                    this.f73450w.get(next9).mo2163e(hashMap6.containsKey(next9) ? hashMap6.get(next9).intValue() : 0);
                }
            }
        } else {
            Object obj39 = obj10;
            obj13 = obj9;
            obj12 = obj11;
            obj14 = obj39;
        }
        int size = this.f73447t.size() + 2;
        C26313p[] c26313pArr = new C26313p[size];
        c26313pArr[0] = this.f73431d;
        c26313pArr[size - 1] = this.f73432e;
        if (this.f73447t.size() > 0 && this.f73430c == -1) {
            this.f73430c = 0;
        }
        Iterator<C26313p> it15 = this.f73447t.iterator();
        int i9 = 1;
        while (it15.hasNext()) {
            c26313pArr[i9] = it15.next();
            i9++;
        }
        HashSet hashSet6 = new HashSet();
        for (String str3 : this.f73432e.f73469k.keySet()) {
            if (this.f73431d.f73469k.containsKey(str3)) {
                if (!hashSet2.contains("CUSTOM," + str3)) {
                    hashSet6.add(str3);
                }
            }
        }
        Object obj40 = obj14;
        String[] strArr = (String[]) hashSet6.toArray(new String[0]);
        this.f73443p = strArr;
        this.f73444q = new int[strArr.length];
        int i10 = 0;
        while (true) {
            String[] strArr2 = this.f73443p;
            if (i10 < strArr2.length) {
                String str4 = strArr2[i10];
                this.f73444q[i10] = 0;
                int i11 = 0;
                while (true) {
                    if (i11 >= size) {
                        break;
                    } else if (c26313pArr[i11].f73469k.containsKey(str4)) {
                        int[] iArr = this.f73444q;
                        iArr[i10] = c26313pArr[i11].f73469k.get(str4).m1994d() + iArr[i10];
                    } else {
                        i11++;
                    }
                }
                i10++;
            } else {
                boolean z6 = c26313pArr[0].f73468j != -1;
                int length = strArr2.length + 18;
                boolean[] zArr = new boolean[length];
                for (int i12 = 1; i12 < size; i12++) {
                    C26313p c26313p2 = c26313pArr[i12];
                    C26313p c26313p3 = c26313pArr[i12 - 1];
                    Objects.requireNonNull(c26313p2);
                    zArr[0] = zArr[0] | c26313p2.m2192c(c26313p2.f73462d, c26313p3.f73462d);
                    zArr[1] = zArr[1] | c26313p2.m2192c(c26313p2.f73463e, c26313p3.f73463e) | z6;
                    zArr[2] = zArr[2] | c26313p2.m2192c(c26313p2.f73464f, c26313p3.f73464f) | z6;
                    zArr[3] = c26313p2.m2192c(c26313p2.f73465g, c26313p3.f73465g) | zArr[3];
                    zArr[4] = zArr[4] | c26313p2.m2192c(c26313p2.f73466h, c26313p3.f73466h);
                }
                Object obj41 = obj8;
                Object obj42 = obj5;
                Object obj43 = obj6;
                Object obj44 = "scaleY";
                int i13 = 0;
                int i14 = 1;
                while (i14 < length) {
                    int i15 = i13;
                    if (zArr[i14]) {
                        i15 = i13 + 1;
                    }
                    i14++;
                    i13 = i15;
                }
                int[] iArr2 = new int[i13];
                this.f73440m = iArr2;
                this.f73441n = new double[iArr2.length];
                this.f73442o = new double[iArr2.length];
                int i16 = 0;
                int i17 = 1;
                while (i17 < length) {
                    int i18 = i16;
                    if (zArr[i17]) {
                        this.f73440m[i16] = i17;
                        i18 = i16 + 1;
                    }
                    i17++;
                    i16 = i18;
                }
                double[][] dArr = new double[size][this.f73440m.length];
                double[] dArr2 = new double[size];
                for (int i19 = 0; i19 < size; i19++) {
                    C26313p c26313p4 = c26313pArr[i19];
                    double[] dArr3 = dArr[i19];
                    int[] iArr3 = this.f73440m;
                    float[] fArr2 = {c26313p4.f73462d, c26313p4.f73463e, c26313p4.f73464f, c26313p4.f73465g, c26313p4.f73466h, c26313p4.f73467i};
                    int i20 = 0;
                    for (int i21 = 0; i21 < iArr3.length; i21++) {
                        if (iArr3[i21] < 6) {
                            dArr3[i20] = fArr2[iArr3[i21]];
                            i20++;
                        }
                    }
                    dArr2[i19] = c26313pArr[i19].f73461c;
                }
                int i22 = 0;
                while (true) {
                    int[] iArr4 = this.f73440m;
                    if (i22 < iArr4.length) {
                        if (iArr4[i22] < C26313p.f73458o.length) {
                            String m8618h = C22128a.m8618h(new StringBuilder(), C26313p.f73458o[this.f73440m[i22]], " [");
                            for (int i23 = 0; i23 < size; i23++) {
                                StringBuilder m8728C = C22128a.m8728C(m8618h);
                                m8728C.append(dArr[i23][i22]);
                                m8618h = m8728C.toString();
                            }
                        }
                        i22++;
                    } else {
                        this.f73435h = new AbstractC26271b[this.f73443p.length + 1];
                        int i24 = 0;
                        Object obj45 = "transitionPathRotate";
                        while (true) {
                            String[] strArr3 = this.f73443p;
                            if (i24 >= strArr3.length) {
                                this.f73435h[0] = AbstractC26271b.m2234a(this.f73430c, dArr2, dArr);
                                if (c26313pArr[0].f73468j != -1) {
                                    int[] iArr5 = new int[size];
                                    double[] dArr4 = new double[size];
                                    double[][] dArr5 = new double[size][2];
                                    for (int i25 = 0; i25 < size; i25++) {
                                        iArr5[i25] = c26313pArr[i25].f73468j;
                                        dArr4[i25] = c26313pArr[i25].f73461c;
                                        dArr5[i25][0] = c26313pArr[i25].f73463e;
                                        dArr5[i25][1] = c26313pArr[i25].f73464f;
                                    }
                                    this.f73436i = new C26269a(iArr5, dArr4, dArr5);
                                }
                                float f5 = Float.NaN;
                                this.f73452y = new HashMap<>();
                                if (this.f73449v == null) {
                                    return;
                                }
                                Iterator<String> it16 = hashSet.iterator();
                                Object obj46 = obj45;
                                Object obj47 = obj13;
                                Object obj48 = obj42;
                                Object obj49 = obj41;
                                Object obj50 = obj43;
                                Object obj51 = obj40;
                                while (it16.hasNext()) {
                                    String next10 = it16.next();
                                    if (next10.startsWith("CUSTOM")) {
                                        c26289c = new AbstractC26286f.C26289c();
                                    } else {
                                        switch (next10.hashCode()) {
                                            case -1249320806:
                                                if (next10.equals(obj12)) {
                                                    z2 = false;
                                                    break;
                                                }
                                                z2 = true;
                                                break;
                                            case -1249320805:
                                                if (next10.equals(obj47)) {
                                                    z2 = true;
                                                    break;
                                                }
                                                z2 = true;
                                                break;
                                            case -1225497657:
                                                if (next10.equals(obj51)) {
                                                    z2 = true;
                                                    break;
                                                }
                                                z2 = true;
                                                break;
                                            case -1225497656:
                                                if (next10.equals(obj50)) {
                                                    z2 = true;
                                                    break;
                                                }
                                                z2 = true;
                                                break;
                                            case -1225497655:
                                                if (next10.equals(obj48)) {
                                                    z2 = true;
                                                    break;
                                                }
                                                z2 = true;
                                                break;
                                            case -1001078227:
                                                if (next10.equals(obj49)) {
                                                    z2 = true;
                                                    break;
                                                }
                                                z2 = true;
                                                break;
                                            case -908189618:
                                                if (next10.equals(obj7)) {
                                                    z2 = true;
                                                    break;
                                                }
                                                z2 = true;
                                                break;
                                            case -908189617:
                                                if (next10.equals(obj44)) {
                                                    z2 = true;
                                                    break;
                                                }
                                                z2 = true;
                                                break;
                                            case -797520672:
                                                if (next10.equals("waveVariesBy")) {
                                                    z2 = true;
                                                    break;
                                                }
                                                z2 = true;
                                                break;
                                            case -40300674:
                                                if (next10.equals("rotation")) {
                                                    z2 = true;
                                                    break;
                                                }
                                                z2 = true;
                                                break;
                                            case -4379043:
                                                if (next10.equals("elevation")) {
                                                    z2 = true;
                                                    break;
                                                }
                                                z2 = true;
                                                break;
                                            case 37232917:
                                                if (next10.equals(obj46)) {
                                                    z2 = true;
                                                    break;
                                                }
                                                z2 = true;
                                                break;
                                            case 92909918:
                                                if (next10.equals("alpha")) {
                                                    z2 = true;
                                                    break;
                                                }
                                                z2 = true;
                                                break;
                                            case 156108012:
                                                if (next10.equals("waveOffset")) {
                                                    z2 = true;
                                                    break;
                                                }
                                                z2 = true;
                                                break;
                                            default:
                                                z2 = true;
                                                break;
                                        }
                                        switch (z2) {
                                            case false:
                                                c26295i = new AbstractC26286f.C26295i();
                                                break;
                                            case true:
                                                c26295i = new AbstractC26286f.C26296j();
                                                break;
                                            case true:
                                                c26295i = new AbstractC26286f.C26299m();
                                                break;
                                            case true:
                                                c26295i = new AbstractC26286f.C26300n();
                                                break;
                                            case true:
                                                c26295i = new AbstractC26286f.C26301o();
                                                break;
                                            case true:
                                                c26295i = new AbstractC26286f.C26293g();
                                                break;
                                            case true:
                                                c26295i = new AbstractC26286f.C26297k();
                                                break;
                                            case true:
                                                c26295i = new AbstractC26286f.C26298l();
                                                break;
                                            case true:
                                                c26295i = new AbstractC26286f.C26288b();
                                                break;
                                            case true:
                                                c26295i = new AbstractC26286f.C26294h();
                                                break;
                                            case true:
                                                c26295i = new AbstractC26286f.C26291e();
                                                break;
                                            case true:
                                                c26295i = new AbstractC26286f.C26292f();
                                                break;
                                            case true:
                                                c26295i = new AbstractC26286f.C26288b();
                                                break;
                                            case true:
                                                c26295i = new AbstractC26286f.C26288b();
                                                break;
                                            default:
                                                c26295i = null;
                                                break;
                                        }
                                        c26289c = c26295i;
                                    }
                                    if (c26289c != null) {
                                        Object obj52 = obj12;
                                        if (!(c26289c.f73354e == 1) || !Float.isNaN(f5)) {
                                            obj16 = obj44;
                                            obj15 = obj49;
                                        } else {
                                            float[] fArr3 = new float[2];
                                            float f6 = 1.0f / 99;
                                            boolean z7 = false;
                                            float f7 = 0.0f;
                                            boolean z8 = false;
                                            for (int i26 = 0; i26 < 100; i26++) {
                                                float f8 = i26 * f6;
                                                char c = f8;
                                                C26273c c26273c = this.f73431d.f73459a;
                                                Iterator<C26313p> it17 = this.f73447t.iterator();
                                                float f9 = 0.0f;
                                                float f10 = Float.NaN;
                                                while (true) {
                                                    float f11 = f10;
                                                    if (it17.hasNext()) {
                                                        C26313p next11 = it17.next();
                                                        C26273c c26273c2 = next11.f73459a;
                                                        C26273c c26273c3 = c26273c;
                                                        float f12 = f9;
                                                        float f13 = f11;
                                                        if (c26273c2 != null) {
                                                            f12 = next11.f73461c;
                                                            if (f12 < f8) {
                                                                c26273c3 = c26273c2;
                                                                f13 = f11;
                                                            } else {
                                                                c26273c3 = c26273c;
                                                                f12 = f9;
                                                                f13 = f11;
                                                                if (Float.isNaN(f11)) {
                                                                    f13 = next11.f73461c;
                                                                    f12 = f9;
                                                                    c26273c3 = c26273c;
                                                                }
                                                            }
                                                        }
                                                        c26273c = c26273c3;
                                                        f9 = f12;
                                                        f10 = f13;
                                                    } else {
                                                        if (c26273c != null) {
                                                            float f14 = f11;
                                                            if (Float.isNaN(f11)) {
                                                                f14 = 1.0f;
                                                            }
                                                            c = (((float) c26273c.mo2232a((f8 - f9) / f2)) * (f14 - f9)) + f9;
                                                        }
                                                        this.f73435h[0].mo2227c(c, this.f73441n);
                                                        this.f73431d.m2191d(this.f73440m, this.f73441n, fArr3, 0);
                                                        if (i26 > 0) {
                                                            f7 = (float) (Math.hypot((z7 ? 1.0d : 0.0d) - fArr3[1], (z8 ? 1.0d : 0.0d) - fArr3[0]) + f7);
                                                        }
                                                        z8 = fArr3[0];
                                                        z7 = fArr3[1];
                                                    }
                                                }
                                            }
                                            obj16 = obj44;
                                            obj15 = obj49;
                                            f5 = f7;
                                        }
                                        c26289c.f73352c = next10;
                                        this.f73452y.put(next10, c26289c);
                                        obj7 = obj7;
                                        obj49 = obj15;
                                        obj12 = obj52;
                                        obj44 = obj16;
                                    }
                                }
                                Object obj53 = obj44;
                                Object obj54 = obj7;
                                Object obj55 = obj47;
                                Object obj56 = obj12;
                                Object obj57 = "rotation";
                                Object obj58 = obj46;
                                Iterator<AbstractC26280b> it18 = this.f73449v.iterator();
                                while (it18.hasNext()) {
                                    AbstractC26280b next12 = it18.next();
                                    float f15 = f5;
                                    Iterator<AbstractC26280b> it19 = it18;
                                    Object obj59 = obj58;
                                    Object obj60 = obj57;
                                    Object obj61 = obj56;
                                    Object obj62 = obj55;
                                    Object obj63 = obj51;
                                    Object obj64 = obj50;
                                    Object obj65 = obj53;
                                    Object obj66 = obj54;
                                    Object obj67 = obj48;
                                    Object obj68 = obj49;
                                    if (next12 instanceof C26284e) {
                                        C26284e c26284e = (C26284e) next12;
                                        HashMap<String, AbstractC26286f> hashMap8 = this.f73452y;
                                        Objects.requireNonNull(c26284e);
                                        Iterator<String> it20 = hashMap8.keySet().iterator();
                                        Object obj69 = obj54;
                                        while (true) {
                                            f15 = f5;
                                            it19 = it18;
                                            obj59 = obj58;
                                            obj60 = obj57;
                                            obj61 = obj56;
                                            obj62 = obj55;
                                            obj63 = obj51;
                                            obj64 = obj50;
                                            obj65 = obj53;
                                            obj66 = obj69;
                                            obj67 = obj48;
                                            obj68 = obj49;
                                            if (it20.hasNext()) {
                                                String next13 = it20.next();
                                                if (next13.startsWith("CUSTOM")) {
                                                    C26383a c26383a4 = c26284e.f73314d.get(next13.substring(7));
                                                    if (c26383a4 != null && c26383a4.f73846b == C26383a.EnumC26384a.FLOAT_TYPE) {
                                                        AbstractC26286f abstractC26286f = hashMap8.get(next13);
                                                        int i27 = c26284e.f73311a;
                                                        int i28 = c26284e.f73333f;
                                                        int i29 = c26284e.f73337j;
                                                        abstractC26286f.f73355f.add(new AbstractC26286f.C26302p(i27, c26284e.f73334g, c26284e.f73335h, c26383a4.m1996b()));
                                                        if (i29 != -1) {
                                                            abstractC26286f.f73354e = i29;
                                                        }
                                                        abstractC26286f.f73353d = i28;
                                                        abstractC26286f.f73351b = c26383a4;
                                                    }
                                                } else {
                                                    switch (next13.hashCode()) {
                                                        case -1249320806:
                                                            if (next13.equals(obj56)) {
                                                                z = false;
                                                                break;
                                                            }
                                                            z = true;
                                                            break;
                                                        case -1249320805:
                                                            if (next13.equals(obj55)) {
                                                                z = true;
                                                                break;
                                                            }
                                                            z = true;
                                                            break;
                                                        case -1225497657:
                                                            if (next13.equals(obj51)) {
                                                                z = true;
                                                                break;
                                                            }
                                                            z = true;
                                                            break;
                                                        case -1225497656:
                                                            if (next13.equals(obj50)) {
                                                                z = true;
                                                                break;
                                                            }
                                                            z = true;
                                                            break;
                                                        case -1225497655:
                                                            if (next13.equals(obj48)) {
                                                                z = true;
                                                                break;
                                                            }
                                                            z = true;
                                                            break;
                                                        case -1001078227:
                                                            if (next13.equals(obj49)) {
                                                                z = true;
                                                                break;
                                                            }
                                                            z = true;
                                                            break;
                                                        case -908189618:
                                                            if (next13.equals(obj69)) {
                                                                z = true;
                                                                break;
                                                            }
                                                            z = true;
                                                            break;
                                                        case -908189617:
                                                            if (next13.equals(obj53)) {
                                                                z = true;
                                                                break;
                                                            }
                                                            z = true;
                                                            break;
                                                        case -40300674:
                                                            if (next13.equals(obj57)) {
                                                                z = true;
                                                                break;
                                                            }
                                                            z = true;
                                                            break;
                                                        case -4379043:
                                                            if (next13.equals("elevation")) {
                                                                z = true;
                                                                break;
                                                            }
                                                            z = true;
                                                            break;
                                                        case 37232917:
                                                            if (next13.equals(obj58)) {
                                                                z = true;
                                                                break;
                                                            }
                                                            z = true;
                                                            break;
                                                        case 92909918:
                                                            if (next13.equals("alpha")) {
                                                                z = true;
                                                                break;
                                                            }
                                                            z = true;
                                                            break;
                                                        case 156108012:
                                                            if (next13.equals("waveOffset")) {
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
                                                            f = c26284e.f73342o;
                                                            break;
                                                        case true:
                                                            f = c26284e.f73343p;
                                                            break;
                                                        case true:
                                                            f = c26284e.f73346s;
                                                            break;
                                                        case true:
                                                            f = c26284e.f73347t;
                                                            break;
                                                        case true:
                                                            f = c26284e.f73348u;
                                                            break;
                                                        case true:
                                                            f = c26284e.f73336i;
                                                            break;
                                                        case true:
                                                            f = c26284e.f73344q;
                                                            break;
                                                        case true:
                                                            f = c26284e.f73345r;
                                                            break;
                                                        case true:
                                                            f = c26284e.f73340m;
                                                            break;
                                                        case true:
                                                            f = c26284e.f73339l;
                                                            break;
                                                        case true:
                                                            f = c26284e.f73341n;
                                                            break;
                                                        case true:
                                                            f = c26284e.f73338k;
                                                            break;
                                                        case true:
                                                            f = c26284e.f73335h;
                                                            break;
                                                        default:
                                                            f = Float.NaN;
                                                            break;
                                                    }
                                                    if (!Float.isNaN(f)) {
                                                        AbstractC26286f abstractC26286f2 = hashMap8.get(next13);
                                                        int i30 = c26284e.f73311a;
                                                        int i31 = c26284e.f73333f;
                                                        int i32 = c26284e.f73337j;
                                                        abstractC26286f2.f73355f.add(new AbstractC26286f.C26302p(i30, c26284e.f73334g, c26284e.f73335h, f));
                                                        if (i32 != -1) {
                                                            abstractC26286f2.f73354e = i32;
                                                        }
                                                        abstractC26286f2.f73353d = i31;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    it18 = it19;
                                    obj48 = obj67;
                                    obj55 = obj62;
                                    obj56 = obj61;
                                    obj53 = obj65;
                                    obj54 = obj66;
                                    obj57 = obj60;
                                    obj58 = obj59;
                                    obj50 = obj64;
                                    obj51 = obj63;
                                    f5 = f15;
                                    obj49 = obj68;
                                }
                                for (AbstractC26286f abstractC26286f3 : this.f73452y.values()) {
                                    abstractC26286f3.m2215c(f5);
                                }
                                return;
                            }
                            String str5 = strArr3[i24];
                            int i33 = 0;
                            double[] dArr6 = null;
                            double[][] dArr7 = null;
                            for (int i34 = 0; i34 < size; i34++) {
                                if (c26313pArr[i34].f73469k.containsKey(str5)) {
                                    double[][] dArr8 = dArr7;
                                    if (dArr7 == null) {
                                        dArr6 = new double[size];
                                        dArr8 = new double[size][c26313pArr[i34].f73469k.get(str5).m1994d()];
                                    }
                                    dArr6[i33] = c26313pArr[i34].f73461c;
                                    C26313p c26313p5 = c26313pArr[i34];
                                    double[] dArr9 = dArr8[i33];
                                    C26383a c26383a5 = c26313p5.f73469k.get(str5);
                                    if (c26383a5.m1994d() == 1) {
                                        dArr9[0] = c26383a5.m1996b();
                                        obj17 = obj45;
                                    } else {
                                        int m1994d = c26383a5.m1994d();
                                        c26383a5.m1995c(new float[m1994d]);
                                        int i35 = 0;
                                        int i36 = 0;
                                        while (true) {
                                            obj17 = obj45;
                                            if (i35 < m1994d) {
                                                dArr9[i36] = fArr[i35];
                                                i35++;
                                                i36++;
                                            }
                                        }
                                    }
                                    obj45 = obj17;
                                    i33++;
                                    dArr7 = dArr8;
                                }
                            }
                            i24++;
                            this.f73435h[i24] = AbstractC26271b.m2234a(this.f73430c, Arrays.copyOf(dArr6, i33), (double[][]) Arrays.copyOf(dArr7, i33));
                        }
                    }
                }
            }
        }
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C(" start: x: ");
        m8728C.append(this.f73431d.f73463e);
        m8728C.append(" y: ");
        m8728C.append(this.f73431d.f73464f);
        m8728C.append(" end: x: ");
        m8728C.append(this.f73432e.f73463e);
        m8728C.append(" y: ");
        m8728C.append(this.f73432e.f73464f);
        return m8728C.toString();
    }
}
