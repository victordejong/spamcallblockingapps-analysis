package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/tl2.class */
public final class tl2 implements rl2 {

    /* renamed from: a */
    private final String f30048a;

    public tl2(String str) {
        this.f30048a = str;
    }

    @Override // com.google.android.gms.internal.ads.rl2
    public final boolean equals(Object obj) {
        if (!(obj instanceof tl2)) {
            return false;
        }
        return this.f30048a.equals(((tl2) obj).f30048a);
    }

    @Override // com.google.android.gms.internal.ads.rl2
    public final int hashCode() {
        return this.f30048a.hashCode();
    }

    public final String toString() {
        return this.f30048a;
    }
}
