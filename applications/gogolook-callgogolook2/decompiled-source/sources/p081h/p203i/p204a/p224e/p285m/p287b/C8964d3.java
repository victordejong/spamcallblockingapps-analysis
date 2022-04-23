package p081h.p203i.p204a.p224e.p285m.p287b;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import androidx.annotation.MainThread;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p285m.p287b.AbstractC8989h3;
/* renamed from: h.i.a.e.m.b.d3 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/d3.class */
public final class C8964d3<T extends Context & AbstractC8989h3> {

    /* renamed from: a */
    public final T f20273a;

    public C8964d3(T t) {
        C7021t.m21290a(t);
        this.f20273a = t;
    }

    @MainThread
    /* renamed from: a */
    public final int m16690a(final Intent intent, int i, final int i2) {
        C9052s0 a = C9052s0.m16298a(this.f20273a, (C8997j) null);
        final C9027o c = a.mo16178c();
        if (intent == null) {
            c.m16372v().m16338a("AppMeasurementService started with null intent");
            return 2;
        }
        String action = intent.getAction();
        a.mo16187b();
        c.m16389A().m16336a("Local AppMeasurementService called. startId, action", Integer.valueOf(i2), action);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(action)) {
            return 2;
        }
        m16688a(new Runnable(this, i2, c, intent) { // from class: h.i.a.e.m.b.e3

            /* renamed from: a */
            public final C8964d3 f20351a;

            /* renamed from: b */
            public final int f20352b;

            /* renamed from: c */
            public final C9027o f20353c;

            /* renamed from: d */
            public final Intent f20354d;

            {
                this.f20351a = this;
                this.f20352b = i2;
                this.f20353c = c;
                this.f20354d = intent;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f20351a.m16693a(this.f20352b, this.f20353c, this.f20354d);
            }
        });
        return 2;
    }

    @MainThread
    /* renamed from: a */
    public final IBinder m16691a(Intent intent) {
        if (intent == null) {
            m16685c().m16375s().m16338a("onBind called with null intent");
            return null;
        }
        String action = intent.getAction();
        if ("com.google.android.gms.measurement.START".equals(action)) {
            return new BinderC9065u0(C9061t3.m16211a(this.f20273a));
        }
        m16685c().m16372v().m16337a("onBind received unknown action", action);
        return null;
    }

    @MainThread
    /* renamed from: a */
    public final void m16694a() {
        C9052s0 a = C9052s0.m16298a(this.f20273a, (C8997j) null);
        C9027o c = a.mo16178c();
        a.mo16187b();
        c.m16389A().m16338a("Local AppMeasurementService is starting up");
    }

    /* renamed from: a */
    public final /* synthetic */ void m16693a(int i, C9027o oVar, Intent intent) {
        if (this.f20273a.mo16585a(i)) {
            oVar.m16389A().m16337a("Local AppMeasurementService processed last upload request. StartId", Integer.valueOf(i));
            m16685c().m16389A().m16338a("Completed wakeful intent.");
            this.f20273a.mo16583a(intent);
        }
    }

    /* renamed from: a */
    public final /* synthetic */ void m16689a(C9027o oVar, JobParameters jobParameters) {
        oVar.m16389A().m16338a("AppMeasurementJobService processed last upload request.");
        this.f20273a.mo16584a(jobParameters, false);
    }

    /* renamed from: a */
    public final void m16688a(Runnable runnable) {
        C9061t3 a = C9061t3.m16211a(this.f20273a);
        a.mo16214a().m16364a(new RunnableC8983g3(this, a, runnable));
    }

    @TargetApi(24)
    @MainThread
    /* renamed from: a */
    public final boolean m16692a(final JobParameters jobParameters) {
        C9052s0 a = C9052s0.m16298a(this.f20273a, (C8997j) null);
        final C9027o c = a.mo16178c();
        String string = jobParameters.getExtras().getString("action");
        a.mo16187b();
        c.m16389A().m16337a("Local AppMeasurementJobService called. action", string);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(string)) {
            return true;
        }
        m16688a(new Runnable(this, c, jobParameters) { // from class: h.i.a.e.m.b.f3

            /* renamed from: a */
            public final C8964d3 f20366a;

            /* renamed from: b */
            public final C9027o f20367b;

            /* renamed from: c */
            public final JobParameters f20368c;

            {
                this.f20366a = this;
                this.f20367b = c;
                this.f20368c = jobParameters;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f20366a.m16689a(this.f20367b, this.f20368c);
            }
        });
        return true;
    }

    @MainThread
    /* renamed from: b */
    public final void m16687b() {
        C9052s0 a = C9052s0.m16298a(this.f20273a, (C8997j) null);
        C9027o c = a.mo16178c();
        a.mo16187b();
        c.m16389A().m16338a("Local AppMeasurementService is shutting down");
    }

    @MainThread
    /* renamed from: b */
    public final void m16686b(Intent intent) {
        if (intent == null) {
            m16685c().m16375s().m16338a("onRebind called with null intent");
            return;
        }
        m16685c().m16389A().m16337a("onRebind called. action", intent.getAction());
    }

    /* renamed from: c */
    public final C9027o m16685c() {
        return C9052s0.m16298a(this.f20273a, (C8997j) null).mo16178c();
    }

    @MainThread
    /* renamed from: c */
    public final boolean m16684c(Intent intent) {
        if (intent == null) {
            m16685c().m16375s().m16338a("onUnbind called with null intent");
            return true;
        }
        m16685c().m16389A().m16337a("onUnbind called for intent. action", intent.getAction());
        return true;
    }
}
