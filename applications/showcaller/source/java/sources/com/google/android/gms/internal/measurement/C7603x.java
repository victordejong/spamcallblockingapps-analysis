package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.common.internal.C6155o;
/* renamed from: com.google.android.gms.internal.measurement.x */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/x.class */
public final class C7603x extends AbstractRunnableC7629z {

    /* renamed from: h */
    final /* synthetic */ Long f34747h;

    /* renamed from: i */
    final /* synthetic */ String f34748i;

    /* renamed from: j */
    final /* synthetic */ String f34749j;

    /* renamed from: k */
    final /* synthetic */ Bundle f34750k;

    /* renamed from: l */
    final /* synthetic */ boolean f34751l;

    /* renamed from: m */
    final /* synthetic */ boolean f34752m;

    /* renamed from: n */
    final /* synthetic */ C7415j0 f34753n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7603x(C7415j0 c7415j0, Long l, String str, String str2, Bundle bundle, boolean z, boolean z2) {
        super(c7415j0, true);
        this.f34753n = c7415j0;
        this.f34747h = l;
        this.f34748i = str;
        this.f34749j = str2;
        this.f34750k = bundle;
        this.f34751l = z;
        this.f34752m = z2;
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC7629z
    /* renamed from: a */
    final void mo6714a() {
        AbstractC7399hc abstractC7399hc;
        Long l = this.f34747h;
        char longValue = l == null ? this.f34802d : l.longValue();
        abstractC7399hc = this.f34753n.f34556j;
        ((AbstractC7399hc) C6155o.m17018j(abstractC7399hc)).logEvent(this.f34748i, this.f34749j, this.f34750k, this.f34751l, this.f34752m, longValue);
    }
}
