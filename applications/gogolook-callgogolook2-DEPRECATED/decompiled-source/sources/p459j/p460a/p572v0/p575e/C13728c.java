package p459j.p460a.p572v0.p575e;

import java.util.List;
import p081h.p203i.p384e.p385v.AbstractC10120c;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.v0.e.c */
/* loaded from: classes3-dex2jar.jar:j/a/v0/e/c.class */
public final class C13728c {
    @AbstractC10120c("result")

    /* renamed from: a */
    public final List<C13729d> f30826a;

    /* renamed from: a */
    public final List<C13729d> m3581a() {
        return this.f30826a;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof C13728c) && C15149k.m384a(this.f30826a, ((C13728c) obj).f30826a);
        }
        return true;
    }

    public int hashCode() {
        List<C13729d> list = this.f30826a;
        return list != null ? list.hashCode() : 0;
    }

    public String toString() {
        return "UrlScanResponse(result=" + this.f30826a + ")";
    }
}
