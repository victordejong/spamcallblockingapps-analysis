package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzf;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/wc.class */
public final class wc implements dsi<wd> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Context> f28456a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<zzf> f28457b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<wo> f28458c;

    public wc(dsv<Context> dsvVar, dsv<zzf> dsvVar2, dsv<wo> dsvVar3) {
        this.f28456a = dsvVar;
        this.f28457b = dsvVar2;
        this.f28458c = dsvVar3;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new wd(this.f28456a.a(), this.f28457b.a(), this.f28458c.a());
    }
}
