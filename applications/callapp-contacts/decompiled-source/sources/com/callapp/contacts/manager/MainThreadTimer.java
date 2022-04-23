package com.callapp.contacts.manager;

import android.os.PowerManager;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.phone.PhoneStateManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.util.CLog;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/MainThreadTimer.class */
public class MainThreadTimer {

    /* renamed from: b  reason: collision with root package name */
    private int f14886b;
    private final DelaytedTaskEvents e;
    private Runnable f;

    /* renamed from: a  reason: collision with root package name */
    private long f14885a = 0;

    /* renamed from: c  reason: collision with root package name */
    private final Object f14887c = new Object();

    /* renamed from: d  reason: collision with root package name */
    private PowerManager.WakeLock f14888d = null;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/MainThreadTimer$DelaytedTaskEvents.class */
    public interface DelaytedTaskEvents {
        void a();
    }

    public MainThreadTimer(DelaytedTaskEvents delaytedTaskEvents) {
        this.e = delaytedTaskEvents;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        synchronized (this.f14887c) {
            PowerManager.WakeLock wakeLock = this.f14888d;
            if (wakeLock != null) {
                if (wakeLock.isHeld()) {
                    try {
                        this.f14888d.release();
                    } catch (Exception e) {
                        CLog.b(PhoneStateManager.class, e);
                    }
                }
                this.f14888d = null;
            }
        }
    }

    public final boolean a() {
        synchronized (this) {
            this.f14885a = 0L;
            if (this.f == null) {
                return false;
            }
            b();
            CallAppApplication.get().c(this.f);
            this.f = null;
            return true;
        }
    }

    public final boolean a(int i, boolean z) {
        synchronized (this) {
            if (this.f != null) {
                return false;
            }
            this.f = new Runnable() { // from class: com.callapp.contacts.manager.MainThreadTimer.1
                @Override // java.lang.Runnable
                public void run() {
                    if (MainThreadTimer.this.e != null) {
                        MainThreadTimer.this.b();
                        MainThreadTimer.this.e.a();
                        MainThreadTimer.this.f = null;
                    }
                }
            };
            this.f14886b = i;
            this.f14885a = System.currentTimeMillis();
            if (Prefs.em.get().booleanValue() && z && i > 0) {
                synchronized (this.f14887c) {
                    if (this.f14888d == null) {
                        PowerManager.WakeLock newWakeLock = ((PowerManager) Singletons.a("power")).newWakeLock(268435466, getClass().getSimpleName());
                        this.f14888d = newWakeLock;
                        newWakeLock.acquire(TimeUnit.SECONDS.toMillis(5L));
                    }
                }
            }
            CallAppApplication.get().a(this.f, i);
            return true;
        }
    }

    public boolean isRunning() {
        boolean z;
        synchronized (this) {
            z = this.f != null;
        }
        return z;
    }
}
