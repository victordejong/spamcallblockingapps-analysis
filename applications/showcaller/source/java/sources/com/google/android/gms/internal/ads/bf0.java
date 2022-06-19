package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/bf0.class */
final class bf0 implements f03<Void> {

    /* renamed from: a */
    final /* synthetic */ r03 f20426a;

    public bf0(cf0 cf0Var, r03 r03Var) {
        this.f20426a = r03Var;
    }

    @Override // com.google.android.gms.internal.ads.f03
    /* renamed from: a */
    public final void mo8126a(Throwable th) {
        List list;
        list = cf0.f21200a;
        list.remove(this.f20426a);
    }

    @Override // com.google.android.gms.internal.ads.f03
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ void mo8125b(Void r4) {
        List list;
        list = cf0.f21200a;
        list.remove(this.f20426a);
    }
}
