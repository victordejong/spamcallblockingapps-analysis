package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.base.zal;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/GmsClientEventManager.class */
public final class GmsClientEventManager implements Handler.Callback {
    private final Handler mHandler;
    private final GmsClientEventState zaok;
    private final ArrayList<GoogleApiClient.ConnectionCallbacks> zaol = new ArrayList<>();
    @VisibleForTesting
    private final ArrayList<GoogleApiClient.ConnectionCallbacks> zaom = new ArrayList<>();
    private final ArrayList<GoogleApiClient.OnConnectionFailedListener> zaon = new ArrayList<>();
    private volatile boolean zaoo = false;
    private final AtomicInteger zaop = new AtomicInteger(0);
    private boolean zaoq = false;
    private final Object mLock = new Object();

    @VisibleForTesting
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/GmsClientEventManager$GmsClientEventState.class */
    public interface GmsClientEventState {
        Bundle getConnectionHint();

        boolean isConnected();
    }

    public GmsClientEventManager(Looper looper, GmsClientEventState gmsClientEventState) {
        this.zaok = gmsClientEventState;
        this.mHandler = new zal(looper, this);
    }

    public final boolean areCallbacksEnabled() {
        return this.zaoo;
    }

    public final void disableCallbacks() {
        this.zaoo = false;
        this.zaop.incrementAndGet();
    }

    public final void enableCallbacks() {
        this.zaoo = true;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        if (message.what == 1) {
            GoogleApiClient.ConnectionCallbacks connectionCallbacks = (GoogleApiClient.ConnectionCallbacks) message.obj;
            synchronized (this.mLock) {
                if (this.zaoo && this.zaok.isConnected() && this.zaol.contains(connectionCallbacks)) {
                    connectionCallbacks.onConnected(this.zaok.getConnectionHint());
                }
            }
            return true;
        }
        int i = message.what;
        StringBuilder sb = new StringBuilder(45);
        sb.append("Don't know how to handle message: ");
        sb.append(i);
        Log.wtf("GmsClientEvents", sb.toString(), new Exception());
        return false;
    }

    public final boolean isConnectionCallbacksRegistered(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        boolean contains;
        Preconditions.checkNotNull(connectionCallbacks);
        synchronized (this.mLock) {
            contains = this.zaol.contains(connectionCallbacks);
        }
        return contains;
    }

    public final boolean isConnectionFailedListenerRegistered(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        boolean contains;
        Preconditions.checkNotNull(onConnectionFailedListener);
        synchronized (this.mLock) {
            contains = this.zaon.contains(onConnectionFailedListener);
        }
        return contains;
    }

    @VisibleForTesting
    public final void onConnectionFailure(ConnectionResult connectionResult) {
        int i = 0;
        Preconditions.checkState(Looper.myLooper() == this.mHandler.getLooper(), "onConnectionFailure must only be called on the Handler thread");
        this.mHandler.removeMessages(1);
        synchronized (this.mLock) {
            ArrayList arrayList = new ArrayList(this.zaon);
            int i2 = this.zaop.get();
            ArrayList arrayList2 = arrayList;
            int size = arrayList2.size();
            while (i < size) {
                Object obj = arrayList2.get(i);
                int i3 = i + 1;
                GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener = (GoogleApiClient.OnConnectionFailedListener) obj;
                if (this.zaoo && this.zaop.get() == i2) {
                    i = i3;
                    if (this.zaon.contains(onConnectionFailedListener)) {
                        onConnectionFailedListener.onConnectionFailed(connectionResult);
                        i = i3;
                    }
                }
                return;
            }
        }
    }

    @VisibleForTesting
    protected final void onConnectionSuccess() {
        synchronized (this.mLock) {
            onConnectionSuccess(this.zaok.getConnectionHint());
        }
    }

    @VisibleForTesting
    public final void onConnectionSuccess(Bundle bundle) {
        boolean z = true;
        Preconditions.checkState(Looper.myLooper() == this.mHandler.getLooper(), "onConnectionSuccess must only be called on the Handler thread");
        synchronized (this.mLock) {
            Preconditions.checkState(!this.zaoq);
            this.mHandler.removeMessages(1);
            this.zaoq = true;
            if (this.zaom.size() != 0) {
                z = false;
            }
            Preconditions.checkState(z);
            ArrayList arrayList = new ArrayList(this.zaol);
            int i = this.zaop.get();
            ArrayList arrayList2 = arrayList;
            int size = arrayList2.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList2.get(i2);
                int i3 = i2 + 1;
                GoogleApiClient.ConnectionCallbacks connectionCallbacks = (GoogleApiClient.ConnectionCallbacks) obj;
                if (!this.zaoo || !this.zaok.isConnected() || this.zaop.get() != i) {
                    break;
                }
                i2 = i3;
                if (!this.zaom.contains(connectionCallbacks)) {
                    connectionCallbacks.onConnected(bundle);
                    i2 = i3;
                }
            }
            this.zaom.clear();
            this.zaoq = false;
        }
    }

    @VisibleForTesting
    public final void onUnintentionalDisconnection(int i) {
        Preconditions.checkState(Looper.myLooper() == this.mHandler.getLooper(), "onUnintentionalDisconnection must only be called on the Handler thread");
        this.mHandler.removeMessages(1);
        synchronized (this.mLock) {
            this.zaoq = true;
            ArrayList arrayList = new ArrayList(this.zaol);
            int i2 = this.zaop.get();
            ArrayList arrayList2 = arrayList;
            int size = arrayList2.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj = arrayList2.get(i3);
                int i4 = i3 + 1;
                GoogleApiClient.ConnectionCallbacks connectionCallbacks = (GoogleApiClient.ConnectionCallbacks) obj;
                if (!this.zaoo || this.zaop.get() != i2) {
                    break;
                }
                i3 = i4;
                if (this.zaol.contains(connectionCallbacks)) {
                    connectionCallbacks.onConnectionSuspended(i);
                    i3 = i4;
                }
            }
            this.zaom.clear();
            this.zaoq = false;
        }
    }

    public final void registerConnectionCallbacks(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        Preconditions.checkNotNull(connectionCallbacks);
        synchronized (this.mLock) {
            if (this.zaol.contains(connectionCallbacks)) {
                String valueOf = String.valueOf(connectionCallbacks);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 62);
                sb.append("registerConnectionCallbacks(): listener ");
                sb.append(valueOf);
                sb.append(" is already registered");
                Log.w("GmsClientEvents", sb.toString());
            } else {
                this.zaol.add(connectionCallbacks);
            }
        }
        if (this.zaok.isConnected()) {
            this.mHandler.sendMessage(this.mHandler.obtainMessage(1, connectionCallbacks));
        }
    }

    public final void registerConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        Preconditions.checkNotNull(onConnectionFailedListener);
        synchronized (this.mLock) {
            if (this.zaon.contains(onConnectionFailedListener)) {
                String valueOf = String.valueOf(onConnectionFailedListener);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 67);
                sb.append("registerConnectionFailedListener(): listener ");
                sb.append(valueOf);
                sb.append(" is already registered");
                Log.w("GmsClientEvents", sb.toString());
            } else {
                this.zaon.add(onConnectionFailedListener);
            }
        }
    }

    public final void unregisterConnectionCallbacks(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        Preconditions.checkNotNull(connectionCallbacks);
        synchronized (this.mLock) {
            if (!this.zaol.remove(connectionCallbacks)) {
                String valueOf = String.valueOf(connectionCallbacks);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 52);
                sb.append("unregisterConnectionCallbacks(): listener ");
                sb.append(valueOf);
                sb.append(" not found");
                Log.w("GmsClientEvents", sb.toString());
            } else if (this.zaoq) {
                this.zaom.add(connectionCallbacks);
            }
        }
    }

    public final void unregisterConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        Preconditions.checkNotNull(onConnectionFailedListener);
        synchronized (this.mLock) {
            if (!this.zaon.remove(onConnectionFailedListener)) {
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
