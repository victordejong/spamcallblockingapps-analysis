package com.google.android.gms.internal.ads;

import android.content.Context;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;
@ParametersAreNonnullByDefault
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzama.class */
public final class zzama {
    private final Object zzdko = new Object();
    private final Object zzdkp = new Object();
    @GuardedBy("lockClient")
    private zzamj zzdkq;
    @GuardedBy("lockService")
    private zzamj zzdkr;

    private static Context zzl(Context context) {
        Context applicationContext = context.getApplicationContext();
        return applicationContext == null ? context : applicationContext;
    }

    public final zzamj zza(Context context, zzazn zzaznVar) {
        zzamj zzamjVar;
        synchronized (this.zzdkp) {
            if (this.zzdkr == null) {
                this.zzdkr = new zzamj(zzl(context), zzaznVar, zzadq.zzdeo.get());
            }
            zzamjVar = this.zzdkr;
        }
        return zzamjVar;
    }

    public final zzamj zzb(Context context, zzazn zzaznVar) {
        zzamj zzamjVar;
        synchronized (this.zzdko) {
            if (this.zzdkq == null) {
                this.zzdkq = new zzamj(zzl(context), zzaznVar, (String) zzwr.zzqr().zzd(zzabp.zzcmj));
            }
            zzamjVar = this.zzdkq;
        }
        return zzamjVar;
    }
}
