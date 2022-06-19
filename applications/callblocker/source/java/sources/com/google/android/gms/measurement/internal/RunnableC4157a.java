package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/a.class */
public final class RunnableC4157a implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ String f18572a;

    /* renamed from: b */
    private final /* synthetic */ long f18573b;

    /* renamed from: c */
    private final /* synthetic */ C4159ab f18574c;

    public RunnableC4157a(C4159ab c4159ab, String str, long j) {
        this.f18574c = c4159ab;
        this.f18572a = str;
        this.f18573b = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f18574c.m4808c(this.f18572a, this.f18573b);
    }
}
