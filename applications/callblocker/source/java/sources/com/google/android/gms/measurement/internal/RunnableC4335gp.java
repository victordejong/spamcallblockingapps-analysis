package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.gp */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/gp.class */
public final class RunnableC4335gp implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ String f19016a;

    /* renamed from: b */
    private final /* synthetic */ String f19017b;

    /* renamed from: c */
    private final /* synthetic */ Object f19018c;

    /* renamed from: d */
    private final /* synthetic */ long f19019d;

    /* renamed from: e */
    private final /* synthetic */ C4330gk f19020e;

    public RunnableC4335gp(C4330gk c4330gk, String str, String str2, Object obj, long j) {
        this.f19020e = c4330gk;
        this.f19016a = str;
        this.f19017b = str2;
        this.f19018c = obj;
        this.f19019d = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f19020e.m4402a(this.f19016a, this.f19017b, this.f19018c, this.f19019d);
    }
}
