package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.fk */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/fk.class */
final class RunnableC13998fk implements Runnable {

    /* renamed from: a */
    final /* synthetic */ String f51629a;

    /* renamed from: b */
    final /* synthetic */ String f51630b;

    /* renamed from: c */
    final /* synthetic */ String f51631c;

    /* renamed from: d */
    final /* synthetic */ long f51632d;

    /* renamed from: e */
    final /* synthetic */ BinderC13999fl f51633e;

    public RunnableC13998fk(BinderC13999fl binderC13999fl, String str, String str2, String str3, long j) {
        this.f51633e = binderC13999fl;
        this.f51629a = str;
        this.f51630b = str2;
        this.f51631c = str3;
        this.f51632d = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C14110jo c14110jo;
        C14110jo c14110jo2;
        String str = this.f51629a;
        if (str == null) {
            c14110jo2 = this.f51633e.f51634a;
            c14110jo2.f51969f.m11985l().m11820a(this.f51630b, (C14044hc) null);
            return;
        }
        C14044hc c14044hc = new C14044hc(this.f51631c, str, this.f51632d);
        c14110jo = this.f51633e.f51634a;
        c14110jo.f51969f.m11985l().m11820a(this.f51630b, c14044hc);
    }
}
