package androidx.lifecycle;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import androidx.lifecycle.AbstractC1253j;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/LifecycleService.class */
public class LifecycleService extends Service implements AbstractC1263p {

    /* renamed from: a */
    private final C1284z f4775a = new C1284z(this);

    @Override // androidx.lifecycle.AbstractC1263p
    public AbstractC1253j getLifecycle() {
        return this.f4775a.f4865a;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        this.f4775a.m43271a(AbstractC1253j.EnumC1255a.ON_START);
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        this.f4775a.m43271a(AbstractC1253j.EnumC1255a.ON_CREATE);
        super.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        C1284z c1284z = this.f4775a;
        c1284z.m43271a(AbstractC1253j.EnumC1255a.ON_STOP);
        c1284z.m43271a(AbstractC1253j.EnumC1255a.ON_DESTROY);
        super.onDestroy();
    }

    @Override // android.app.Service
    public void onStart(Intent intent, int i) {
        this.f4775a.m43271a(AbstractC1253j.EnumC1255a.ON_START);
        super.onStart(intent, i);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        return super.onStartCommand(intent, i, i2);
    }
}
