package com.google.android.gms.internal.measurement;

import android.app.Activity;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.dynamic.BinderC6255b;
/* renamed from: com.google.android.gms.internal.measurement.g0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/g0.class */
final class C7373g0 extends AbstractRunnableC7629z {

    /* renamed from: h */
    final /* synthetic */ Activity f34481h;

    /* renamed from: i */
    final /* synthetic */ BinderC7328cb f34482i;

    /* renamed from: j */
    final /* synthetic */ C7401i0 f34483j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7373g0(C7401i0 c7401i0, Activity activity, BinderC7328cb binderC7328cb) {
        super(c7401i0.f34516d, true);
        this.f34483j = c7401i0;
        this.f34481h = activity;
        this.f34482i = binderC7328cb;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC7629z
    /* renamed from: a */
    final void mo6714a() {
        AbstractC7399hc abstractC7399hc;
        abstractC7399hc = this.f34483j.f34516d.f34556j;
        ((AbstractC7399hc) C6155o.m17018j(abstractC7399hc)).onActivitySaveInstanceState(BinderC6255b.m16744m2(this.f34481h), this.f34482i, this.f34803e);
    }
}
