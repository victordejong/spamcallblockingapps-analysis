package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.BinderC6255b;
/* renamed from: com.google.android.gms.internal.ads.lr */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/lr.class */
public final class C6711lr extends AbstractC7081vr<AbstractC7008ts> {

    /* renamed from: b */
    final /* synthetic */ Context f26233b;

    /* renamed from: c */
    final /* synthetic */ zzbdl f26234c;

    /* renamed from: d */
    final /* synthetic */ String f26235d;

    /* renamed from: e */
    final /* synthetic */ C7044ur f26236e;

    public C6711lr(C7044ur c7044ur, Context context, zzbdl zzbdlVar, String str) {
        this.f26236e = c7044ur;
        this.f26233b = context;
        this.f26234c = zzbdlVar;
        this.f26235d = str;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7081vr
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ AbstractC7008ts mo9880a() {
        C7044ur.m10192h(this.f26233b, "search");
        return new BinderC6566hv();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7081vr
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ AbstractC7008ts mo9879b() {
        C7006tq c7006tq;
        c7006tq = this.f26236e.f30937a;
        return c7006tq.m10566c(this.f26233b, this.f26234c, this.f26235d, null, 3);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7081vr
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ AbstractC7008ts mo9878c(AbstractC6415dt abstractC6415dt) {
        return abstractC6415dt.mo15703D5(BinderC6255b.m16744m2(this.f26233b), this.f26234c, this.f26235d, 213806000);
    }
}
