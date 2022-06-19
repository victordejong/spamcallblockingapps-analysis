package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
/* renamed from: com.google.android.gms.common.internal.bd */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/bd.class */
public final class ServiceConnectionC12005bd implements ServiceConnection {

    /* renamed from: a */
    final /* synthetic */ AbstractC12025d f39508a;

    /* renamed from: b */
    private final int f39509b;

    public ServiceConnectionC12005bd(AbstractC12025d abstractC12025d, int i) {
        this.f39508a = abstractC12025d;
        this.f39509b = i;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        Object obj;
        if (iBinder == null) {
            AbstractC12025d.zzc(this.f39508a, 16);
            return;
        }
        obj = this.f39508a.zzq;
        synchronized (obj) {
            AbstractC12025d abstractC12025d = this.f39508a;
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            abstractC12025d.zzr = (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC12040l)) ? new C11993as(iBinder) : (AbstractC12040l) queryLocalInterface;
        }
        this.f39508a.zzb(0, null, this.f39509b);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        Object obj;
        obj = this.f39508a.zzq;
        synchronized (obj) {
            this.f39508a.zzr = null;
        }
        Handler handler = this.f39508a.zzb;
        handler.sendMessage(handler.obtainMessage(6, this.f39509b, 1));
    }
}
