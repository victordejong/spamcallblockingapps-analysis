package com.google.android.datatransport.runtime.backends;

import com.google.android.datatransport.runtime.backends.AbstractC10702g;
import java.util.Objects;
/* renamed from: com.google.android.datatransport.runtime.backends.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/backends/b.class */
public final class C10696b extends AbstractC10702g {

    /* renamed from: a */
    private final AbstractC10702g.EnumC10703a f34549a;

    /* renamed from: b */
    private final long f34550b;

    public C10696b(AbstractC10702g.EnumC10703a enumC10703a, long j) {
        Objects.requireNonNull(enumC10703a, "Null status");
        this.f34549a = enumC10703a;
        this.f34550b = j;
    }

    @Override // com.google.android.datatransport.runtime.backends.AbstractC10702g
    /* renamed from: a */
    public final AbstractC10702g.EnumC10703a mo22509a() {
        return this.f34549a;
    }

    @Override // com.google.android.datatransport.runtime.backends.AbstractC10702g
    /* renamed from: b */
    public final long mo22508b() {
        return this.f34550b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC10702g)) {
            return false;
        }
        AbstractC10702g abstractC10702g = (AbstractC10702g) obj;
        return this.f34549a.equals(abstractC10702g.mo22509a()) && this.f34550b == abstractC10702g.mo22508b();
    }

    public final int hashCode() {
        int hashCode = this.f34549a.hashCode();
        long j = this.f34550b;
        return ((hashCode ^ 1000003) * 1000003) ^ ((int) (j ^ (j >>> 32)));
    }

    public final String toString() {
        return "BackendResponse{status=" + this.f34549a + ", nextRequestWaitMillis=" + this.f34550b + "}";
    }
}
