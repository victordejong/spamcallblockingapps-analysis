package com.google.android.gms.internal.measurement;

import android.app.Activity;
import com.google.android.gms.dynamic.BinderC2734b;
import com.google.android.gms.internal.measurement.C3866d;
/* renamed from: com.google.android.gms.internal.measurement.ae */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/ae.class */
final class C3746ae extends C3866d.AbstractRunnableC3867a {

    /* renamed from: c */
    private final /* synthetic */ Activity f17809c;

    /* renamed from: d */
    private final /* synthetic */ C3866d.C3868b f17810d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3746ae(C3866d.C3868b c3868b, Activity activity) {
        super(C3866d.this);
        this.f17810d = c3868b;
        this.f17809c = activity;
    }

    @Override // com.google.android.gms.internal.measurement.C3866d.AbstractRunnableC3867a
    /* renamed from: b */
    final void mo4940b() {
        AbstractC4131mi abstractC4131mi;
        abstractC4131mi = C3866d.this.f17967r;
        abstractC4131mi.onActivityDestroyed(BinderC2734b.m13794a(this.f17809c), this.f17969b);
    }
}
