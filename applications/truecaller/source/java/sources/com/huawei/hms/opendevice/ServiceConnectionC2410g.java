package com.huawei.hms.opendevice;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import com.huawei.hms.support.log.HMSLog;
/* renamed from: com.huawei.hms.opendevice.g */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/opendevice/g.class */
public class ServiceConnectionC2410g implements ServiceConnection {

    /* renamed from: a */
    public final /* synthetic */ Bundle f7637a;

    /* renamed from: b */
    public final /* synthetic */ Context f7638b;

    /* renamed from: c */
    public final /* synthetic */ C2411h f7639c;

    public ServiceConnectionC2410g(C2411h c2411h, Bundle bundle, Context context) {
        this.f7639c = c2411h;
        this.f7637a = bundle;
        this.f7638b = context;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        ServiceConnection serviceConnection;
        Messenger messenger;
        HMSLog.m37193i("RemoteService", "remote service onConnected");
        this.f7639c.f7641b = new Messenger(iBinder);
        Message obtain = Message.obtain();
        obtain.setData(this.f7637a);
        try {
            messenger = this.f7639c.f7641b;
            messenger.send(obtain);
        } catch (RemoteException e) {
            HMSLog.m37193i("RemoteService", "remote service message send failed");
        }
        HMSLog.m37193i("RemoteService", "remote service unbindservice");
        Context context = this.f7638b;
        serviceConnection = this.f7639c.f7640a;
        context.unbindService(serviceConnection);
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        HMSLog.m37193i("RemoteService", "remote service onDisconnected");
        this.f7639c.f7641b = null;
    }
}
