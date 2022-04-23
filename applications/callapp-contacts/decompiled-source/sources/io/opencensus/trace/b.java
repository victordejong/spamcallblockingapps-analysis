package io.opencensus.trace;

import io.opencensus.trace.a;
import java.util.Objects;
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/b.class */
public final class b extends a.AbstractC0593a {

    /* renamed from: a  reason: collision with root package name */
    private final Long f36288a;

    public b(Long l) {
        Objects.requireNonNull(l, "Null longValue");
        this.f36288a = l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // io.opencensus.trace.a.AbstractC0593a
    public final Long a() {
        return this.f36288a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof a.AbstractC0593a) {
            return this.f36288a.equals(((a.AbstractC0593a) obj).a());
        }
        return false;
    }

    public final int hashCode() {
        return this.f36288a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return "AttributeValueLong{longValue=" + this.f36288a + "}";
    }
}
