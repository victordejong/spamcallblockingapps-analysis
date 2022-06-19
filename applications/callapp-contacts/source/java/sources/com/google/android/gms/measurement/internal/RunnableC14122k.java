package com.google.android.gms.measurement.internal;
/* renamed from: com.google.android.gms.measurement.internal.k */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/k.class */
public final class RunnableC14122k implements Runnable {

    /* renamed from: a */
    final /* synthetic */ AbstractC14002fo f52012a;

    /* renamed from: b */
    final /* synthetic */ AbstractC14134l f52013b;

    public RunnableC14122k(AbstractC14134l abstractC14134l, AbstractC14002fo abstractC14002fo) {
        this.f52013b = abstractC14134l;
        this.f52012a = abstractC14002fo;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f52012a.mo11692W_();
        if (C14133kk.m11527a()) {
            this.f52012a.mo11658d().m12011a(this);
            return;
        }
        boolean m11523b = this.f52013b.m11523b();
        this.f52013b.f52049d = 0L;
        if (!m11523b) {
            return;
        }
        this.f52013b.mo11526a();
    }
}
