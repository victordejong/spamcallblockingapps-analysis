package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzla.class */
public final class zzla implements zzlu {
    private static final zzlg zzb = new zzky();
    private final zzlg zza;

    public zzla() {
        zzlg zzlgVar;
        zzjy zza = zzjy.zza();
        try {
            zzlgVar = (zzlg) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            zzlgVar = zzb;
        }
        zzkz zzkzVar = new zzkz(zza, zzlgVar);
        zzkl.zzb(zzkzVar, "messageInfoFactory");
        this.zza = zzkzVar;
    }

    private static boolean zzb(zzlf zzlfVar) {
        return zzlfVar.zzc() == 1;
    }

    @Override // com.google.android.gms.internal.measurement.zzlu
    public final <T> zzlt<T> zza(Class<T> cls) {
        zzlv.zza(cls);
        zzlf zzc = this.zza.zzc(cls);
        if (zzc.zza()) {
            return zzkd.class.isAssignableFrom(cls) ? zzlm.zzf(zzlv.zzC(), zzjs.zza(), zzc.zzb()) : zzlm.zzf(zzlv.zzA(), zzjs.zzb(), zzc.zzb());
        }
        return zzkd.class.isAssignableFrom(cls) ? zzb(zzc) ? zzll.zzk(cls, zzc, zzlo.zzb(), zzkw.zzd(), zzlv.zzC(), zzjs.zza(), zzle.zzb()) : zzll.zzk(cls, zzc, zzlo.zzb(), zzkw.zzd(), zzlv.zzC(), null, zzle.zzb()) : zzb(zzc) ? zzll.zzk(cls, zzc, zzlo.zza(), zzkw.zzc(), zzlv.zzA(), zzjs.zzb(), zzle.zza()) : zzll.zzk(cls, zzc, zzlo.zza(), zzkw.zzc(), zzlv.zzB(), null, zzle.zza());
    }
}
