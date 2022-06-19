package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* renamed from: com.google.android.gms.measurement.internal.iu */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/iu.class */
public final class RunnableC14089iu implements Runnable {

    /* renamed from: a */
    final long f51919a;

    /* renamed from: b */
    final long f51920b;

    /* renamed from: c */
    final /* synthetic */ C14090iv f51921c;

    public RunnableC14089iu(C14090iv c14090iv, long j, long j2) {
        this.f51921c = c14090iv;
        this.f51919a = j;
        this.f51920b = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f51921c.f51922a.f51637t.mo11658d().m12011a(new Runnable(this) { // from class: com.google.android.gms.measurement.internal.it

            /* renamed from: a */
            private final RunnableC14089iu f51918a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f51918a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                RunnableC14089iu runnableC14089iu = this.f51918a;
                C14090iv c14090iv = runnableC14089iu.f51921c;
                long j = runnableC14089iu.f51919a;
                long j2 = runnableC14089iu.f51920b;
                c14090iv.f51922a.mo11884S_();
                c14090iv.f51922a.f51637t.mo11661c().f51402j.m12092a("Application going to the background");
                boolean z = true;
                if (c14090iv.f51922a.f51637t.f51529g.m12061d(null, C13935dc.f51330ar)) {
                    c14090iv.f51922a.f51637t.m11991b().f51467m.m12076a(true);
                }
                Bundle bundle = new Bundle();
                if (!c14090iv.f51922a.f51637t.f51529g.m12058f()) {
                    c14090iv.f51922a.f51932c.f51927c.m11522c();
                    if (c14090iv.f51922a.f51637t.f51529g.m12061d(null, C13935dc.f51322aj)) {
                        C14092ix c14092ix = c14090iv.f51922a.f51932c;
                        long j3 = c14092ix.f51926b;
                        c14092ix.f51926b = j2;
                        bundle.putLong("_et", j2 - j3);
                        C14052hk.m11825a(c14090iv.f51922a.f51637t.m11985l().m11819a(true), bundle, true);
                    } else {
                        z = false;
                    }
                    c14090iv.f51922a.f51932c.m11714a(false, z, j2);
                }
                c14090iv.f51922a.f51637t.m11989f().m11859a("auto", "_ab", j, bundle);
            }
        });
    }
}
