package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.google.android.gms.common.internal.C6155o;
import com.google.android.gms.measurement.internal.AbstractC7829p8;
/* renamed from: com.google.android.gms.measurement.internal.q8 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/q8.class */
public final class C7840q8<T extends Context & AbstractC7829p8> {

    /* renamed from: a */
    private final T f35605a;

    public C7840q8(T t) {
        C6155o.m17018j(t);
        this.f35605a = t;
    }

    /* renamed from: k */
    private final C7813o3 m6081k() {
        return C7858s4.m6025f(this.f35605a, null, null).mo6047C();
    }

    /* renamed from: a */
    public final void m6091a() {
        C7858s4 m6025f = C7858s4.m6025f(this.f35605a, null, null);
        C7813o3 mo6047C = m6025f.mo6047C();
        m6025f.mo6028c();
        mo6047C.m6187u().m6216a("Local AppMeasurementService is starting up");
    }

    /* renamed from: b */
    public final void m6090b() {
        C7858s4 m6025f = C7858s4.m6025f(this.f35605a, null, null);
        C7813o3 mo6047C = m6025f.mo6047C();
        m6025f.mo6028c();
        mo6047C.m6187u().m6216a("Local AppMeasurementService is shutting down");
    }

    /* renamed from: c */
    public final int m6089c(Intent intent, int i, int i2) {
        C7858s4 m6025f = C7858s4.m6025f(this.f35605a, null, null);
        C7813o3 mo6047C = m6025f.mo6047C();
        if (intent == null) {
            mo6047C.m6192p().m6216a("AppMeasurementService started with null intent");
            return 2;
        }
        String action = intent.getAction();
        m6025f.mo6028c();
        mo6047C.m6187u().m6214c("Local AppMeasurementService called. startId, action", Integer.valueOf(i2), action);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(action)) {
            return 2;
        }
        m6088d(new Runnable(this, i2, mo6047C, intent) { // from class: com.google.android.gms.measurement.internal.m8

            /* renamed from: d */
            private final C7840q8 f35467d;

            /* renamed from: e */
            private final int f35468e;

            /* renamed from: f */
            private final C7813o3 f35469f;

            /* renamed from: g */
            private final Intent f35470g;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f35467d = this;
                this.f35468e = i2;
                this.f35469f = mo6047C;
                this.f35470g = intent;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f35467d.m6082j(this.f35468e, this.f35469f, this.f35470g);
            }
        });
        return 2;
    }

    /* renamed from: d */
    public final void m6088d(Runnable runnable) {
        C7819o9 m6175F = C7819o9.m6175F(this.f35605a);
        m6175F.mo6029b().m6109p(new RunnableC7818o8(this, m6175F, runnable));
    }

    /* renamed from: e */
    public final IBinder m6087e(Intent intent) {
        if (intent == null) {
            m6081k().m6195m().m6216a("onBind called with null intent");
            return null;
        }
        String action = intent.getAction();
        if ("com.google.android.gms.measurement.START".equals(action)) {
            return new BinderC7782l5(C7819o9.m6175F(this.f35605a), null);
        }
        m6081k().m6192p().m6215b("onBind received unknown action", action);
        return null;
    }

    /* renamed from: f */
    public final boolean m6086f(Intent intent) {
        if (intent == null) {
            m6081k().m6195m().m6216a("onUnbind called with null intent");
            return true;
        }
        m6081k().m6187u().m6215b("onUnbind called for intent. action", intent.getAction());
        return true;
    }

    @TargetApi(24)
    /* renamed from: g */
    public final boolean m6085g(JobParameters jobParameters) {
        C7858s4 m6025f = C7858s4.m6025f(this.f35605a, null, null);
        C7813o3 mo6047C = m6025f.mo6047C();
        String string = jobParameters.getExtras().getString("action");
        m6025f.mo6028c();
        mo6047C.m6187u().m6215b("Local AppMeasurementJobService called. action", string);
        if ("com.google.android.gms.measurement.UPLOAD".equals(string)) {
            m6088d(new Runnable(this, mo6047C, jobParameters) { // from class: com.google.android.gms.measurement.internal.n8

                /* renamed from: d */
                private final C7840q8 f35491d;

                /* renamed from: e */
                private final C7813o3 f35492e;

                /* renamed from: f */
                private final JobParameters f35493f;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f35491d = this;
                    this.f35492e = mo6047C;
                    this.f35493f = jobParameters;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f35491d.m6083i(this.f35492e, this.f35493f);
                }
            });
            return true;
        }
        return true;
    }

    /* renamed from: h */
    public final void m6084h(Intent intent) {
        if (intent == null) {
            m6081k().m6195m().m6216a("onRebind called with null intent");
            return;
        }
        m6081k().m6187u().m6215b("onRebind called. action", intent.getAction());
    }

    /* renamed from: i */
    public final /* synthetic */ void m6083i(C7813o3 c7813o3, JobParameters jobParameters) {
        c7813o3.m6187u().m6216a("AppMeasurementJobService processed last upload request.");
        this.f35605a.mo6095b(jobParameters, false);
    }

    /* renamed from: j */
    public final /* synthetic */ void m6082j(int i, C7813o3 c7813o3, Intent intent) {
        if (this.f35605a.mo6097B(i)) {
            c7813o3.m6187u().m6215b("Local AppMeasurementService processed last upload request. StartId", Integer.valueOf(i));
            m6081k().m6187u().m6216a("Completed wakeful intent.");
            this.f35605a.mo6096a(intent);
        }
    }
}
