package p1727n3.p1909z;

import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: n3.z.q */
/* loaded from: classes-dex2jar.jar:n3/z/q.class */
public final class C27591q {

    /* renamed from: a */
    public final AbstractC27597r0 f77764a;

    /* renamed from: b */
    public final AbstractC27597r0 f77765b;

    /* renamed from: c */
    public final AbstractC27597r0 f77766c;

    /* renamed from: d */
    public final C27600s0 f77767d;

    /* renamed from: e */
    public final C27600s0 f77768e;

    static {
        C27600s0 c27600s0 = C27600s0.f77790e;
        l.e(C27600s0.f77789d, "source");
    }

    public C27591q(AbstractC27597r0 abstractC27597r0, AbstractC27597r0 abstractC27597r02, AbstractC27597r0 abstractC27597r03, C27600s0 c27600s0, C27600s0 c27600s02) {
        l.e(abstractC27597r0, "refresh");
        l.e(abstractC27597r02, "prepend");
        l.e(abstractC27597r03, "append");
        l.e(c27600s0, "source");
        this.f77764a = abstractC27597r0;
        this.f77765b = abstractC27597r02;
        this.f77766c = abstractC27597r03;
        this.f77767d = c27600s0;
        this.f77768e = c27600s02;
    }

    public /* synthetic */ C27591q(AbstractC27597r0 abstractC27597r0, AbstractC27597r0 abstractC27597r02, AbstractC27597r0 abstractC27597r03, C27600s0 c27600s0, C27600s0 c27600s02, int i) {
        this(abstractC27597r0, abstractC27597r02, abstractC27597r03, c27600s0, null);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!l.a(C27591q.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        Objects.requireNonNull(obj, "null cannot be cast to non-null type androidx.paging.CombinedLoadStates");
        C27591q c27591q = (C27591q) obj;
        return !(l.a(this.f77764a, c27591q.f77764a) ^ true) && !(l.a(this.f77765b, c27591q.f77765b) ^ true) && !(l.a(this.f77766c, c27591q.f77766c) ^ true) && !(l.a(this.f77767d, c27591q.f77767d) ^ true) && !(l.a(this.f77768e, c27591q.f77768e) ^ true);
    }

    public int hashCode() {
        int hashCode = this.f77764a.hashCode();
        int hashCode2 = this.f77765b.hashCode();
        int hashCode3 = this.f77766c.hashCode();
        int hashCode4 = this.f77767d.hashCode();
        C27600s0 c27600s0 = this.f77768e;
        return ((hashCode4 + ((hashCode3 + ((hashCode2 + (hashCode * 31)) * 31)) * 31)) * 31) + (c27600s0 != null ? c27600s0.hashCode() : 0);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CombinedLoadStates(refresh=");
        m8728C.append(this.f77764a);
        m8728C.append(", prepend=");
        m8728C.append(this.f77765b);
        m8728C.append(", append=");
        m8728C.append(this.f77766c);
        m8728C.append(", ");
        m8728C.append("source=");
        m8728C.append(this.f77767d);
        m8728C.append(", mediator=");
        m8728C.append(this.f77768e);
        m8728C.append(')');
        return m8728C.toString();
    }
}
