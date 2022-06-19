package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.common.internal.C6155o;
/* renamed from: com.google.android.gms.internal.measurement.c */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/c.class */
public final class C7316c extends AbstractRunnableC7629z {

    /* renamed from: h */
    final /* synthetic */ Bundle f34369h;

    /* renamed from: i */
    final /* synthetic */ C7415j0 f34370i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7316c(C7415j0 c7415j0, Bundle bundle) {
        super(c7415j0, true);
        this.f34370i = c7415j0;
        this.f34369h = bundle;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC7629z
    /* renamed from: a */
    final void mo6714a() {
        AbstractC7399hc abstractC7399hc;
        abstractC7399hc = this.f34370i.f34556j;
        ((AbstractC7399hc) C6155o.m17018j(abstractC7399hc)).setConditionalUserProperty(this.f34369h, this.f34802d);
    }
}
