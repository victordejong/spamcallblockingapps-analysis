package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
/* renamed from: com.google.android.gms.common.internal.x */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/x.class */
public final class ServiceConnectionC1595x implements ServiceConnection {

    /* renamed from: a */
    private final int f5876a;

    /* renamed from: b */
    final /* synthetic */ AbstractC1566b f5877b;

    public ServiceConnectionC1595x(AbstractC1566b abstractC1566b, int i) {
        this.f5877b = abstractC1566b;
        this.f5876a = i;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        Object obj;
        AbstractC1566b abstractC1566b = this.f5877b;
        if (iBinder == null) {
            AbstractC1566b.m8417I(abstractC1566b, 16);
            return;
        }
        obj = abstractC1566b.f5833g;
        synchronized (obj) {
            AbstractC1566b abstractC1566b2 = this.f5877b;
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            abstractC1566b2.f5834h = (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC1577f)) ? new m(iBinder) : (AbstractC1577f) queryLocalInterface;
        }
        this.f5877b.m8418H(0, null, this.f5876a);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        Object obj;
        obj = this.f5877b.f5833g;
        synchronized (obj) {
            this.f5877b.f5834h = null;
        }
        Handler handler = this.f5877b.f5831e;
        handler.sendMessage(handler.obtainMessage(6, this.f5876a, 1));
    }
}
