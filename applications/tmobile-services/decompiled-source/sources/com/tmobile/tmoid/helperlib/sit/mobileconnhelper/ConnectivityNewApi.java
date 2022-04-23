package com.tmobile.tmoid.helperlib.sit.mobileconnhelper;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import com.tmobile.connectivity.ConnectivityUtils;
import com.tmobile.tmoid.helperlib.util.Log;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
@TargetApi(21)
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/mobileconnhelper/ConnectivityNewApi.class */
class ConnectivityNewApi implements ConnectivityApi {

    /* renamed from: e */
    private static final long f14913e = TimeUnit.SECONDS.toMillis(1);

    /* renamed from: a */
    private final Runnable f14914a;

    /* renamed from: b */
    private ConnectivityManager f14915b;

    /* renamed from: c */
    private InternalHandler f14916c = new InternalHandler();

    /* renamed from: d */
    private Map<ConnectivityCallback, ConnectivityManager.NetworkCallback> f14917d = new LinkedHashMap();

    /* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/mobileconnhelper/ConnectivityNewApi$InternalHandler.class */
    private static class InternalHandler extends Handler {
        InternalHandler() {
            super(Looper.getMainLooper());
        }

        /* renamed from: a */
        void m4693a(final ConnectivityCallback connectivityCallback, long j) {
            postDelayed(new Runnable(this) { // from class: com.tmobile.tmoid.helperlib.sit.mobileconnhelper.ConnectivityNewApi.InternalHandler.1
                @Override // java.lang.Runnable
                public void run() {
                    ConnectivityCallback connectivityCallback2 = connectivityCallback;
                    connectivityCallback2.mo4664d(connectivityCallback2);
                }
            }, j);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/mobileconnhelper/ConnectivityNewApi$NetworkCallbackImpl.class */
    private class NetworkCallbackImpl extends ConnectivityManager.NetworkCallback {

        /* renamed from: a */
        private final String f14919a;

        /* renamed from: b */
        private final ConnectivityCallback f14920b;

        NetworkCallbackImpl(String str, ConnectivityCallback connectivityCallback) {
            this.f14919a = str;
            this.f14920b = connectivityCallback;
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            if (ConnectivityNewApi.this.f14915b == null) {
                Log.m4654d("TMO-Agent.ConnectivityNewApi", "There is no instance of connectivityManager, instance has gone");
                return;
            }
            Log.m4654d("TMO-Agent.ConnectivityNewApi", "requestNetwork onAvailable" + ConnectivityNewApi.this.f14915b.getNetworkInfo(network));
            if (this.f14920b != null) {
                ConnectivityNewApi.this.m4694f(network);
                this.f14920b.mo4667a(new Connection(network, this.f14919a));
            }
            ConnectivityNewApi.this.f14916c.removeCallbacksAndMessages(null);
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            Log.m4654d("TMO-Agent.ConnectivityNewApi", "requestNetwork onCapabilitiesChanged");
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLosing(Network network, int i) {
            Log.m4654d("TMO-Agent.ConnectivityNewApi", "requestNetwork onLosing");
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            Log.m4654d("TMO-Agent.ConnectivityNewApi", "requestNetwork onLost");
            ConnectivityCallback connectivityCallback = this.f14920b;
            if (connectivityCallback != null) {
                connectivityCallback.mo4665c(connectivityCallback);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ConnectivityNewApi(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f14915b = (ConnectivityManager) applicationContext.getSystemService("connectivity");
        this.f14914a = ConnectivityUtils.m7674b(applicationContext);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: f */
    public void m4694f(Network network) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.f14915b.bindProcessToNetwork(network);
        } else {
            ConnectivityManager.setProcessDefaultNetwork(network);
        }
    }

    @Override // com.tmobile.tmoid.helperlib.sit.mobileconnhelper.ConnectivityApi
    /* renamed from: a */
    public void mo4692a(String str, ConnectivityCallback connectivityCallback, long j) {
        NetworkCallbackImpl networkCallbackImpl = new NetworkCallbackImpl(str, connectivityCallback);
        this.f14917d.put(connectivityCallback, networkCallbackImpl);
        this.f14916c.m4693a(connectivityCallback, j);
        this.f14915b.requestNetwork(new NetworkRequest.Builder().addCapability(12).addTransportType(0).build(), networkCallbackImpl);
        this.f14916c.postDelayed(this.f14914a, f14913e);
    }

    @Override // com.tmobile.tmoid.helperlib.sit.mobileconnhelper.ConnectivityApi
    /* renamed from: b */
    public void mo4691b(ConnectivityCallback connectivityCallback) {
        ConnectivityManager.NetworkCallback remove = this.f14917d.remove(connectivityCallback);
        if (remove != null) {
            this.f14916c.removeCallbacksAndMessages(null);
            m4694f(null);
            this.f14915b.unregisterNetworkCallback(remove);
        }
    }
}
