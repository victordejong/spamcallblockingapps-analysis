package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.BinderC6255b;
/* renamed from: com.google.android.gms.internal.ads.kr */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/kr.class */
public final class C6674kr extends AbstractC7081vr<AbstractC7008ts> {

    /* renamed from: b */
    final /* synthetic */ Context f25298b;

    /* renamed from: c */
    final /* synthetic */ zzbdl f25299c;

    /* renamed from: d */
    final /* synthetic */ String f25300d;

    /* renamed from: e */
    final /* synthetic */ s70 f25301e;

    /* renamed from: f */
    final /* synthetic */ C7044ur f25302f;

    public C6674kr(C7044ur c7044ur, Context context, zzbdl zzbdlVar, String str, s70 s70Var) {
        this.f25302f = c7044ur;
        this.f25298b = context;
        this.f25299c = zzbdlVar;
        this.f25300d = str;
        this.f25301e = s70Var;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7081vr
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ AbstractC7008ts mo9880a() {
        C7044ur.m10192h(this.f25298b, "app_open");
        return new BinderC6566hv();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7081vr
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ AbstractC7008ts mo9879b() {
        C7006tq c7006tq;
        c7006tq = this.f25302f.f30937a;
        return c7006tq.m10566c(this.f25298b, this.f25299c, this.f25300d, this.f25301e, 4);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7081vr
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ AbstractC7008ts mo9878c(AbstractC6415dt abstractC6415dt) {
        return abstractC6415dt.mo15696j2(BinderC6255b.m16744m2(this.f25298b), this.f25299c, this.f25300d, this.f25301e, 213806000);
    }
}
