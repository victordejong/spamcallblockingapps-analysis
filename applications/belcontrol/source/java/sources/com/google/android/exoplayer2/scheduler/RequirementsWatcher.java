package com.google.android.exoplayer2.scheduler;

import android.annotation.TargetApi;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkRequest;
import android.os.Handler;
import android.os.Looper;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.Util;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/scheduler/RequirementsWatcher.class */
public final class RequirementsWatcher {
    private static final String TAG = "RequirementsWatcher";
    private final Context context;
    private final Listener listener;
    private CapabilityValidatedCallback networkCallback;
    private DeviceStatusChangeReceiver receiver;
    private final Requirements requirements;
    private boolean requirementsWereMet;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/scheduler/RequirementsWatcher$CapabilityValidatedCallback.class */
    public final class CapabilityValidatedCallback extends ConnectivityManager.NetworkCallback {
        private CapabilityValidatedCallback() {
            RequirementsWatcher.this = r4;
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            super.onAvailable(network);
            RequirementsWatcher.logd(RequirementsWatcher.this + " NetworkCallback.onAvailable");
            RequirementsWatcher.this.checkRequirements(false);
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            super.onLost(network);
            RequirementsWatcher.logd(RequirementsWatcher.this + " NetworkCallback.onLost");
            RequirementsWatcher.this.checkRequirements(false);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/scheduler/RequirementsWatcher$DeviceStatusChangeReceiver.class */
    public class DeviceStatusChangeReceiver extends BroadcastReceiver {
        private DeviceStatusChangeReceiver() {
            RequirementsWatcher.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (!isInitialStickyBroadcast()) {
                RequirementsWatcher.logd(RequirementsWatcher.this + " received " + intent.getAction());
                RequirementsWatcher.this.checkRequirements(false);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/scheduler/RequirementsWatcher$Listener.class */
    public interface Listener {
        void requirementsMet(RequirementsWatcher requirementsWatcher);

        void requirementsNotMet(RequirementsWatcher requirementsWatcher);
    }

    public RequirementsWatcher(Context context, Listener listener, Requirements requirements) {
        this.requirements = requirements;
        this.listener = listener;
        this.context = context.getApplicationContext();
        logd(this + " created");
    }

    public void checkRequirements(boolean z) {
        boolean checkRequirements = this.requirements.checkRequirements(this.context);
        if (!z && checkRequirements == this.requirementsWereMet) {
            logd("requirementsAreMet is still " + checkRequirements);
            return;
        }
        this.requirementsWereMet = checkRequirements;
        if (checkRequirements) {
            logd("start job");
            this.listener.requirementsMet(this);
            return;
        }
        logd("stop job");
        this.listener.requirementsNotMet(this);
    }

    public static void logd(String str) {
    }

    @TargetApi(23)
    private void registerNetworkCallbackV23() {
        ConnectivityManager connectivityManager = (ConnectivityManager) this.context.getSystemService("connectivity");
        NetworkRequest build = new NetworkRequest.Builder().addCapability(16).build();
        CapabilityValidatedCallback capabilityValidatedCallback = new CapabilityValidatedCallback();
        this.networkCallback = capabilityValidatedCallback;
        connectivityManager.registerNetworkCallback(build, capabilityValidatedCallback);
    }

    private void unregisterNetworkCallback() {
        if (Util.SDK_INT >= 21) {
            ((ConnectivityManager) this.context.getSystemService("connectivity")).unregisterNetworkCallback(this.networkCallback);
            this.networkCallback = null;
        }
    }

    public Requirements getRequirements() {
        return this.requirements;
    }

    public void start() {
        String str;
        Assertions.checkNotNull(Looper.myLooper());
        checkRequirements(true);
        IntentFilter intentFilter = new IntentFilter();
        if (this.requirements.getRequiredNetworkType() != 0) {
            if (Util.SDK_INT >= 23) {
                registerNetworkCallbackV23();
            } else {
                intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            }
        }
        if (this.requirements.isChargingRequired()) {
            intentFilter.addAction("android.intent.action.ACTION_POWER_CONNECTED");
            intentFilter.addAction("android.intent.action.ACTION_POWER_DISCONNECTED");
        }
        if (this.requirements.isIdleRequired()) {
            if (Util.SDK_INT >= 23) {
                str = "android.os.action.DEVICE_IDLE_MODE_CHANGED";
            } else {
                intentFilter.addAction("android.intent.action.SCREEN_ON");
                str = "android.intent.action.SCREEN_OFF";
            }
            intentFilter.addAction(str);
        }
        DeviceStatusChangeReceiver deviceStatusChangeReceiver = new DeviceStatusChangeReceiver();
        this.receiver = deviceStatusChangeReceiver;
        this.context.registerReceiver(deviceStatusChangeReceiver, intentFilter, null, new Handler());
        logd(this + " started");
    }

    public void stop() {
        this.context.unregisterReceiver(this.receiver);
        this.receiver = null;
        if (this.networkCallback != null) {
            unregisterNetworkCallback();
        }
        logd(this + " stopped");
    }

    public String toString() {
        return super.toString();
    }
}
