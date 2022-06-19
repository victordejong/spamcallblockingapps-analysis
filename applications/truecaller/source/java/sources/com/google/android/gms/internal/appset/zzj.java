package com.google.android.gms.internal.appset;

import android.content.Context;
import com.google.android.gms.common.util.DefaultClock;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/appset/zzj.class */
public final class zzj implements Runnable {
    public final /* synthetic */ zzl zza;

    public /* synthetic */ zzj(zzl zzlVar, zzi zziVar) {
        this.zza = zzlVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Context context;
        long zza = this.zza.zza();
        if (zza != -1) {
            Objects.requireNonNull(DefaultClock.f6131a);
            if (System.currentTimeMillis() <= zza) {
                return;
            }
            context = this.zza.zzb;
            zzl.zze(context);
        }
    }
}
