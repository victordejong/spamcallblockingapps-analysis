package p193e.p194a.p1011l.p1025p2;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
import w3.c.a.a.a.h;
/* renamed from: e.a.l.p2.y0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/y0.class */
public final class C17207y0 {

    /* renamed from: a */
    public final boolean f48314a;

    /* renamed from: b */
    public final boolean f48315b;

    /* renamed from: c */
    public final boolean f48316c;

    /* renamed from: d */
    public final C17194u0 f48317d;

    /* renamed from: e */
    public final C17203x f48318e;

    public C17207y0(C17194u0 c17194u0, C17203x c17203x) {
        l.e(c17194u0, "oldState");
        l.e(c17203x, "newPremium");
        this.f48317d = c17194u0;
        this.f48318e = c17203x;
        boolean z = c17194u0.f48242a;
        this.f48314a = z && !(c17203x.f48290j ^ true);
        boolean z2 = false;
        if (!z) {
            z2 = false;
            if (!c17203x.f48290j) {
                z2 = true;
            }
        }
        this.f48315b = z2;
        this.f48316c = !h.f(c17194u0.f48243b, c17203x.f48287g);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C17207y0)) {
                return false;
            }
            C17207y0 c17207y0 = (C17207y0) obj;
            return l.a(this.f48317d, c17207y0.f48317d) && l.a(this.f48318e, c17207y0.f48318e);
        }
        return true;
    }

    public int hashCode() {
        C17194u0 c17194u0 = this.f48317d;
        int i = 0;
        int hashCode = c17194u0 != null ? c17194u0.hashCode() : 0;
        C17203x c17203x = this.f48318e;
        if (c17203x != null) {
            i = c17203x.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PremiumStatusUpdate(oldState=");
        m8728C.append(this.f48317d);
        m8728C.append(", newPremium=");
        m8728C.append(this.f48318e);
        m8728C.append(")");
        return m8728C.toString();
    }
}
