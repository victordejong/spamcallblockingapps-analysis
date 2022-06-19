package androidx.lifecycle;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import androidx.lifecycle.AbstractC0516f;
/* renamed from: androidx.lifecycle.m */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/m.class */
public class ServiceC0528m extends Service implements AbstractC0524j {

    /* renamed from: a */
    public final C0544w f2047a = new C0544w(this);

    @Override // androidx.lifecycle.AbstractC0524j
    public AbstractC0516f getLifecycle() {
        return this.f2047a.f2076a;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        this.f2047a.m7971a(AbstractC0516f.EnumC0518b.ON_START);
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        this.f2047a.m7971a(AbstractC0516f.EnumC0518b.ON_CREATE);
        super.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        C0544w c0544w = this.f2047a;
        c0544w.m7971a(AbstractC0516f.EnumC0518b.ON_STOP);
        c0544w.m7971a(AbstractC0516f.EnumC0518b.ON_DESTROY);
        super.onDestroy();
    }

    @Override // android.app.Service
    public void onStart(Intent intent, int i) {
        this.f2047a.m7971a(AbstractC0516f.EnumC0518b.ON_START);
        super.onStart(intent, i);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        return super.onStartCommand(intent, i, i2);
    }
}
