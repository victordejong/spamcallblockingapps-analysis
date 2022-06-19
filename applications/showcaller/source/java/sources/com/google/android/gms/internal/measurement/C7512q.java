package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.dynamic.BinderC6255b;
/* renamed from: com.google.android.gms.internal.measurement.q */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/q.class */
public final class C7512q extends AbstractRunnableC7629z {

    /* renamed from: h */
    final /* synthetic */ String f34635h;

    /* renamed from: i */
    final /* synthetic */ Object f34636i;

    /* renamed from: j */
    final /* synthetic */ C7415j0 f34637j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7512q(C7415j0 c7415j0, boolean z, int i, String str, Object obj, Object obj2, Object obj3) {
        super(c7415j0, false);
        this.f34637j = c7415j0;
        this.f34635h = str;
        this.f34636i = obj;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC7629z
    /* renamed from: a */
    final void mo6714a() {
        AbstractC7399hc abstractC7399hc;
        abstractC7399hc = this.f34637j.f34556j;
        ((AbstractC7399hc) C6155o.m17018j(abstractC7399hc)).logHealthData(5, this.f34635h, BinderC6255b.m16744m2(this.f34636i), BinderC6255b.m16744m2(null), BinderC6255b.m16744m2(null));
    }
}
