package p459j.p460a.p572v0.p573c;

import java.util.List;
import p081h.p203i.p384e.p385v.AbstractC10120c;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.v0.c.d */
/* loaded from: classes3-dex2jar.jar:j/a/v0/c/d.class */
public final class C13706d {
    @AbstractC10120c("scores")

    /* renamed from: a */
    public final List<C13705c> f30776a;

    public C13706d(List<C13705c> list) {
        C15149k.m377b(list, "scores");
        this.f30776a = list;
    }

    /* renamed from: a */
    public final List<C13705c> m3623a() {
        return this.f30776a;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof C13706d) && C15149k.m384a(this.f30776a, ((C13706d) obj).f30776a);
        }
        return true;
    }

    public int hashCode() {
        List<C13705c> list = this.f30776a;
        return list != null ? list.hashCode() : 0;
    }

    public String toString() {
        return "GoogleEvaluateScores(scores=" + this.f30776a + ")";
    }
}
