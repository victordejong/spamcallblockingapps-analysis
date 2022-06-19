package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzfo;
import com.google.android.gms.internal.firebase-perf.zzfp;
import com.google.android.gms.internal.firebase-perf.zzgh;
import com.google.android.gms.internal.firebase_perf.zzeh;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzfe.class */
public final class zzfe implements zzgh {
    private static final zzfo zzrz = new zzfh();
    private final zzfo zzry;

    public zzfe() {
        this(new zzfg(zzef.zzgh(), zzhc()));
    }

    private zzfe(zzfo zzfoVar) {
        this.zzry = (zzfo) zzei.zza(zzfoVar, "messageInfoFactory");
    }

    private static boolean zza(zzfp zzfpVar) {
        return zzfpVar.zzhk() == zzeh.zzd.zzqo;
    }

    private static zzfo zzhc() {
        try {
            return (zzfo) Class.forName("com.google.protobuf.DescriptorMessageInfoFactory").getDeclaredMethod("getInstance", new Class[0]).invoke(null, new Object[0]);
        } catch (Exception e) {
            return zzrz;
        }
    }

    public final <T> zzge<T> zzd(Class<T> cls) {
        zzgg.zzf((Class<?>) cls);
        zzfp zzb = this.zzry.zzb(cls);
        return zzb.zzhl() ? com.google.android.gms.internal.firebase-perf.zzeh.class.isAssignableFrom(cls) ? zzfu.zza(zzgg.zzhw(), zzea.zzgb(), zzb.zzhm()) : zzfu.zza(zzgg.zzhu(), zzea.zzgc(), zzb.zzhm()) : com.google.android.gms.internal.firebase-perf.zzeh.class.isAssignableFrom(cls) ? zza(zzb) ? zzfv.zza(cls, zzb, zzfy.zzho(), zzfb.zzhb(), zzgg.zzhw(), zzea.zzgb(), zzfm.zzhi()) : zzfv.zza(cls, zzb, zzfy.zzho(), zzfb.zzhb(), zzgg.zzhw(), null, zzfm.zzhi()) : zza(zzb) ? zzfv.zza(cls, zzb, zzfy.zzhn(), zzfb.zzha(), zzgg.zzhu(), zzea.zzgc(), zzfm.zzhh()) : zzfv.zza(cls, zzb, zzfy.zzhn(), zzfb.zzha(), zzgg.zzhv(), null, zzfm.zzhh());
    }
}
