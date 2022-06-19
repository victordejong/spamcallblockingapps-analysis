package com.google.android.gms.internal.mlkit_language_id;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzfm.class */
public final class zzfm implements zzgo {
    private static final zzfw zzb = new zzfp();
    private final zzfw zza;

    public zzfm() {
        this(new zzfo(zzep.zza(), zza()));
    }

    private zzfm(zzfw zzfwVar) {
        this.zza = (zzfw) zzeq.zza(zzfwVar, "messageInfoFactory");
    }

    private static zzfw zza() {
        try {
            return (zzfw) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            return zzb;
        }
    }

    private static boolean zza(zzfx zzfxVar) {
        return zzfxVar.zza() == zzgl.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_language_id.zzgo
    public final <T> zzgp<T> zza(Class<T> cls) {
        zzgr.zza((Class<?>) cls);
        zzfx zzb2 = this.zza.zzb(cls);
        return zzb2.zzb() ? zzeo.class.isAssignableFrom(cls) ? zzgc.zza(zzgr.zzc(), zzeg.zza(), zzb2.zzc()) : zzgc.zza(zzgr.zza(), zzeg.zzb(), zzb2.zzc()) : zzeo.class.isAssignableFrom(cls) ? zza(zzb2) ? zzgd.zza(cls, zzb2, zzgg.zzb(), zzfj.zzb(), zzgr.zzc(), zzeg.zza(), zzfu.zzb()) : zzgd.zza(cls, zzb2, zzgg.zzb(), zzfj.zzb(), zzgr.zzc(), null, zzfu.zzb()) : zza(zzb2) ? zzgd.zza(cls, zzb2, zzgg.zza(), zzfj.zza(), zzgr.zza(), zzeg.zzb(), zzfu.zza()) : zzgd.zza(cls, zzb2, zzgg.zza(), zzfj.zza(), zzgr.zzb(), null, zzfu.zza());
    }
}
