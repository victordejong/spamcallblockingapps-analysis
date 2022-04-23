package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bwf.class */
public final class bwf<AdT> implements dsi<bwd<AdT>> {
    public static <AdT> bwd<AdT> a(cti ctiVar, bvx bvxVar, arn arnVar, cuq cuqVar, cus cusVar, anu<AdT> anuVar, Executor executor, ScheduledExecutorService scheduledExecutorService, bso bsoVar) {
        return new bwd<>(ctiVar, bvxVar, arnVar, cuqVar, cusVar, anuVar, executor, scheduledExecutorService, bsoVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        throw new NoSuchMethodError();
    }
}
