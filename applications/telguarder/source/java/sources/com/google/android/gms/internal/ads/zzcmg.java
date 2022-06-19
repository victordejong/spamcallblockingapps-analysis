package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutionException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcmg.class */
final /* synthetic */ class zzcmg implements zzdyu {
    static final zzdyu zzboq = new zzcmg();

    private zzcmg() {
    }

    @Override // com.google.android.gms.internal.ads.zzdyu
    public final zzdzw zzf(Object obj) {
        return zzdzk.immediateFailedFuture(((ExecutionException) obj).getCause());
    }
}
