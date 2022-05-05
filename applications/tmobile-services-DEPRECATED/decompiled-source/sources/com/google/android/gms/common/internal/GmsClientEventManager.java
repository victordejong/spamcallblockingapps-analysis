package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/GmsClientEventManager.class */
public final class GmsClientEventManager implements Handler.Callback {

    /* renamed from: a */
    private final GmsClientEventState f7494a;

    /* renamed from: b */
    private final ArrayList<GoogleApiClient.ConnectionCallbacks> f7495b;
    @VisibleForTesting

    /* renamed from: c */
    private final ArrayList<GoogleApiClient.ConnectionCallbacks> f7496c;

    /* renamed from: d */
    private final ArrayList<GoogleApiClient.OnConnectionFailedListener> f7497d;

    /* renamed from: e */
    private volatile boolean f7498e;

    /* renamed from: f */
    private final AtomicInteger f7499f;

    /* renamed from: g */
    private boolean f7500g;

    /* renamed from: h */
    private final Handler f7501h;

    /* renamed from: i */
    private final Object f7502i;

    @VisibleForTesting
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/GmsClientEventManager$GmsClientEventState.class */
    public interface GmsClientEventState {
        Bundle getConnectionHint();

        boolean isConnected();
    }

    /* renamed from: a */
    public final void m14555a() {
        this.f7498e = false;
        this.f7499f.incrementAndGet();
    }

    /* renamed from: b */
    public final void m14554b() {
        this.f7498e = true;
    }

    @VisibleForTesting
    /* renamed from: c */
    public final void m14553c(ConnectionResult connectionResult) {
        Preconditions.m14529e(this.f7501h, "onConnectionFailure must only be called on the Handler thread");
        this.f7501h.removeMessages(1);
        synchronized (this.f7502i) {
            ArrayList arrayList = new ArrayList(this.f7497d);
            int i = this.f7499f.get();
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                int i3 = i2 + 1;
                GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener = (GoogleApiClient.OnConnectionFailedListener) obj;
                if (this.f7498e && this.f7499f.get() == i) {
                    i2 = i3;
                    if (this.f7497d.contains(onConnectionFailedListener)) {
                        onConnectionFailedListener.mo14711f(connectionResult);
                        i2 = i3;
                    }
                }
                return;
            }
        }
    }

    @VisibleForTesting
    /* renamed from: d */
    public final void m14552d(Bundle bundle) {
        Preconditions.m14529e(this.f7501h, "onConnectionSuccess must only be called on the Handler thread");
        synchronized (this.f7502i) {
            boolean z = true;
            Preconditions.m14520n(!this.f7500g);
            this.f7501h.removeMessages(1);
            this.f7500g = true;
            if (this.f7496c.size() != 0) {
                z = false;
            }
            Preconditions.m14520n(z);
            ArrayList arrayList = new ArrayList(this.f7495b);
            int i = this.f7499f.get();
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList.get(i2);
                int i3 = i2 + 1;
                GoogleApiClient.ConnectionCallbacks connectionCallbacks = (GoogleApiClient.ConnectionCallbacks) obj;
                if (!this.f7498e || !this.f7494a.isConnected() || this.f7499f.get() != i) {
                    break;
                }
                i2 = i3;
                if (!this.f7496c.contains(connectionCallbacks)) {
                    connectionCallbacks.mo14714b(bundle);
                    i2 = i3;
                }
            }
            this.f7496c.clear();
            this.f7500g = false;
        }
    }

    @VisibleForTesting
    /* renamed from: e */
    public final void m14551e(int i) {
        Preconditions.m14529e(this.f7501h, "onUnintentionalDisconnection must only be called on the Handler thread");
        this.f7501h.removeMessages(1);
        synchronized (this.f7502i) {
            this.f7500g = true;
            ArrayList arrayList = new ArrayList(this.f7495b);
            int i2 = this.f7499f.get();
            int size = arrayList.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj = arrayList.get(i3);
                int i4 = i3 + 1;
                GoogleApiClient.ConnectionCallbacks connectionCallbacks = (GoogleApiClient.ConnectionCallbacks) obj;
                if (!this.f7498e || this.f7499f.get() != i2) {
                    break;
                }
                i3 = i4;
                if (this.f7495b.contains(connectionCallbacks)) {
                    connectionCallbacks.mo14715a(i);
                    i3 = i4;
                }
            }
            this.f7496c.clear();
            this.f7500g = false;
        }
    }

    /* renamed from: f */
    public final void m14550f(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        Preconditions.m14523k(onConnectionFailedListener);
        synchronized (this.f7502i) {
            if (!this.f7497d.remove(onConnectionFailedListener)) {
                String valueOf = String.valueOf(onConnectionFailedListener);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 57);
                sb.append("unregisterConnectionFailedListener(): listener ");
                sb.append(valueOf);
                sb.append(" not found");
                Log.w("GmsClientEvents", sb.toString());
            }
        }
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 1) {
            GoogleApiClient.ConnectionCallbacks connectionCallbacks = (GoogleApiClient.ConnectionCallbacks) message.obj;
            synchronized (this.f7502i) {
                if (this.f7498e && this.f7494a.isConnected() && this.f7495b.contains(connectionCallbacks)) {
                    connectionCallbacks.mo14714b(this.f7494a.getConnectionHint());
                }
            }
            return true;
        }
        StringBuilder sb = new StringBuilder(45);
        sb.append("Don't know how to handle message: ");
        sb.append(i);
        Log.wtf("GmsClientEvents", sb.toString(), new Exception());
        return false;
    }
}
