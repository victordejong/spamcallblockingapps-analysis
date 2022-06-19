package com.google.android.gms.common;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.common.internal.C2662s;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* renamed from: com.google.android.gms.common.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/a.class */
public class ServiceConnectionC2469a implements ServiceConnection {

    /* renamed from: a */
    private boolean f7018a = false;

    /* renamed from: b */
    private final BlockingQueue<IBinder> f7019b = new LinkedBlockingQueue();

    /* renamed from: a */
    public IBinder m14470a(long j, TimeUnit timeUnit) {
        C2662s.m13971c("BlockingServiceConnection.getServiceWithTimeout() called on main thread");
        if (this.f7018a) {
            throw new IllegalStateException("Cannot call get on this connection more than once");
        }
        this.f7018a = true;
        IBinder poll = this.f7019b.poll(j, timeUnit);
        if (poll != null) {
            return poll;
        }
        throw new TimeoutException("Timed out waiting for the service connection");
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        this.f7019b.add(iBinder);
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
    }
}
