package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.internal.C6155o;
/* renamed from: com.google.android.gms.internal.measurement.e */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/e.class */
public final class C7344e extends AbstractRunnableC7629z {

    /* renamed from: h */
    final /* synthetic */ String f34408h;

    /* renamed from: i */
    final /* synthetic */ String f34409i;

    /* renamed from: j */
    final /* synthetic */ BinderC7328cb f34410j;

    /* renamed from: k */
    final /* synthetic */ C7415j0 f34411k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7344e(C7415j0 c7415j0, String str, String str2, BinderC7328cb binderC7328cb) {
        super(c7415j0, true);
        this.f34411k = c7415j0;
        this.f34408h = str;
        this.f34409i = str2;
        this.f34410j = binderC7328cb;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC7629z
    /* renamed from: a */
    final void mo6714a() {
        AbstractC7399hc abstractC7399hc;
        abstractC7399hc = this.f34411k.f34556j;
        ((AbstractC7399hc) C6155o.m17018j(abstractC7399hc)).getConditionalUserProperties(this.f34408h, this.f34409i, this.f34410j);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC7629z
    /* renamed from: b */
    protected final void mo6713b() {
        this.f34410j.mo7197C0(null);
    }
}
