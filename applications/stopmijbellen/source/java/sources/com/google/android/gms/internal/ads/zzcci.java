package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.query.QueryInfo;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcci.class */
public final class zzcci extends zzchp {
    public final /* synthetic */ QueryInfoGenerationCallback zza;

    public zzcci(zzccj zzccjVar, QueryInfoGenerationCallback queryInfoGenerationCallback) {
        this.zza = queryInfoGenerationCallback;
    }

    @Override // com.google.android.gms.internal.ads.zzchq
    public final void zzb(String str) {
        this.zza.onFailure(str);
    }

    @Override // com.google.android.gms.internal.ads.zzchq
    public final void zzc(String str, String str2, Bundle bundle) {
        this.zza.onSuccess(new QueryInfo(new zzbjt(str, bundle, str2)));
    }
}
