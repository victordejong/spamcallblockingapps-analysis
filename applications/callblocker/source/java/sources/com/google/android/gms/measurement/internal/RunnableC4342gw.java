package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.gw */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/gw.class */
public final class RunnableC4342gw implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ AtomicReference f19037a;

    /* renamed from: b */
    private final /* synthetic */ String f19038b;

    /* renamed from: c */
    private final /* synthetic */ String f19039c;

    /* renamed from: d */
    private final /* synthetic */ String f19040d;

    /* renamed from: e */
    private final /* synthetic */ C4330gk f19041e;

    public RunnableC4342gw(C4330gk c4330gk, AtomicReference atomicReference, String str, String str2, String str3) {
        this.f19041e = c4330gk;
        this.f19037a = atomicReference;
        this.f19038b = str;
        this.f19039c = str2;
        this.f19040d = str3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f19041e.f18970z.m4538t().m4318a(this.f19037a, this.f19038b, this.f19039c, this.f19040d);
    }
}
