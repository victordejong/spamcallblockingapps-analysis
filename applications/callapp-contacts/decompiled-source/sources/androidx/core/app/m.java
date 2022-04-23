package androidx.core.app;

import android.app.job.JobParameters;
import android.app.job.JobServiceEngine;
import android.app.job.JobWorkItem;
import android.content.Intent;
import android.os.IBinder;
import androidx.core.app.JobIntentService;
/* loaded from: classes-dex2jar.jar:androidx/core/app/m.class */
public final class m extends JobServiceEngine implements JobIntentService.b {

    /* renamed from: a  reason: collision with root package name */
    final JobIntentService f1777a;

    /* renamed from: b  reason: collision with root package name */
    final Object f1778b = new Object();

    /* renamed from: c  reason: collision with root package name */
    JobParameters f1779c;

    /* loaded from: classes-dex2jar.jar:androidx/core/app/m$a.class */
    final class a implements JobIntentService.e {

        /* renamed from: a  reason: collision with root package name */
        final JobWorkItem f1780a;

        a(JobWorkItem jobWorkItem) {
            this.f1780a = jobWorkItem;
        }

        @Override // androidx.core.app.JobIntentService.e
        public final Intent a() {
            return this.f1780a.getIntent();
        }

        @Override // androidx.core.app.JobIntentService.e
        public final void b() {
            synchronized (m.this.f1778b) {
                if (m.this.f1779c != null) {
                    try {
                        m.this.f1779c.completeWork(this.f1780a);
                    } catch (Exception e) {
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(JobIntentService jobIntentService) {
        super(jobIntentService);
        this.f1777a = jobIntentService;
    }

    @Override // androidx.core.app.JobIntentService.b
    public final IBinder a() {
        return getBinder();
    }

    @Override // androidx.core.app.JobIntentService.b
    public final JobIntentService.e b() {
        JobWorkItem jobWorkItem;
        synchronized (this.f1778b) {
            JobParameters jobParameters = this.f1779c;
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
            jobWorkItem.getIntent().setExtrasClassLoader(this.f1777a.getClassLoader());
            return new a(jobWorkItem);
        }
    }

    @Override // android.app.job.JobServiceEngine
    public final boolean onStartJob(JobParameters jobParameters) {
        this.f1779c = jobParameters;
        this.f1777a.a(false);
        return true;
    }

    @Override // android.app.job.JobServiceEngine
    public final boolean onStopJob(JobParameters jobParameters) {
        this.f1777a.a();
        synchronized (this.f1778b) {
            this.f1779c = null;
        }
        return true;
    }
}
