package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.internal.C6155o;
/* renamed from: com.google.android.gms.internal.measurement.v */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/v.class */
public final class C7577v extends AbstractRunnableC7629z {

    /* renamed from: h */
    final /* synthetic */ boolean f34719h;

    /* renamed from: i */
    final /* synthetic */ C7415j0 f34720i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7577v(C7415j0 c7415j0, boolean z) {
        super(c7415j0, true);
        this.f34720i = c7415j0;
        this.f34719h = z;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC7629z
    /* renamed from: a */
    final void mo6714a() {
        AbstractC7399hc abstractC7399hc;
        abstractC7399hc = this.f34720i.f34556j;
        ((AbstractC7399hc) C6155o.m17018j(abstractC7399hc)).setDataCollectionEnabled(this.f34719h);
    }
}
