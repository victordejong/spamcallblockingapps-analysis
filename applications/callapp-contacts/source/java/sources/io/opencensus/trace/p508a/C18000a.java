package io.opencensus.trace.p508a;

import io.opencensus.trace.C18045s;
import io.opencensus.trace.p508a.AbstractC18004c;
import java.util.Map;
import java.util.Objects;
/* renamed from: io.opencensus.trace.a.a */
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/a/a.class */
final class C18000a extends AbstractC18004c.AbstractC18007b {

    /* renamed from: a */
    private final Map<Object, Integer> f62900a;

    /* renamed from: b */
    private final Map<C18045s.EnumC18046a, Integer> f62901b;

    public C18000a(Map<Object, Integer> map, Map<C18045s.EnumC18046a, Integer> map2) {
        Objects.requireNonNull(map, "Null numbersOfLatencySampledSpans");
        this.f62900a = map;
        Objects.requireNonNull(map2, "Null numbersOfErrorSampledSpans");
        this.f62901b = map2;
    }

    @Override // io.opencensus.trace.p508a.AbstractC18004c.AbstractC18007b
    /* renamed from: a */
    public final Map<Object, Integer> mo4557a() {
        return this.f62900a;
    }

    @Override // io.opencensus.trace.p508a.AbstractC18004c.AbstractC18007b
    /* renamed from: b */
    public final Map<C18045s.EnumC18046a, Integer> mo4556b() {
        return this.f62901b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC18004c.AbstractC18007b)) {
            return false;
        }
        AbstractC18004c.AbstractC18007b abstractC18007b = (AbstractC18004c.AbstractC18007b) obj;
        return this.f62900a.equals(abstractC18007b.mo4557a()) && this.f62901b.equals(abstractC18007b.mo4556b());
    }

    public final int hashCode() {
        return ((this.f62900a.hashCode() ^ 1000003) * 1000003) ^ this.f62901b.hashCode();
    }

    public final String toString() {
        return "PerSpanNameSummary{numbersOfLatencySampledSpans=" + this.f62900a + ", numbersOfErrorSampledSpans=" + this.f62901b + "}";
    }
}
