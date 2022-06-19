package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzku.class */
public final class zzku implements zzlo {
    private static final zzla zza = new zzks();
    private final zzla zzb;

    public zzku() {
        zzla zzlaVar;
        zzjs zza2 = zzjs.zza();
        try {
            zzlaVar = (zzla) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            zzlaVar = zza;
        }
        zzkt zzktVar = new zzkt(zza2, zzlaVar);
        zzkf.zzf(zzktVar, "messageInfoFactory");
        this.zzb = zzktVar;
    }

    private static boolean zzb(zzkz zzkzVar) {
        return zzkzVar.zzc() == 1;
    }

    @Override // com.google.android.gms.internal.measurement.zzlo
    public final zzln zza(Class cls) {
        zzlp.zzG(cls);
        zzkz zzb = this.zzb.zzb(cls);
        if (zzb.zzb()) {
            return zzjx.class.isAssignableFrom(cls) ? zzlg.zzc(zzlp.zzB(), zzjm.zzb(), zzb.zza()) : zzlg.zzc(zzlp.zzz(), zzjm.zza(), zzb.zza());
        }
        return zzjx.class.isAssignableFrom(cls) ? zzb(zzb) ? zzlf.zzk(cls, zzb, zzli.zzb(), zzkq.zzd(), zzlp.zzB(), zzjm.zzb(), zzky.zzb()) : zzlf.zzk(cls, zzb, zzli.zzb(), zzkq.zzd(), zzlp.zzB(), null, zzky.zzb()) : zzb(zzb) ? zzlf.zzk(cls, zzb, zzli.zza(), zzkq.zzc(), zzlp.zzz(), zzjm.zza(), zzky.zza()) : zzlf.zzk(cls, zzb, zzli.zza(), zzkq.zzc(), zzlp.zzA(), null, zzky.zza());
    }
}
