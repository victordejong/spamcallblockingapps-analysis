package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdhi.class */
public final class zzdhi implements zzeqb<String> {
    private final zzdhj zzheu;

    public zzdhi(zzdhj zzdhjVar) {
        this.zzheu = zzdhjVar;
    }

    public static String zzb(zzdhj zzdhjVar) {
        return (String) zzeqh.zza(zzdhjVar.zzatv(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zzb(this.zzheu);
    }
}
