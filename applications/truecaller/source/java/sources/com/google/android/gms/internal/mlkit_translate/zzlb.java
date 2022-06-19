package com.google.android.gms.internal.mlkit_translate;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzlb.class */
public final class zzlb implements zzmd {
    private static final zzll zzb = new zzla();
    private final zzll zza;

    public zzlb() {
        this(new zzld(zzka.zza(), zza()));
    }

    private zzlb(zzll zzllVar) {
        this.zza = (zzll) zzkf.zza(zzllVar, "messageInfoFactory");
    }

    private static zzll zza() {
        try {
            return (zzll) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            return zzb;
        }
    }

    private static boolean zza(zzli zzliVar) {
        return zzliVar.zza() == zzlw.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzmd
    public final <T> zzma<T> zza(Class<T> cls) {
        zzmc.zza((Class<?>) cls);
        zzli zzb2 = this.zza.zzb(cls);
        return zzb2.zzb() ? zzkc.class.isAssignableFrom(cls) ? zzlr.zza(zzmc.zzc(), zzjv.zza(), zzb2.zzc()) : zzlr.zza(zzmc.zza(), zzjv.zzb(), zzb2.zzc()) : zzkc.class.isAssignableFrom(cls) ? zza(zzb2) ? zzlo.zza(cls, zzb2, zzlv.zzb(), zzku.zzb(), zzmc.zzc(), zzjv.zza(), zzlj.zzb()) : zzlo.zza(cls, zzb2, zzlv.zzb(), zzku.zzb(), zzmc.zzc(), null, zzlj.zzb()) : zza(zzb2) ? zzlo.zza(cls, zzb2, zzlv.zza(), zzku.zza(), zzmc.zza(), zzjv.zzb(), zzlj.zza()) : zzlo.zza(cls, zzb2, zzlv.zza(), zzku.zza(), zzmc.zzb(), null, zzlj.zza());
    }
}
