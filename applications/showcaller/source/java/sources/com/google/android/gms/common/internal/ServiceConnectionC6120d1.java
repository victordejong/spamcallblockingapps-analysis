package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
/* renamed from: com.google.android.gms.common.internal.d1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/d1.class */
public final class ServiceConnectionC6120d1 implements ServiceConnection {

    /* renamed from: a */
    private final int f19529a;

    /* renamed from: b */
    final /* synthetic */ AbstractC6113d f19530b;

    public ServiceConnectionC6120d1(AbstractC6113d abstractC6113d, int i) {
        this.f19530b = abstractC6113d;
        this.f19529a = i;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        Object obj;
        if (iBinder == null) {
            AbstractC6113d.m17118U(this.f19530b, 16);
            return;
        }
        obj = this.f19530b.f19516p;
        synchronized (obj) {
            AbstractC6113d abstractC6113d = this.f19530b;
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGmsServiceBroker");
            abstractC6113d.f19517q = (queryLocalInterface == null || !(queryLocalInterface instanceof AbstractC6144l)) ? new C6168s0(iBinder) : (AbstractC6144l) queryLocalInterface;
        }
        this.f19530b.m17119T(0, null, this.f19529a);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        Object obj;
        obj = this.f19530b.f19516p;
        synchronized (obj) {
            this.f19530b.f19517q = null;
        }
        Handler handler = this.f19530b.f19514n;
        handler.sendMessage(handler.obtainMessage(6, this.f19529a, 1));
    }
}
