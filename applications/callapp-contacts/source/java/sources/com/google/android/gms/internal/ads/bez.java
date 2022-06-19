package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.VideoController;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bez.class */
public final class bez implements dsi<ayi<VideoController.VideoLifecycleCallbacks>> {

    /* renamed from: a */
    private final beq f43764a;

    /* renamed from: b */
    private final dsv<bhq> f43765b;

    /* renamed from: c */
    private final dsv<Executor> f43766c;

    public bez(beq beqVar, dsv<bhq> dsvVar, dsv<Executor> dsvVar2) {
        this.f43764a = beqVar;
        this.f43765b = dsvVar;
        this.f43766c = dsvVar2;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (ayi) dso.m15764b(new ayi(this.f43765b.mo14005a(), this.f43766c.mo14005a()));
    }
}
