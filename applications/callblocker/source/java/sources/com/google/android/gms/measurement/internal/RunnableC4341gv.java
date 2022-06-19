package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.gv */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/gv.class */
public final class RunnableC4341gv implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ AtomicReference f19031a;

    /* renamed from: b */
    private final /* synthetic */ String f19032b;

    /* renamed from: c */
    private final /* synthetic */ String f19033c;

    /* renamed from: d */
    private final /* synthetic */ String f19034d;

    /* renamed from: e */
    private final /* synthetic */ boolean f19035e;

    /* renamed from: f */
    private final /* synthetic */ C4330gk f19036f;

    public RunnableC4341gv(C4330gk c4330gk, AtomicReference atomicReference, String str, String str2, String str3, boolean z) {
        this.f19036f = c4330gk;
        this.f19031a = atomicReference;
        this.f19032b = str;
        this.f19033c = str2;
        this.f19034d = str3;
        this.f19035e = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f19036f.f18970z.m4538t().m4317a(this.f19031a, this.f19032b, this.f19033c, this.f19034d, this.f19035e);
    }
}
