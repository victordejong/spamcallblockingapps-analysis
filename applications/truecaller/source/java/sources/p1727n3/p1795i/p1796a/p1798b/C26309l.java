package p1727n3.p1795i.p1796a.p1798b;

import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Objects;
import p1727n3.p1795i.p1796a.p1797a.C26273c;
import p1727n3.p1795i.p1796a.p1798b.AbstractC26318r;
import p1727n3.p1795i.p1799b.p1800h.C26363d;
import p1727n3.p1795i.p1802c.C26383a;
import p1727n3.p1795i.p1802c.C26389d;
/* renamed from: n3.i.a.b.l */
/* loaded from: classes-dex2jar.jar:n3/i/a/b/l.class */
public class C26309l implements Comparable<C26309l> {

    /* renamed from: c */
    public int f73412c;

    /* renamed from: a */
    public float f73410a = 1.0f;

    /* renamed from: b */
    public int f73411b = 0;

    /* renamed from: d */
    public float f73413d = 0.0f;

    /* renamed from: e */
    public float f73414e = 0.0f;

    /* renamed from: f */
    public float f73415f = 0.0f;

    /* renamed from: g */
    public float f73416g = 0.0f;

    /* renamed from: h */
    public float f73417h = 1.0f;

    /* renamed from: i */
    public float f73418i = 1.0f;

    /* renamed from: j */
    public float f73419j = Float.NaN;

    /* renamed from: k */
    public float f73420k = Float.NaN;

    /* renamed from: l */
    public float f73421l = 0.0f;

    /* renamed from: m */
    public float f73422m = 0.0f;

    /* renamed from: n */
    public float f73423n = 0.0f;

    /* renamed from: o */
    public float f73424o = Float.NaN;

    /* renamed from: p */
    public float f73425p = Float.NaN;

    /* renamed from: q */
    public LinkedHashMap<String, C26383a> f73426q = new LinkedHashMap<>();

    /* renamed from: a */
    public void m2206a(HashMap<String, AbstractC26318r> hashMap, int i) {
        for (String str : hashMap.keySet()) {
            AbstractC26318r abstractC26318r = hashMap.get(str);
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
                    abstractC26318r.mo2169b(i, Float.isNaN(this.f73415f) ? 0.0f : this.f73415f);
                    break;
                case true:
                    abstractC26318r.mo2169b(i, Float.isNaN(this.f73416g) ? 0.0f : this.f73416g);
                    break;
                case true:
                    abstractC26318r.mo2169b(i, Float.isNaN(this.f73421l) ? 0.0f : this.f73421l);
                    break;
                case true:
                    abstractC26318r.mo2169b(i, Float.isNaN(this.f73422m) ? 0.0f : this.f73422m);
                    break;
                case true:
                    abstractC26318r.mo2169b(i, Float.isNaN(this.f73423n) ? 0.0f : this.f73423n);
                    break;
                case true:
                    abstractC26318r.mo2169b(i, Float.isNaN(this.f73425p) ? 0.0f : this.f73425p);
                    break;
                case true:
                    if (!Float.isNaN(this.f73417h)) {
                        f = this.f73417h;
                    }
                    abstractC26318r.mo2169b(i, f);
                    break;
                case true:
                    if (!Float.isNaN(this.f73418i)) {
                        f = this.f73418i;
                    }
                    abstractC26318r.mo2169b(i, f);
                    break;
                case true:
                    abstractC26318r.mo2169b(i, Float.isNaN(this.f73419j) ? 0.0f : this.f73419j);
                    break;
                case true:
                    abstractC26318r.mo2169b(i, Float.isNaN(this.f73420k) ? 0.0f : this.f73420k);
                    break;
                case true:
                    abstractC26318r.mo2169b(i, Float.isNaN(this.f73414e) ? 0.0f : this.f73414e);
                    break;
                case true:
                    abstractC26318r.mo2169b(i, Float.isNaN(this.f73413d) ? 0.0f : this.f73413d);
                    break;
                case true:
                    abstractC26318r.mo2169b(i, Float.isNaN(this.f73424o) ? 0.0f : this.f73424o);
                    break;
                case true:
                    if (!Float.isNaN(this.f73410a)) {
                        f = this.f73410a;
                    }
                    abstractC26318r.mo2169b(i, f);
                    break;
                default:
                    if (str.startsWith("CUSTOM")) {
                        String str2 = str.split(",")[1];
                        if (this.f73426q.containsKey(str2)) {
                            C26383a c26383a = this.f73426q.get(str2);
                            if (abstractC26318r instanceof AbstractC26318r.C26320b) {
                                ((AbstractC26318r.C26320b) abstractC26318r).f73518f.append(i, c26383a);
                                break;
                            } else {
                                String str3 = str + " splineSet not a CustomSet frame = " + i + ", value" + c26383a.m1996b() + abstractC26318r;
                                break;
                            }
                        } else {
                            break;
                        }
                    } else {
                        break;
                    }
            }
        }
    }

    /* renamed from: c */
    public final boolean m2205c(float f, float f2) {
        boolean z = true;
        if (Float.isNaN(f) || Float.isNaN(f2)) {
            return Float.isNaN(f) != Float.isNaN(f2);
        }
        if (Math.abs(f - f2) <= 1.0E-6f) {
            z = false;
        }
        return z;
    }

    @Override // java.lang.Comparable
    public int compareTo(C26309l c26309l) {
        Objects.requireNonNull(c26309l);
        return Float.compare(0.0f, 0.0f);
    }

    /* renamed from: d */
    public void m2204d(C26363d c26363d, C26389d c26389d, int i) {
        c26363d.m2061x();
        c26363d.m2060y();
        C26389d.C26390a m1961j = c26389d.m1961j(i);
        C26389d.C26393d c26393d = m1961j.f73889b;
        int i2 = c26393d.f73967c;
        this.f73411b = i2;
        int i3 = c26393d.f73966b;
        this.f73412c = i3;
        this.f73410a = (i3 == 0 || i2 != 0) ? c26393d.f73968d : 0.0f;
        C26389d.C26394e c26394e = m1961j.f73892e;
        boolean z = c26394e.f73982l;
        this.f73413d = c26394e.f73983m;
        this.f73414e = c26394e.f73972b;
        this.f73415f = c26394e.f73973c;
        this.f73416g = c26394e.f73974d;
        this.f73417h = c26394e.f73975e;
        this.f73418i = c26394e.f73976f;
        this.f73419j = c26394e.f73977g;
        this.f73420k = c26394e.f73978h;
        this.f73421l = c26394e.f73979i;
        this.f73422m = c26394e.f73980j;
        this.f73423n = c26394e.f73981k;
        C26273c.m2233c(m1961j.f73890c.f73960c);
        this.f73424o = m1961j.f73890c.f73964g;
        this.f73425p = m1961j.f73889b.f73969e;
        for (String str : m1961j.f73893f.keySet()) {
            C26383a c26383a = m1961j.f73893f.get(str);
            if (c26383a.f73846b != C26383a.EnumC26384a.STRING_TYPE) {
                this.f73426q.put(str, c26383a);
            }
        }
    }
}
