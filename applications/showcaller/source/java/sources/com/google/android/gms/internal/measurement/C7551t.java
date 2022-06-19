package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.internal.C6155o;
/* renamed from: com.google.android.gms.internal.measurement.t */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/t.class */
public final class C7551t extends AbstractRunnableC7629z {

    /* renamed from: h */
    final /* synthetic */ String f34687h;

    /* renamed from: i */
    final /* synthetic */ BinderC7328cb f34688i;

    /* renamed from: j */
    final /* synthetic */ C7415j0 f34689j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7551t(C7415j0 c7415j0, String str, BinderC7328cb binderC7328cb) {
        super(c7415j0, true);
        this.f34689j = c7415j0;
        this.f34687h = str;
        this.f34688i = binderC7328cb;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC7629z
    /* renamed from: a */
    final void mo6714a() {
        AbstractC7399hc abstractC7399hc;
        abstractC7399hc = this.f34689j.f34556j;
        ((AbstractC7399hc) C6155o.m17018j(abstractC7399hc)).getMaxUserProperties(this.f34687h, this.f34688i);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC7629z
    /* renamed from: b */
    protected final void mo6713b() {
        this.f34688i.mo7197C0(null);
    }
}
