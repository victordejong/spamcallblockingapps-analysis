package io.opencensus.trace;

import java.util.List;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/g.class */
public final class g extends x {

    /* renamed from: a  reason: collision with root package name */
    private final List<Object> f36311a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(List<Object> list) {
        Objects.requireNonNull(list, "Null entries");
        this.f36311a = list;
    }

    @Override // io.opencensus.trace.x
    public final List<Object> a() {
        return this.f36311a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof x) {
            return this.f36311a.equals(((x) obj).a());
        }
        return false;
    }

    public final int hashCode() {
        return this.f36311a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return "Tracestate{entries=" + this.f36311a + "}";
    }
}
