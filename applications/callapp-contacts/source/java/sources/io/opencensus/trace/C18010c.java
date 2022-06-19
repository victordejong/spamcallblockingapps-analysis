package io.opencensus.trace;

import io.opencensus.trace.AbstractC17997a;
import java.util.Objects;
/* renamed from: io.opencensus.trace.c */
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/c.class */
public final class C18010c extends AbstractC17997a.AbstractC17999b {

    /* renamed from: a */
    private final String f62907a;

    public C18010c(String str) {
        Objects.requireNonNull(str, "Null stringValue");
        this.f62907a = str;
    }

    @Override // io.opencensus.trace.AbstractC17997a.AbstractC17999b
    /* renamed from: a */
    public final String mo4552a() {
        return this.f62907a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC17997a.AbstractC17999b)) {
            return false;
        }
        return this.f62907a.equals(((AbstractC17997a.AbstractC17999b) obj).mo4552a());
    }

    public final int hashCode() {
        return this.f62907a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return "AttributeValueString{stringValue=" + this.f62907a + "}";
    }
}
