package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/csd.class */
public final class csd implements dsi<dbs> {
    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        cxa a2 = cwz.a();
        int i = cxh.f26533b;
        ExecutorService b2 = a2.b();
        return (dbs) dso.b(b2 instanceof dbs ? (dbs) b2 : b2 instanceof ScheduledExecutorService ? new dbw((ScheduledExecutorService) b2) : new dbx(b2));
    }
}
