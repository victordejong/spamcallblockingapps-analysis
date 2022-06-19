package com.google.android.gms.measurement.internal;

import java.util.concurrent.Callable;
/* renamed from: com.google.android.gms.measurement.internal.jr */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/jr.class */
public final class CallableC4419jr implements Callable<String> {

    /* renamed from: a */
    private final /* synthetic */ C4430kb f19269a;

    /* renamed from: b */
    private final /* synthetic */ C4415jo f19270b;

    public CallableC4419jr(C4415jo c4415jo, C4430kb c4430kb) {
        this.f19270b = c4415jo;
        this.f19269a = c4430kb;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ String call() {
        String m4508d;
        C4299fg m4206c = this.f19270b.m4206c(this.f19269a);
        if (m4206c == null) {
            this.f19270b.mo4030v().m4662e().m4654a("App info was null when attempting to get app instance id");
            m4508d = null;
        } else {
            m4508d = m4206c.m4508d();
        }
        return m4508d;
    }
}
