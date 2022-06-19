package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.C3866d;
/* renamed from: com.google.android.gms.internal.measurement.j */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/j.class */
public final class C4041j extends C3866d.AbstractRunnableC3867a {

    /* renamed from: c */
    private final /* synthetic */ String f18390c;

    /* renamed from: d */
    private final /* synthetic */ C3866d f18391d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4041j(C3866d c3866d, String str) {
        super(c3866d);
        this.f18391d = c3866d;
        this.f18390c = str;
    }

    @Override // com.google.android.gms.internal.measurement.C3866d.AbstractRunnableC3867a
    /* renamed from: b */
    final void mo4940b() {
        AbstractC4131mi abstractC4131mi;
        abstractC4131mi = this.f18391d.f17967r;
        abstractC4131mi.beginAdUnitExposure(this.f18390c, this.f17969b);
    }
}
