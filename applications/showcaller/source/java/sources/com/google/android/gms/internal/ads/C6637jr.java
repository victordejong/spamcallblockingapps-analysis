package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.BinderC6255b;
/* renamed from: com.google.android.gms.internal.ads.jr */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/jr.class */
public final class C6637jr extends AbstractC7081vr<AbstractC7008ts> {

    /* renamed from: b */
    final /* synthetic */ Context f24959b;

    /* renamed from: c */
    final /* synthetic */ zzbdl f24960c;

    /* renamed from: d */
    final /* synthetic */ String f24961d;

    /* renamed from: e */
    final /* synthetic */ s70 f24962e;

    /* renamed from: f */
    final /* synthetic */ C7044ur f24963f;

    public C6637jr(C7044ur c7044ur, Context context, zzbdl zzbdlVar, String str, s70 s70Var) {
        this.f24963f = c7044ur;
        this.f24959b = context;
        this.f24960c = zzbdlVar;
        this.f24961d = str;
        this.f24962e = s70Var;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7081vr
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ AbstractC7008ts mo9880a() {
        C7044ur.m10192h(this.f24959b, "banner");
        return new BinderC6566hv();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7081vr
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ AbstractC7008ts mo9879b() {
        C7006tq c7006tq;
        c7006tq = this.f24963f.f30937a;
        return c7006tq.m10566c(this.f24959b, this.f24960c, this.f24961d, this.f24962e, 1);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7081vr
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ AbstractC7008ts mo9878c(AbstractC6415dt abstractC6415dt) {
        return abstractC6415dt.mo15691u4(BinderC6255b.m16744m2(this.f24959b), this.f24960c, this.f24961d, this.f24962e, 213806000);
    }
}
