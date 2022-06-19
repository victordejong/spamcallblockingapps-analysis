package com.truecaller.common.account;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import p193e.p194a.p372b0.p406e.C8430j;
/* loaded from: classes7-dex2jar.jar:com/truecaller/common/account/TruecallerAccountAuthenticatorService.class */
public class TruecallerAccountAuthenticatorService extends Service {

    /* renamed from: a */
    public C8430j f10904a;

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        if (intent != null && "android.accounts.AccountAuthenticator".equals(intent.getAction())) {
            return this.f10904a.getIBinder();
        }
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f10904a = new C8430j(this);
    }
}
