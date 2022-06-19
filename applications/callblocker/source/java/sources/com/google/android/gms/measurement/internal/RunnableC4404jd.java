package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* renamed from: com.google.android.gms.measurement.internal.jd */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/jd.class */
public final class RunnableC4404jd implements Runnable {

    /* renamed from: a */
    long f19212a;

    /* renamed from: b */
    long f19213b;

    /* renamed from: c */
    final /* synthetic */ C4401ja f19214c;

    public RunnableC4404jd(C4401ja c4401ja, long j, long j2) {
        this.f19214c = c4401ja;
        this.f19212a = j;
        this.f19213b = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f19214c.f19207a.mo4031u().m4587a(new Runnable(this) { // from class: com.google.android.gms.measurement.internal.jc

            /* renamed from: a */
            private final RunnableC4404jd f19211a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f19211a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                RunnableC4404jd runnableC4404jd = this.f19211a;
                C4401ja c4401ja = runnableC4404jd.f19214c;
                long j = runnableC4404jd.f19212a;
                long j2 = runnableC4404jd.f19213b;
                c4401ja.f19207a.mo4037o();
                c4401ja.f19207a.mo4030v().m4658i().m4654a("Application going to the background");
                if (c4401ja.f19207a.mo4027x().m4804a(C4452t.f19421aD)) {
                    c4401ja.f19207a.mo4029w().f18777s.m4625a(true);
                }
                if (!c4401ja.f19207a.mo4027x().m4786f().booleanValue()) {
                    c4401ja.f19207a.f19200b.m4262b(j2);
                    c4401ja.f19207a.m4285a(false, false, j2);
                }
                c4401ja.f19207a.mo4284b().m4408a("auto", "_ab", j, new Bundle());
            }
        });
    }
}
