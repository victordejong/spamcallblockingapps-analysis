package androidx.lifecycle;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
/* renamed from: androidx.lifecycle.k */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/k.class */
public class ServiceC0874k extends Service implements AbstractC0869h {

    /* renamed from: a */
    private final C0882r f2992a = new C0882r(this);

    @Override // androidx.lifecycle.AbstractC0869h
    /* renamed from: b */
    public AbstractC0864e mo19203b() {
        return this.f2992a.m19178e();
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        this.f2992a.m19181b();
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        this.f2992a.m19183a();
        super.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        this.f2992a.m19179d();
        super.onDestroy();
    }

    @Override // android.app.Service
    public void onStart(Intent intent, int i) {
        this.f2992a.m19180c();
        super.onStart(intent, i);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        return super.onStartCommand(intent, i, i2);
    }
}
