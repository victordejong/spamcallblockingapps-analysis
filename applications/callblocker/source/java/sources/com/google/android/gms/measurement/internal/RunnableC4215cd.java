package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.cd */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/cd.class */
public final class RunnableC4215cd implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ String f18646a;

    /* renamed from: b */
    private final /* synthetic */ long f18647b;

    /* renamed from: c */
    private final /* synthetic */ C4159ab f18648c;

    public RunnableC4215cd(C4159ab c4159ab, String str, long j) {
        this.f18648c = c4159ab;
        this.f18646a = str;
        this.f18647b = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f18648c.m4807d(this.f18646a, this.f18647b);
    }
}
