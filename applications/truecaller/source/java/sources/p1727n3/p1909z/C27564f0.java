package p1727n3.p1909z;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.i;
import s1.z.c.l;
/* renamed from: n3.z.f0 */
/* loaded from: classes-dex2jar.jar:n3/z/f0.class */
public final class C27564f0 {

    /* renamed from: a */
    public final int f77645a;

    /* renamed from: b */
    public final AbstractC27573i3 f77646b;

    public C27564f0(int i, AbstractC27573i3 abstractC27573i3) {
        l.e(abstractC27573i3, "hint");
        this.f77645a = i;
        this.f77646b = abstractC27573i3;
    }

    /* renamed from: a */
    public final int m100a(EnumC27601t0 enumC27601t0) {
        int i;
        l.e(enumC27601t0, "loadType");
        int ordinal = enumC27601t0.ordinal();
        if (ordinal != 0) {
            if (ordinal == 1) {
                i = this.f77646b.f77697a;
            } else if (ordinal != 2) {
                throw new i();
            } else {
                i = this.f77646b.f77698b;
            }
            return i;
        }
        throw new IllegalArgumentException("Cannot get presentedItems for loadType: REFRESH");
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C27564f0)) {
                return false;
            }
            C27564f0 c27564f0 = (C27564f0) obj;
            return this.f77645a == c27564f0.f77645a && l.a(this.f77646b, c27564f0.f77646b);
        }
        return true;
    }

    public int hashCode() {
        int i = this.f77645a;
        AbstractC27573i3 abstractC27573i3 = this.f77646b;
        return (i * 31) + (abstractC27573i3 != null ? abstractC27573i3.hashCode() : 0);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("GenerationalViewportHint(generationId=");
        m8728C.append(this.f77645a);
        m8728C.append(", hint=");
        m8728C.append(this.f77646b);
        m8728C.append(")");
        return m8728C.toString();
    }
}
