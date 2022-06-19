package io.opencensus.trace;

import java.util.List;
import java.util.Objects;
/* renamed from: io.opencensus.trace.g */
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/g.class */
public final class C18020g extends AbstractC18057x {

    /* renamed from: a */
    private final List<Object> f62930a;

    public C18020g(List<Object> list) {
        Objects.requireNonNull(list, "Null entries");
        this.f62930a = list;
    }

    @Override // io.opencensus.trace.AbstractC18057x
    /* renamed from: a */
    public final List<Object> mo4496a() {
        return this.f62930a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC18057x)) {
            return false;
        }
        return this.f62930a.equals(((AbstractC18057x) obj).mo4496a());
    }

    public final int hashCode() {
        return this.f62930a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return "Tracestate{entries=" + this.f62930a + "}";
    }
}
