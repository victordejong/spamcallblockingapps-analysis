package com.google.android.gms.internal.measurement;

import android.app.Activity;
import com.google.android.gms.dynamic.BinderC2734b;
import com.google.android.gms.internal.measurement.C3866d;
/* renamed from: com.google.android.gms.internal.measurement.ac */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ac.class */
final class C3744ac extends C3866d.AbstractRunnableC3867a {

    /* renamed from: c */
    private final /* synthetic */ Activity f17805c;

    /* renamed from: d */
    private final /* synthetic */ C3866d.C3868b f17806d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3744ac(C3866d.C3868b c3868b, Activity activity) {
        super(C3866d.this);
        this.f17806d = c3868b;
        this.f17805c = activity;
    }

    @Override // com.google.android.gms.internal.measurement.C3866d.AbstractRunnableC3867a
    /* renamed from: b */
    final void mo4940b() {
        AbstractC4131mi abstractC4131mi;
        abstractC4131mi = C3866d.this.f17967r;
        abstractC4131mi.onActivityStopped(BinderC2734b.m13794a(this.f17805c), this.f17969b);
    }
}
