package com.birbit.android.jobqueue.network;

import android.annotation.TargetApi;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.os.Build;
import android.os.PowerManager;
import com.birbit.android.jobqueue.network.NetworkEventProvider;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/network/NetworkUtilImpl.class */
public class NetworkUtilImpl implements NetworkUtil, NetworkEventProvider {
    private NetworkEventProvider.Listener listener;

    public NetworkUtilImpl(Context context) {
        Context applicationContext = context.getApplicationContext();
        if (Build.VERSION.SDK_INT >= 21) {
            if (Build.VERSION.SDK_INT >= 23) {
                listenForIdle(applicationContext);
            }
            listenNetworkViaConnectivityManager(applicationContext);
            return;
        }
        applicationContext.registerReceiver(new BroadcastReceiver() { // from class: com.birbit.android.jobqueue.network.NetworkUtilImpl.1
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                NetworkUtilImpl.this.dispatchNetworkChange(context2);
            }
        }, getNetworkIntentFilter());
    }

    @TargetApi(23)
    private static IntentFilter getNetworkIntentFilter() {
        IntentFilter intentFilter = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
        if (Build.VERSION.SDK_INT >= 23) {
            intentFilter.addAction("android.os.action.DEVICE_IDLE_MODE_CHANGED");
        }
        return intentFilter;
    }

    @TargetApi(23)
    private static boolean isDozing(Context context) {
        if (Build.VERSION.SDK_INT < 23) {
            return false;
        }
        PowerManager powerManager = (PowerManager) context.getSystemService("power");
        boolean z = false;
        if (powerManager.isDeviceIdleMode()) {
            z = false;
            if (!powerManager.isIgnoringBatteryOptimizations(context.getPackageName())) {
                z = true;
            }
        }
        return z;
    }

    @TargetApi(23)
    private void listenForIdle(Context context) {
        context.registerReceiver(new BroadcastReceiver() { // from class: com.birbit.android.jobqueue.network.NetworkUtilImpl.3
            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context2, Intent intent) {
                NetworkUtilImpl.this.dispatchNetworkChange(context2);
            }
        }, new IntentFilter("android.os.action.DEVICE_IDLE_MODE_CHANGED"));
    }

    @TargetApi(23)
    private void listenNetworkViaConnectivityManager(final Context context) {
        ((ConnectivityManager) context.getSystemService("connectivity")).registerNetworkCallback(new NetworkRequest.Builder().addCapability(12).addCapability(13).build(), new ConnectivityManager.NetworkCallback() { // from class: com.birbit.android.jobqueue.network.NetworkUtilImpl.2
            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onAvailable(Network network) {
                NetworkUtilImpl.this.dispatchNetworkChange(context);
            }
        });
    }

    void dispatchNetworkChange(Context context) {
        if (this.listener != null) {
            this.listener.onNetworkChange(getNetworkStatus(context));
        }
    }

    @Override // com.birbit.android.jobqueue.network.NetworkUtil
    public int getNetworkStatus(Context context) {
        NetworkInfo activeNetworkInfo;
        if (!isDozing(context) && (activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo()) != null) {
            return (activeNetworkInfo.getType() == 1 || activeNetworkInfo.getType() == 9) ? 2 : 1;
        }
        return 0;
    }

    @Override // com.birbit.android.jobqueue.network.NetworkEventProvider
    public void setListener(NetworkEventProvider.Listener listener) {
        this.listener = listener;
    }
}
