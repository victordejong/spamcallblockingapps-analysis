package androidx.work.impl.background.systemalarm;

import android.content.Intent;
import androidx.lifecycle.LifecycleService;
import androidx.work.AbstractC1404j;
import androidx.work.impl.background.systemalarm.C1256e;
import androidx.work.impl.utils.C1387j;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/SystemAlarmService.class */
public class SystemAlarmService extends LifecycleService implements C1256e.AbstractC1259c {

    /* renamed from: e */
    private static final String f5322e = AbstractC1404j.m30159f("SystemAlarmService");

    /* renamed from: f */
    private C1256e f5323f;

    /* renamed from: g */
    private boolean f5324g;

    /* renamed from: g */
    private void m30499g() {
        C1256e c1256e = new C1256e(this);
        this.f5323f = c1256e;
        c1256e.m30464m(this);
    }

    @Override // androidx.work.impl.background.systemalarm.C1256e.AbstractC1259c
    /* renamed from: b */
    public void mo30463b() {
        this.f5324g = true;
        AbstractC1404j.m30161c().mo30158a(f5322e, "All commands completed in dispatcher", new Throwable[0]);
        C1387j.m30181a();
        stopSelf();
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public void onCreate() {
        super.onCreate();
        m30499g();
        this.f5324g = false;
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.f5324g = true;
        this.f5323f.m30467j();
    }

    @Override // androidx.lifecycle.LifecycleService, android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        super.onStartCommand(intent, i, i2);
        if (this.f5324g) {
            AbstractC1404j.m30161c().mo30156d(f5322e, "Re-initializing SystemAlarmDispatcher after a request to shut-down.", new Throwable[0]);
            this.f5323f.m30467j();
            m30499g();
            this.f5324g = false;
        }
        if (intent != null) {
            this.f5323f.m30475a(intent, i2);
            return 3;
        }
        return 3;
    }
}
