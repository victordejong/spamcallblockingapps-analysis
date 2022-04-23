package androidx.lifecycle;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import androidx.lifecycle.j;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/LifecycleService.class */
public class LifecycleService extends Service implements p {

    /* renamed from: a  reason: collision with root package name */
    private final z f2533a = new z(this);

    @Override // androidx.lifecycle.p
    public j getLifecycle() {
        return this.f2533a.f2603a;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        this.f2533a.a(j.a.ON_START);
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        this.f2533a.a(j.a.ON_CREATE);
        super.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        z zVar = this.f2533a;
        zVar.a(j.a.ON_STOP);
        zVar.a(j.a.ON_DESTROY);
        super.onDestroy();
    }

    @Override // android.app.Service
    public void onStart(Intent intent, int i) {
        this.f2533a.a(j.a.ON_START);
        super.onStart(intent, i);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        return super.onStartCommand(intent, i, i2);
    }
}
