package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.internal.C6155o;
/* renamed from: com.google.android.gms.internal.measurement.j */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/j.class */
public final class C7414j extends AbstractRunnableC7629z {

    /* renamed from: h */
    final /* synthetic */ String f34545h;

    /* renamed from: i */
    final /* synthetic */ C7415j0 f34546i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7414j(C7415j0 c7415j0, String str) {
        super(c7415j0, true);
        this.f34546i = c7415j0;
        this.f34545h = str;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC7629z
    /* renamed from: a */
    final void mo6714a() {
        AbstractC7399hc abstractC7399hc;
        abstractC7399hc = this.f34546i.f34556j;
        ((AbstractC7399hc) C6155o.m17018j(abstractC7399hc)).endAdUnitExposure(this.f34545h, this.f34803e);
    }
}
