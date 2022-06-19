package com.callapp.contacts.manager;

import android.os.PowerManager;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.util.CLog;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/MainThreadTimer.class */
public class MainThreadTimer {

    /* renamed from: b */
    private int f25714b;

    /* renamed from: e */
    private final DelaytedTaskEvents f25717e;

    /* renamed from: f */
    private Runnable f25718f;

    /* renamed from: a */
    private long f25713a = 0;

    /* renamed from: c */
    private final Object f25715c = new Object();

    /* renamed from: d */
    private PowerManager.WakeLock f25716d = null;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/MainThreadTimer$DelaytedTaskEvents.class */
    public interface DelaytedTaskEvents {
        /* renamed from: a */
        void mo28637a();
    }

    public MainThreadTimer(DelaytedTaskEvents delaytedTaskEvents) {
        this.f25717e = delaytedTaskEvents;
    }

    /* renamed from: b */
    public void m28640b() {
        synchronized (this.f25715c) {
            PowerManager.WakeLock wakeLock = this.f25716d;
            if (wakeLock != null) {
                if (wakeLock.isHeld()) {
                    try {
                        this.f25716d.release();
                    } catch (Exception e) {
                        CLog.m27596b(PhoneStateManager.class, e);
                    }
                }
                this.f25716d = null;
            }
        }
    }

    /* renamed from: a */
    public final boolean m28643a() {
        synchronized (this) {
            this.f25713a = 0L;
            if (this.f25718f != null) {
                m28640b();
                CallAppApplication.get().m31861c(this.f25718f);
                this.f25718f = null;
                return true;
            }
            return false;
        }
    }

    /* renamed from: a */
    public final boolean m28642a(int i, boolean z) {
        synchronized (this) {
            if (this.f25718f == null) {
                this.f25718f = new Runnable() { // from class: com.callapp.contacts.manager.MainThreadTimer.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (MainThreadTimer.this.f25717e != null) {
                            MainThreadTimer.this.m28640b();
                            MainThreadTimer.this.f25717e.mo28637a();
                            MainThreadTimer.this.f25718f = null;
                        }
                    }
                };
                this.f25714b = i;
                this.f25713a = System.currentTimeMillis();
                if (Prefs.f26474em.get().booleanValue() && z && i > 0) {
                    synchronized (this.f25715c) {
                        if (this.f25716d == null) {
                            PowerManager.WakeLock newWakeLock = ((PowerManager) Singletons.m28493a("power")).newWakeLock(268435466, getClass().getSimpleName());
                            this.f25716d = newWakeLock;
                            newWakeLock.acquire(TimeUnit.SECONDS.toMillis(5L));
                        }
                    }
                }
                CallAppApplication.get().m31869a(this.f25718f, i);
                return true;
            }
            return false;
        }
    }

    public boolean isRunning() {
        boolean z;
        synchronized (this) {
            z = this.f25718f != null;
        }
        return z;
    }
}
