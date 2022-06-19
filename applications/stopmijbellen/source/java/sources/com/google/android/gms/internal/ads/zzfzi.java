package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfzi.class */
public final class zzfzi extends zzfyi<zzgcc> {
    public zzfzi() {
        super(zzgcc.class, new zzfzg(zzfxu.class));
    }

    public static /* bridge */ /* synthetic */ zzfyf zzk(int i, int i2, int i3, int i4, int i5, int i6) {
        zzgck zzc = zzgcl.zzc();
        zzgcn zzc2 = zzgco.zzc();
        zzc2.zza(16);
        zzc.zzb(zzc2.zzah());
        zzc.zza(i);
        zzgcl zzah = zzc.zzah();
        zzgey zzc3 = zzgez.zzc();
        zzgfb zzc4 = zzgfc.zzc();
        zzc4.zzb(5);
        zzc4.zza(i4);
        zzc3.zzb(zzc4.zzah());
        zzc3.zza(32);
        zzgez zzah2 = zzc3.zzah();
        zzgce zza = zzgcf.zza();
        zza.zza(zzah);
        zza.zzb(zzah2);
        return new zzfyf(zza.zzah(), i6);
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final zzfyg<?, zzgcc> zza() {
        return new zzfzh(this, zzgcf.class);
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final /* synthetic */ zzgcc zzb(zzgjf zzgjfVar) throws zzgkx {
        return zzgcc.zze(zzgjfVar, zzgjx.zza());
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final String zzf() {
        return "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey";
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final /* bridge */ /* synthetic */ void zzh(zzgcc zzgccVar) throws GeneralSecurityException {
        zzgcc zzgccVar2 = zzgccVar;
        zzgii.zzb(zzgccVar2.zza(), 0);
        new zzfzl();
        zzfzl.zzl(zzgccVar2.zzf());
        new zzgbl();
        zzgbl.zzl(zzgccVar2.zzg());
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final int zzi() {
        return 2;
    }

    @Override // com.google.android.gms.internal.ads.zzfyi
    public final int zzj() {
        return 3;
    }
}
