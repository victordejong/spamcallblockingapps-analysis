package androidx.work.impl.background.systemalarm;

import android.content.Intent;
import android.os.PowerManager;
import androidx.lifecycle.ServiceC0528m;
import androidx.work.impl.background.systemalarm.C0697d;
import java.util.HashMap;
import java.util.WeakHashMap;
import p186o1.AbstractC3824h;
import p292y1.C4967m;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/SystemAlarmService.class */
public class SystemAlarmService extends ServiceC0528m implements C0697d.AbstractC0700c {

    /* renamed from: d */
    public static final String f2668d = AbstractC3824h.m1773e("SystemAlarmService");

    /* renamed from: b */
    public C0697d f2669b;

    /* renamed from: c */
    public boolean f2670c;

    /* renamed from: a */
    public final void m7473a() {
        C0697d c0697d = new C0697d(this);
        this.f2669b = c0697d;
        if (c0697d.f2700j != null) {
            AbstractC3824h.m1774c().mo1771b(C0697d.f2690k, "A completion listener for SystemAlarmDispatcher already exists.", new Throwable[0]);
        } else {
            c0697d.f2700j = this;
        }
    }

    /* renamed from: c */
    public void m7472c() {
        this.f2670c = true;
        AbstractC3824h.m1774c().mo1772a(f2668d, "All commands completed in dispatcher", new Throwable[0]);
        String str = C4967m.f15142a;
        HashMap hashMap = new HashMap();
        WeakHashMap<PowerManager.WakeLock, String> weakHashMap = C4967m.f15143b;
        synchronized (weakHashMap) {
            hashMap.putAll(weakHashMap);
        }
        for (PowerManager.WakeLock wakeLock : hashMap.keySet()) {
            if (wakeLock != null && wakeLock.isHeld()) {
                AbstractC3824h.m1774c().mo1769f(C4967m.f15142a, String.format("WakeLock held for %s", hashMap.get(wakeLock)), new Throwable[0]);
            }
        }
        stopSelf();
    }

    @Override // androidx.lifecycle.ServiceC0528m, android.app.Service
    public void onCreate() {
        super.onCreate();
        m7473a();
        this.f2670c = false;
    }

    @Override // androidx.lifecycle.ServiceC0528m, android.app.Service
    public void onDestroy() {
        super.onDestroy();
        this.f2670c = true;
        this.f2669b.m7462d();
    }

    @Override // androidx.lifecycle.ServiceC0528m, android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        super.onStartCommand(intent, i, i2);
        if (this.f2670c) {
            AbstractC3824h.m1774c().mo1770d(f2668d, "Re-initializing SystemAlarmDispatcher after a request to shut-down.", new Throwable[0]);
            this.f2669b.m7462d();
            m7473a();
            this.f2670c = false;
        }
        if (intent != null) {
            this.f2669b.m7464b(intent, i2);
            return 3;
        }
        return 3;
    }
}
