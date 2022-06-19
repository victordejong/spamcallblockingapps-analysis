package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/or0.class */
final class or0 implements to1 {

    /* renamed from: a */
    private final Long f27690a;

    /* renamed from: b */
    private final String f27691b;

    /* renamed from: c */
    private final fs0 f27692c;

    /* renamed from: d */
    private final qr0 f27693d;

    /* renamed from: e */
    private final or0 f27694e = this;

    public /* synthetic */ or0(fs0 fs0Var, qr0 qr0Var, Long l, String str, wr0 wr0Var) {
        this.f27692c = fs0Var;
        this.f27693d = qr0Var;
        this.f27690a = l;
        this.f27691b = str;
    }

    @Override // com.google.android.gms.internal.ads.to1
    /* renamed from: b */
    public final hp1 mo10594b() {
        Context context;
        wo1 m9104c;
        long longValue = this.f27690a.longValue();
        context = this.f27693d.f28610a;
        m9104c = xo1.m9104c(this.f27693d.f28611b);
        return ip1.m14327a(longValue, context, m9104c, this.f27692c, this.f27691b);
    }

    @Override // com.google.android.gms.internal.ads.to1
    public final dp1 zza() {
        Context context;
        wo1 m9104c;
        long longValue = this.f27690a.longValue();
        context = this.f27693d.f28610a;
        m9104c = xo1.m9104c(this.f27693d.f28611b);
        return ep1.m15407a(longValue, context, m9104c, this.f27692c, this.f27691b);
    }
}
