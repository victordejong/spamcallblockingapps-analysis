package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.measurement.internal.hz */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/hz.class */
public final class RunnableC14067hz implements Runnable {

    /* renamed from: a */
    final /* synthetic */ zzp f51842a;

    /* renamed from: b */
    final /* synthetic */ boolean f51843b;

    /* renamed from: c */
    final /* synthetic */ zzaa f51844c;

    /* renamed from: d */
    final /* synthetic */ zzaa f51845d;

    /* renamed from: e */
    final /* synthetic */ C14079ik f51846e;

    public RunnableC14067hz(C14079ik c14079ik, boolean z, zzp zzpVar, boolean z2, zzaa zzaaVar, zzaa zzaaVar2) {
        this.f51846e = c14079ik;
        this.f51842a = zzpVar;
        this.f51843b = z2;
        this.f51844c = zzaaVar;
        this.f51845d = zzaaVar2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC13938df abstractC13938df = this.f51846e.f51890b;
        if (abstractC13938df == null) {
            this.f51846e.f51637t.mo11661c().f51395c.m12092a("Discarding data. Failed to send conditional user property to service");
            return;
        }
        C12045o.m19162a(this.f51842a);
        this.f51846e.m11752a(abstractC13938df, this.f51843b ? null : this.f51844c, this.f51842a);
        this.f51846e.m11736i();
    }
}
