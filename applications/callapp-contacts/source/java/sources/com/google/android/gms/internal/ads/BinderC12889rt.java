package com.google.android.gms.internal.ads;

import android.os.Bundle;
import com.google.android.gms.ads.query.QueryInfo;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;
/* renamed from: com.google.android.gms.internal.ads.rt */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/rt.class */
public final class BinderC12889rt extends AbstractBinderC13046xm {

    /* renamed from: a */
    private final /* synthetic */ QueryInfoGenerationCallback f49763a;

    public BinderC12889rt(C12890ru c12890ru, QueryInfoGenerationCallback queryInfoGenerationCallback) {
        this.f49763a = queryInfoGenerationCallback;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13047xn
    /* renamed from: a */
    public final void mo14002a(String str) {
        this.f49763a.onFailure(str);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13047xn
    /* renamed from: a */
    public final void mo14001a(String str, String str2) {
        QueryInfo queryInfo = new QueryInfo(new end(str, null));
        ekb.m14827i().put(queryInfo, str2);
        this.f49763a.onSuccess(queryInfo);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13047xn
    /* renamed from: a */
    public final void mo14000a(String str, String str2, Bundle bundle) {
        QueryInfo queryInfo = new QueryInfo(new end(str, bundle));
        ekb.m14827i().put(queryInfo, str2);
        this.f49763a.onSuccess(queryInfo);
    }
}
