package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.iv */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/iv.class */
public final class C14090iv {

    /* renamed from: a */
    final /* synthetic */ C14094iz f51922a;

    /* renamed from: b */
    private RunnableC14089iu f51923b;

    public C14090iv(C14094iz c14094iz) {
        this.f51922a = c14094iz;
    }

    /* renamed from: a */
    public final void m11718a() {
        this.f51922a.mo11884S_();
        if (this.f51923b != null) {
            this.f51922a.f51930a.removeCallbacks(this.f51923b);
        }
        if (this.f51922a.f51637t.f51529g.m12061d(null, C13935dc.f51330ar)) {
            this.f51922a.f51637t.m11991b().f51467m.m12076a(false);
        }
    }

    /* renamed from: a */
    public final void m11717a(long j) {
        this.f51923b = new RunnableC14089iu(this, this.f51922a.f51637t.f51532j.mo19039a(), j);
        this.f51922a.f51930a.postDelayed(this.f51923b, 2000L);
    }
}
