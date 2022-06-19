package io.opencensus.trace.p335u;

import io.opencensus.trace.Status;
import io.opencensus.trace.p335u.AbstractC9540c;
import java.util.Map;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: io.opencensus.trace.u.a */
/* loaded from: classes2-dex2jar.jar:io/opencensus/trace/u/a.class */
public final class C9536a extends AbstractC9540c.AbstractC9543c {

    /* renamed from: a */
    private final Map<?, Integer> f40473a;

    /* renamed from: b */
    private final Map<Status.CanonicalCode, Integer> f40474b;

    public C9536a(Map<?, Integer> map, Map<Status.CanonicalCode, Integer> map2) {
        Objects.requireNonNull(map, "Null numbersOfLatencySampledSpans");
        this.f40473a = map;
        Objects.requireNonNull(map2, "Null numbersOfErrorSampledSpans");
        this.f40474b = map2;
    }

    @Override // io.opencensus.trace.p335u.AbstractC9540c.AbstractC9543c
    /* renamed from: b */
    public Map<Status.CanonicalCode, Integer> mo385b() {
        return this.f40474b;
    }

    @Override // io.opencensus.trace.p335u.AbstractC9540c.AbstractC9543c
    /* renamed from: c */
    public Map<?, Integer> mo384c() {
        return this.f40473a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC9540c.AbstractC9543c)) {
            return false;
        }
        AbstractC9540c.AbstractC9543c abstractC9543c = (AbstractC9540c.AbstractC9543c) obj;
        if (!this.f40473a.equals(abstractC9543c.mo384c()) || !this.f40474b.equals(abstractC9543c.mo385b())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((this.f40473a.hashCode() ^ 1000003) * 1000003) ^ this.f40474b.hashCode();
    }

    public String toString() {
        return "PerSpanNameSummary{numbersOfLatencySampledSpans=" + this.f40473a + ", numbersOfErrorSampledSpans=" + this.f40474b + "}";
    }
}
