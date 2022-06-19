package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.jj */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/jj.class */
public final class C4410jj extends AbstractC4400j {

    /* renamed from: a */
    private final /* synthetic */ C4415jo f19228a;

    /* renamed from: b */
    private final /* synthetic */ C4411jk f19229b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4410jj(C4411jk c4411jk, AbstractC4321gb abstractC4321gb, C4415jo c4415jo) {
        super(abstractC4321gb);
        this.f19229b = c4411jk;
        this.f19228a = c4415jo;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4400j
    /* renamed from: a */
    public final void mo4253a() {
        this.f19229b.m4251b();
        this.f19229b.mo4030v().m4657j().m4654a("Starting upload from DelayedRunnable");
        this.f19228a.m4195l();
    }
}
