package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* renamed from: com.google.android.gms.measurement.internal.u8 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/u8.class */
public final class RunnableC7884u8 implements Runnable {

    /* renamed from: d */
    final long f35719d;

    /* renamed from: e */
    final long f35720e;

    /* renamed from: f */
    final /* synthetic */ C7895v8 f35721f;

    public RunnableC7884u8(C7895v8 c7895v8, long j, long j2) {
        this.f35721f = c7895v8;
        this.f35719d = j;
        this.f35720e = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f35721f.f35763b.f35460a.mo6029b().m6109p(new Runnable(this) { // from class: com.google.android.gms.measurement.internal.t8

            /* renamed from: d */
            private final RunnableC7884u8 f35705d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f35705d = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                RunnableC7884u8 runnableC7884u8 = this.f35705d;
                C7895v8 c7895v8 = runnableC7884u8.f35721f;
                long j = runnableC7884u8.f35719d;
                long j2 = runnableC7884u8.f35720e;
                c7895v8.f35763b.mo6113f();
                c7895v8.f35763b.f35460a.mo6047C().m6188t().m6216a("Application going to the background");
                boolean z = true;
                if (c7895v8.f35763b.f35460a.m6006y().m6471u(null, C7672c3.f35101t0)) {
                    c7895v8.f35763b.f35460a.m6005z().f35208r.m5886b(true);
                }
                Bundle bundle = new Bundle();
                if (!c7895v8.f35763b.f35460a.m6006y().m6492B()) {
                    c7895v8.f35763b.f35856e.m5890b(j2);
                    if (c7895v8.f35763b.f35460a.m6006y().m6471u(null, C7672c3.f35085l0)) {
                        C7917x8 c7917x8 = c7895v8.f35763b.f35856e;
                        long j3 = c7917x8.f35799b;
                        c7917x8.f35799b = j2;
                        bundle.putLong("_et", j2 - j3);
                        C7772k7.m6295v(c7895v8.f35763b.f35460a.m6033Q().m6300q(true), bundle, true);
                    } else {
                        z = false;
                    }
                    c7895v8.f35763b.f35856e.m5888d(false, z, j2);
                }
                c7895v8.f35763b.f35460a.m6044F().m5916Y("auto", "_ab", j, bundle);
            }
        });
    }
}
