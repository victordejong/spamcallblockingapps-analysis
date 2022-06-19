package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.internal.C6155o;
/* renamed from: com.google.android.gms.internal.measurement.m */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/m.class */
public final class C7456m extends AbstractRunnableC7629z {

    /* renamed from: h */
    final /* synthetic */ BinderC7328cb f34587h;

    /* renamed from: i */
    final /* synthetic */ C7415j0 f34588i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7456m(C7415j0 c7415j0, BinderC7328cb binderC7328cb) {
        super(c7415j0, true);
        this.f34588i = c7415j0;
        this.f34587h = binderC7328cb;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC7629z
    /* renamed from: a */
    final void mo6714a() {
        AbstractC7399hc abstractC7399hc;
        abstractC7399hc = this.f34588i.f34556j;
        ((AbstractC7399hc) C6155o.m17018j(abstractC7399hc)).generateEventId(this.f34587h);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC7629z
    /* renamed from: b */
    protected final void mo6713b() {
        this.f34587h.mo7197C0(null);
    }
}
