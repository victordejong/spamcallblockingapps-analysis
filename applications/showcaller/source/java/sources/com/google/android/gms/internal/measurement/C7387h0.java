package com.google.android.gms.internal.measurement;

import android.app.Activity;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.dynamic.BinderC6255b;
/* renamed from: com.google.android.gms.internal.measurement.h0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/h0.class */
final class C7387h0 extends AbstractRunnableC7629z {

    /* renamed from: h */
    final /* synthetic */ Activity f34498h;

    /* renamed from: i */
    final /* synthetic */ C7401i0 f34499i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7387h0(C7401i0 c7401i0, Activity activity) {
        super(c7401i0.f34516d, true);
        this.f34499i = c7401i0;
        this.f34498h = activity;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC7629z
    /* renamed from: a */
    final void mo6714a() {
        AbstractC7399hc abstractC7399hc;
        abstractC7399hc = this.f34499i.f34516d.f34556j;
        ((AbstractC7399hc) C6155o.m17018j(abstractC7399hc)).onActivityDestroyed(BinderC6255b.m16744m2(this.f34498h), this.f34803e);
    }
}
