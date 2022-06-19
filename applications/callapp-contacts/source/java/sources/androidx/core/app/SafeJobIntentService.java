package androidx.core.app;

import android.os.Build;
import androidx.core.app.JobIntentService;
/* loaded from: classes-dex2jar.jar:androidx/core/app/SafeJobIntentService.class */
public abstract class SafeJobIntentService extends JobIntentService {
    @Override // androidx.core.app.JobIntentService
    /* renamed from: c */
    public final JobIntentService.AbstractC0721e mo44619c() {
        try {
            return super.mo44619c();
        } catch (SecurityException e) {
            return null;
        }
    }

    @Override // androidx.core.app.JobIntentService, android.app.Service
    public void onCreate() {
        super.onCreate();
        if (Build.VERSION.SDK_INT >= 26) {
            this.f3227a = new jobJobServiceEngineC0764m(this);
        } else {
            this.f3227a = null;
        }
    }
}
