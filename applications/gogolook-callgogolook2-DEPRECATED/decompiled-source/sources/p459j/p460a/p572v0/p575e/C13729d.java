package p459j.p460a.p572v0.p575e;

import p081h.p203i.p384e.C10107m;
import p081h.p203i.p384e.p385v.AbstractC10120c;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.v0.e.d */
/* loaded from: classes3-dex2jar.jar:j/a/v0/e/d.class */
public final class C13729d {
    @AbstractC10120c("source")

    /* renamed from: a */
    public final String f30827a;
    @AbstractC10120c("result")

    /* renamed from: b */
    public final C10107m f30828b;

    /* renamed from: a */
    public final C10107m m3580a() {
        return this.f30828b;
    }

    /* renamed from: b */
    public final String m3579b() {
        return this.f30827a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C13729d)) {
            return false;
        }
        C13729d dVar = (C13729d) obj;
        return C15149k.m384a((Object) this.f30827a, (Object) dVar.f30827a) && C15149k.m384a(this.f30828b, dVar.f30828b);
    }

    public int hashCode() {
        String str = this.f30827a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        C10107m mVar = this.f30828b;
        if (mVar != null) {
            i = mVar.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        return "UrlScanSourceResult(source=" + this.f30827a + ", result=" + this.f30828b + ")";
    }
}
