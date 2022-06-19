package com.google.android.gms.internal.measurement;

import com.google.android.gms.common.internal.C6155o;
/* renamed from: com.google.android.gms.internal.measurement.p */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/p.class */
public final class C7498p extends AbstractRunnableC7629z {

    /* renamed from: h */
    final /* synthetic */ String f34625h;

    /* renamed from: i */
    final /* synthetic */ String f34626i;

    /* renamed from: j */
    final /* synthetic */ boolean f34627j;

    /* renamed from: k */
    final /* synthetic */ BinderC7328cb f34628k;

    /* renamed from: l */
    final /* synthetic */ C7415j0 f34629l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7498p(C7415j0 c7415j0, String str, String str2, boolean z, BinderC7328cb binderC7328cb) {
        super(c7415j0, true);
        this.f34629l = c7415j0;
        this.f34625h = str;
        this.f34626i = str2;
        this.f34627j = z;
        this.f34628k = binderC7328cb;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC7629z
    /* renamed from: a */
    final void mo6714a() {
        AbstractC7399hc abstractC7399hc;
        abstractC7399hc = this.f34629l.f34556j;
        ((AbstractC7399hc) C6155o.m17018j(abstractC7399hc)).getUserProperties(this.f34625h, this.f34626i, this.f34627j, this.f34628k);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC7629z
    /* renamed from: b */
    protected final void mo6713b() {
        this.f34628k.mo7197C0(null);
    }
}
