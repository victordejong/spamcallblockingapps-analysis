package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.u8 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/u8.class */
public final class RunnableC2350u8 implements Runnable {

    /* renamed from: b */
    final long f10433b;

    /* renamed from: c */
    final long f10434c;

    /* renamed from: d */
    final /* synthetic */ C2354v8 f10435d;

    public RunnableC2350u8(C2354v8 c2354v8, long j, long j2) {
        this.f10435d = c2354v8;
        this.f10433b = j;
        this.f10434c = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ((m5) this.f10435d.f10451b).a.c().p(new Runnable(this) { // from class: com.google.android.gms.measurement.internal.t8

            /* renamed from: b */
            private final RunnableC2350u8 f10424b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10424b = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                RunnableC2350u8 runnableC2350u8 = this.f10424b;
                C2354v8 c2354v8 = runnableC2350u8.f10435d;
                long j = runnableC2350u8.f10433b;
                long j2 = runnableC2350u8.f10434c;
                c2354v8.f10451b.f();
                ((m5) c2354v8.f10451b).a.t().u().m3876a("Application going to the background");
                boolean z = true;
                if (((m5) c2354v8.f10451b).a.z().w((String) null, C2232c3.f10075s0)) {
                    ((m5) c2354v8.f10451b).a.A().q.m3806b(true);
                }
                Bundle bundle = new Bundle();
                if (!((m5) c2354v8.f10451b).a.z().C()) {
                    c2354v8.f10451b.e.m3810b(j2);
                    if (((m5) c2354v8.f10451b).a.z().w((String) null, C2232c3.f10059k0)) {
                        C2368x8 c2368x8 = c2354v8.f10451b.e;
                        long j3 = c2368x8.f10478b;
                        c2368x8.f10478b = j2;
                        bundle.putLong("_et", j2 - j3);
                        k7.x(((m5) c2354v8.f10451b).a.Q().q(true), bundle, true);
                    } else {
                        z = false;
                    }
                    c2354v8.f10451b.e.m3808d(false, z, j2);
                }
                ((m5) c2354v8.f10451b).a.F().Y("auto", "_ab", j, bundle);
            }
        });
    }
}
