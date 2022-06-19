package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.measurement.internal.AbstractC4396iw;
/* renamed from: com.google.android.gms.measurement.internal.is */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/is.class */
public final class C4392is<T extends Context & AbstractC4396iw> {

    /* renamed from: a */
    private final T f19186a;

    public C4392is(T t) {
        C2662s.m13981a(t);
        this.f19186a = t;
    }

    /* renamed from: a */
    private final void m4298a(Runnable runnable) {
        C4415jo m4239a = C4415jo.m4239a(this.f19186a);
        m4239a.mo4031u().m4587a(new RunnableC4397ix(this, m4239a, runnable));
    }

    /* renamed from: c */
    private final C4263dy m4295c() {
        return C4296fd.m4565a(this.f19186a, null, null).mo4030v();
    }

    /* renamed from: a */
    public final int m4300a(Intent intent, int i, int i2) {
        C4296fd m4565a = C4296fd.m4565a(this.f19186a, null, null);
        C4263dy mo4030v = m4565a.mo4030v();
        if (intent == null) {
            mo4030v.m4662e().m4654a("AppMeasurementService started with null intent");
            return 2;
        }
        String action = intent.getAction();
        m4565a.mo4026y();
        mo4030v.m4657j().m4652a("Local AppMeasurementService called. startId, action", Integer.valueOf(i2), action);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(action)) {
            return 2;
        }
        m4298a(new Runnable(this, i2, mo4030v, intent) { // from class: com.google.android.gms.measurement.internal.iv

            /* renamed from: a */
            private final C4392is f19191a;

            /* renamed from: b */
            private final int f19192b;

            /* renamed from: c */
            private final C4263dy f19193c;

            /* renamed from: d */
            private final Intent f19194d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f19191a = this;
                this.f19192b = i2;
                this.f19193c = mo4030v;
                this.f19194d = intent;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f19191a.m4303a(this.f19192b, this.f19193c, this.f19194d);
            }
        });
        return 2;
    }

    /* renamed from: a */
    public final IBinder m4301a(Intent intent) {
        BinderC4302fj binderC4302fj;
        if (intent == null) {
            m4295c().m4655x_().m4654a("onBind called with null intent");
            binderC4302fj = null;
        } else {
            String action = intent.getAction();
            if ("com.google.android.gms.measurement.START".equals(action)) {
                binderC4302fj = new BinderC4302fj(C4415jo.m4239a(this.f19186a));
            } else {
                m4295c().m4662e().m4653a("onBind received unknown action", action);
                binderC4302fj = null;
            }
        }
        return binderC4302fj;
    }

    /* renamed from: a */
    public final void m4304a() {
        C4296fd m4565a = C4296fd.m4565a(this.f19186a, null, null);
        C4263dy mo4030v = m4565a.mo4030v();
        m4565a.mo4026y();
        mo4030v.m4657j().m4654a("Local AppMeasurementService is starting up");
    }

    /* renamed from: a */
    public final /* synthetic */ void m4303a(int i, C4263dy c4263dy, Intent intent) {
        if (this.f19186a.mo4293a(i)) {
            c4263dy.m4657j().m4653a("Local AppMeasurementService processed last upload request. StartId", Integer.valueOf(i));
            m4295c().m4657j().m4654a("Completed wakeful intent.");
            this.f19186a.mo4291a(intent);
        }
    }

    /* renamed from: a */
    public final /* synthetic */ void m4299a(C4263dy c4263dy, JobParameters jobParameters) {
        c4263dy.m4657j().m4654a("AppMeasurementJobService processed last upload request.");
        this.f19186a.mo4292a(jobParameters, false);
    }

    @TargetApi(24)
    /* renamed from: a */
    public final boolean m4302a(JobParameters jobParameters) {
        C4296fd m4565a = C4296fd.m4565a(this.f19186a, null, null);
        C4263dy mo4030v = m4565a.mo4030v();
        String string = jobParameters.getExtras().getString("action");
        m4565a.mo4026y();
        mo4030v.m4657j().m4653a("Local AppMeasurementJobService called. action", string);
        if ("com.google.android.gms.measurement.UPLOAD".equals(string)) {
            m4298a(new Runnable(this, mo4030v, jobParameters) { // from class: com.google.android.gms.measurement.internal.iu

                /* renamed from: a */
                private final C4392is f19188a;

                /* renamed from: b */
                private final C4263dy f19189b;

                /* renamed from: c */
                private final JobParameters f19190c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f19188a = this;
                    this.f19189b = mo4030v;
                    this.f19190c = jobParameters;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f19188a.m4299a(this.f19189b, this.f19190c);
                }
            });
            return true;
        }
        return true;
    }

    /* renamed from: b */
    public final void m4297b() {
        C4296fd m4565a = C4296fd.m4565a(this.f19186a, null, null);
        C4263dy mo4030v = m4565a.mo4030v();
        m4565a.mo4026y();
        mo4030v.m4657j().m4654a("Local AppMeasurementService is shutting down");
    }

    /* renamed from: b */
    public final boolean m4296b(Intent intent) {
        if (intent == null) {
            m4295c().m4655x_().m4654a("onUnbind called with null intent");
            return true;
        }
        m4295c().m4657j().m4653a("onUnbind called for intent. action", intent.getAction());
        return true;
    }

    /* renamed from: c */
    public final void m4294c(Intent intent) {
        if (intent == null) {
            m4295c().m4655x_().m4654a("onRebind called with null intent");
            return;
        }
        m4295c().m4657j().m4653a("onRebind called. action", intent.getAction());
    }
}
