package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ayj.class */
public final class ayj implements dsi<ayh> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Context> f24006a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Set<ayi<eeg>>> f24007b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<cov> f24008c;

    private ayj(dsv<Context> dsvVar, dsv<Set<ayi<eeg>>> dsvVar2, dsv<cov> dsvVar3) {
        this.f24006a = dsvVar;
        this.f24007b = dsvVar2;
        this.f24008c = dsvVar3;
    }

    public static ayj a(dsv<Context> dsvVar, dsv<Set<ayi<eeg>>> dsvVar2, dsv<cov> dsvVar3) {
        return new ayj(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new ayh(this.f24006a.a(), this.f24007b.a(), this.f24008c.a());
    }
}
