package com.google.android.datatransport.cct.p006a;
/* renamed from: com.google.android.datatransport.cct.a.zzl */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/a/zzl.class */
final class zzl extends zzs {

    /* renamed from: a */
    private final long f6577a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzl(long j) {
        this.f6577a = j;
    }

    @Override // com.google.android.datatransport.cct.p006a.zzs
    /* renamed from: a */
    public long mo15489a() {
        return this.f6577a;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzs)) {
            return false;
        }
        if (this.f6577a != ((zzs) obj).mo15489a()) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        long j = this.f6577a;
        return 1000003 ^ ((int) (j ^ (j >>> 32)));
    }

    public String toString() {
        return "LogResponse{nextRequestWaitMillis=" + this.f6577a + "}";
    }
}
