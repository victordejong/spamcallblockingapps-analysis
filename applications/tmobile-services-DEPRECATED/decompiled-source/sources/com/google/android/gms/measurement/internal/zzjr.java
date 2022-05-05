package com.google.android.gms.measurement.internal;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import androidx.annotation.MainThread;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.measurement.internal.zzjv;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzjr.class */
public final class zzjr<T extends Context & zzjv> {

    /* renamed from: a */
    private final T f9619a;

    public zzjr(T t) {
        Preconditions.m14523k(t);
        this.f9619a = t;
    }

    /* renamed from: f */
    private final void m11155f(Runnable runnable) {
        zzki j = zzki.m11067j(this.f9619a);
        j.mo11083b().m11409x(new zzjs(this, j, runnable));
    }

    /* renamed from: j */
    private final zzer m11151j() {
        return zzfv.m11367d(this.f9619a, null, null).mo11081c();
    }

    @MainThread
    /* renamed from: a */
    public final int m11160a(final Intent intent, int i, final int i2) {
        final zzer c = zzfv.m11367d(this.f9619a, null, null).mo11081c();
        if (intent == null) {
            c.m11557G().m11540a("AppMeasurementService started with null intent");
            return 2;
        }
        String action = intent.getAction();
        c.m11552L().m11538c("Local AppMeasurementService called. startId, action", Integer.valueOf(i2), action);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(action)) {
            return 2;
        }
        m11155f(new Runnable(this, i2, c, intent) { // from class: com.google.android.gms.measurement.internal.zzjq

            /* renamed from: f */
            private final zzjr f9615f;

            /* renamed from: g */
            private final int f9616g;

            /* renamed from: h */
            private final zzer f9617h;

            /* renamed from: i */
            private final Intent f9618i;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9615f = this;
                this.f9616g = i2;
                this.f9617h = c;
                this.f9618i = intent;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f9615f.m11157d(this.f9616g, this.f9617h, this.f9618i);
            }
        });
        return 2;
    }

    @MainThread
    /* renamed from: b */
    public final IBinder m11159b(Intent intent) {
        if (intent == null) {
            m11151j().m11560D().m11540a("onBind called with null intent");
            return null;
        }
        String action = intent.getAction();
        if ("com.google.android.gms.measurement.START".equals(action)) {
            return new zzfw(zzki.m11067j(this.f9619a));
        }
        m11151j().m11557G().m11539b("onBind received unknown action", action);
        return null;
    }

    @MainThread
    /* renamed from: c */
    public final void m11158c() {
        zzfv.m11367d(this.f9619a, null, null).mo11081c().m11552L().m11540a("Local AppMeasurementService is starting up");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final /* synthetic */ void m11157d(int i, zzer zzerVar, Intent intent) {
        if (this.f9619a.mo11139a(i)) {
            zzerVar.m11552L().m11539b("Local AppMeasurementService processed last upload request. StartId", Integer.valueOf(i));
            m11151j().m11552L().m11540a("Completed wakeful intent.");
            this.f9619a.mo11138b(intent);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public final /* synthetic */ void m11156e(zzer zzerVar, JobParameters jobParameters) {
        zzerVar.m11552L().m11540a("AppMeasurementJobService processed last upload request.");
        this.f9619a.mo11137c(jobParameters, false);
    }

    @TargetApi(24)
    @MainThread
    /* renamed from: g */
    public final boolean m11154g(final JobParameters jobParameters) {
        final zzer c = zzfv.m11367d(this.f9619a, null, null).mo11081c();
        String string = jobParameters.getExtras().getString("action");
        c.m11552L().m11539b("Local AppMeasurementJobService called. action", string);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(string)) {
            return true;
        }
        m11155f(new Runnable(this, c, jobParameters) { // from class: com.google.android.gms.measurement.internal.zzjt

            /* renamed from: f */
            private final zzjr f9622f;

            /* renamed from: g */
            private final zzer f9623g;

            /* renamed from: h */
            private final JobParameters f9624h;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9622f = this;
                this.f9623g = c;
                this.f9624h = jobParameters;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f9622f.m11156e(this.f9623g, this.f9624h);
            }
        });
        return true;
    }

    @MainThread
    /* renamed from: h */
    public final void m11153h() {
        zzfv.m11367d(this.f9619a, null, null).mo11081c().m11552L().m11540a("Local AppMeasurementService is shutting down");
    }

    @MainThread
    /* renamed from: i */
    public final boolean m11152i(Intent intent) {
        if (intent == null) {
            m11151j().m11560D().m11540a("onUnbind called with null intent");
            return true;
        }
        m11151j().m11552L().m11539b("onUnbind called for intent. action", intent.getAction());
        return true;
    }

    @MainThread
    /* renamed from: k */
    public final void m11150k(Intent intent) {
        if (intent == null) {
            m11151j().m11560D().m11540a("onRebind called with null intent");
            return;
        }
        m11151j().m11552L().m11539b("onRebind called. action", intent.getAction());
    }
}
