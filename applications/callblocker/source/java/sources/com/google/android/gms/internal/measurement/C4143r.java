package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.C3866d;
/* renamed from: com.google.android.gms.internal.measurement.r */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/r.class */
public final class C4143r extends C3866d.AbstractRunnableC3867a {

    /* renamed from: c */
    private final /* synthetic */ Bundle f18517c;

    /* renamed from: d */
    private final /* synthetic */ BinderC4129mg f18518d;

    /* renamed from: e */
    private final /* synthetic */ C3866d f18519e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4143r(C3866d c3866d, Bundle bundle, BinderC4129mg binderC4129mg) {
        super(c3866d);
        this.f18519e = c3866d;
        this.f18517c = bundle;
        this.f18518d = binderC4129mg;
    }

    @Override // com.google.android.gms.internal.measurement.C3866d.AbstractRunnableC3867a
    /* renamed from: a */
    protected final void mo4947a() {
        this.f18518d.mo4950a((Bundle) null);
    }

    @Override // com.google.android.gms.internal.measurement.C3866d.AbstractRunnableC3867a
    /* renamed from: b */
    final void mo4940b() {
        AbstractC4131mi abstractC4131mi;
        abstractC4131mi = this.f18519e.f17967r;
        abstractC4131mi.performAction(this.f18517c, this.f18518d, this.f17968a);
    }
}
