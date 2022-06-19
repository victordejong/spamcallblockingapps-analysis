package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.a */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/a.class */
public final class RunnableC13851a implements Runnable {

    /* renamed from: a */
    final /* synthetic */ String f51187a;

    /* renamed from: b */
    final /* synthetic */ long f51188b;

    /* renamed from: c */
    final /* synthetic */ C13906ca f51189c;

    public RunnableC13851a(C13906ca c13906ca, String str, long j) {
        this.f51189c = c13906ca;
        this.f51187a = str;
        this.f51188b = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C13906ca.m12123a(this.f51189c, this.f51187a, this.f51188b);
    }
}
