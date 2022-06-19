package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcqn.class */
public final class zzcqn {
    private zzcjf zza;
    private Context zzb;
    private WeakReference<Context> zzc;

    public final zzcqn zzc(Context context) {
        this.zzc = new WeakReference<>(context);
        Context context2 = context;
        if (context.getApplicationContext() != null) {
            context2 = context.getApplicationContext();
        }
        this.zzb = context2;
        return this;
    }

    public final zzcqn zzd(zzcjf zzcjfVar) {
        this.zza = zzcjfVar;
        return this;
    }
}
