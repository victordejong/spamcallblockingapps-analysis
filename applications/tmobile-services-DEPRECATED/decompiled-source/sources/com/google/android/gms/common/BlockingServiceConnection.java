package com.google.android.gms.common;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/BlockingServiceConnection.class */
public class BlockingServiceConnection implements ServiceConnection {

    /* renamed from: a */
    private boolean f6963a = false;

    /* renamed from: b */
    private final BlockingQueue<IBinder> f6964b = new LinkedBlockingQueue();

    @KeepForSdk
    /* renamed from: a */
    public IBinder m15095a(long j, TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        Preconditions.m14524j("BlockingServiceConnection.getServiceWithTimeout() called on main thread");
        if (!this.f6963a) {
            this.f6963a = true;
            IBinder poll = this.f6964b.poll(j, timeUnit);
            if (poll != null) {
                return poll;
            }
            throw new TimeoutException("Timed out waiting for the service connection");
        }
        throw new IllegalStateException("Cannot call get on this connection more than once");
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f6964b.add(iBinder);
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
    }
}
