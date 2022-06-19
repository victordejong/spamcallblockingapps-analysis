package com.huawei.hms.push;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import com.huawei.hms.support.log.HMSLog;
/* renamed from: com.huawei.hms.push.g */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/push/g.class */
public class ServiceConnectionC2429g implements ServiceConnection {

    /* renamed from: a */
    public final /* synthetic */ Bundle f7720a;

    /* renamed from: b */
    public final /* synthetic */ Context f7721b;

    /* renamed from: c */
    public final /* synthetic */ C2430h f7722c;

    public ServiceConnectionC2429g(C2430h c2430h, Bundle bundle, Context context) {
        this.f7722c = c2430h;
        this.f7720a = bundle;
        this.f7721b = context;
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        ServiceConnection serviceConnection;
        Messenger messenger;
        HMSLog.m37193i("RemoteService", "remote service onConnected");
        this.f7722c.f7724b = new Messenger(iBinder);
        Message obtain = Message.obtain();
        obtain.setData(this.f7720a);
        try {
            messenger = this.f7722c.f7724b;
            messenger.send(obtain);
        } catch (RemoteException e) {
            HMSLog.m37193i("RemoteService", "remote service message send failed");
        }
        HMSLog.m37193i("RemoteService", "remote service unbindservice");
        Context context = this.f7721b;
        serviceConnection = this.f7722c.f7723a;
        context.unbindService(serviceConnection);
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        HMSLog.m37193i("RemoteService", "remote service onDisconnected");
        this.f7722c.f7724b = null;
    }
}
