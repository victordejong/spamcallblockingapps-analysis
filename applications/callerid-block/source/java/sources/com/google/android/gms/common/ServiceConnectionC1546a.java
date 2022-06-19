package com.google.android.gms.common;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.C1581h;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* renamed from: com.google.android.gms.common.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/a.class */
public class ServiceConnectionC1546a implements ServiceConnection {

    /* renamed from: a */
    boolean f5803a = false;

    /* renamed from: b */
    private final BlockingQueue<IBinder> f5804b = new LinkedBlockingQueue();

    @RecentlyNonNull
    /* renamed from: a */
    public IBinder m8471a(long j, @RecentlyNonNull TimeUnit timeUnit) {
        C1581h.m8348g("BlockingServiceConnection.getServiceWithTimeout() called on main thread");
        if (!this.f5803a) {
            this.f5803a = true;
            IBinder poll = this.f5804b.poll(j, timeUnit);
            if (poll == null) {
                throw new TimeoutException("Timed out waiting for the service connection");
            }
            return poll;
        }
        throw new IllegalStateException("Cannot call get on this connection more than once");
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(@RecentlyNonNull ComponentName componentName, @RecentlyNonNull IBinder iBinder) {
        this.f5804b.add(iBinder);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(@RecentlyNonNull ComponentName componentName) {
    }
}
