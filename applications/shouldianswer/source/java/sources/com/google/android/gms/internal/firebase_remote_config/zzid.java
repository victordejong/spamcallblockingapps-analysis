package com.google.android.gms.internal.firebase_remote_config;

import com.google.android.gms.internal.firebase_remote_config.zzhi;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzid.class */
public final class zzid implements zzji {
    private static final zzin zzve = new zzig();
    private final zzin zzvd;

    public zzid() {
        this(new zzif(zzhj.zzgx(), zzhu()));
    }

    private zzid(zzin zzinVar) {
        this.zzvd = (zzin) zzhm.zza(zzinVar, "messageInfoFactory");
    }

    private static boolean zza(zzio zzioVar) {
        return zzioVar.zzib() == zzhi.zze.zztu;
    }

    private static zzin zzhu() {
        try {
            return (zzin) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            return zzve;
        }
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzji
    public final <T> zzjf<T> zzj(Class<T> cls) {
        zzjh.zzl(cls);
        zzio zzi = this.zzvd.zzi(cls);
        return zzi.zzic() ? zzhi.class.isAssignableFrom(cls) ? zziw.zza(zzjh.zzio(), zzhb.zzgl(), zzi.zzid()) : zziw.zza(zzjh.zzim(), zzhb.zzgm(), zzi.zzid()) : zzhi.class.isAssignableFrom(cls) ? zza(zzi) ? zziu.zza(cls, zzi, zzja.zzig(), zzia.zzht(), zzjh.zzio(), zzhb.zzgl(), zzil.zzhz()) : zziu.zza(cls, zzi, zzja.zzig(), zzia.zzht(), zzjh.zzio(), (zzgz<?>) null, zzil.zzhz()) : zza(zzi) ? zziu.zza(cls, zzi, zzja.zzif(), zzia.zzhs(), zzjh.zzim(), zzhb.zzgm(), zzil.zzhy()) : zziu.zza(cls, zzi, zzja.zzif(), zzia.zzhs(), zzjh.zzin(), (zzgz<?>) null, zzil.zzhy());
    }
}
