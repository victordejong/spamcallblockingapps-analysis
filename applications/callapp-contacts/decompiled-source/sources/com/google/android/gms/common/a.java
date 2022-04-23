package com.google.android.gms.common;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/a.class */
public final class a implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    public boolean f22596a = false;

    /* renamed from: b  reason: collision with root package name */
    public final BlockingQueue<IBinder> f22597b = new LinkedBlockingQueue();

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f22597b.add(iBinder);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
    }
}
