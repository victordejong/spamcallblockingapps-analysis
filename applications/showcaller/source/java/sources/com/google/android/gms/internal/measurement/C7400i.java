package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.internal.C6155o;
/* renamed from: com.google.android.gms.internal.measurement.i */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/i.class */
public final class C7400i extends AbstractRunnableC7629z {

    /* renamed from: h */
    final /* synthetic */ String f34514h;

    /* renamed from: i */
    final /* synthetic */ C7415j0 f34515i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7400i(C7415j0 c7415j0, String str) {
        super(c7415j0, true);
        this.f34515i = c7415j0;
        this.f34514h = str;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC7629z
    /* renamed from: a */
    final void mo6714a() {
        AbstractC7399hc abstractC7399hc;
        abstractC7399hc = this.f34515i.f34556j;
        ((AbstractC7399hc) C6155o.m17018j(abstractC7399hc)).beginAdUnitExposure(this.f34514h, this.f34803e);
    }
}
