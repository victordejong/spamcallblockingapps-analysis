package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ayj.class */
public final class ayj implements dsi<ayh> {

    /* renamed from: a */
    private final dsv<Context> f43320a;

    /* renamed from: b */
    private final dsv<Set<ayi<eeg>>> f43321b;

    /* renamed from: c */
    private final dsv<cov> f43322c;

    private ayj(dsv<Context> dsvVar, dsv<Set<ayi<eeg>>> dsvVar2, dsv<cov> dsvVar3) {
        this.f43320a = dsvVar;
        this.f43321b = dsvVar2;
        this.f43322c = dsvVar3;
    }

    /* renamed from: a */
    public static ayj m18320a(dsv<Context> dsvVar, dsv<Set<ayi<eeg>>> dsvVar2, dsv<cov> dsvVar3) {
        return new ayj(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new ayh(this.f43320a.mo14005a(), this.f43321b.mo14005a(), this.f43322c.mo14005a());
    }
}
