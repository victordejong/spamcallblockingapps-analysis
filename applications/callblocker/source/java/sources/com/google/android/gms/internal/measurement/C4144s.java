package com.google.android.gms.internal.measurement;

import com.google.android.gms.dynamic.BinderC2734b;
import com.google.android.gms.internal.measurement.C3866d;
/* renamed from: com.google.android.gms.internal.measurement.s */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/s.class */
public final class C4144s extends C3866d.AbstractRunnableC3867a {

    /* renamed from: d */
    private final /* synthetic */ String f18521d;

    /* renamed from: e */
    private final /* synthetic */ Object f18522e;

    /* renamed from: h */
    private final /* synthetic */ C3866d f18525h;

    /* renamed from: c */
    private final /* synthetic */ int f18520c = 5;

    /* renamed from: f */
    private final /* synthetic */ Object f18523f = null;

    /* renamed from: g */
    private final /* synthetic */ Object f18524g = null;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4144s(C3866d c3866d, boolean z, int i, String str, Object obj, Object obj2, Object obj3) {
        super(false);
        this.f18525h = c3866d;
        this.f18521d = str;
        this.f18522e = obj;
    }

    @Override // com.google.android.gms.internal.measurement.C3866d.AbstractRunnableC3867a
    /* renamed from: b */
    final void mo4940b() {
        AbstractC4131mi abstractC4131mi;
        abstractC4131mi = this.f18525h.f17967r;
        abstractC4131mi.logHealthData(this.f18520c, this.f18521d, BinderC2734b.m13794a(this.f18522e), BinderC2734b.m13794a(this.f18523f), BinderC2734b.m13794a(this.f18524g));
    }
}
