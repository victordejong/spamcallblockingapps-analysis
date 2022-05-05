package com.privacystar.core.service.googleplay.p010v3;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.android.vending.billing.IInAppBillingService;
/* renamed from: com.privacystar.core.service.googleplay.v3.IABV3ServiceConnection */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/googleplay/v3/IABV3ServiceConnection.class */
public class IABV3ServiceConnection implements ServiceConnection {
    private IInAppBillingService mService;

    public IInAppBillingService getBillingService() {
        return this.mService;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        this.mService = null;
    }

    public void setBillingService(IInAppBillingService iInAppBillingService) {
        this.mService = iInAppBillingService;
    }
}
