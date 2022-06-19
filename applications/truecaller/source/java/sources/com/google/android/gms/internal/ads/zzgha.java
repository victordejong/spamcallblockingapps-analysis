package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgha.class */
public final class zzgha implements zzgia {
    private static final zzghg zzb = new zzggy();
    private final zzghg zza;

    public zzgha() {
        zzghg zzghgVar;
        zzgfv zza = zzgfv.zza();
        try {
            zzghgVar = (zzghg) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            zzghgVar = zzb;
        }
        zzggz zzggzVar = new zzggz(zza, zzghgVar);
        zzggk.zzb(zzggzVar, "messageInfoFactory");
        this.zza = zzggzVar;
    }

    private static boolean zzb(zzghf zzghfVar) {
        return zzghfVar.zzc() == 1;
    }

    @Override // com.google.android.gms.internal.ads.zzgia
    public final <T> zzghz<T> zza(Class<T> cls) {
        zzgib.zza(cls);
        zzghf zzc = this.zza.zzc(cls);
        if (zzc.zza()) {
            return zzgga.class.isAssignableFrom(cls) ? zzghm.zzg(zzgib.zzC(), zzgfp.zza(), zzc.zzb()) : zzghm.zzg(zzgib.zzA(), zzgfp.zzb(), zzc.zzb());
        }
        return zzgga.class.isAssignableFrom(cls) ? zzb(zzc) ? zzghl.zzl(cls, zzc, zzgho.zzb(), zzggw.zze(), zzgib.zzC(), zzgfp.zza(), zzghe.zzb()) : zzghl.zzl(cls, zzc, zzgho.zzb(), zzggw.zze(), zzgib.zzC(), null, zzghe.zzb()) : zzb(zzc) ? zzghl.zzl(cls, zzc, zzgho.zza(), zzggw.zzd(), zzgib.zzA(), zzgfp.zzb(), zzghe.zza()) : zzghl.zzl(cls, zzc, zzgho.zza(), zzggw.zzd(), zzgib.zzB(), null, zzghe.zza());
    }
}
