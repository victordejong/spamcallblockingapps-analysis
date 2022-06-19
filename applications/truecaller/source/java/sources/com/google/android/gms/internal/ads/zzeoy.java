package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzt;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeoy.class */
public final /* synthetic */ class zzeoy implements Callable {
    public static final Callable zza = new zzeoy();

    private zzeoy() {
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        return new zzepa(zzt.zzm().zzi(), zzt.zzm().zzm());
    }
}
