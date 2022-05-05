package p459j.p460a.p572v0.p573c;

import p081h.p203i.p384e.p385v.AbstractC10120c;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.v0.c.c */
/* loaded from: classes3-dex2jar.jar:j/a/v0/c/c.class */
public final class C13705c {
    @AbstractC10120c("threatType")

    /* renamed from: a */
    public final String f30774a;
    @AbstractC10120c("confidenceLevel")

    /* renamed from: b */
    public final String f30775b;

    /* renamed from: a */
    public final String m3624a() {
        return this.f30775b;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C13705c)) {
            return false;
        }
        C13705c cVar = (C13705c) obj;
        return C15149k.m384a((Object) this.f30774a, (Object) cVar.f30774a) && C15149k.m384a((Object) this.f30775b, (Object) cVar.f30775b);
    }

    public int hashCode() {
        String str = this.f30774a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f30775b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        return "GoogleEvaluateScore(threatType=" + this.f30774a + ", confidenceLevel=" + this.f30775b + ")";
    }
}
