package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.C3866d;
/* renamed from: com.google.android.gms.internal.measurement.v */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/v.class */
public final class C4147v extends C3866d.AbstractRunnableC3867a {

    /* renamed from: c */
    private final /* synthetic */ boolean f18530c;

    /* renamed from: d */
    private final /* synthetic */ C3866d f18531d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4147v(C3866d c3866d, boolean z) {
        super(c3866d);
        this.f18531d = c3866d;
        this.f18530c = z;
    }

    @Override // com.google.android.gms.internal.measurement.C3866d.AbstractRunnableC3867a
    /* renamed from: b */
    final void mo4940b() {
        AbstractC4131mi abstractC4131mi;
        abstractC4131mi = this.f18531d.f17967r;
        abstractC4131mi.setDataCollectionEnabled(this.f18530c);
    }
}
