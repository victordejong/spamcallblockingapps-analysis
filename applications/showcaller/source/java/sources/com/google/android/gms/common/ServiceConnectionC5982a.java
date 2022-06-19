package com.google.android.gms.common;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.internal.C6155o;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* renamed from: com.google.android.gms.common.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/a.class */
public class ServiceConnectionC5982a implements ServiceConnection {

    /* renamed from: a */
    boolean f19162a = false;

    /* renamed from: b */
    private final BlockingQueue<IBinder> f19163b = new LinkedBlockingQueue();

    @RecentlyNonNull
    /* renamed from: a */
    public IBinder m17496a() {
        C6155o.m17019i("BlockingServiceConnection.getService() called on main thread");
        if (!this.f19162a) {
            this.f19162a = true;
            return this.f19163b.take();
        }
        throw new IllegalStateException("Cannot call get on this connection more than once");
    }

    @RecentlyNonNull
    /* renamed from: b */
    public IBinder m17495b(long j, @RecentlyNonNull TimeUnit timeUnit) {
        C6155o.m17019i("BlockingServiceConnection.getServiceWithTimeout() called on main thread");
        if (!this.f19162a) {
            this.f19162a = true;
            IBinder poll = this.f19163b.poll(j, timeUnit);
            if (poll == null) {
                throw new TimeoutException("Timed out waiting for the service connection");
            }
            return poll;
        }
        throw new IllegalStateException("Cannot call get on this connection more than once");
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(@RecentlyNonNull ComponentName componentName, @RecentlyNonNull IBinder iBinder) {
        this.f19163b.add(iBinder);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(@RecentlyNonNull ComponentName componentName) {
    }
}
