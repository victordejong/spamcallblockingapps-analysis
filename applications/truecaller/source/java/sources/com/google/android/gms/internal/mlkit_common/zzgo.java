package com.google.android.gms.internal.mlkit_common;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzgo.class */
public final class zzgo implements zzhq {
    private static final zzgy zzb = new zzgr();
    private final zzgy zza;

    public zzgo() {
        this(new zzgq(zzfr.zza(), zza()));
    }

    private zzgo(zzgy zzgyVar) {
        this.zza = (zzgy) zzfs.zza(zzgyVar, "messageInfoFactory");
    }

    private static zzgy zza() {
        try {
            return (zzgy) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            return zzb;
        }
    }

    private static boolean zza(zzgz zzgzVar) {
        return zzgzVar.zza() == zzhn.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzhq
    public final <T> zzhr<T> zza(Class<T> cls) {
        zzht.zza((Class<?>) cls);
        zzgz zzb2 = this.zza.zzb(cls);
        return zzb2.zzb() ? zzfq.class.isAssignableFrom(cls) ? zzhe.zza(zzht.zzc(), zzfi.zza(), zzb2.zzc()) : zzhe.zza(zzht.zza(), zzfi.zzb(), zzb2.zzc()) : zzfq.class.isAssignableFrom(cls) ? zza(zzb2) ? zzhf.zza(cls, zzb2, zzhi.zzb(), zzgl.zzb(), zzht.zzc(), zzfi.zza(), zzgw.zzb()) : zzhf.zza(cls, zzb2, zzhi.zzb(), zzgl.zzb(), zzht.zzc(), null, zzgw.zzb()) : zza(zzb2) ? zzhf.zza(cls, zzb2, zzhi.zza(), zzgl.zza(), zzht.zza(), zzfi.zzb(), zzgw.zza()) : zzhf.zza(cls, zzb2, zzhi.zza(), zzgl.zza(), zzht.zzb(), null, zzgw.zza());
    }
}
