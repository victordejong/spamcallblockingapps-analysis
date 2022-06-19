package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import com.google.android.gms.common.util.VisibleForTesting;
import p193e.p1577m.p1578a.p1642f.p1653e.p1656b.C24975l;
@VisibleForTesting
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/zze.class */
public final class zze implements ServiceConnection {

    /* renamed from: a */
    public final int f6050a;

    /* renamed from: b */
    public final /* synthetic */ BaseGmsClient f6051b;

    public zze(BaseGmsClient baseGmsClient, int i) {
        this.f6051b = baseGmsClient;
        this.f6050a = i;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        Object obj;
        BaseGmsClient baseGmsClient = this.f6051b;
        if (iBinder == null) {
            BaseGmsClient.zzk(baseGmsClient, 16);
            return;
        }
        obj = baseGmsClient.zzq;
        synchronized (obj) {
            BaseGmsClient baseGmsClient2 = this.f6051b;
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            baseGmsClient2.zzr = (queryLocalInterface == null || !(queryLocalInterface instanceof IGmsServiceBroker)) ? new C24975l(iBinder) : (IGmsServiceBroker) queryLocalInterface;
        }
        this.f6051b.zzl(0, null, this.f6050a);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        Object obj;
        obj = this.f6051b.zzq;
        synchronized (obj) {
            this.f6051b.zzr = null;
        }
        Handler handler = this.f6051b.zzb;
        handler.sendMessage(handler.obtainMessage(6, this.f6050a, 1));
    }
}
