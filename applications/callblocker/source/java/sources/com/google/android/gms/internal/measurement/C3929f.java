package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.C3866d;
/* renamed from: com.google.android.gms.internal.measurement.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/f.class */
public final class C3929f extends C3866d.AbstractRunnableC3867a {

    /* renamed from: c */
    private final /* synthetic */ String f18141c;

    /* renamed from: d */
    private final /* synthetic */ String f18142d;

    /* renamed from: e */
    private final /* synthetic */ Bundle f18143e;

    /* renamed from: f */
    private final /* synthetic */ C3866d f18144f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3929f(C3866d c3866d, String str, String str2, Bundle bundle) {
        super(c3866d);
        this.f18144f = c3866d;
        this.f18141c = str;
        this.f18142d = str2;
        this.f18143e = bundle;
    }

    @Override // com.google.android.gms.internal.measurement.C3866d.AbstractRunnableC3867a
    /* renamed from: b */
    final void mo4940b() {
        AbstractC4131mi abstractC4131mi;
        abstractC4131mi = this.f18144f.f17967r;
        abstractC4131mi.clearConditionalUserProperty(this.f18141c, this.f18142d, this.f18143e);
    }
}
