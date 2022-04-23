package com.google.android.datatransport.cct.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/h.class */
final class h extends n {

    /* renamed from: a  reason: collision with root package name */
    private final long f20368a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(long j) {
        this.f20368a = j;
    }

    @Override // com.google.android.datatransport.cct.a.n
    public final long a() {
        return this.f20368a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof n) && this.f20368a == ((n) obj).a();
    }

    public final int hashCode() {
        long j = this.f20368a;
        return 1000003 ^ ((int) (j ^ (j >>> 32)));
    }

    public final String toString() {
        return "LogResponse{nextRequestWaitMillis=" + this.f20368a + "}";
    }
}
