package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.i */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/i.class */
public final class RunnableC4373i implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ AbstractC4321gb f19120a;

    /* renamed from: b */
    private final /* synthetic */ AbstractC4400j f19121b;

    public RunnableC4373i(AbstractC4400j abstractC4400j, AbstractC4321gb abstractC4321gb) {
        this.f19121b = abstractC4400j;
        this.f19120a = abstractC4321gb;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f19120a.mo4026y();
        if (C4439kk.m4052a()) {
            this.f19120a.mo4031u().m4587a(this);
            return;
        }
        boolean m4272b = this.f19121b.m4272b();
        this.f19121b.f19206d = 0L;
        if (!m4272b) {
            return;
        }
        this.f19121b.mo4253a();
    }
}
