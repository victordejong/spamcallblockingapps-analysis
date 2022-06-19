package io.opencensus.trace;

import io.opencensus.trace.AbstractC9493a;
import java.util.Objects;
/* renamed from: io.opencensus.trace.b */
/* loaded from: classes2-dex2jar.jar:io/opencensus/trace/b.class */
public final class C9495b extends AbstractC9493a.AbstractC9494a {

    /* renamed from: a */
    private final String f40420a;

    public C9495b(String str) {
        Objects.requireNonNull(str, "Null stringValue");
        this.f40420a = str;
    }

    @Override // io.opencensus.trace.AbstractC9493a.AbstractC9494a
    /* renamed from: c */
    public String mo466c() {
        return this.f40420a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC9493a.AbstractC9494a)) {
            return false;
        }
        return this.f40420a.equals(((AbstractC9493a.AbstractC9494a) obj).mo466c());
    }

    public int hashCode() {
        return this.f40420a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "AttributeValueString{stringValue=" + this.f40420a + "}";
    }
}
