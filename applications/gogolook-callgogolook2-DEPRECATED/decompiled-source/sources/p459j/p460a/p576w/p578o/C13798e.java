package p459j.p460a.p576w.p578o;

import p081h.p203i.p384e.p385v.AbstractC10120c;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.w.o.e */
/* loaded from: classes2-dex2jar.jar:j/a/w/o/e.class */
public final class C13798e {
    @AbstractC10120c("product_id")

    /* renamed from: a */
    public final String f30981a;
    @AbstractC10120c("token")

    /* renamed from: b */
    public final String f30982b;

    public C13798e(String str, String str2) {
        C15149k.m377b(str, "productId");
        C15149k.m377b(str2, "token");
        this.f30981a = str;
        this.f30982b = str2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C13798e)) {
            return false;
        }
        C13798e eVar = (C13798e) obj;
        return C15149k.m384a((Object) this.f30981a, (Object) eVar.f30981a) && C15149k.m384a((Object) this.f30982b, (Object) eVar.f30982b);
    }

    public int hashCode() {
        String str = this.f30981a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f30982b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        return "IapTokenVerify(productId=" + this.f30981a + ", token=" + this.f30982b + ")";
    }
}
