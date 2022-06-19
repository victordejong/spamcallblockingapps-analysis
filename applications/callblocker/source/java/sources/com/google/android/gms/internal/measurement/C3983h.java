package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.C3866d;
/* renamed from: com.google.android.gms.internal.measurement.h */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/h.class */
public final class C3983h extends C3866d.AbstractRunnableC3867a {

    /* renamed from: c */
    private final /* synthetic */ String f18239c;

    /* renamed from: d */
    private final /* synthetic */ String f18240d;

    /* renamed from: e */
    private final /* synthetic */ BinderC4129mg f18241e;

    /* renamed from: f */
    private final /* synthetic */ C3866d f18242f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3983h(C3866d c3866d, String str, String str2, BinderC4129mg binderC4129mg) {
        super(c3866d);
        this.f18242f = c3866d;
        this.f18239c = str;
        this.f18240d = str2;
        this.f18241e = binderC4129mg;
    }

    @Override // com.google.android.gms.internal.measurement.C3866d.AbstractRunnableC3867a
    /* renamed from: a */
    protected final void mo4947a() {
        this.f18241e.mo4950a((Bundle) null);
    }

    @Override // com.google.android.gms.internal.measurement.C3866d.AbstractRunnableC3867a
    /* renamed from: b */
    final void mo4940b() {
        AbstractC4131mi abstractC4131mi;
        abstractC4131mi = this.f18242f.f17967r;
        abstractC4131mi.getConditionalUserProperties(this.f18239c, this.f18240d, this.f18241e);
    }
}
