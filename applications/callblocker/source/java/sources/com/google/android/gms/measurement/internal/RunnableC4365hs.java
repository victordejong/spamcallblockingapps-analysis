package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.hs */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/hs.class */
public final class RunnableC4365hs implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ C4362hp f19098a;

    /* renamed from: b */
    private final /* synthetic */ long f19099b;

    /* renamed from: c */
    private final /* synthetic */ C4361ho f19100c;

    public RunnableC4365hs(C4361ho c4361ho, C4362hp c4362hp, long j) {
        this.f19100c = c4361ho;
        this.f19098a = c4362hp;
        this.f19099b = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f19100c.m4355a(this.f19098a, false, this.f19099b);
        this.f19100c.f19076a = null;
        this.f19100c.mo4279d().m4327a((C4362hp) null);
    }
}
