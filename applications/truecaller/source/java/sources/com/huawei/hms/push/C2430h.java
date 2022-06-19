package com.huawei.hms.push;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Messenger;
import com.huawei.hms.support.log.HMSLog;
/* renamed from: com.huawei.hms.push.h */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/push/h.class */
public class C2430h {

    /* renamed from: a */
    public ServiceConnection f7723a;

    /* renamed from: b */
    public Messenger f7724b = null;

    /* renamed from: a */
    public boolean m37349a(Context context, Bundle bundle, Intent intent) {
        Context applicationContext = context.getApplicationContext();
        this.f7723a = new ServiceConnectionC2429g(this, bundle, applicationContext);
        HMSLog.m37193i("RemoteService", "remote service bind service start");
        return applicationContext.bindService(intent, this.f7723a, 1);
    }
}
