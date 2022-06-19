package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.os.Bundle;
import com.google.android.gms.dynamic.BinderC2734b;
import com.google.android.gms.internal.measurement.C3866d;
/* renamed from: com.google.android.gms.internal.measurement.z */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/z.class */
final class C4151z extends C3866d.AbstractRunnableC3867a {

    /* renamed from: c */
    private final /* synthetic */ Activity f18546c;

    /* renamed from: d */
    private final /* synthetic */ Bundle f18547d;

    /* renamed from: e */
    private final /* synthetic */ C3866d.C3868b f18548e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4151z(C3866d.C3868b c3868b, Activity activity, Bundle bundle) {
        super(C3866d.this);
        this.f18548e = c3868b;
        this.f18546c = activity;
        this.f18547d = bundle;
    }

    @Override // com.google.android.gms.internal.measurement.C3866d.AbstractRunnableC3867a
    /* renamed from: b */
    final void mo4940b() {
        AbstractC4131mi abstractC4131mi;
        abstractC4131mi = C3866d.this.f17967r;
        abstractC4131mi.onActivityCreated(BinderC2734b.m13794a(this.f18546c), this.f18547d, this.f17969b);
    }
}
