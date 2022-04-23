package io.opencensus.trace;

import io.opencensus.trace.a;
import java.util.Objects;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5-dex2jar.jar:io/opencensus/trace/c.class */
public final class c extends a.b {

    /* renamed from: a  reason: collision with root package name */
    private final String f36290a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(String str) {
        Objects.requireNonNull(str, "Null stringValue");
        this.f36290a = str;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // io.opencensus.trace.a.b
    public final String a() {
        return this.f36290a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof a.b) {
            return this.f36290a.equals(((a.b) obj).a());
        }
        return false;
    }

    public final int hashCode() {
        return this.f36290a.hashCode() ^ 1000003;
    }

    public final String toString() {
        return "AttributeValueString{stringValue=" + this.f36290a + "}";
    }
}
