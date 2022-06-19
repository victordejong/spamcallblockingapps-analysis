package androidx.work.impl.background.systemalarm;

import android.content.Intent;
import androidx.lifecycle.ServiceC0874k;
import androidx.work.AbstractC1293l;
import androidx.work.impl.background.systemalarm.C1217e;
import androidx.work.impl.utils.C1281i;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/SystemAlarmService.class */
public class SystemAlarmService extends ServiceC0874k implements C1217e.AbstractC1220b {

    /* renamed from: a */
    private static final String f4074a = AbstractC1293l.m17541a("SystemAlarmService");

    /* renamed from: b */
    private C1217e f4075b;

    /* renamed from: c */
    private boolean f4076c;

    /* renamed from: c */
    private void m17765c() {
        this.f4075b = new C1217e(this);
        this.f4075b.m17739a(this);
    }

    @Override // androidx.work.impl.background.systemalarm.C1217e.AbstractC1220b
    /* renamed from: a */
    public void mo17729a() {
        this.f4076c = true;
        AbstractC1293l.m17543a().mo17539b(f4074a, "All commands completed in dispatcher", new Throwable[0]);
        C1281i.m17563a();
        stopSelf();
    }

    @Override // androidx.lifecycle.ServiceC0874k, android.app.Service
    public void onCreate() {
        super.onCreate();
        m17765c();
        this.f4076c = false;
    }

    @Override // androidx.lifecycle.ServiceC0874k, android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.f4076c = true;
        this.f4075b.m17741a();
    }

    @Override // androidx.lifecycle.ServiceC0874k, android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        super.onStartCommand(intent, i, i2);
        if (this.f4076c) {
            AbstractC1293l.m17543a().mo17538c(f4074a, "Re-initializing SystemAlarmDispatcher after a request to shut-down.", new Throwable[0]);
            this.f4075b.m17741a();
            m17765c();
            this.f4076c = false;
        }
        if (intent != null) {
            this.f4075b.m17740a(intent, i2);
            return 3;
        }
        return 3;
    }
}
