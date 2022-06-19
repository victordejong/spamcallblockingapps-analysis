package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutionException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcoe.class */
final /* synthetic */ class zzcoe implements zzdyu {
    static final zzdyu zzboq = new zzcoe();

    private zzcoe() {
    }

    @Override // com.google.android.gms.internal.ads.zzdyu
    public final zzdzw zzf(Object obj) {
        return zzdzk.immediateFailedFuture(((ExecutionException) obj).getCause());
    }
}
