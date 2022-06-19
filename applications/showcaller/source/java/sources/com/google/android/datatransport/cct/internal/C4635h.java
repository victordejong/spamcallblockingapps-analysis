package com.google.android.datatransport.cct.internal;
/* renamed from: com.google.android.datatransport.cct.internal.h */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/h.class */
public final class C4635h extends AbstractC4644m {

    /* renamed from: a */
    private final long f14185a;

    public C4635h(long j) {
        this.f14185a = j;
    }

    @Override // com.google.android.datatransport.cct.internal.AbstractC4644m
    /* renamed from: c */
    public long mo22073c() {
        return this.f14185a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC4644m)) {
            return false;
        }
        if (this.f14185a != ((AbstractC4644m) obj).mo22073c()) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        long j = this.f14185a;
        return 1000003 ^ ((int) (j ^ (j >>> 32)));
    }

    public String toString() {
        return "LogResponse{nextRequestWaitMillis=" + this.f14185a + "}";
    }
}
