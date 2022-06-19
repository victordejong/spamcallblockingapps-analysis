package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.common.internal.C6155o;
/* renamed from: com.google.android.gms.internal.measurement.g */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/g.class */
public final class C7372g extends AbstractRunnableC7629z {

    /* renamed from: h */
    final /* synthetic */ Bundle f34479h;

    /* renamed from: i */
    final /* synthetic */ C7415j0 f34480i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7372g(C7415j0 c7415j0, Bundle bundle) {
        super(c7415j0, true);
        this.f34480i = c7415j0;
        this.f34479h = bundle;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC7629z
    /* renamed from: a */
    final void mo6714a() {
        AbstractC7399hc abstractC7399hc;
        abstractC7399hc = this.f34480i.f34556j;
        ((AbstractC7399hc) C6155o.m17018j(abstractC7399hc)).setConsent(this.f34479h, this.f34802d);
    }
}
