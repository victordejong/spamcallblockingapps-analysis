package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cje.class */
public final class cje implements cjb {

    /* renamed from: a */
    private final String f13164a;

    public cje(String str) {
        this.f13164a = str;
    }

    @Override // com.google.android.gms.internal.ads.cjb
    public final boolean equals(Object obj) {
        return !(obj instanceof cje) ? false : this.f13164a.equals(((cje) obj).f13164a);
    }

    @Override // com.google.android.gms.internal.ads.cjb
    public final int hashCode() {
        return this.f13164a.hashCode();
    }

    public final String toString() {
        return this.f13164a;
    }
}
