package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/crk.class */
public final class crk implements cri {

    /* renamed from: a  reason: collision with root package name */
    private final String f26305a;

    public crk(String str) {
        this.f26305a = str;
    }

    @Override // com.google.android.gms.internal.ads.cri
    public final boolean equals(Object obj) {
        if (!(obj instanceof crk)) {
            return false;
        }
        return this.f26305a.equals(((crk) obj).f26305a);
    }

    @Override // com.google.android.gms.internal.ads.cri
    public final int hashCode() {
        return this.f26305a.hashCode();
    }

    public final String toString() {
        return this.f26305a;
    }
}
