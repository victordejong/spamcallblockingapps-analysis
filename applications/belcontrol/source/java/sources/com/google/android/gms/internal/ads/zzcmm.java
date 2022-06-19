package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcmm.class */
public final /* synthetic */ class zzcmm implements Callable {
    private final Context zzcle;
    private final zzei zzgnz;

    public zzcmm(zzei zzeiVar, Context context) {
        this.zzgnz = zzeiVar;
        this.zzcle = context;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        zzei zzeiVar = this.zzgnz;
        return zzeiVar.zzca().zzb(this.zzcle);
    }
}
