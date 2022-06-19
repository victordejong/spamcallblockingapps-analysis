package io.opencensus.trace;

import java.util.List;
import java.util.Objects;
/* renamed from: io.opencensus.trace.f */
/* loaded from: classes2-dex2jar.jar:io/opencensus/trace/f.class */
public final class C9505f extends AbstractC9532s {

    /* renamed from: a */
    private final List<?> f40443a;

    public C9505f(List<?> list) {
        Objects.requireNonNull(list, "Null entries");
        this.f40443a = list;
    }

    @Override // io.opencensus.trace.AbstractC9532s
    /* renamed from: d */
    public List<?> mo396d() {
        return this.f40443a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC9532s)) {
            return false;
        }
        return this.f40443a.equals(((AbstractC9532s) obj).mo396d());
    }

    public int hashCode() {
        return this.f40443a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "Tracestate{entries=" + this.f40443a + "}";
    }
}
