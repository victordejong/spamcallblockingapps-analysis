package com.google.android.gms.common.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.base.zap;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/zak.class */
public final class zak implements Handler.Callback {
    @NotOnlyInitialized

    /* renamed from: a */
    public final zaj f6015a;

    /* renamed from: h */
    public final Handler f6022h;

    /* renamed from: b */
    public final ArrayList<GoogleApiClient.ConnectionCallbacks> f6016b = new ArrayList<>();
    @VisibleForTesting

    /* renamed from: c */
    public final ArrayList<GoogleApiClient.ConnectionCallbacks> f6017c = new ArrayList<>();

    /* renamed from: d */
    public final ArrayList<GoogleApiClient.OnConnectionFailedListener> f6018d = new ArrayList<>();

    /* renamed from: e */
    public volatile boolean f6019e = false;

    /* renamed from: f */
    public final AtomicInteger f6020f = new AtomicInteger(0);

    /* renamed from: g */
    public boolean f6021g = false;

    /* renamed from: i */
    public final Object f6023i = new Object();

    public zak(Looper looper, zaj zajVar) {
        this.f6015a = zajVar;
        this.f6022h = new zap(looper, this);
    }

    /* renamed from: a */
    public final void m38828a() {
        this.f6019e = false;
        this.f6020f.incrementAndGet();
    }

    /* renamed from: b */
    public final void m38827b(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        Objects.requireNonNull(connectionCallbacks, "null reference");
        synchronized (this.f6023i) {
            if (this.f6016b.contains(connectionCallbacks)) {
                String.valueOf(connectionCallbacks).length();
            } else {
                this.f6016b.add(connectionCallbacks);
            }
        }
        if (this.f6015a.isConnected()) {
            Handler handler = this.f6022h;
            handler.sendMessage(handler.obtainMessage(1, connectionCallbacks));
        }
    }

    /* renamed from: c */
    public final void m38826c(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        Objects.requireNonNull(onConnectionFailedListener, "null reference");
        synchronized (this.f6023i) {
            if (this.f6018d.contains(onConnectionFailedListener)) {
                String.valueOf(onConnectionFailedListener).length();
            } else {
                this.f6018d.add(onConnectionFailedListener);
            }
        }
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        if (i != 1) {
            Log.wtf("GmsClientEvents", C22128a.m8690L1(45, "Don't know how to handle message: ", i), new Exception());
            return false;
        }
        GoogleApiClient.ConnectionCallbacks connectionCallbacks = (GoogleApiClient.ConnectionCallbacks) message.obj;
        synchronized (this.f6023i) {
            if (this.f6019e && this.f6015a.isConnected() && this.f6016b.contains(connectionCallbacks)) {
                connectionCallbacks.onConnected(null);
            }
        }
        return true;
    }
}
