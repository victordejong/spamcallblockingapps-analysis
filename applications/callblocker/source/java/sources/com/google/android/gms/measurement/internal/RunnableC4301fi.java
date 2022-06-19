package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C2662s;
/* renamed from: com.google.android.gms.measurement.internal.fi */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/fi.class */
final class RunnableC4301fi implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ C4430kb f18920a;

    /* renamed from: b */
    private final /* synthetic */ BinderC4302fj f18921b;

    public RunnableC4301fi(BinderC4302fj binderC4302fj, C4430kb c4430kb) {
        this.f18921b = binderC4302fj;
        this.f18920a = c4430kb;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C4415jo c4415jo;
        C4415jo c4415jo2;
        c4415jo = this.f18921b.f18922a;
        c4415jo.m4194m();
        c4415jo2 = this.f18921b.f18922a;
        C4430kb c4430kb = this.f18920a;
        c4415jo2.mo4031u().mo4037o();
        c4415jo2.m4196k();
        C2662s.m13979a(c4430kb.f19301a);
        c4415jo2.m4206c(c4430kb);
    }
}
