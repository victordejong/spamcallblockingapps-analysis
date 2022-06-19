package com.google.android.gms.internal.measurement;

import android.app.Activity;
import com.google.android.gms.dynamic.BinderC2734b;
import com.google.android.gms.internal.measurement.C3866d;
/* renamed from: com.google.android.gms.internal.measurement.i */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/i.class */
public final class C4014i extends C3866d.AbstractRunnableC3867a {

    /* renamed from: c */
    private final /* synthetic */ Activity f18314c;

    /* renamed from: d */
    private final /* synthetic */ String f18315d;

    /* renamed from: e */
    private final /* synthetic */ String f18316e;

    /* renamed from: f */
    private final /* synthetic */ C3866d f18317f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4014i(C3866d c3866d, Activity activity, String str, String str2) {
        super(c3866d);
        this.f18317f = c3866d;
        this.f18314c = activity;
        this.f18315d = str;
        this.f18316e = str2;
    }

    @Override // com.google.android.gms.internal.measurement.C3866d.AbstractRunnableC3867a
    /* renamed from: b */
    final void mo4940b() {
        AbstractC4131mi abstractC4131mi;
        abstractC4131mi = this.f18317f.f17967r;
        abstractC4131mi.setCurrentScreen(BinderC2734b.m13794a(this.f18314c), this.f18315d, this.f18316e, this.f17968a);
    }
}
