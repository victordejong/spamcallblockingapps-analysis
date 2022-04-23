package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/iu.class */
public final class iu implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final long f29864a;

    /* renamed from: b  reason: collision with root package name */
    final long f29865b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ iv f29866c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public iu(iv ivVar, long j, long j2) {
        this.f29866c = ivVar;
        this.f29864a = j;
        this.f29865b = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f29866c.f29867a.t.d().a(new Runnable(this) { // from class: com.google.android.gms.measurement.internal.it

            /* renamed from: a  reason: collision with root package name */
            private final iu f29863a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f29863a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                iu iuVar = this.f29863a;
                iv ivVar = iuVar.f29866c;
                long j = iuVar.f29864a;
                long j2 = iuVar.f29865b;
                ivVar.f29867a.S_();
                ivVar.f29867a.t.c().j.a("Application going to the background");
                boolean z = true;
                if (ivVar.f29867a.t.g.d(null, dc.ar)) {
                    ivVar.f29867a.t.b().m.a(true);
                }
                Bundle bundle = new Bundle();
                if (!ivVar.f29867a.t.g.f()) {
                    ivVar.f29867a.f29877c.f29872c.c();
                    if (ivVar.f29867a.t.g.d(null, dc.aj)) {
                        ix ixVar = ivVar.f29867a.f29877c;
                        long j3 = ixVar.f29871b;
                        ixVar.f29871b = j2;
                        bundle.putLong("_et", j2 - j3);
                        hk.a(ivVar.f29867a.t.l().a(true), bundle, true);
                    } else {
                        z = false;
                    }
                    ivVar.f29867a.f29877c.a(false, z, j2);
                }
                ivVar.f29867a.t.f().a("auto", "_ab", j, bundle);
            }
        });
    }
}
