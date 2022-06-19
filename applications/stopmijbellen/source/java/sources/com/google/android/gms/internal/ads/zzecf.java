package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutionException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzecf.class */
public final /* synthetic */ class zzecf implements zzfvx {
    public static final /* synthetic */ zzecf zza = new zzecf();

    private /* synthetic */ zzecf() {
    }

    @Override // com.google.android.gms.internal.ads.zzfvx
    public final zzfxa zza(Object obj) {
        return zzfwq.zzh(((ExecutionException) obj).getCause());
    }
}
