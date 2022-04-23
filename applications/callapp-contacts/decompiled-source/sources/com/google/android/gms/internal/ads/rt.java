package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.query.QueryInfo;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/rt.class */
public final class rt extends xm {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ QueryInfoGenerationCallback f28356a;

    public rt(ru ruVar, QueryInfoGenerationCallback queryInfoGenerationCallback) {
        this.f28356a = queryInfoGenerationCallback;
    }

    @Override // com.google.android.gms.internal.ads.xn
    public final void a(String str) {
        this.f28356a.onFailure(str);
    }

    @Override // com.google.android.gms.internal.ads.xn
    public final void a(String str, String str2) {
        QueryInfo queryInfo = new QueryInfo(new end(str, null));
        ekb.i().put(queryInfo, str2);
        this.f28356a.onSuccess(queryInfo);
    }

    @Override // com.google.android.gms.internal.ads.xn
    public final void a(String str, String str2, Bundle bundle) {
        QueryInfo queryInfo = new QueryInfo(new end(str, bundle));
        ekb.i().put(queryInfo, str2);
        this.f28356a.onSuccess(queryInfo);
    }
}
