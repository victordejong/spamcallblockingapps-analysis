package com.bumptech.glide.manager;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.support.annotation.NonNull;
import android.util.Log;
import com.bumptech.glide.manager.ConnectivityMonitor;
import com.bumptech.glide.util.Preconditions;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/DefaultConnectivityMonitor.class */
final class DefaultConnectivityMonitor implements ConnectivityMonitor {
    private static final String TAG = "ConnectivityMonitor";
    private final BroadcastReceiver connectivityReceiver = new BroadcastReceiver() { // from class: com.bumptech.glide.manager.DefaultConnectivityMonitor.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(@NonNull Context context, Intent intent) {
            boolean z = DefaultConnectivityMonitor.this.isConnected;
            DefaultConnectivityMonitor.this.isConnected = DefaultConnectivityMonitor.this.isConnected(context);
            if (z != DefaultConnectivityMonitor.this.isConnected) {
                if (Log.isLoggable(DefaultConnectivityMonitor.TAG, 3)) {
                    Log.d(DefaultConnectivityMonitor.TAG, "connectivity changed, isConnected: " + DefaultConnectivityMonitor.this.isConnected);
                }
                DefaultConnectivityMonitor.this.listener.onConnectivityChanged(DefaultConnectivityMonitor.this.isConnected);
            }
        }
    };
    private final Context context;
    boolean isConnected;
    private boolean isRegistered;
    final ConnectivityMonitor.ConnectivityListener listener;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DefaultConnectivityMonitor(@NonNull Context context, @NonNull ConnectivityMonitor.ConnectivityListener connectivityListener) {
        this.context = context.getApplicationContext();
        this.listener = connectivityListener;
    }

    private void register() {
        if (!this.isRegistered) {
            this.isConnected = isConnected(this.context);
            try {
                this.context.registerReceiver(this.connectivityReceiver, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                this.isRegistered = true;
            } catch (SecurityException e) {
                if (Log.isLoggable(TAG, 5)) {
                    Log.w(TAG, "Failed to register", e);
                }
            }
        }
    }

    private void unregister() {
        if (this.isRegistered) {
            this.context.unregisterReceiver(this.connectivityReceiver);
            this.isRegistered = false;
        }
    }

    @SuppressLint({"MissingPermission"})
    boolean isConnected(@NonNull Context context) {
        boolean z = true;
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) Preconditions.checkNotNull((ConnectivityManager) context.getSystemService("connectivity"))).getActiveNetworkInfo();
            if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
                z = false;
            }
            return z;
        } catch (RuntimeException e) {
            if (!Log.isLoggable(TAG, 5)) {
                return true;
            }
            Log.w(TAG, "Failed to determine connectivity status when connectivity changed", e);
            return true;
        }
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onDestroy() {
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onStart() {
        register();
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onStop() {
        unregister();
    }
}
