package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeue.class */
public final class zzeue implements zzevn<zzeuf> {
    private final String zza;
    private final String zzb;

    public zzeue(String str, String str2) {
        this.zza = str;
        this.zzb = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzevn
    public final zzfxa<zzeuf> zzb() {
        return zzfwq.zzi(new zzeuf(this.zza, this.zzb));
    }
}
