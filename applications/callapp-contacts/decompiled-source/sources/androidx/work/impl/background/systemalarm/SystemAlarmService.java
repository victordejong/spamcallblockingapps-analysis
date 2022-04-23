package androidx.work.impl.background.systemalarm;

import android.content.Intent;
import androidx.lifecycle.LifecycleService;
import androidx.work.impl.background.systemalarm.e;
import androidx.work.k;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/SystemAlarmService.class */
public class SystemAlarmService extends LifecycleService implements e.b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f6036a = k.a("SystemAlarmService");

    /* renamed from: b  reason: collision with root package name */
    private e f6037b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f6038c;

    private void b() {
        e eVar = new e(this);
        this.f6037b = eVar;
        eVar.a(this);
    }

    @Override // androidx.work.impl.background.systemalarm.e.b
    public final void a() {
        this.f6038c = true;
        k.a();
        androidx.work.impl.utils.k.a();
        stopSelf();
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public void onCreate() {
        super.onCreate();
        b();
        this.f6038c = false;
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.f6038c = true;
        this.f6037b.a();
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        super.onStartCommand(intent, i, i2);
        if (this.f6038c) {
            k.a();
            this.f6037b.a();
            b();
            this.f6038c = false;
        }
        if (intent == null) {
            return 3;
        }
        this.f6037b.a(intent, i2);
        return 3;
    }
}
