package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.common.internal.C6155o;
/* renamed from: com.google.android.gms.internal.measurement.d */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/d.class */
public final class C7330d extends AbstractRunnableC7629z {

    /* renamed from: h */
    final /* synthetic */ String f34381h;

    /* renamed from: i */
    final /* synthetic */ String f34382i;

    /* renamed from: j */
    final /* synthetic */ Bundle f34383j;

    /* renamed from: k */
    final /* synthetic */ C7415j0 f34384k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7330d(C7415j0 c7415j0, String str, String str2, Bundle bundle) {
        super(c7415j0, true);
        this.f34384k = c7415j0;
        this.f34381h = str;
        this.f34382i = str2;
        this.f34383j = bundle;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC7629z
    /* renamed from: a */
    final void mo6714a() {
        AbstractC7399hc abstractC7399hc;
        abstractC7399hc = this.f34384k.f34556j;
        ((AbstractC7399hc) C6155o.m17018j(abstractC7399hc)).clearConditionalUserProperty(this.f34381h, this.f34382i, this.f34383j);
    }
}
