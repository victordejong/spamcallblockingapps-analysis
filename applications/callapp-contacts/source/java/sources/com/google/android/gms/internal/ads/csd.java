package com.google.android.gms.internal.ads;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/csd.class */
public final class csd implements dsi<dbs> {
    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        cxa m17086a = cwz.m17086a();
        int i = cxh.f46724b;
        ExecutorService mo17083b = m17086a.mo17083b();
        return (dbs) dso.m15764b(mo17083b instanceof dbs ? (dbs) mo17083b : mo17083b instanceof ScheduledExecutorService ? new dbw((ScheduledExecutorService) mo17083b) : new dbx(mo17083b));
    }
}
