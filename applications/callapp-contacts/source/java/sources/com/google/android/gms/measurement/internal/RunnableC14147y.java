package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.y */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/y.class */
public final class RunnableC14147y implements Runnable {

    /* renamed from: a */
    final /* synthetic */ String f52080a;

    /* renamed from: b */
    final /* synthetic */ long f52081b;

    /* renamed from: c */
    final /* synthetic */ C13906ca f52082c;

    public RunnableC14147y(C13906ca c13906ca, String str, long j) {
        this.f52082c = c13906ca;
        this.f52080a = str;
        this.f52081b = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C13906ca.m12119b(this.f52082c, this.f52080a, this.f52081b);
    }
}
