package p193e.p1577m.p1578a.p1596c;

import android.content.Context;
import android.os.PowerManager;
/* renamed from: e.m.a.c.z0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/z0.class */
public final class C24867z0 {

    /* renamed from: a */
    public final PowerManager f69749a;

    /* renamed from: b */
    public PowerManager.WakeLock f69750b;

    /* renamed from: c */
    public boolean f69751c;

    /* renamed from: d */
    public boolean f69752d;

    public C24867z0(Context context) {
        this.f69749a = (PowerManager) context.getApplicationContext().getSystemService("power");
    }

    /* renamed from: a */
    public void m4346a(boolean z) {
        if (z && this.f69750b == null) {
            PowerManager powerManager = this.f69749a;
            if (powerManager == null) {
                return;
            }
            PowerManager.WakeLock newWakeLock = powerManager.newWakeLock(1, "ExoPlayer:WakeLockManager");
            this.f69750b = newWakeLock;
            newWakeLock.setReferenceCounted(false);
        }
        this.f69751c = z;
        m4345b();
    }

    /* renamed from: b */
    public final void m4345b() {
        PowerManager.WakeLock wakeLock = this.f69750b;
        if (wakeLock == null) {
            return;
        }
        if (!this.f69751c || !this.f69752d) {
            wakeLock.release();
        } else {
            wakeLock.acquire();
        }
    }
}
