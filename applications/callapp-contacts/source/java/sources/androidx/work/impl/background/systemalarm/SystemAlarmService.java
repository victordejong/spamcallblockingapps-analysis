package androidx.work.impl.background.systemalarm;

import android.content.Intent;
import androidx.lifecycle.LifecycleService;
import androidx.work.AbstractC3145k;
import androidx.work.impl.background.systemalarm.C3036e;
import androidx.work.impl.utils.C3132k;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/SystemAlarmService.class */
public class SystemAlarmService extends LifecycleService implements C3036e.AbstractC3039b {

    /* renamed from: a */
    private static final String f11229a = AbstractC3145k.m39275a("SystemAlarmService");

    /* renamed from: b */
    private C3036e f11230b;

    /* renamed from: c */
    private boolean f11231c;

    /* renamed from: b */
    private void m39432b() {
        C3036e c3036e = new C3036e(this);
        this.f11230b = c3036e;
        c3036e.m39415a(this);
    }

    @Override // androidx.work.impl.background.systemalarm.C3036e.AbstractC3039b
    /* renamed from: a */
    public final void mo39410a() {
        this.f11231c = true;
        AbstractC3145k.m39277a();
        C3132k.m39288a();
        stopSelf();
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public void onCreate() {
        super.onCreate();
        m39432b();
        this.f11231c = false;
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.f11231c = true;
        this.f11230b.m39417a();
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        super.onStartCommand(intent, i, i2);
        if (this.f11231c) {
            AbstractC3145k.m39277a();
            this.f11230b.m39417a();
            m39432b();
            this.f11231c = false;
        }
        if (intent != null) {
            this.f11230b.m39416a(intent, i2);
            return 3;
        }
        return 3;
    }
}
