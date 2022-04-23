package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/gu2.class */
public final class gu2 {

    /* renamed from: a */
    final long f6722a;

    /* renamed from: b */
    final String f6723b;

    /* renamed from: c */
    final int f6724c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public gu2(long j, String str, int i) {
        this.f6722a = j;
        this.f6723b = str;
        this.f6724c = i;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof gu2)) {
            return false;
        }
        gu2 gu2Var = (gu2) obj;
        return gu2Var.f6722a == this.f6722a && gu2Var.f6724c == this.f6724c;
    }

    public final int hashCode() {
        return (int) this.f6722a;
    }
}
