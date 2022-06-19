package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzip.class */
public final class zzip implements zzjj {
    private static final zziv zzb = new zzin();
    private final zziv zza;

    public zzip() {
        zziv zzivVar;
        zzhn zza = zzhn.zza();
        try {
            zzivVar = (zziv) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            zzivVar = zzb;
        }
        zzio zzioVar = new zzio(zza, zzivVar);
        zzia.zzb(zzioVar, "messageInfoFactory");
        this.zza = zzioVar;
    }

    private static boolean zzb(zziu zziuVar) {
        return zziuVar.zzc() == 1;
    }

    @Override // com.google.android.gms.internal.measurement.zzjj
    public final <T> zzji<T> zza(Class<T> cls) {
        zzjk.zza(cls);
        zziu zzc = this.zza.zzc(cls);
        if (zzc.zza()) {
            return zzhs.class.isAssignableFrom(cls) ? zzjb.zzf(zzjk.zzC(), zzhh.zza(), zzc.zzb()) : zzjb.zzf(zzjk.zzA(), zzhh.zzb(), zzc.zzb());
        }
        return zzhs.class.isAssignableFrom(cls) ? zzb(zzc) ? zzja.zzk(cls, zzc, zzjd.zzb(), zzil.zzd(), zzjk.zzC(), zzhh.zza(), zzit.zzb()) : zzja.zzk(cls, zzc, zzjd.zzb(), zzil.zzd(), zzjk.zzC(), null, zzit.zzb()) : zzb(zzc) ? zzja.zzk(cls, zzc, zzjd.zza(), zzil.zzc(), zzjk.zzA(), zzhh.zzb(), zzit.zza()) : zzja.zzk(cls, zzc, zzjd.zza(), zzil.zzc(), zzjk.zzB(), null, zzit.zza());
    }
}
