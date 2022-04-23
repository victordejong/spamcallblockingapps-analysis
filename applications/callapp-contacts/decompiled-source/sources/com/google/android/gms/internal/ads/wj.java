package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzf;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/wj.class */
public final class wj extends xe {

    /* renamed from: a  reason: collision with root package name */
    private dsv<Context> f28469a;

    /* renamed from: b  reason: collision with root package name */
    private dsv<zzf> f28470b;

    /* renamed from: c  reason: collision with root package name */
    private dsv<wo> f28471c;

    /* renamed from: d  reason: collision with root package name */
    private dsv<wd> f28472d;
    private dsv<wf> e;
    private dsv<wh> f;
    private dsv<xf> g;

    private wj(Context context, zzf zzfVar, wo woVar) {
        this.f28469a = dsl.a(context);
        this.f28470b = dsl.a(zzfVar);
        dsi a2 = dsl.a(woVar);
        this.f28471c = a2;
        this.f28472d = dsj.a(new wc(this.f28469a, this.f28470b, a2));
        dsv<wf> a3 = dsj.a(new we(this.f28470b, this.f28471c));
        this.e = a3;
        wg wgVar = new wg(a3);
        this.f = wgVar;
        this.g = dsj.a(new xj(this.f28469a, wgVar));
    }

    @Override // com.google.android.gms.internal.ads.xe
    final wd a() {
        return this.f28472d.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.xe
    public final wh b() {
        return new wh(this.e.a());
    }

    @Override // com.google.android.gms.internal.ads.xe
    final xf c() {
        return this.g.a();
    }
}
