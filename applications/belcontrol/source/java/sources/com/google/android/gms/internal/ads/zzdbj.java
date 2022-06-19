package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdbj.class */
public final /* synthetic */ class zzdbj implements Callable {
    private final zzdbg zzhaz;

    public zzdbj(zzdbg zzdbgVar) {
        this.zzhaz = zzdbgVar;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zzhaz.zzata();
    }
}
