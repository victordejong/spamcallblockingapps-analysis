package dagger.android;

import android.app.Service;
/* loaded from: classes2-dex2jar.jar:dagger/android/DaggerService.class */
public abstract class DaggerService extends Service {
    @Override // android.app.Service
    public void onCreate() {
        AndroidInjection.inject(this);
        super.onCreate();
    }
}
