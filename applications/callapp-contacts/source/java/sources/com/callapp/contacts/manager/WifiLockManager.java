package com.callapp.contacts.manager;

import android.net.wifi.WifiManager;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.model.Constants;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/WifiLockManager.class */
public class WifiLockManager implements ManagedLifecycle {

    /* renamed from: a */
    private WifiManager.WifiLock f25860a;

    /* renamed from: a */
    public final void m28453a() {
        synchronized (this) {
            if (this.f25860a == null) {
                WifiManager.WifiLock createWifiLock = ((WifiManager) CallAppApplication.get().getApplicationContext().getSystemService("wifi")).createWifiLock(3, Constants.APP_NAME);
                this.f25860a = createWifiLock;
                createWifiLock.setReferenceCounted(false);
            }
            this.f25860a.acquire();
        }
    }

    /* renamed from: b */
    public final void m28452b() {
        synchronized (this) {
            WifiManager.WifiLock wifiLock = this.f25860a;
            if (wifiLock != null) {
                wifiLock.release();
            }
        }
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void destroy() {
        m28452b();
        this.f25860a = null;
    }

    @Override // com.callapp.contacts.manager.ManagedLifecycle
    public void init() {
    }
}
