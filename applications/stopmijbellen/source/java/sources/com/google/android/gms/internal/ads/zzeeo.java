package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutionException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeeo.class */
public final /* synthetic */ class zzeeo implements zzfvx {
    public static final /* synthetic */ zzeeo zza = new zzeeo();

    private /* synthetic */ zzeeo() {
    }

    @Override // com.google.android.gms.internal.ads.zzfvx
    public final zzfxa zza(Object obj) {
        return zzfwq.zzh(((ExecutionException) obj).getCause());
    }
}
