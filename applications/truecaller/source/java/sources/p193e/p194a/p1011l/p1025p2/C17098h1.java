package p193e.p194a.p1011l.p1025p2;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.l.p2.h1 */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/h1.class */
public final class C17098h1 {

    /* renamed from: a */
    public final C17118j1 f47997a;

    /* renamed from: b */
    public final C17118j1 f47998b;

    public C17098h1() {
        this.f47997a = null;
        this.f47998b = null;
    }

    public C17098h1(C17118j1 c17118j1, C17118j1 c17118j12) {
        this.f47997a = c17118j1;
        this.f47998b = c17118j12;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C17098h1)) {
                return false;
            }
            C17098h1 c17098h1 = (C17098h1) obj;
            return l.a(this.f47997a, c17098h1.f47997a) && l.a(this.f47998b, c17098h1.f47998b);
        }
        return true;
    }

    public int hashCode() {
        C17118j1 c17118j1 = this.f47997a;
        int i = 0;
        int hashCode = c17118j1 != null ? c17118j1.hashCode() : 0;
        C17118j1 c17118j12 = this.f47998b;
        if (c17118j12 != null) {
            i = c17118j12.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("PremiumTheme(premium=");
        m8728C.append(this.f47997a);
        m8728C.append(", gold=");
        m8728C.append(this.f47998b);
        m8728C.append(")");
        return m8728C.toString();
    }
}
