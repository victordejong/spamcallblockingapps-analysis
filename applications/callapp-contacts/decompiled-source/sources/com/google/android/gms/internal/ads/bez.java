package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.VideoController;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bez.class */
public final class bez implements dsi<ayi<VideoController.VideoLifecycleCallbacks>> {

    /* renamed from: a  reason: collision with root package name */
    private final beq f24302a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<bhq> f24303b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<Executor> f24304c;

    public bez(beq beqVar, dsv<bhq> dsvVar, dsv<Executor> dsvVar2) {
        this.f24302a = beqVar;
        this.f24303b = dsvVar;
        this.f24304c = dsvVar2;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (ayi) dso.b(new ayi(this.f24303b.a(), this.f24304c.a()));
    }
}
