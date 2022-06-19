package com.google.android.gms.internal.ads;

import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzczn.class */
public final /* synthetic */ class zzczn implements Callable {
    private final zzczo zzgzl;
    private final List zzgzm;
    private final IObjectWrapper zzgzn;

    public zzczn(zzczo zzczoVar, List list, IObjectWrapper iObjectWrapper) {
        this.zzgzl = zzczoVar;
        this.zzgzm = list;
        this.zzgzn = iObjectWrapper;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zzgzl.zza(this.zzgzm, this.zzgzn);
    }
}
