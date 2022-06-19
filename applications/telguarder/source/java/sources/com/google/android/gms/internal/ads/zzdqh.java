package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdqh.class */
public final class zzdqh implements zzeqb<zzdzv> {
    public static zzdqh zzawu() {
        zzdqh zzdqhVar;
        zzdqhVar = zzdqk.zzhpm;
        return zzdqhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        zzdzv zzdzvVar;
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcwv)).booleanValue()) {
            zzdzvVar = zzazp.zzeie;
        } else {
            zzdzvVar = ((Boolean) zzwr.zzqr().zzd(zzabp.zzcwu)).booleanValue() ? zzazp.zzeic : zzazp.zzeig;
        }
        return (zzdzv) zzeqh.zza(zzdzvVar, "Cannot return null from a non-@Nullable @Provides method");
    }
}
