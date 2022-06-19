package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgln.class */
public final class zzgln implements zzgmp {
    private static final zzglt zza = new zzgll();
    private final zzglt zzb;

    public zzgln() {
        zzglt zzgltVar;
        zzgkg zza2 = zzgkg.zza();
        try {
            zzgltVar = (zzglt) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            zzgltVar = zza;
        }
        zzglm zzglmVar = new zzglm(zza2, zzgltVar);
        zzgkv.zzf(zzglmVar, "messageInfoFactory");
        this.zzb = zzglmVar;
    }

    private static boolean zzb(zzgls zzglsVar) {
        return zzglsVar.zzc() == 1;
    }

    @Override // com.google.android.gms.internal.ads.zzgmp
    public final <T> zzgmo<T> zza(Class<T> cls) {
        zzgmq.zzG(cls);
        zzgls zzb = this.zzb.zzb(cls);
        if (zzb.zzb()) {
            return zzgkl.class.isAssignableFrom(cls) ? zzglz.zzc(zzgmq.zzB(), zzgka.zzb(), zzb.zza()) : zzglz.zzc(zzgmq.zzz(), zzgka.zza(), zzb.zza());
        }
        return zzgkl.class.isAssignableFrom(cls) ? zzb(zzb) ? zzgly.zzl(cls, zzb, zzgmb.zzb(), zzglj.zze(), zzgmq.zzB(), zzgka.zzb(), zzglr.zzb()) : zzgly.zzl(cls, zzb, zzgmb.zzb(), zzglj.zze(), zzgmq.zzB(), null, zzglr.zzb()) : zzb(zzb) ? zzgly.zzl(cls, zzb, zzgmb.zza(), zzglj.zzd(), zzgmq.zzz(), zzgka.zza(), zzglr.zza()) : zzgly.zzl(cls, zzb, zzgmb.zza(), zzglj.zzd(), zzgmq.zzA(), null, zzglr.zza());
    }
}
