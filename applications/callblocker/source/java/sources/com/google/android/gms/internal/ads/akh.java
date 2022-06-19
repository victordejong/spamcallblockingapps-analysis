package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.AbstractC2708e;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/akh.class */
public final class akh implements dht<arz> {

    /* renamed from: a */
    private final dig<ScheduledExecutorService> f9875a;

    /* renamed from: b */
    private final dig<AbstractC2708e> f9876b;

    public akh(dig<ScheduledExecutorService> digVar, dig<AbstractC2708e> digVar2) {
        this.f9875a = digVar;
        this.f9876b = digVar2;
    }

    /* renamed from: a */
    public static arz m13024a(ScheduledExecutorService scheduledExecutorService, AbstractC2708e abstractC2708e) {
        return (arz) dhz.m9438a(new arz(scheduledExecutorService, abstractC2708e), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.dig
    /* renamed from: a */
    public final /* synthetic */ Object mo9430a() {
        return m13024a(this.f9875a.mo9430a(), this.f9876b.mo9430a());
    }
}
