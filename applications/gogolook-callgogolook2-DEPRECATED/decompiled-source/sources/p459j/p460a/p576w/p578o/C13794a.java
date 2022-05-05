package p459j.p460a.p576w.p578o;

import p081h.p203i.p384e.p385v.AbstractC10120c;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.w.o.a */
/* loaded from: classes2-dex2jar.jar:j/a/w/o/a.class */
public final class C13794a {
    @AbstractC10120c("cancelSurveyReason")

    /* renamed from: a */
    public final Integer f30965a;
    @AbstractC10120c("userInputCancelReason")

    /* renamed from: b */
    public final String f30966b;

    public C13794a() {
        this(null, null, 3, null);
    }

    public C13794a(Integer num, String str) {
        this.f30965a = num;
        this.f30966b = str;
    }

    public /* synthetic */ C13794a(Integer num, String str, int i, C15145g gVar) {
        this((i & 1) != 0 ? null : num, (i & 2) != 0 ? null : str);
    }

    /* renamed from: a */
    public final Integer m3444a() {
        return this.f30965a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C13794a)) {
            return false;
        }
        C13794a aVar = (C13794a) obj;
        return C15149k.m384a(this.f30965a, aVar.f30965a) && C15149k.m384a((Object) this.f30966b, (Object) aVar.f30966b);
    }

    public int hashCode() {
        Integer num = this.f30965a;
        int i = 0;
        int hashCode = num != null ? num.hashCode() : 0;
        String str = this.f30966b;
        if (str != null) {
            i = str.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        return "CancelSurveyResult(cancelSurveyReason=" + this.f30965a + ", userInputCancelReason=" + this.f30966b + ")";
    }
}
