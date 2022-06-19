package com.google.android.gms.internal.measurement;

import android.app.Activity;
import com.google.android.gms.dynamic.BinderC2734b;
import com.google.android.gms.internal.measurement.C3866d;
/* renamed from: com.google.android.gms.internal.measurement.af */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/af.class */
final class C3747af extends C3866d.AbstractRunnableC3867a {

    /* renamed from: c */
    private final /* synthetic */ Activity f17811c;

    /* renamed from: d */
    private final /* synthetic */ BinderC4129mg f17812d;

    /* renamed from: e */
    private final /* synthetic */ C3866d.C3868b f17813e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3747af(C3866d.C3868b c3868b, Activity activity, BinderC4129mg binderC4129mg) {
        super(C3866d.this);
        this.f17813e = c3868b;
        this.f17811c = activity;
        this.f17812d = binderC4129mg;
    }

    @Override // com.google.android.gms.internal.measurement.C3866d.AbstractRunnableC3867a
    /* renamed from: b */
    final void mo4940b() {
        AbstractC4131mi abstractC4131mi;
        abstractC4131mi = C3866d.this.f17967r;
        abstractC4131mi.onActivitySaveInstanceState(BinderC2734b.m13794a(this.f17811c), this.f17812d, this.f17969b);
    }
}
