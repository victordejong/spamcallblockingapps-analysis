package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzccb.class */
public final class zzccb implements zzeqb<zzccc> {
    private final zzeqo<zzcbs> zzged;

    private zzccb(zzeqo<zzcbs> zzeqoVar) {
        this.zzged = zzeqoVar;
    }

    public static zzccb zzz(zzeqo<zzcbs> zzeqoVar) {
        return new zzccb(zzeqoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzccc(this.zzged.get());
    }
}
