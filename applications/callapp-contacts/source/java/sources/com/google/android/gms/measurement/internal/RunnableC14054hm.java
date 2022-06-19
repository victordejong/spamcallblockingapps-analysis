package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.measurement.internal.hm */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/hm.class */
public final class RunnableC14054hm implements Runnable {

    /* renamed from: a */
    final /* synthetic */ zzp f51808a;

    /* renamed from: b */
    final /* synthetic */ boolean f51809b;

    /* renamed from: c */
    final /* synthetic */ zzkl f51810c;

    /* renamed from: d */
    final /* synthetic */ C14079ik f51811d;

    public RunnableC14054hm(C14079ik c14079ik, zzp zzpVar, boolean z, zzkl zzklVar) {
        this.f51811d = c14079ik;
        this.f51808a = zzpVar;
        this.f51809b = z;
        this.f51810c = zzklVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC13938df abstractC13938df = this.f51811d.f51890b;
        if (abstractC13938df == null) {
            this.f51811d.f51637t.mo11661c().f51395c.m12092a("Discarding data. Failed to set user property");
            return;
        }
        C12045o.m19162a(this.f51808a);
        this.f51811d.m11752a(abstractC13938df, this.f51809b ? null : this.f51810c, this.f51808a);
        this.f51811d.m11736i();
    }
}
