package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/bd.class */
public final class bd implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ d f22859a;

    /* renamed from: b  reason: collision with root package name */
    private final int f22860b;

    public bd(d dVar, int i) {
        this.f22859a = dVar;
        this.f22860b = i;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        Object obj;
        if (iBinder == null) {
            d.zzc(this.f22859a, 16);
            return;
        }
        obj = this.f22859a.zzq;
        synchronized (obj) {
            d dVar = this.f22859a;
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            dVar.zzr = (queryLocalInterface == null || !(queryLocalInterface instanceof l)) ? new as(iBinder) : (l) queryLocalInterface;
        }
        this.f22859a.zzb(0, null, this.f22860b);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        Object obj;
        obj = this.f22859a.zzq;
        synchronized (obj) {
            this.f22859a.zzr = null;
        }
        Handler handler = this.f22859a.zzb;
        handler.sendMessage(handler.obtainMessage(6, this.f22860b, 1));
    }
}
