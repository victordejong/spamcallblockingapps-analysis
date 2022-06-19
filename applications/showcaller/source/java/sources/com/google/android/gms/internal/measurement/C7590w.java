package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.internal.C6155o;
/* renamed from: com.google.android.gms.internal.measurement.w */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/w.class */
public final class C7590w extends AbstractRunnableC7629z {

    /* renamed from: h */
    final /* synthetic */ BinderC7289a0 f34740h;

    /* renamed from: i */
    final /* synthetic */ C7415j0 f34741i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7590w(C7415j0 c7415j0, BinderC7289a0 binderC7289a0) {
        super(c7415j0, true);
        this.f34741i = c7415j0;
        this.f34740h = binderC7289a0;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC7629z
    /* renamed from: a */
    final void mo6714a() {
        AbstractC7399hc abstractC7399hc;
        abstractC7399hc = this.f34741i.f34556j;
        ((AbstractC7399hc) C6155o.m17018j(abstractC7399hc)).registerOnMeasurementEventListener(this.f34740h);
    }
}
