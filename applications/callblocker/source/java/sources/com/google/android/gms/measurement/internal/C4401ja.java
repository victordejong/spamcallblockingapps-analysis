package com.google.android.gms.measurement.internal;

import android.os.Handler;
/* renamed from: com.google.android.gms.measurement.internal.ja */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ja.class */
public final class C4401ja {

    /* renamed from: a */
    final /* synthetic */ C4399iz f19207a;

    /* renamed from: b */
    private RunnableC4404jd f19208b;

    public C4401ja(C4399iz c4399iz) {
        this.f19207a = c4399iz;
    }

    /* renamed from: a */
    public final void m4269a() {
        Handler handler;
        this.f19207a.mo4037o();
        if (this.f19207a.mo4027x().m4804a(C4452t.f19455ap) && this.f19208b != null) {
            handler = this.f19207a.f19201c;
            handler.removeCallbacks(this.f19208b);
        }
        if (this.f19207a.mo4027x().m4804a(C4452t.f19421aD)) {
            this.f19207a.mo4029w().f18777s.m4625a(false);
        }
    }

    /* renamed from: a */
    public final void m4268a(long j) {
        Handler handler;
        if (this.f19207a.mo4027x().m4804a(C4452t.f19455ap)) {
            this.f19208b = new RunnableC4404jd(this, this.f19207a.mo4035q().mo13862a(), j);
            handler = this.f19207a.f19201c;
            handler.postDelayed(this.f19208b, 2000L);
        }
    }
}
