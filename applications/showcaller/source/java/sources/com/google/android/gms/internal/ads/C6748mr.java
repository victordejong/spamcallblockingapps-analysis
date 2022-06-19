package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.BinderC6255b;
/* renamed from: com.google.android.gms.internal.ads.mr */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/mr.class */
public final class C6748mr extends AbstractC7081vr<AbstractC7008ts> {

    /* renamed from: b */
    final /* synthetic */ Context f26722b;

    /* renamed from: c */
    final /* synthetic */ zzbdl f26723c;

    /* renamed from: d */
    final /* synthetic */ String f26724d;

    /* renamed from: e */
    final /* synthetic */ s70 f26725e;

    /* renamed from: f */
    final /* synthetic */ C7044ur f26726f;

    public C6748mr(C7044ur c7044ur, Context context, zzbdl zzbdlVar, String str, s70 s70Var) {
        this.f26726f = c7044ur;
        this.f26722b = context;
        this.f26723c = zzbdlVar;
        this.f26724d = str;
        this.f26725e = s70Var;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7081vr
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ AbstractC7008ts mo9880a() {
        C7044ur.m10192h(this.f26722b, "interstitial");
        return new BinderC6566hv();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7081vr
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ AbstractC7008ts mo9879b() {
        C7006tq c7006tq;
        c7006tq = this.f26726f.f30937a;
        return c7006tq.m10566c(this.f26722b, this.f26723c, this.f26724d, this.f26725e, 2);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7081vr
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ AbstractC7008ts mo9878c(AbstractC6415dt abstractC6415dt) {
        return abstractC6415dt.mo15690w2(BinderC6255b.m16744m2(this.f26722b), this.f26723c, this.f26724d, this.f26725e, 213806000);
    }
}
