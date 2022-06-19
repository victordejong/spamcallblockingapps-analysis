package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdes.class */
public final /* synthetic */ class zzdes implements Callable {
    private final zzdet zzhcy;

    public zzdes(zzdet zzdetVar) {
        this.zzhcy = zzdetVar;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return this.zzhcy.zzatn();
    }
}
