package androidx.core.app;

import android.app.job.JobParameters;
import android.app.job.JobServiceEngine;
import android.app.job.JobWorkItem;
import android.content.Intent;
import android.os.IBinder;
import androidx.core.app.JobIntentService;
/* renamed from: androidx.core.app.m */
/* loaded from: classes-dex2jar.jar:androidx/core/app/m.class */
public final class jobJobServiceEngineC0764m extends JobServiceEngine implements JobIntentService.AbstractC0718b {

    /* renamed from: a */
    final JobIntentService f3421a;

    /* renamed from: b */
    final Object f3422b = new Object();

    /* renamed from: c */
    JobParameters f3423c;

    /* renamed from: androidx.core.app.m$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/m$a.class */
    final class C0765a implements JobIntentService.AbstractC0721e {

        /* renamed from: a */
        final JobWorkItem f3424a;

        C0765a(JobWorkItem jobWorkItem) {
            jobJobServiceEngineC0764m.this = r4;
            this.f3424a = jobWorkItem;
        }

        @Override // androidx.core.app.JobIntentService.AbstractC0721e
        /* renamed from: a */
        public final Intent mo44531a() {
            return this.f3424a.getIntent();
        }

        @Override // androidx.core.app.JobIntentService.AbstractC0721e
        /* renamed from: b */
        public final void mo44530b() {
            synchronized (jobJobServiceEngineC0764m.this.f3422b) {
                if (jobJobServiceEngineC0764m.this.f3423c != null) {
                    try {
                        jobJobServiceEngineC0764m.this.f3423c.completeWork(this.f3424a);
                    } catch (Exception e) {
                    }
                }
            }
        }
    }

    public jobJobServiceEngineC0764m(JobIntentService jobIntentService) {
        super(jobIntentService);
        this.f3421a = jobIntentService;
    }

    @Override // androidx.core.app.JobIntentService.AbstractC0718b
    /* renamed from: a */
    public final IBinder mo44533a() {
        return getBinder();
    }

    @Override // androidx.core.app.JobIntentService.AbstractC0718b
    /* renamed from: b */
    public final JobIntentService.AbstractC0721e mo44532b() {
        JobWorkItem jobWorkItem;
        synchronized (this.f3422b) {
            JobParameters jobParameters = this.f3423c;
            if (jobParameters == null) {
                return null;
            }
            try {
                jobWorkItem = jobParameters.dequeueWork();
            } catch (Exception e) {
                jobWorkItem = null;
            }
            if (jobWorkItem == null) {
                return null;
            }
            jobWorkItem.getIntent().setExtrasClassLoader(this.f3421a.getClassLoader());
            return new C0765a(jobWorkItem);
        }
    }

    @Override // android.app.job.JobServiceEngine
    public final boolean onStartJob(JobParameters jobParameters) {
        this.f3423c = jobParameters;
        this.f3421a.m44626a(false);
        return true;
    }

    @Override // android.app.job.JobServiceEngine
    public final boolean onStopJob(JobParameters jobParameters) {
        this.f3421a.m44629a();
        synchronized (this.f3422b) {
            this.f3423c = null;
        }
        return true;
    }
}
