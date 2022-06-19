package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.dynamic.AbstractC2731a;
import com.google.android.gms.dynamic.BinderC2734b;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bns.class */
final class bns extends AbstractBinderC3320ma {

    /* renamed from: a */
    private bmx<AbstractC3333mn, bof> f11627a;

    /* renamed from: b */
    private final /* synthetic */ bnr f11628b;

    /* JADX INFO: Access modifiers changed from: private */
    public bns(bnr bnrVar, bmx<AbstractC3333mn, bof> bmxVar) {
        this.f11628b = bnrVar;
        this.f11627a = bmxVar;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3321mb
    /* renamed from: a */
    public final void mo7468a(AbstractC2731a abstractC2731a) {
        this.f11628b.f11626c = (View) BinderC2734b.m13795a(abstractC2731a);
        this.f11627a.f11572c.mo7576e();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3321mb
    /* renamed from: a */
    public final void mo7467a(String str) {
        this.f11627a.f11572c.mo7589a(0, str);
    }
}
