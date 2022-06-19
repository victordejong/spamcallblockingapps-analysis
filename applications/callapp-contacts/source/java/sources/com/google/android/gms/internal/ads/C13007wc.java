package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzf;
/* renamed from: com.google.android.gms.internal.ads.wc */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/wc.class */
public final class C13007wc implements dsi<SharedPreferences$OnSharedPreferenceChangeListenerC13008wd> {

    /* renamed from: a */
    private final dsv<Context> f49951a;

    /* renamed from: b */
    private final dsv<zzf> f49952b;

    /* renamed from: c */
    private final dsv<C13019wo> f49953c;

    public C13007wc(dsv<Context> dsvVar, dsv<zzf> dsvVar2, dsv<C13019wo> dsvVar3) {
        this.f49951a = dsvVar;
        this.f49952b = dsvVar2;
        this.f49953c = dsvVar3;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new SharedPreferences$OnSharedPreferenceChangeListenerC13008wd(this.f49951a.mo14005a(), this.f49952b.mo14005a(), this.f49953c.mo14005a());
    }
}
