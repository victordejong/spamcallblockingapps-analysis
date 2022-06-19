package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdcl.class */
public final /* synthetic */ class zzdcl implements Callable {
    private final zzdci zzhbt;

    public zzdcl(zzdci zzdciVar) {
        this.zzhbt = zzdciVar;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zzhbt.zzate();
    }
}
