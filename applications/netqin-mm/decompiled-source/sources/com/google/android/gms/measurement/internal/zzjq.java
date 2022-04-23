package com.google.android.gms.measurement.internal;

import android.app.job.JobParameters;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzeq;
import com.google.android.gms.measurement.internal.zzjq;
import com.google.android.gms.measurement.internal.zzju;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4875z6;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzjq.class */
public final class zzjq<T extends Context & zzju> {

    /* renamed from: a */
    public final T f30098a;

    public zzjq(T t) {
        Preconditions.m17288a(t);
        this.f30098a = t;
    }

    /* renamed from: a */
    public final int m8874a(final Intent intent, int i, final int i2) {
        final zzeq p = zzfu.m9071a(this.f30098a, null, null).mo8789p();
        if (intent == null) {
            p.m9149t().m9143a("AppMeasurementService started with null intent");
            return 2;
        }
        String action = intent.getAction();
        p.m9144y().m9141a("Local AppMeasurementService called. startId, action", Integer.valueOf(i2), action);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(action)) {
            return 2;
        }
        m8872a(new Runnable(this, i2, p, intent) { // from class: c.d.b.d.i.a.y6

            /* renamed from: a */
            public final zzjq f17480a;

            /* renamed from: b */
            public final int f17481b;

            /* renamed from: c */
            public final zzeq f17482c;

            /* renamed from: d */
            public final Intent f17483d;

            {
                this.f17480a = this;
                this.f17481b = i2;
                this.f17482c = p;
                this.f17483d = intent;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f17480a.m8877a(this.f17481b, this.f17482c, this.f17483d);
            }
        });
        return 2;
    }

    /* renamed from: a */
    public final IBinder m8875a(Intent intent) {
        if (intent == null) {
            m8869c().m9152q().m9143a("onBind called with null intent");
            return null;
        }
        String action = intent.getAction();
        if ("com.google.android.gms.measurement.START".equals(action)) {
            return new zzfz(zzkl.m8841a(this.f30098a));
        }
        m8869c().m9149t().m9142a("onBind received unknown action", action);
        return null;
    }

    /* renamed from: a */
    public final void m8878a() {
        zzfu.m9071a(this.f30098a, null, null).mo8789p().m9144y().m9143a("Local AppMeasurementService is starting up");
    }

    /* renamed from: a */
    public final /* synthetic */ void m8877a(int i, zzeq zzeqVar, Intent intent) {
        if (this.f30098a.zza(i)) {
            zzeqVar.m9144y().m9142a("Local AppMeasurementService processed last upload request. StartId", Integer.valueOf(i));
            m8869c().m9144y().m9143a("Completed wakeful intent.");
            this.f30098a.mo8863a(intent);
        }
    }

    /* renamed from: a */
    public final /* synthetic */ void m8873a(zzeq zzeqVar, JobParameters jobParameters) {
        zzeqVar.m9144y().m9143a("AppMeasurementJobService processed last upload request.");
        this.f30098a.mo8864a(jobParameters, false);
    }

    /* renamed from: a */
    public final void m8872a(Runnable runnable) {
        zzkl a = zzkl.m8841a(this.f30098a);
        a.mo8795j().m9093a(new RunnableC4875z6(this, a, runnable));
    }

    /* renamed from: a */
    public final boolean m8876a(final JobParameters jobParameters) {
        final zzeq p = zzfu.m9071a(this.f30098a, null, null).mo8789p();
        String string = jobParameters.getExtras().getString("action");
        p.m9144y().m9142a("Local AppMeasurementJobService called. action", string);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(string)) {
            return true;
        }
        m8872a(new Runnable(this, p, jobParameters) { // from class: c.d.b.d.i.a.x6

            /* renamed from: a */
            public final zzjq f17464a;

            /* renamed from: b */
            public final zzeq f17465b;

            /* renamed from: c */
            public final JobParameters f17466c;

            {
                this.f17464a = this;
                this.f17465b = p;
                this.f17466c = jobParameters;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f17464a.m8873a(this.f17465b, this.f17466c);
            }
        });
        return true;
    }

    /* renamed from: b */
    public final void m8871b() {
        zzfu.m9071a(this.f30098a, null, null).mo8789p().m9144y().m9143a("Local AppMeasurementService is shutting down");
    }

    /* renamed from: b */
    public final boolean m8870b(Intent intent) {
        if (intent == null) {
            m8869c().m9152q().m9143a("onUnbind called with null intent");
            return true;
        }
        m8869c().m9144y().m9142a("onUnbind called for intent. action", intent.getAction());
        return true;
    }

    /* renamed from: c */
    public final zzeq m8869c() {
        return zzfu.m9071a(this.f30098a, null, null).mo8789p();
    }

    /* renamed from: c */
    public final void m8868c(Intent intent) {
        if (intent == null) {
            m8869c().m9152q().m9143a("onRebind called with null intent");
            return;
        }
        m8869c().m9144y().m9142a("onRebind called. action", intent.getAction());
    }
}
