package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/crk.class */
public final class crk implements cri {

    /* renamed from: a */
    private final String f46433a;

    public crk(String str) {
        this.f46433a = str;
    }

    @Override // com.google.android.gms.internal.ads.cri
    public final boolean equals(Object obj) {
        if (!(obj instanceof crk)) {
            return false;
        }
        return this.f46433a.equals(((crk) obj).f46433a);
    }

    @Override // com.google.android.gms.internal.ads.cri
    public final int hashCode() {
        return this.f46433a.hashCode();
    }

    public final String toString() {
        return this.f46433a;
    }
}
