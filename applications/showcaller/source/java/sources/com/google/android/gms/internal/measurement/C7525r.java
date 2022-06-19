package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.common.internal.C6155o;
/* renamed from: com.google.android.gms.internal.measurement.r */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/r.class */
public final class C7525r extends AbstractRunnableC7629z {

    /* renamed from: h */
    final /* synthetic */ Bundle f34656h;

    /* renamed from: i */
    final /* synthetic */ BinderC7328cb f34657i;

    /* renamed from: j */
    final /* synthetic */ C7415j0 f34658j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7525r(C7415j0 c7415j0, Bundle bundle, BinderC7328cb binderC7328cb) {
        super(c7415j0, true);
        this.f34658j = c7415j0;
        this.f34656h = bundle;
        this.f34657i = binderC7328cb;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC7629z
    /* renamed from: a */
    final void mo6714a() {
        AbstractC7399hc abstractC7399hc;
        abstractC7399hc = this.f34658j.f34556j;
        ((AbstractC7399hc) C6155o.m17018j(abstractC7399hc)).performAction(this.f34656h, this.f34657i, this.f34802d);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC7629z
    /* renamed from: b */
    protected final void mo6713b() {
        this.f34657i.mo7197C0(null);
    }
}
