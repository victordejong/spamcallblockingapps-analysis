package com.google.android.gms.ads.internal;

import android.content.Context;
import com.google.android.gms.internal.ads.zzals;
import com.google.android.gms.internal.ads.zzalt;
import com.google.android.gms.internal.ads.zzcjf;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/zzo.class */
public final class zzo implements Callable<zzalt> {
    public final /* synthetic */ zzs zza;

    public zzo(zzs zzsVar) {
        this.zza = zzsVar;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ zzalt call() throws Exception {
        zzcjf zzcjfVar;
        Context context;
        zzcjfVar = this.zza.zza;
        String str = zzcjfVar.zza;
        context = this.zza.zzd;
        return new zzalt(zzals.zzs(str, context, false));
    }
}
