package com.huawei.hms.opendevice;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Messenger;
import com.huawei.hms.support.log.HMSLog;
/* renamed from: com.huawei.hms.opendevice.h */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/opendevice/h.class */
public class C2411h {

    /* renamed from: a */
    public ServiceConnection f7640a;

    /* renamed from: b */
    public Messenger f7641b = null;

    /* renamed from: a */
    public boolean m37425a(Context context, Bundle bundle, Intent intent) {
        Context applicationContext = context.getApplicationContext();
        this.f7640a = new ServiceConnectionC2410g(this, bundle, applicationContext);
        HMSLog.m37193i("RemoteService", "remote service bind service start");
        return applicationContext.bindService(intent, this.f7640a, 1);
    }
}
