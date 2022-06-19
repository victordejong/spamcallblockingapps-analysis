package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bse.class */
public final class bse implements bry<avq> {

    /* renamed from: a */
    private final Context f12152a;

    /* renamed from: b */
    private final awq f12153b;

    public bse(Context context, awq awqVar) {
        this.f12152a = context;
        this.f12153b = awqVar;
    }

    @Override // com.google.android.gms.internal.ads.bry
    /* renamed from: a */
    public final /* synthetic */ avq mo11683a(chd chdVar, cgr cgrVar, View view, bsf bsfVar) {
        avs mo12372a = this.f12153b.mo12372a(new amy(chdVar, cgrVar, null), new bsg(this, bsh.f12155a));
        bsfVar.m11682a(new bsj(this, mo12372a));
        return mo12372a.mo12403h();
    }
}
