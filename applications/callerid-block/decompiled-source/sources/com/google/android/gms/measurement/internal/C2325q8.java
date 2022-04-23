package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.google.android.gms.common.internal.C1581h;
import com.google.android.gms.internal.measurement.zzz;
import com.google.android.gms.measurement.internal.AbstractC2317p8;
/* renamed from: com.google.android.gms.measurement.internal.q8 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/q8.class */
public final class C2325q8<T extends Context & AbstractC2317p8> {

    /* renamed from: a */
    private final T f10371a;

    public C2325q8(T t) {
        C1581h.m8347h(t);
        this.f10371a = t;
    }

    /* renamed from: k */
    private final o3 m3836k() {
        return s4.f(this.f10371a, (zzz) null, (Long) null).t();
    }

    /* renamed from: a */
    public final void m3846a() {
        s4 f = s4.f(this.f10371a, (zzz) null, (Long) null);
        o3 t = f.t();
        f.a();
        t.w().m3876a("Local AppMeasurementService is starting up");
    }

    /* renamed from: b */
    public final void m3845b() {
        s4 f = s4.f(this.f10371a, (zzz) null, (Long) null);
        o3 t = f.t();
        f.a();
        t.w().m3876a("Local AppMeasurementService is shutting down");
    }

    /* renamed from: c */
    public final int m3844c(final Intent intent, int i, final int i2) {
        s4 f = s4.f(this.f10371a, (zzz) null, (Long) null);
        final o3 t = f.t();
        if (intent == null) {
            t.p().m3876a("AppMeasurementService started with null intent");
            return 2;
        }
        String action = intent.getAction();
        f.a();
        t.w().m3874c("Local AppMeasurementService called. startId, action", Integer.valueOf(i2), action);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(action)) {
            return 2;
        }
        m3843d(new Runnable(this, i2, t, intent) { // from class: com.google.android.gms.measurement.internal.m8

            /* renamed from: b */
            private final C2325q8 f10297b;

            /* renamed from: c */
            private final int f10298c;

            /* renamed from: d */
            private final o3 f10299d;

            /* renamed from: e */
            private final Intent f10300e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10297b = this;
                this.f10298c = i2;
                this.f10299d = t;
                this.f10300e = intent;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f10297b.m3837j(this.f10298c, this.f10299d, this.f10300e);
            }
        });
        return 2;
    }

    /* renamed from: d */
    public final void m3843d(Runnable runnable) {
        o9 F = o9.F(this.f10371a);
        F.c().p(new RunnableC2311o8(this, F, runnable));
    }

    /* renamed from: e */
    public final IBinder m3842e(Intent intent) {
        if (intent == null) {
            m3836k().m().m3876a("onBind called with null intent");
            return null;
        }
        String action = intent.getAction();
        if ("com.google.android.gms.measurement.START".equals(action)) {
            return new l5(o9.F(this.f10371a), (String) null);
        }
        m3836k().p().m3875b("onBind received unknown action", action);
        return null;
    }

    /* renamed from: f */
    public final boolean m3841f(Intent intent) {
        if (intent == null) {
            m3836k().m().m3876a("onUnbind called with null intent");
            return true;
        }
        m3836k().w().m3875b("onUnbind called for intent. action", intent.getAction());
        return true;
    }

    @TargetApi(24)
    /* renamed from: g */
    public final boolean m3840g(final JobParameters jobParameters) {
        s4 f = s4.f(this.f10371a, (zzz) null, (Long) null);
        final o3 t = f.t();
        String string = jobParameters.getExtras().getString("action");
        f.a();
        t.w().m3875b("Local AppMeasurementJobService called. action", string);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(string)) {
            return true;
        }
        m3843d(new Runnable(this, t, jobParameters) { // from class: com.google.android.gms.measurement.internal.n8

            /* renamed from: b */
            private final C2325q8 f10316b;

            /* renamed from: c */
            private final o3 f10317c;

            /* renamed from: d */
            private final JobParameters f10318d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10316b = this;
                this.f10317c = t;
                this.f10318d = jobParameters;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f10316b.m3838i(this.f10317c, this.f10318d);
            }
        });
        return true;
    }

    /* renamed from: h */
    public final void m3839h(Intent intent) {
        if (intent == null) {
            m3836k().m().m3876a("onRebind called with null intent");
            return;
        }
        m3836k().w().m3875b("onRebind called. action", intent.getAction());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public final /* synthetic */ void m3838i(o3 o3Var, JobParameters jobParameters) {
        o3Var.w().m3876a("AppMeasurementJobService processed last upload request.");
        this.f10371a.m3850c(jobParameters, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public final /* synthetic */ void m3837j(int i, o3 o3Var, Intent intent) {
        if (this.f10371a.m3852a(i)) {
            o3Var.w().m3875b("Local AppMeasurementService processed last upload request. StartId", Integer.valueOf(i));
            m3836k().w().m3876a("Completed wakeful intent.");
            this.f10371a.m3851b(intent);
        }
    }
}
