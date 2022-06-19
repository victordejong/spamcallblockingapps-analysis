package p1727n3.p1909z;

import p1727n3.p1909z.AbstractC27597r0;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.i;
import s1.z.c.l;
/* renamed from: n3.z.s0 */
/* loaded from: classes-dex2jar.jar:n3/z/s0.class */
public final class C27600s0 {

    /* renamed from: d */
    public static final C27600s0 f77789d;

    /* renamed from: e */
    public static final C27600s0 f77790e = null;

    /* renamed from: a */
    public final AbstractC27597r0 f77791a;

    /* renamed from: b */
    public final AbstractC27597r0 f77792b;

    /* renamed from: c */
    public final AbstractC27597r0 f77793c;

    static {
        AbstractC27597r0.c cVar = AbstractC27597r0.c.c;
        f77789d = new C27600s0(cVar, cVar, cVar);
    }

    public C27600s0(AbstractC27597r0 abstractC27597r0, AbstractC27597r0 abstractC27597r02, AbstractC27597r0 abstractC27597r03) {
        l.e(abstractC27597r0, "refresh");
        l.e(abstractC27597r02, "prepend");
        l.e(abstractC27597r03, "append");
        this.f77791a = abstractC27597r0;
        this.f77792b = abstractC27597r02;
        this.f77793c = abstractC27597r03;
    }

    /* renamed from: a */
    public static C27600s0 m30a(C27600s0 c27600s0, AbstractC27597r0 abstractC27597r0, AbstractC27597r0 abstractC27597r02, AbstractC27597r0 abstractC27597r03, int i) {
        if ((i & 1) != 0) {
            abstractC27597r0 = c27600s0.f77791a;
        }
        if ((i & 2) != 0) {
            abstractC27597r02 = c27600s0.f77792b;
        }
        if ((i & 4) != 0) {
            abstractC27597r03 = c27600s0.f77793c;
        }
        l.e(abstractC27597r0, "refresh");
        l.e(abstractC27597r02, "prepend");
        l.e(abstractC27597r03, "append");
        return new C27600s0(abstractC27597r0, abstractC27597r02, abstractC27597r03);
    }

    /* renamed from: b */
    public final AbstractC27597r0 m29b(EnumC27601t0 enumC27601t0) {
        AbstractC27597r0 abstractC27597r0;
        l.e(enumC27601t0, "loadType");
        int ordinal = enumC27601t0.ordinal();
        if (ordinal == 0) {
            abstractC27597r0 = this.f77791a;
        } else if (ordinal == 1) {
            abstractC27597r0 = this.f77792b;
        } else if (ordinal != 2) {
            throw new i();
        } else {
            abstractC27597r0 = this.f77793c;
        }
        return abstractC27597r0;
    }

    /* renamed from: c */
    public final C27600s0 m28c(EnumC27601t0 enumC27601t0, AbstractC27597r0 abstractC27597r0) {
        C27600s0 c27600s0;
        l.e(enumC27601t0, "loadType");
        l.e(abstractC27597r0, "newState");
        int ordinal = enumC27601t0.ordinal();
        if (ordinal == 0) {
            c27600s0 = m30a(this, abstractC27597r0, null, null, 6);
        } else if (ordinal == 1) {
            c27600s0 = m30a(this, null, abstractC27597r0, null, 5);
        } else if (ordinal != 2) {
            throw new i();
        } else {
            c27600s0 = m30a(this, null, null, abstractC27597r0, 3);
        }
        return c27600s0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C27600s0)) {
                return false;
            }
            C27600s0 c27600s0 = (C27600s0) obj;
            return l.a(this.f77791a, c27600s0.f77791a) && l.a(this.f77792b, c27600s0.f77792b) && l.a(this.f77793c, c27600s0.f77793c);
        }
        return true;
    }

    public int hashCode() {
        AbstractC27597r0 abstractC27597r0 = this.f77791a;
        int i = 0;
        int hashCode = abstractC27597r0 != null ? abstractC27597r0.hashCode() : 0;
        AbstractC27597r0 abstractC27597r02 = this.f77792b;
        int hashCode2 = abstractC27597r02 != null ? abstractC27597r02.hashCode() : 0;
        AbstractC27597r0 abstractC27597r03 = this.f77793c;
        if (abstractC27597r03 != null) {
            i = abstractC27597r03.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("LoadStates(refresh=");
        m8728C.append(this.f77791a);
        m8728C.append(", prepend=");
        m8728C.append(this.f77792b);
        m8728C.append(", append=");
        m8728C.append(this.f77793c);
        m8728C.append(")");
        return m8728C.toString();
    }
}
