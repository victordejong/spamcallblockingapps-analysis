package com.google.android.datatransport.runtime.backends;

import com.google.android.datatransport.runtime.backends.BackendResponse;
import java.util.Objects;
/* renamed from: com.google.android.datatransport.runtime.backends.b */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/backends/b.class */
public final class C4758b extends BackendResponse {

    /* renamed from: a */
    private final BackendResponse.Status f14363a;

    /* renamed from: b */
    private final long f14364b;

    public C4758b(BackendResponse.Status status, long j) {
        Objects.requireNonNull(status, "Null status");
        this.f14363a = status;
        this.f14364b = j;
    }

    @Override // com.google.android.datatransport.runtime.backends.BackendResponse
    /* renamed from: b */
    public long mo21841b() {
        return this.f14364b;
    }

    @Override // com.google.android.datatransport.runtime.backends.BackendResponse
    /* renamed from: c */
    public BackendResponse.Status mo21840c() {
        return this.f14363a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof BackendResponse)) {
            return false;
        }
        BackendResponse backendResponse = (BackendResponse) obj;
        if (!this.f14363a.equals(backendResponse.mo21840c()) || this.f14364b != backendResponse.mo21841b()) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f14363a.hashCode();
        long j = this.f14364b;
        return ((hashCode ^ 1000003) * 1000003) ^ ((int) (j ^ (j >>> 32)));
    }

    public String toString() {
        return "BackendResponse{status=" + this.f14363a + ", nextRequestWaitMillis=" + this.f14364b + "}";
    }
}
