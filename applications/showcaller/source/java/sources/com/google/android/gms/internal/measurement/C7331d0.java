package com.google.android.gms.internal.measurement;

import android.app.Activity;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.dynamic.BinderC6255b;
/* renamed from: com.google.android.gms.internal.measurement.d0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/d0.class */
final class C7331d0 extends AbstractRunnableC7629z {

    /* renamed from: h */
    final /* synthetic */ Activity f34385h;

    /* renamed from: i */
    final /* synthetic */ C7401i0 f34386i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7331d0(C7401i0 c7401i0, Activity activity) {
        super(c7401i0.f34516d, true);
        this.f34386i = c7401i0;
        this.f34385h = activity;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC7629z
    /* renamed from: a */
    final void mo6714a() {
        AbstractC7399hc abstractC7399hc;
        abstractC7399hc = this.f34386i.f34516d.f34556j;
        ((AbstractC7399hc) C6155o.m17018j(abstractC7399hc)).onActivityResumed(BinderC6255b.m16744m2(this.f34385h), this.f34803e);
    }
}
