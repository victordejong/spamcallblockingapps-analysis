package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.query.QueryInfo;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcag.class */
public final class zzcag extends zzcfj {
    public final /* synthetic */ QueryInfoGenerationCallback zza;

    public zzcag(zzcah zzcahVar, QueryInfoGenerationCallback queryInfoGenerationCallback) {
        this.zza = queryInfoGenerationCallback;
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzb(String str) {
        this.zza.onFailure(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcfk
    public final void zzc(String str, String str2, Bundle bundle) {
        this.zza.onSuccess(new QueryInfo(new zzbhv(str, bundle, str2)));
    }
}
