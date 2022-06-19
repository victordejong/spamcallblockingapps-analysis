package androidx.lifecycle;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/LifecycleService.class */
public class LifecycleService extends Service implements AbstractC0797h {

    /* renamed from: d */
    private final C0811q f3667d = new C0811q(this);

    @Override // androidx.lifecycle.AbstractC0797h
    /* renamed from: a */
    public Lifecycle mo32372a() {
        return this.f3667d.m32361a();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        this.f3667d.m32360b();
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        this.f3667d.m32359c();
        super.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.f3667d.m32358d();
        super.onDestroy();
    }

    @Override // android.app.Service
    public void onStart(Intent intent, int i) {
        this.f3667d.m32357e();
        super.onStart(intent, i);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        return super.onStartCommand(intent, i, i2);
    }
}
