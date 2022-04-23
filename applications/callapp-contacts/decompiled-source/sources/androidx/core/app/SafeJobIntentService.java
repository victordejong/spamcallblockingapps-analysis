package androidx.core.app;

import android.os.Build;
import androidx.core.app.JobIntentService;
/* loaded from: classes-dex2jar.jar:androidx/core/app/SafeJobIntentService.class */
public abstract class SafeJobIntentService extends JobIntentService {
    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.core.app.JobIntentService
    public final JobIntentService.e c() {
        try {
            return super.c();
        } catch (SecurityException e) {
            return null;
        }
    }

    @Override // androidx.core.app.JobIntentService, android.app.Service
    public void onCreate() {
        super.onCreate();
        if (Build.VERSION.SDK_INT >= 26) {
            this.f1674a = new m(this);
        } else {
            this.f1674a = null;
        }
    }
}
