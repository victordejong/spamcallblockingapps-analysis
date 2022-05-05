package p459j.p460a.p576w.p578o;

import java.util.List;
import p081h.p203i.p384e.p385v.AbstractC10120c;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.w.o.g */
/* loaded from: classes2-dex2jar.jar:j/a/w/o/g.class */
public final class C13800g {
    @AbstractC10120c("plans")

    /* renamed from: a */
    public final List<C13799f> f30989a;

    /* renamed from: a */
    public final List<C13799f> m3423a() {
        return this.f30989a;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof C13800g) && C15149k.m384a(this.f30989a, ((C13800g) obj).f30989a);
        }
        return true;
    }

    public int hashCode() {
        List<C13799f> list = this.f30989a;
        return list != null ? list.hashCode() : 0;
    }

    public String toString() {
        return "Plans(planList=" + this.f30989a + ")";
    }
}
