package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzf;
/* renamed from: com.google.android.gms.internal.ads.wj */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/wj.class */
public final class C13014wj extends AbstractC13038xe {

    /* renamed from: a */
    private dsv<Context> f49965a;

    /* renamed from: b */
    private dsv<zzf> f49966b;

    /* renamed from: c */
    private dsv<C13019wo> f49967c;

    /* renamed from: d */
    private dsv<SharedPreferences$OnSharedPreferenceChangeListenerC13008wd> f49968d;

    /* renamed from: e */
    private dsv<C13010wf> f49969e;

    /* renamed from: f */
    private dsv<C13012wh> f49970f;

    /* renamed from: g */
    private dsv<C13039xf> f49971g;

    /* JADX INFO: Access modifiers changed from: private */
    public C13014wj(Context context, zzf zzfVar, C13019wo c13019wo) {
        this.f49965a = dsl.m15771a(context);
        this.f49966b = dsl.m15771a(zzfVar);
        dsi m15771a = dsl.m15771a(c13019wo);
        this.f49967c = m15771a;
        this.f49968d = dsj.m15774a(new C13007wc(this.f49965a, this.f49966b, m15771a));
        dsv<C13010wf> m15774a = dsj.m15774a(new C13009we(this.f49966b, this.f49967c));
        this.f49969e = m15774a;
        C13011wg c13011wg = new C13011wg(m15774a);
        this.f49970f = c13011wg;
        this.f49971g = dsj.m15774a(new C13043xj(this.f49965a, c13011wg));
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13038xe
    /* renamed from: a */
    final SharedPreferences$OnSharedPreferenceChangeListenerC13008wd mo14014a() {
        return this.f49968d.mo14005a();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13038xe
    /* renamed from: b */
    public final C13012wh mo14012b() {
        return new C13012wh(this.f49969e.mo14005a());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13038xe
    /* renamed from: c */
    final C13039xf mo14011c() {
        return this.f49971g.mo14005a();
    }
}
