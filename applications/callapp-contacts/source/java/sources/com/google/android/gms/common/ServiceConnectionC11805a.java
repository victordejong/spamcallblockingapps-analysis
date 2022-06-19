package com.google.android.gms.common;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
/* renamed from: com.google.android.gms.common.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/a.class */
public final class ServiceConnectionC11805a implements ServiceConnection {

    /* renamed from: a */
    public boolean f39161a = false;

    /* renamed from: b */
    public final BlockingQueue<IBinder> f39162b = new LinkedBlockingQueue();

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f39162b.add(iBinder);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
    }
}
