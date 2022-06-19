package com.crashlytics.android.core;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.util.concurrent.atomic.AtomicBoolean;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/DevicePowerStateListener.class */
public class DevicePowerStateListener {
    private static final IntentFilter FILTER_BATTERY_CHANGED = new IntentFilter("android.intent.action.BATTERY_CHANGED");
    private static final IntentFilter FILTER_POWER_CONNECTED = new IntentFilter("android.intent.action.ACTION_POWER_CONNECTED");
    private static final IntentFilter FILTER_POWER_DISCONNECTED = new IntentFilter("android.intent.action.ACTION_POWER_DISCONNECTED");
    private final Context context;
    private boolean isPowerConnected;
    private final BroadcastReceiver powerConnectedReceiver = new BroadcastReceiver() { // from class: com.crashlytics.android.core.DevicePowerStateListener.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            DevicePowerStateListener.this.isPowerConnected = true;
        }
    };
    private final BroadcastReceiver powerDisconnectedReceiver = new BroadcastReceiver() { // from class: com.crashlytics.android.core.DevicePowerStateListener.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            DevicePowerStateListener.this.isPowerConnected = false;
        }
    };
    private final AtomicBoolean receiversRegistered = new AtomicBoolean(false);

    public DevicePowerStateListener(Context context) {
        this.context = context;
    }

    public void dispose() {
        if (!this.receiversRegistered.getAndSet(false)) {
            return;
        }
        this.context.unregisterReceiver(this.powerConnectedReceiver);
        this.context.unregisterReceiver(this.powerDisconnectedReceiver);
    }

    public void initialize() {
        if (this.receiversRegistered.getAndSet(true)) {
            return;
        }
        Intent registerReceiver = this.context.registerReceiver(null, FILTER_BATTERY_CHANGED);
        int i = -1;
        if (registerReceiver != null) {
            i = registerReceiver.getIntExtra("status", -1);
        }
        boolean z = true;
        if (i != 2) {
            z = i == 5;
        }
        this.isPowerConnected = z;
        this.context.registerReceiver(this.powerConnectedReceiver, FILTER_POWER_CONNECTED);
        this.context.registerReceiver(this.powerDisconnectedReceiver, FILTER_POWER_DISCONNECTED);
    }

    public boolean isPowerConnected() {
        return this.isPowerConnected;
    }
}
