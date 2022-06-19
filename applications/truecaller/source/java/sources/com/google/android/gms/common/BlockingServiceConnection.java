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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/BlockingServiceConnection.class */
public class BlockingServiceConnection implements ServiceConnection {

    /* renamed from: a */
    public boolean f5659a = false;

    /* renamed from: b */
    public final BlockingQueue<IBinder> f5660b = new LinkedBlockingQueue();

    @KeepForSdk
    /* renamed from: a */
    public IBinder m39079a() throws InterruptedException {
        Preconditions.m38899i("BlockingServiceConnection.getService() called on main thread");
        if (!this.f5659a) {
            this.f5659a = true;
            return this.f5660b.take();
        }
        throw new IllegalStateException("Cannot call get on this connection more than once");
    }

    @KeepForSdk
    /* renamed from: b */
    public IBinder m39078b(long j, TimeUnit timeUnit) throws InterruptedException, TimeoutException {
        Preconditions.m38899i("BlockingServiceConnection.getServiceWithTimeout() called on main thread");
        if (!this.f5659a) {
            this.f5659a = true;
            IBinder poll = this.f5660b.poll(j, timeUnit);
            if (poll == null) {
                throw new TimeoutException("Timed out waiting for the service connection");
            }
            return poll;
        }
        throw new IllegalStateException("Cannot call get on this connection more than once");
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f5660b.add(iBinder);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
    }
}
