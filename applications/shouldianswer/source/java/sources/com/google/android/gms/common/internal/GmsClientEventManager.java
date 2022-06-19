package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.base.zap;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/GmsClientEventManager.class */
public final class GmsClientEventManager implements Handler.Callback {
    private final Handler mHandler;
    private final GmsClientEventState zaol;
    private final ArrayList<GoogleApiClient.ConnectionCallbacks> zaom = new ArrayList<>();
    private final ArrayList<GoogleApiClient.ConnectionCallbacks> zaon = new ArrayList<>();
    private final ArrayList<GoogleApiClient.OnConnectionFailedListener> zaoo = new ArrayList<>();
    private volatile boolean zaop = false;
    private final AtomicInteger zaoq = new AtomicInteger(0);
    private boolean zaor = false;
    private final Object mLock = new Object();

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/GmsClientEventManager$GmsClientEventState.class */
    public interface GmsClientEventState {
        Bundle getConnectionHint();

        boolean isConnected();
    }

    public GmsClientEventManager(Looper looper, GmsClientEventState gmsClientEventState) {
        this.zaol = gmsClientEventState;
        this.mHandler = new zap(looper, this);
    }

    public final boolean areCallbacksEnabled() {
        return this.zaop;
    }

    public final void disableCallbacks() {
        this.zaop = false;
        this.zaoq.incrementAndGet();
    }

    public final void enableCallbacks() {
        this.zaop = true;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        if (message.what != 1) {
            int i = message.what;
            StringBuilder sb = new StringBuilder(45);
            sb.append("Don't know how to handle message: ");
            sb.append(i);
            Log.wtf("GmsClientEvents", sb.toString(), new Exception());
            return false;
        }
        GoogleApiClient.ConnectionCallbacks connectionCallbacks = (GoogleApiClient.ConnectionCallbacks) message.obj;
        synchronized (this.mLock) {
            if (this.zaop && this.zaol.isConnected() && this.zaom.contains(connectionCallbacks)) {
                connectionCallbacks.onConnected(this.zaol.getConnectionHint());
            }
        }
        return true;
    }

    public final boolean isConnectionCallbacksRegistered(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        boolean contains;
        Preconditions.checkNotNull(connectionCallbacks);
        synchronized (this.mLock) {
            contains = this.zaom.contains(connectionCallbacks);
        }
        return contains;
    }

    public final boolean isConnectionFailedListenerRegistered(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        boolean contains;
        Preconditions.checkNotNull(onConnectionFailedListener);
        synchronized (this.mLock) {
            contains = this.zaoo.contains(onConnectionFailedListener);
        }
        return contains;
    }

    public final void onConnectionFailure(ConnectionResult connectionResult) {
        Preconditions.checkHandlerThread(this.mHandler, "onConnectionFailure must only be called on the Handler thread");
        this.mHandler.removeMessages(1);
        synchronized (this.mLock) {
            ArrayList arrayList = new ArrayList(this.zaoo);
            int i = this.zaoq.get();
            ArrayList arrayList2 = arrayList;
            int size = arrayList2.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList2.get(i2);
                int i3 = i2 + 1;
                GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener = (GoogleApiClient.OnConnectionFailedListener) obj;
                if (this.zaop && this.zaoq.get() == i) {
                    i2 = i3;
                    if (this.zaoo.contains(onConnectionFailedListener)) {
                        onConnectionFailedListener.onConnectionFailed(connectionResult);
                        i2 = i3;
                    }
                }
                return;
            }
        }
    }

    protected final void onConnectionSuccess() {
        synchronized (this.mLock) {
            onConnectionSuccess(this.zaol.getConnectionHint());
        }
    }

    public final void onConnectionSuccess(Bundle bundle) {
        Preconditions.checkHandlerThread(this.mHandler, "onConnectionSuccess must only be called on the Handler thread");
        synchronized (this.mLock) {
            Preconditions.checkState(!this.zaor);
            this.mHandler.removeMessages(1);
            this.zaor = true;
            Preconditions.checkState(this.zaon.size() == 0);
            ArrayList arrayList = new ArrayList(this.zaom);
            int i = this.zaoq.get();
            ArrayList arrayList2 = arrayList;
            int size = arrayList2.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList2.get(i2);
                int i3 = i2 + 1;
                GoogleApiClient.ConnectionCallbacks connectionCallbacks = (GoogleApiClient.ConnectionCallbacks) obj;
                if (!this.zaop || !this.zaol.isConnected() || this.zaoq.get() != i) {
                    break;
                }
                i2 = i3;
                if (!this.zaon.contains(connectionCallbacks)) {
                    connectionCallbacks.onConnected(bundle);
                    i2 = i3;
                }
            }
            this.zaon.clear();
            this.zaor = false;
        }
    }

    public final void onUnintentionalDisconnection(int i) {
        Preconditions.checkHandlerThread(this.mHandler, "onUnintentionalDisconnection must only be called on the Handler thread");
        this.mHandler.removeMessages(1);
        synchronized (this.mLock) {
            this.zaor = true;
            ArrayList arrayList = new ArrayList(this.zaom);
            int i2 = this.zaoq.get();
            ArrayList arrayList2 = arrayList;
            int size = arrayList2.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj = arrayList2.get(i3);
                int i4 = i3 + 1;
                GoogleApiClient.ConnectionCallbacks connectionCallbacks = (GoogleApiClient.ConnectionCallbacks) obj;
                if (!this.zaop || this.zaoq.get() != i2) {
                    break;
                }
                i3 = i4;
                if (this.zaom.contains(connectionCallbacks)) {
                    connectionCallbacks.onConnectionSuspended(i);
                    i3 = i4;
                }
            }
            this.zaon.clear();
            this.zaor = false;
        }
    }

    public final void registerConnectionCallbacks(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        Preconditions.checkNotNull(connectionCallbacks);
        synchronized (this.mLock) {
            if (this.zaom.contains(connectionCallbacks)) {
                String valueOf = String.valueOf(connectionCallbacks);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 62);
                sb.append("registerConnectionCallbacks(): listener ");
                sb.append(valueOf);
                sb.append(" is already registered");
                Log.w("GmsClientEvents", sb.toString());
            } else {
                this.zaom.add(connectionCallbacks);
            }
        }
        if (this.zaol.isConnected()) {
            Handler handler = this.mHandler;
            handler.sendMessage(handler.obtainMessage(1, connectionCallbacks));
        }
    }

    public final void registerConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        Preconditions.checkNotNull(onConnectionFailedListener);
        synchronized (this.mLock) {
            if (this.zaoo.contains(onConnectionFailedListener)) {
                String valueOf = String.valueOf(onConnectionFailedListener);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 67);
                sb.append("registerConnectionFailedListener(): listener ");
                sb.append(valueOf);
                sb.append(" is already registered");
                Log.w("GmsClientEvents", sb.toString());
            } else {
                this.zaoo.add(onConnectionFailedListener);
            }
        }
    }

    public final void unregisterConnectionCallbacks(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        Preconditions.checkNotNull(connectionCallbacks);
        synchronized (this.mLock) {
            if (!this.zaom.remove(connectionCallbacks)) {
                String valueOf = String.valueOf(connectionCallbacks);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 52);
                sb.append("unregisterConnectionCallbacks(): listener ");
                sb.append(valueOf);
                sb.append(" not found");
                Log.w("GmsClientEvents", sb.toString());
            } else if (this.zaor) {
                this.zaon.add(connectionCallbacks);
            }
        }
    }

    public final void unregisterConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        Preconditions.checkNotNull(onConnectionFailedListener);
        synchronized (this.mLock) {
            if (!this.zaoo.remove(onConnectionFailedListener)) {
                String valueOf = String.valueOf(onConnectionFailedListener);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 57);
                sb.append("unregisterConnectionFailedListener(): listener ");
                sb.append(valueOf);
                sb.append(" not found");
                Log.w("GmsClientEvents", sb.toString());
            }
        }
    }
}
