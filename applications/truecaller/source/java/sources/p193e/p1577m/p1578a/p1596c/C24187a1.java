package p193e.p1577m.p1578a.p1596c;

import android.content.Context;
import android.net.wifi.WifiManager;
import com.razorpay.AnalyticsConstants;
/* renamed from: e.m.a.c.a1 */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/a1.class */
public final class C24187a1 {

    /* renamed from: a */
    public final WifiManager f66937a;

    /* renamed from: b */
    public WifiManager.WifiLock f66938b;

    /* renamed from: c */
    public boolean f66939c;

    /* renamed from: d */
    public boolean f66940d;

    public C24187a1(Context context) {
        this.f66937a = (WifiManager) context.getApplicationContext().getSystemService(AnalyticsConstants.WIFI);
    }

    /* renamed from: a */
    public void m5501a(boolean z) {
        if (z && this.f66938b == null) {
            WifiManager wifiManager = this.f66937a;
            if (wifiManager == null) {
                return;
            }
            WifiManager.WifiLock createWifiLock = wifiManager.createWifiLock(3, "ExoPlayer:WifiLockManager");
            this.f66938b = createWifiLock;
            createWifiLock.setReferenceCounted(false);
        }
        this.f66939c = z;
        m5500b();
    }

    /* renamed from: b */
    public final void m5500b() {
        WifiManager.WifiLock wifiLock = this.f66938b;
        if (wifiLock == null) {
            return;
        }
        if (!this.f66939c || !this.f66940d) {
            wifiLock.release();
        } else {
            wifiLock.acquire();
        }
    }
}
