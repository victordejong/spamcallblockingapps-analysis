package p193e.p194a.p1011l.p1012a;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.l.a.h */
/* loaded from: classes12-dex2jar.jar:e/a/l/a/h.class */
public final class C16578h {

    /* renamed from: a */
    public final C16570e f46578a;

    /* renamed from: b */
    public final C16570e f46579b;

    /* renamed from: c */
    public final C16570e f46580c;

    /* renamed from: d */
    public final C16570e f46581d;

    /* renamed from: e */
    public final C16570e f46582e;

    /* renamed from: f */
    public final C16570e f46583f;

    /* renamed from: g */
    public final C16570e f46584g;

    /* renamed from: h */
    public final C16570e f46585h;

    /* renamed from: i */
    public final C16570e f46586i;

    /* renamed from: j */
    public final C16570e f46587j;

    /* renamed from: k */
    public final C16570e f46588k;

    /* renamed from: l */
    public final C16570e f46589l;

    public C16578h(C16570e c16570e, C16570e c16570e2, C16570e c16570e3, C16570e c16570e4, C16570e c16570e5, C16570e c16570e6, C16570e c16570e7, C16570e c16570e8, C16570e c16570e9, C16570e c16570e10, C16570e c16570e11, C16570e c16570e12) {
        l.e(c16570e, "monthlySubscription");
        l.e(c16570e2, "quarterlySubscription");
        l.e(c16570e3, "halfYearlySubscription");
        l.e(c16570e4, "yearlySubscription");
        l.e(c16570e5, "welcomeSubscription");
        l.e(c16570e6, "goldSubscription");
        l.e(c16570e7, "yearlyConsumable");
        l.e(c16570e8, "goldYearlyConsumable");
        l.e(c16570e9, "halfYearlyConsumable");
        l.e(c16570e10, "quarterlyConsumable");
        l.e(c16570e11, "monthlyConsumable");
        l.e(c16570e12, "winback");
        this.f46578a = c16570e;
        this.f46579b = c16570e2;
        this.f46580c = c16570e3;
        this.f46581d = c16570e4;
        this.f46582e = c16570e5;
        this.f46583f = c16570e6;
        this.f46584g = c16570e7;
        this.f46585h = c16570e8;
        this.f46586i = c16570e9;
        this.f46587j = c16570e10;
        this.f46588k = c16570e11;
        this.f46589l = c16570e12;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C16578h)) {
                return false;
            }
            C16578h c16578h = (C16578h) obj;
            return l.a(this.f46578a, c16578h.f46578a) && l.a(this.f46579b, c16578h.f46579b) && l.a(this.f46580c, c16578h.f46580c) && l.a(this.f46581d, c16578h.f46581d) && l.a(this.f46582e, c16578h.f46582e) && l.a(this.f46583f, c16578h.f46583f) && l.a(this.f46584g, c16578h.f46584g) && l.a(this.f46585h, c16578h.f46585h) && l.a(this.f46586i, c16578h.f46586i) && l.a(this.f46587j, c16578h.f46587j) && l.a(this.f46588k, c16578h.f46588k) && l.a(this.f46589l, c16578h.f46589l);
        }
        return true;
    }

    public int hashCode() {
        C16570e c16570e = this.f46578a;
        int i = 0;
        int hashCode = c16570e != null ? c16570e.hashCode() : 0;
        C16570e c16570e2 = this.f46579b;
        int hashCode2 = c16570e2 != null ? c16570e2.hashCode() : 0;
        C16570e c16570e3 = this.f46580c;
        int hashCode3 = c16570e3 != null ? c16570e3.hashCode() : 0;
        C16570e c16570e4 = this.f46581d;
        int hashCode4 = c16570e4 != null ? c16570e4.hashCode() : 0;
        C16570e c16570e5 = this.f46582e;
        int hashCode5 = c16570e5 != null ? c16570e5.hashCode() : 0;
        C16570e c16570e6 = this.f46583f;
        int hashCode6 = c16570e6 != null ? c16570e6.hashCode() : 0;
        C16570e c16570e7 = this.f46584g;
        int hashCode7 = c16570e7 != null ? c16570e7.hashCode() : 0;
        C16570e c16570e8 = this.f46585h;
        int hashCode8 = c16570e8 != null ? c16570e8.hashCode() : 0;
        C16570e c16570e9 = this.f46586i;
        int hashCode9 = c16570e9 != null ? c16570e9.hashCode() : 0;
        C16570e c16570e10 = this.f46587j;
        int hashCode10 = c16570e10 != null ? c16570e10.hashCode() : 0;
        C16570e c16570e11 = this.f46588k;
        int hashCode11 = c16570e11 != null ? c16570e11.hashCode() : 0;
        C16570e c16570e12 = this.f46589l;
        if (c16570e12 != null) {
            i = c16570e12.hashCode();
        }
        return (((((((((((((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + hashCode5) * 31) + hashCode6) * 31) + hashCode7) * 31) + hashCode8) * 31) + hashCode9) * 31) + hashCode10) * 31) + hashCode11) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("DebugSubscriptions(monthlySubscription=");
        m8728C.append(this.f46578a);
        m8728C.append(", quarterlySubscription=");
        m8728C.append(this.f46579b);
        m8728C.append(", halfYearlySubscription=");
        m8728C.append(this.f46580c);
        m8728C.append(", yearlySubscription=");
        m8728C.append(this.f46581d);
        m8728C.append(", welcomeSubscription=");
        m8728C.append(this.f46582e);
        m8728C.append(", goldSubscription=");
        m8728C.append(this.f46583f);
        m8728C.append(", yearlyConsumable=");
        m8728C.append(this.f46584g);
        m8728C.append(", goldYearlyConsumable=");
        m8728C.append(this.f46585h);
        m8728C.append(", halfYearlyConsumable=");
        m8728C.append(this.f46586i);
        m8728C.append(", quarterlyConsumable=");
        m8728C.append(this.f46587j);
        m8728C.append(", monthlyConsumable=");
        m8728C.append(this.f46588k);
        m8728C.append(", winback=");
        m8728C.append(this.f46589l);
        m8728C.append(")");
        return m8728C.toString();
    }
}
