package com.google.android.datatransport.cct.p315a;
/* renamed from: com.google.android.datatransport.cct.a.h */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/h.class */
public final class C10652h extends AbstractC10664n {

    /* renamed from: a */
    private final long f34497a;

    public C10652h(long j) {
        this.f34497a = j;
    }

    @Override // com.google.android.datatransport.cct.p315a.AbstractC10664n
    /* renamed from: a */
    public final long mo22537a() {
        return this.f34497a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof AbstractC10664n) && this.f34497a == ((AbstractC10664n) obj).mo22537a();
    }

    public final int hashCode() {
        long j = this.f34497a;
        return 1000003 ^ ((int) (j ^ (j >>> 32)));
    }

    public final String toString() {
        return "LogResponse{nextRequestWaitMillis=" + this.f34497a + "}";
    }
}
