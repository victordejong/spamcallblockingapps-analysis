package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.BinderC6255b;
/* renamed from: com.google.android.gms.internal.ads.tr */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/tr.class */
public final class C7007tr extends AbstractC7081vr<fe0> {

    /* renamed from: b */
    final /* synthetic */ Context f30119b;

    /* renamed from: c */
    final /* synthetic */ String f30120c;

    /* renamed from: d */
    final /* synthetic */ s70 f30121d;

    /* renamed from: e */
    final /* synthetic */ C7044ur f30122e;

    public C7007tr(C7044ur c7044ur, Context context, String str, s70 s70Var) {
        this.f30122e = c7044ur;
        this.f30119b = context;
        this.f30120c = str;
        this.f30121d = s70Var;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7081vr
    /* renamed from: a */
    protected final /* bridge */ /* synthetic */ fe0 mo9880a() {
        C7044ur.m10192h(this.f30119b, "rewarded");
        return new BinderC6752mv();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7081vr
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ fe0 mo9879b() {
        return se0.m11077a(this.f30119b, this.f30120c, this.f30121d);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7081vr
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ fe0 mo9878c(AbstractC6415dt abstractC6415dt) {
        return abstractC6415dt.mo15697h3(BinderC6255b.m16744m2(this.f30119b), this.f30120c, this.f30121d, 213806000);
    }
}
