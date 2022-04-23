package io.opencensus.trace.a;

import io.opencensus.trace.a.c;
import io.opencensus.trace.s;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/a/a.class */
final class a extends c.b {

    /* renamed from: a  reason: collision with root package name */
    private final Map<Object, Integer> f36283a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<s.a, Integer> f36284b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Map<Object, Integer> map, Map<s.a, Integer> map2) {
        Objects.requireNonNull(map, "Null numbersOfLatencySampledSpans");
        this.f36283a = map;
        Objects.requireNonNull(map2, "Null numbersOfErrorSampledSpans");
        this.f36284b = map2;
    }

    @Override // io.opencensus.trace.a.c.b
    public final Map<Object, Integer> a() {
        return this.f36283a;
    }

    @Override // io.opencensus.trace.a.c.b
    public final Map<s.a, Integer> b() {
        return this.f36284b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof c.b)) {
            return false;
        }
        c.b bVar = (c.b) obj;
        return this.f36283a.equals(bVar.a()) && this.f36284b.equals(bVar.b());
    }

    public final int hashCode() {
        return ((this.f36283a.hashCode() ^ 1000003) * 1000003) ^ this.f36284b.hashCode();
    }

    public final String toString() {
        return "PerSpanNameSummary{numbersOfLatencySampledSpans=" + this.f36283a + ", numbersOfErrorSampledSpans=" + this.f36284b + "}";
    }
}
