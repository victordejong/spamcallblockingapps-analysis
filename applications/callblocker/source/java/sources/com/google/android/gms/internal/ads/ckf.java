package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ckf.class */
public final class ckf implements dht<ScheduledExecutorService> {

    /* renamed from: a */
    private final dig<ThreadFactory> f13197a;

    public ckf(dig<ThreadFactory> digVar) {
        this.f13197a = digVar;
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return (ScheduledExecutorService) dhz.m9438a(new ScheduledThreadPoolExecutor(1, this.f13197a.mo9430a()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
