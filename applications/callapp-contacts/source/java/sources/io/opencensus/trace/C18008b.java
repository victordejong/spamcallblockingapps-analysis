package io.opencensus.trace;

import io.opencensus.trace.AbstractC17997a;
import java.util.Objects;
/* renamed from: io.opencensus.trace.b */
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/b.class */
public final class C18008b extends AbstractC17997a.AbstractC17998a {

    /* renamed from: a */
    private final Long f62905a;

    public C18008b(Long l) {
        Objects.requireNonNull(l, "Null longValue");
        this.f62905a = l;
    }

    @Override // io.opencensus.trace.AbstractC17997a.AbstractC17998a
    /* renamed from: a */
    public final Long mo4555a() {
        return this.f62905a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC17997a.AbstractC17998a)) {
            return false;
        }
        return this.f62905a.equals(((AbstractC17997a.AbstractC17998a) obj).mo4555a());
    }

    public final int hashCode() {
        return this.f62905a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return "AttributeValueLong{longValue=" + this.f62905a + "}";
    }
}
