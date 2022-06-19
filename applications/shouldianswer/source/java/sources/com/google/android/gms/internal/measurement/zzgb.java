package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzfd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzgb.class */
public final class zzgb implements zzhg {
    private static final zzgl zzb = new zzge();
    private final zzgl zza;

    public zzgb() {
        this(new zzgd(zzfe.zza(), zza()));
    }

    private zzgb(zzgl zzglVar) {
        this.zza = (zzgl) zzff.zza(zzglVar, "messageInfoFactory");
    }

    private static zzgl zza() {
        try {
            return (zzgl) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            return zzb;
        }
    }

    private static boolean zza(zzgm zzgmVar) {
        return zzgmVar.zza() == zzfd.zze.zzh;
    }

    @Override // com.google.android.gms.internal.measurement.zzhg
    public final <T> zzhd<T> zza(Class<T> cls) {
        zzhf.zza((Class<?>) cls);
        zzgm zzb2 = this.zza.zzb(cls);
        return zzb2.zzb() ? zzfd.class.isAssignableFrom(cls) ? zzgu.zza(zzhf.zzc(), zzet.zza(), zzb2.zzc()) : zzgu.zza(zzhf.zza(), zzet.zzb(), zzb2.zzc()) : zzfd.class.isAssignableFrom(cls) ? zza(zzb2) ? zzgs.zza(cls, zzb2, zzgy.zzb(), zzfy.zzb(), zzhf.zzc(), zzet.zza(), zzgj.zzb()) : zzgs.zza(cls, zzb2, zzgy.zzb(), zzfy.zzb(), zzhf.zzc(), (zzes<?>) null, zzgj.zzb()) : zza(zzb2) ? zzgs.zza(cls, zzb2, zzgy.zza(), zzfy.zza(), zzhf.zza(), zzet.zzb(), zzgj.zza()) : zzgs.zza(cls, zzb2, zzgy.zza(), zzfy.zza(), zzhf.zzb(), (zzes<?>) null, zzgj.zza());
    }
}
