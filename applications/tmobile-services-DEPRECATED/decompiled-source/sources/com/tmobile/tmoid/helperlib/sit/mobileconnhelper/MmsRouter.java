package com.tmobile.tmoid.helperlib.sit.mobileconnhelper;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import com.tmobile.connectivity.ConnectivityUtils;
import com.tmobile.tmoid.helperlib.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/mobileconnhelper/MmsRouter.class */
final class MmsRouter {

    /* renamed from: e */
    private static final long f14929e = TimeUnit.SECONDS.toMillis(30);

    /* renamed from: a */
    private final ConnectivityManager f14930a;

    /* renamed from: b */
    private final Method f14931b;

    /* renamed from: c */
    private final KeepAliveHandler f14932c;

    /* renamed from: d */
    private volatile boolean f14933d;

    /* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/mobileconnhelper/MmsRouter$KeepAliveHandler.class */
    private static class KeepAliveHandler implements Handler.Callback {

        /* renamed from: c */
        private static final long f14934c = TimeUnit.SECONDS.toMillis(30);

        /* renamed from: a */
        private final ConnectivityManager f14935a;

        /* renamed from: b */
        private final Handler f14936b;

        KeepAliveHandler(ConnectivityManager connectivityManager) {
            this.f14935a = connectivityManager;
            HandlerThread handlerThread = new HandlerThread("MmsRouter_KeepAliveHandlerThread");
            handlerThread.start();
            this.f14936b = new Handler(handlerThread.getLooper(), this);
        }

        /* renamed from: a */
        private void m4671a() {
            this.f14936b.removeMessages(1);
        }

        /* renamed from: b */
        private void m4670b() {
            this.f14936b.sendEmptyMessageDelayed(1, f14934c);
        }

        /* renamed from: c */
        public void m4669c() {
            Log.m4650i("TMO-Agent.MmsRouter", "MMS routing - keep alive started...");
            m4670b();
        }

        /* renamed from: d */
        void m4668d() {
            m4671a();
            Log.m4650i("TMO-Agent.MmsRouter", "MMS routing - keep alive stopped...");
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            if (message.what != 1) {
                return true;
            }
            Log.m4650i("TMO-Agent.MmsRouter", "MMS routing - keep alive...");
            ConnectivityUtils.m7664l(this.f14935a);
            m4670b();
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/mobileconnhelper/MmsRouter$MmsRoutingException.class */
    public static class MmsRoutingException extends Exception {
        MmsRoutingException() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/mobileconnhelper/MmsRouter$RoutingTimeoutException.class */
    public static class RoutingTimeoutException extends Exception {
        RoutingTimeoutException() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MmsRouter(ConnectivityManager connectivityManager) {
        this.f14930a = connectivityManager;
        try {
            this.f14931b = connectivityManager.getClass().getMethod("requestRouteToHostAddress", Integer.TYPE, InetAddress.class);
            Log.m4650i("TMO-Agent.MmsRouter", "requestRouteToHostAddress supported");
            this.f14932c = new KeepAliveHandler(connectivityManager);
        } catch (NoSuchMethodException e) {
            Log.m4650i("TMO-Agent.MmsRouter", "requestRouteToHostAddress unsupported");
            throw new IllegalStateException("Method ConnectivityManager#requestRouteToHostAddress unsupported");
        }
    }

    /* renamed from: a */
    private void m4679a(boolean z) throws MmsRoutingException, RoutingTimeoutException {
        int i;
        if (z) {
            Log.m4650i("TMO-Agent.MmsRouter", "STARTUsingNetworkFeature");
            i = ConnectivityUtils.m7664l(this.f14930a);
        } else {
            Log.m4650i("TMO-Agent.MmsRouter", "STOPUsingNetworkFeature");
            i = ConnectivityUtils.m7663m(this.f14930a);
        }
        if (i != -1) {
            if (i > 0) {
                long currentTimeMillis = System.currentTimeMillis();
                while (!m4678b(z)) {
                    try {
                        Thread.sleep(500L);
                    } catch (InterruptedException e) {
                        Thread.currentThread().interrupt();
                    }
                    if (System.currentTimeMillis() - currentTimeMillis > f14929e) {
                        Log.m4650i("TMO-Agent.MmsRouter", "Operation connecting/disconnecting lasts too long");
                        throw new RoutingTimeoutException();
                    }
                }
            }
            this.f14933d = z;
            return;
        }
        Log.m4650i("TMO-Agent.MmsRouter", "Result of using network feature returns -1");
        throw new MmsRoutingException();
    }

    /* renamed from: b */
    private boolean m4678b(boolean z) {
        NetworkInfo networkInfo = this.f14930a.getNetworkInfo(2);
        boolean z2 = false;
        if (networkInfo != null) {
            if (networkInfo.isConnected() == z) {
                z2 = true;
            }
            return z2;
        }
        Log.m4646w("TMO-Agent.MmsRouter", "No MMS network info");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public void m4677c() {
        try {
            this.f14932c.m4668d();
            m4679a(false);
        } catch (MmsRoutingException e) {
            Log.m4651e("TMO-Agent.MmsRouter", "Error occurred while mms routing disabled", e);
        } catch (RoutingTimeoutException e2) {
            Log.m4651e("TMO-Agent.MmsRouter", "Timeout occurred while mms routing disabled", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public void m4676d() throws MmsRoutingException, RoutingTimeoutException {
        try {
            m4679a(true);
            this.f14932c.m4669c();
        } catch (MmsRoutingException e) {
            Log.m4651e("TMO-Agent.MmsRouter", "Error occurred while mms routing enabled", e);
            throw e;
        } catch (RoutingTimeoutException e2) {
            Log.m4651e("TMO-Agent.MmsRouter", "Timeout occurred while mms routing enabled", e2);
            throw e2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public boolean m4675e() {
        return this.f14931b != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public boolean m4674f() {
        NetworkInfo networkInfo = this.f14930a.getNetworkInfo(2);
        return networkInfo != null && networkInfo.isAvailable() && networkInfo.isConnected() && this.f14933d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public boolean m4673g(int i) {
        return ConnectivityUtils.m7666j(this.f14930a, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public boolean m4672h(InetAddress inetAddress) {
        boolean z;
        if (m4675e()) {
            try {
                z = ((Boolean) this.f14931b.invoke(this.f14930a, 2, inetAddress)).booleanValue();
            } catch (IllegalAccessException e) {
                Log.m4651e("TMO-Agent.MmsRouter", "Can't access to requestRouteToHostAddress method on ConnectivityManager", e);
                z = false;
            } catch (InvocationTargetException e2) {
                Log.m4651e("TMO-Agent.MmsRouter", "Can't run requestRouteToHostAddress method on ConnectivityManager", e2);
                z = false;
            }
            return z;
        }
        throw new UnsupportedOperationException("InetAddress routing is not supported on this device");
    }
}
