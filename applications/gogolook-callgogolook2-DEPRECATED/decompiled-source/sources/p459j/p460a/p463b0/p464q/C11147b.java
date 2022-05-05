package p459j.p460a.p463b0.p464q;

import p081h.p160h.p161a.p162h.AbstractC6207d;
import p459j.p460a.p511h.AbstractC12391a;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.b0.q.b */
/* loaded from: classes2-dex2jar.jar:j/a/b0/q/b.class */
public final class C11147b implements AbstractC12391a {

    /* renamed from: a */
    public final int f25045a;

    /* renamed from: b */
    public final AbstractC6207d f25046b;

    public C11147b(int i, AbstractC6207d dVar) {
        C15149k.m377b(dVar, "adObject");
        this.f25045a = i;
        this.f25046b = dVar;
    }

    public /* synthetic */ C11147b(int i, AbstractC6207d dVar, int i2, C15145g gVar) {
        this((i2 & 1) != 0 ? 4 : i, dVar);
    }

    /* renamed from: a */
    public final AbstractC6207d m10186a() {
        return this.f25046b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C11147b)) {
            return false;
        }
        C11147b bVar = (C11147b) obj;
        return (getViewType() == bVar.getViewType()) && C15149k.m384a(this.f25046b, bVar.f25046b);
    }

    @Override // p459j.p460a.p511h.AbstractC12391a
    public int getViewType() {
        return this.f25045a;
    }

    public int hashCode() {
        int hashCode;
        hashCode = Integer.valueOf(getViewType()).hashCode();
        AbstractC6207d dVar = this.f25046b;
        return (hashCode * 31) + (dVar != null ? dVar.hashCode() : 0);
    }

    public String toString() {
        return "AdViewData(viewType=" + getViewType() + ", adObject=" + this.f25046b + ")";
    }
}
