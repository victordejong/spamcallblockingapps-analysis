package com.callapp.contacts.manager;

import android.net.wifi.WifiManager;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.model.Constants;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/WifiLockManager.class */
public class WifiLockManager implements ManagedLifecycle {

    /* renamed from: a  reason: collision with root package name */
    private WifiManager.WifiLock f14953a;

    public final void a() {
        synchronized (this) {
            if (this.f14953a == null) {
                WifiManager.WifiLock createWifiLock = ((WifiManager) CallAppApplication.get().getApplicationContext().getSystemService("wifi")).createWifiLock(3, Constants.APP_NAME);
                this.f14953a = createWifiLock;
                createWifiLock.setReferenceCounted(false);
            }
            this.f14953a.acquire();
        }
    }

    public final void b() {
        synchronized (this) {
            WifiManager.WifiLock wifiLock = this.f14953a;
            if (wifiLock != null) {
                wifiLock.release();
            }
        }
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
        b();
        this.f14953a = null;
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
    }
}
