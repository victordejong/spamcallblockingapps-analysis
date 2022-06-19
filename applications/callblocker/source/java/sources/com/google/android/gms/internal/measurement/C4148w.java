package com.google.android.gms.internal.measurement;

import com.google.android.gms.dynamic.BinderC2734b;
import com.google.android.gms.internal.measurement.C3866d;
/* renamed from: com.google.android.gms.internal.measurement.w */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/w.class */
public final class C4148w extends C3866d.AbstractRunnableC3867a {

    /* renamed from: c */
    private final /* synthetic */ String f18532c;

    /* renamed from: d */
    private final /* synthetic */ String f18533d;

    /* renamed from: e */
    private final /* synthetic */ Object f18534e;

    /* renamed from: f */
    private final /* synthetic */ boolean f18535f;

    /* renamed from: g */
    private final /* synthetic */ C3866d f18536g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4148w(C3866d c3866d, String str, String str2, Object obj, boolean z) {
        super(c3866d);
        this.f18536g = c3866d;
        this.f18532c = str;
        this.f18533d = str2;
        this.f18534e = obj;
        this.f18535f = z;
    }

    @Override // com.google.android.gms.internal.measurement.C3866d.AbstractRunnableC3867a
    /* renamed from: b */
    final void mo4940b() {
        AbstractC4131mi abstractC4131mi;
        abstractC4131mi = this.f18536g.f17967r;
        abstractC4131mi.setUserProperty(this.f18532c, this.f18533d, BinderC2734b.m13794a(this.f18534e), this.f18535f, this.f17968a);
    }
}
