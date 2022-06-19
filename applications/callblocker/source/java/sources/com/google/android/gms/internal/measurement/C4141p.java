package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import com.google.android.gms.internal.measurement.C3866d;
/* renamed from: com.google.android.gms.internal.measurement.p */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/p.class */
public final class C4141p extends C3866d.AbstractRunnableC3867a {

    /* renamed from: c */
    private final /* synthetic */ String f18510c;

    /* renamed from: d */
    private final /* synthetic */ String f18511d;

    /* renamed from: e */
    private final /* synthetic */ boolean f18512e;

    /* renamed from: f */
    private final /* synthetic */ BinderC4129mg f18513f;

    /* renamed from: g */
    private final /* synthetic */ C3866d f18514g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4141p(C3866d c3866d, String str, String str2, boolean z, BinderC4129mg binderC4129mg) {
        super(c3866d);
        this.f18514g = c3866d;
        this.f18510c = str;
        this.f18511d = str2;
        this.f18512e = z;
        this.f18513f = binderC4129mg;
    }

    @Override // com.google.android.gms.internal.measurement.C3866d.AbstractRunnableC3867a
    /* renamed from: a */
    protected final void mo4947a() {
        this.f18513f.mo4950a((Bundle) null);
    }

    @Override // com.google.android.gms.internal.measurement.C3866d.AbstractRunnableC3867a
    /* renamed from: b */
    final void mo4940b() {
        AbstractC4131mi abstractC4131mi;
        abstractC4131mi = this.f18514g.f17967r;
        abstractC4131mi.getUserProperties(this.f18510c, this.f18511d, this.f18512e, this.f18513f);
    }
}
