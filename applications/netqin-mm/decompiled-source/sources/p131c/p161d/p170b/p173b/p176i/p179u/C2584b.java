package p131c.p161d.p170b.p173b.p176i.p179u;

import com.google.android.datatransport.runtime.backends.BackendResponse;
/* renamed from: c.d.b.b.i.u.b */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/u/b.class */
public final class C2584b extends BackendResponse {

    /* renamed from: a */
    public final BackendResponse.Status f9643a;

    /* renamed from: b */
    public final long f9644b;

    public C2584b(BackendResponse.Status status, long j) {
        if (status != null) {
            this.f9643a = status;
            this.f9644b = j;
            return;
        }
        throw new NullPointerException("Null status");
    }

    @Override // com.google.android.datatransport.runtime.backends.BackendResponse
    /* renamed from: a */
    public long mo18742a() {
        return this.f9644b;
    }

    @Override // com.google.android.datatransport.runtime.backends.BackendResponse
    /* renamed from: b */
    public BackendResponse.Status mo18740b() {
        return this.f9643a;
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
        if (!this.f9643a.equals(backendResponse.mo18740b()) || this.f9644b != backendResponse.mo18742a()) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f9643a.hashCode();
        long j = this.f9644b;
        return ((hashCode ^ 1000003) * 1000003) ^ ((int) (j ^ (j >>> 32)));
    }

    public String toString() {
        return "BackendResponse{status=" + this.f9643a + ", nextRequestWaitMillis=" + this.f9644b + "}";
    }
}
