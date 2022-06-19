package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.C3866d;
/* renamed from: com.google.android.gms.internal.measurement.t */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/t.class */
public final class C4145t extends C3866d.AbstractRunnableC3867a {

    /* renamed from: c */
    private final /* synthetic */ String f18526c;

    /* renamed from: d */
    private final /* synthetic */ BinderC4129mg f18527d;

    /* renamed from: e */
    private final /* synthetic */ C3866d f18528e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4145t(C3866d c3866d, String str, BinderC4129mg binderC4129mg) {
        super(c3866d);
        this.f18528e = c3866d;
        this.f18526c = str;
        this.f18527d = binderC4129mg;
    }

    @Override // com.google.android.gms.internal.measurement.C3866d.AbstractRunnableC3867a
    /* renamed from: a */
    protected final void mo4947a() {
        this.f18527d.mo4950a((Bundle) null);
    }

    @Override // com.google.android.gms.internal.measurement.C3866d.AbstractRunnableC3867a
    /* renamed from: b */
    final void mo4940b() {
        AbstractC4131mi abstractC4131mi;
        abstractC4131mi = this.f18528e.f17967r;
        abstractC4131mi.getMaxUserProperties(this.f18526c, this.f18527d);
    }
}
