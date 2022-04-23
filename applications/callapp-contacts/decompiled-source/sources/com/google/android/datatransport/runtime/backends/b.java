package com.google.android.datatransport.runtime.backends;

import com.google.android.datatransport.runtime.backends.g;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/backends/b.class */
public final class b extends g {

    /* renamed from: a  reason: collision with root package name */
    private final g.a f20411a;

    /* renamed from: b  reason: collision with root package name */
    private final long f20412b;

    public b(g.a aVar, long j) {
        Objects.requireNonNull(aVar, "Null status");
        this.f20411a = aVar;
        this.f20412b = j;
    }

    @Override // com.google.android.datatransport.runtime.backends.g
    public final g.a a() {
        return this.f20411a;
    }

    @Override // com.google.android.datatransport.runtime.backends.g
    public final long b() {
        return this.f20412b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return this.f20411a.equals(gVar.a()) && this.f20412b == gVar.b();
    }

    public final int hashCode() {
        int hashCode = this.f20411a.hashCode();
        long j = this.f20412b;
        return ((hashCode ^ 1000003) * 1000003) ^ ((int) (j ^ (j >>> 32)));
    }

    public final String toString() {
        return "BackendResponse{status=" + this.f20411a + ", nextRequestWaitMillis=" + this.f20412b + "}";
    }
}
