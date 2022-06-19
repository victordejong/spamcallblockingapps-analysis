package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.measurement.internal.hy */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/hy.class */
public final class RunnableC14066hy implements Runnable {

    /* renamed from: a */
    final /* synthetic */ zzp f51837a;

    /* renamed from: b */
    final /* synthetic */ boolean f51838b;

    /* renamed from: c */
    final /* synthetic */ zzas f51839c;

    /* renamed from: d */
    final /* synthetic */ String f51840d;

    /* renamed from: e */
    final /* synthetic */ C14079ik f51841e;

    public RunnableC14066hy(C14079ik c14079ik, boolean z, zzp zzpVar, boolean z2, zzas zzasVar, String str) {
        this.f51841e = c14079ik;
        this.f51837a = zzpVar;
        this.f51838b = z2;
        this.f51839c = zzasVar;
        this.f51840d = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AbstractC13938df abstractC13938df = this.f51841e.f51890b;
        if (abstractC13938df == null) {
            this.f51841e.f51637t.mo11661c().f51395c.m12092a("Discarding data. Failed to send event to service");
            return;
        }
        C12045o.m19162a(this.f51837a);
        this.f51841e.m11752a(abstractC13938df, this.f51838b ? null : this.f51839c, this.f51837a);
        this.f51841e.m11736i();
    }
}
