package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bkm.class */
final class bkm implements ash {

    /* renamed from: a */
    private final Context f11427a;

    /* renamed from: b */
    private final C3509ta f11428b;

    public bkm(Context context, C3509ta c3509ta) {
        this.f11427a = context;
        this.f11428b = c3509ta;
    }

    @Override // com.google.android.gms.internal.ads.ash
    /* renamed from: a */
    public final void mo11830a(chd chdVar) {
        if (!TextUtils.isEmpty(chdVar.f13035b.f13025b.f13008d)) {
            this.f11428b.m7165a(this.f11427a, chdVar.f13034a.f13017a.f13040d);
            this.f11428b.m7142f(this.f11427a, chdVar.f13035b.f13025b.f13008d);
        }
    }

    @Override // com.google.android.gms.internal.ads.ash
    /* renamed from: a */
    public final void mo11829a(C3423pw c3423pw) {
    }
}
