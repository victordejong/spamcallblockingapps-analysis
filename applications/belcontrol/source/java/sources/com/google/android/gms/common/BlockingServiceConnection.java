package com.google.android.gms.common;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/BlockingServiceConnection.class */
public class BlockingServiceConnection implements ServiceConnection {
    public boolean zza = false;
    private final BlockingQueue<IBinder> zzb = new LinkedBlockingQueue();

    @RecentlyNonNull
    @KeepForSdk
    public IBinder getService() {
        Preconditions.checkNotMainThread("BlockingServiceConnection.getService() called on main thread");
        if (!this.zza) {
            this.zza = true;
            return this.zzb.take();
        }
        throw new IllegalStateException("Cannot call get on this connection more than once");
    }

    @RecentlyNonNull
    @KeepForSdk
    public IBinder getServiceWithTimeout(long j, @RecentlyNonNull TimeUnit timeUnit) {
        Preconditions.checkNotMainThread("BlockingServiceConnection.getServiceWithTimeout() called on main thread");
        if (!this.zza) {
            this.zza = true;
            IBinder poll = this.zzb.poll(j, timeUnit);
            if (poll == null) {
                throw new TimeoutException("Timed out waiting for the service connection");
            }
            return poll;
        }
        throw new IllegalStateException("Cannot call get on this connection more than once");
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(@RecentlyNonNull ComponentName componentName, @RecentlyNonNull IBinder iBinder) {
        this.zzb.add(iBinder);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(@RecentlyNonNull ComponentName componentName) {
    }
}
