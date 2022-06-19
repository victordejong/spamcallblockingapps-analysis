package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.fx */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/fx.class */
final class RunnableC4316fx implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ String f18964a;

    /* renamed from: b */
    private final /* synthetic */ String f18965b;

    /* renamed from: c */
    private final /* synthetic */ String f18966c;

    /* renamed from: d */
    private final /* synthetic */ long f18967d;

    /* renamed from: e */
    private final /* synthetic */ BinderC4302fj f18968e;

    public RunnableC4316fx(BinderC4302fj binderC4302fj, String str, String str2, String str3, long j) {
        this.f18968e = binderC4302fj;
        this.f18964a = str;
        this.f18965b = str2;
        this.f18966c = str3;
        this.f18967d = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C4415jo c4415jo;
        C4415jo c4415jo2;
        if (this.f18964a == null) {
            c4415jo2 = this.f18968e.f18922a;
            c4415jo2.m4192o().m4539s().m4353a(this.f18965b, (C4362hp) null);
            return;
        }
        C4362hp c4362hp = new C4362hp(this.f18966c, this.f18964a, this.f18967d);
        c4415jo = this.f18968e.f18922a;
        c4415jo.m4192o().m4539s().m4353a(this.f18965b, c4362hp);
    }
}
