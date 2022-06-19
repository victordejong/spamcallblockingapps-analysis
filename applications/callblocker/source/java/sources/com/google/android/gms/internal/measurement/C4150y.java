package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.C3866d;
/* renamed from: com.google.android.gms.internal.measurement.y */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/y.class */
public final class C4150y extends C3866d.AbstractRunnableC3867a {

    /* renamed from: c */
    private final /* synthetic */ Bundle f18544c;

    /* renamed from: d */
    private final /* synthetic */ C3866d f18545d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4150y(C3866d c3866d, Bundle bundle) {
        super(c3866d);
        this.f18545d = c3866d;
        this.f18544c = bundle;
    }

    @Override // com.google.android.gms.internal.measurement.C3866d.AbstractRunnableC3867a
    /* renamed from: b */
    final void mo4940b() {
        AbstractC4131mi abstractC4131mi;
        abstractC4131mi = this.f18545d.f17967r;
        abstractC4131mi.setConditionalUserProperty(this.f18544c, this.f17968a);
    }
}
