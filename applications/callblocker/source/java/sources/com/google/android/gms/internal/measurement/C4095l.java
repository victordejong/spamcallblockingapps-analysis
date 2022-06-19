package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.C3866d;
/* renamed from: com.google.android.gms.internal.measurement.l */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/l.class */
public final class C4095l extends C3866d.AbstractRunnableC3867a {

    /* renamed from: c */
    private final /* synthetic */ BinderC4129mg f18466c;

    /* renamed from: d */
    private final /* synthetic */ C3866d f18467d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4095l(C3866d c3866d, BinderC4129mg binderC4129mg) {
        super(c3866d);
        this.f18467d = c3866d;
        this.f18466c = binderC4129mg;
    }

    @Override // com.google.android.gms.internal.measurement.C3866d.AbstractRunnableC3867a
    /* renamed from: a */
    protected final void mo4947a() {
        this.f18466c.mo4950a((Bundle) null);
    }

    @Override // com.google.android.gms.internal.measurement.C3866d.AbstractRunnableC3867a
    /* renamed from: b */
    final void mo4940b() {
        AbstractC4131mi abstractC4131mi;
        abstractC4131mi = this.f18467d.f17967r;
        abstractC4131mi.getCachedAppInstanceId(this.f18466c);
    }
}
