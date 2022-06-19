package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgad.class */
final class zzgad extends zzfyg<zzggh, zzgge> {
    public final /* synthetic */ zzgae zza;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzgad(zzgae zzgaeVar, Class cls) {
        super(cls);
        this.zza = zzgaeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfyg
    public final /* synthetic */ zzggh zza(zzgjf zzgjfVar) throws zzgkx {
        return zzggh.zze(zzgjfVar, zzgjx.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzfyg
    public final /* bridge */ /* synthetic */ zzgge zzc(zzggh zzgghVar) throws GeneralSecurityException {
        zzggd zzc = zzgge.zzc();
        zzc.zza(zzgghVar);
        zzc.zzb(0);
        return zzc.zzah();
    }

    @Override // com.google.android.gms.internal.ads.zzfyg
    public final /* bridge */ /* synthetic */ void zze(zzggh zzgghVar) throws GeneralSecurityException {
        zzggh zzgghVar2 = zzgghVar;
        if (zzgghVar2.zzf().isEmpty() || !zzgghVar2.zzg()) {
            throw new GeneralSecurityException("invalid key format: missing KEK URI or DEK template");
        }
    }
}
