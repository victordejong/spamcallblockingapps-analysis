package com.pubmatic.sdk.common.network;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyDisplayInfo;
import android.telephony.TelephonyManager;
import androidx.core.content.ContextCompat;
import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.common.utility.POBUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/network/PMNetworkMonitor.class */
public class PMNetworkMonitor {

    /* renamed from: a */
    private final Context f501a;

    /* renamed from: b */
    private ConnectionType f502b = ConnectionType.UNKNOWN;

    /* renamed from: c */
    private final ConnectivityManager f503c;
    protected List<PMConnectivityListener> connectivityListeners;

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/network/PMNetworkMonitor$ConnectionType.class */
    public enum ConnectionType {
        UNKNOWN(0),
        ETHERNET(1),
        WIFI(2),
        CELLULAR_NETWORK_UN(3),
        CELLULAR_NETWORK_2G(4),
        CELLULAR_NETWORK_3G(5),
        CELLULAR_NETWORK_4G(6),
        CELLULAR_NETWORK_5G(7);
        

        /* renamed from: a */
        private final int f505a;

        ConnectionType(int i) {
            this.f505a = i;
        }

        public int getValue() {
            return this.f505a;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/network/PMNetworkMonitor$PMConnectivityListener.class */
    public interface PMConnectivityListener {
        void onNetworkConnectionChanged(boolean z);
    }

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/network/PMNetworkMonitor$POBNetworkUpdateReceiver.class */
    public static class POBNetworkUpdateReceiver extends BroadcastReceiver {

        /* renamed from: a */
        private static AbstractC1868e f506a;

        public static void setNetworkUpdateListener(AbstractC1868e abstractC1868e) {
            f506a = abstractC1868e;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            AbstractC1868e abstractC1868e;
            if (!"android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction()) || (abstractC1868e = f506a) == null) {
                return;
            }
            abstractC1868e.mo1019a();
        }
    }

    /* renamed from: com.pubmatic.sdk.common.network.PMNetworkMonitor$a */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/network/PMNetworkMonitor$a.class */
    public class C1864a extends ConnectivityManager.NetworkCallback {
        C1864a() {
            PMNetworkMonitor.this = r4;
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onAvailable(Network network) {
            PMNetworkMonitor.this.m1029a();
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(Network network) {
            PMNetworkMonitor.this.m1029a();
        }
    }

    /* renamed from: com.pubmatic.sdk.common.network.PMNetworkMonitor$b */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/network/PMNetworkMonitor$b.class */
    public class C1865b implements AbstractC1868e {
        C1865b() {
            PMNetworkMonitor.this = r4;
        }

        @Override // com.pubmatic.sdk.common.network.PMNetworkMonitor.AbstractC1868e
        /* renamed from: a */
        public void mo1019a() {
            PMNetworkMonitor.this.m1029a();
        }
    }

    /* renamed from: com.pubmatic.sdk.common.network.PMNetworkMonitor$c */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/network/PMNetworkMonitor$c.class */
    public class C1866c extends PhoneStateListener {

        /* renamed from: a */
        final /* synthetic */ TelephonyManager f509a;

        C1866c(TelephonyManager telephonyManager) {
            PMNetworkMonitor.this = r4;
            this.f509a = telephonyManager;
        }

        @Override // android.telephony.PhoneStateListener
        public void onDisplayInfoChanged(TelephonyDisplayInfo telephonyDisplayInfo) {
            super.onDisplayInfoChanged(telephonyDisplayInfo);
            if (telephonyDisplayInfo.getOverrideNetworkType() == 2 || telephonyDisplayInfo.getOverrideNetworkType() == 3 || telephonyDisplayInfo.getOverrideNetworkType() == 4) {
                PMNetworkMonitor.this.f502b = ConnectionType.CELLULAR_NETWORK_5G;
            } else {
                PMNetworkMonitor pMNetworkMonitor = PMNetworkMonitor.this;
                pMNetworkMonitor.f502b = pMNetworkMonitor.m1028a(telephonyDisplayInfo.getNetworkType());
            }
            this.f509a.listen(this, 0);
        }
    }

    /* renamed from: com.pubmatic.sdk.common.network.PMNetworkMonitor$d */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/network/PMNetworkMonitor$d.class */
    public class RunnableC1867d implements Runnable {
        RunnableC1867d() {
            PMNetworkMonitor.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            PMNetworkMonitor.this.m1023b();
        }
    }

    /* renamed from: com.pubmatic.sdk.common.network.PMNetworkMonitor$e */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/network/PMNetworkMonitor$e.class */
    public interface AbstractC1868e {
        /* renamed from: a */
        void mo1019a();
    }

    public PMNetworkMonitor(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f501a = applicationContext;
        this.f503c = (ConnectivityManager) applicationContext.getSystemService("connectivity");
        m1021c();
        updateConnectionType();
    }

    /* renamed from: a */
    public ConnectionType m1028a(int i) {
        ConnectionType connectionType;
        if (i != 20) {
            switch (i) {
                case 1:
                case 2:
                case 4:
                case 7:
                case 11:
                    connectionType = ConnectionType.CELLULAR_NETWORK_2G;
                    break;
                case 3:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 12:
                case 14:
                case 15:
                    connectionType = ConnectionType.CELLULAR_NETWORK_3G;
                    break;
                case 13:
                    connectionType = ConnectionType.CELLULAR_NETWORK_4G;
                    break;
                default:
                    connectionType = ConnectionType.CELLULAR_NETWORK_UN;
                    break;
            }
        } else {
            connectionType = ConnectionType.CELLULAR_NETWORK_5G;
        }
        return connectionType;
    }

    /* renamed from: a */
    public void m1029a() {
        POBUtils.runOnMainThread(new RunnableC1867d());
    }

    /* renamed from: a */
    private void m1027a(TelephonyManager telephonyManager) {
        if (ContextCompat.checkSelfPermission(this.f501a, "android.permission.READ_PHONE_STATE") != 0) {
            this.f502b = ConnectionType.CELLULAR_NETWORK_UN;
            PMLog.warn("PMNetworkMonitor", "Not able fetch connection type due to android.permission.READ_PHONE_STATE permission is not available for the app!", new Object[0]);
            return;
        }
        try {
            telephonyManager.listen(new C1866c(telephonyManager), 1048576);
        } catch (IllegalStateException | SecurityException e) {
            this.f502b = ConnectionType.CELLULAR_NETWORK_UN;
            PMLog.warn("PMNetworkMonitor", "Not able fetch connection type due to " + e.getMessage(), new Object[0]);
        }
    }

    /* renamed from: b */
    public void m1023b() {
        updateConnectionType();
        if (this.connectivityListeners != null) {
            for (int i = 0; i < this.connectivityListeners.size(); i++) {
                this.connectivityListeners.get(i).onNetworkConnectionChanged(isNetworkAvailable(this.f501a));
            }
        }
    }

    /* renamed from: c */
    private void m1021c() {
        ConnectivityManager connectivityManager = this.f503c;
        if (connectivityManager == null || Build.VERSION.SDK_INT < 24) {
            POBNetworkUpdateReceiver.setNetworkUpdateListener(new C1865b());
        } else {
            connectivityManager.registerDefaultNetworkCallback(new C1864a());
        }
    }

    /* renamed from: d */
    private void m1020d() {
        ConnectionType m1028a;
        TelephonyManager telephonyManager = (TelephonyManager) this.f501a.getSystemService("phone");
        if (telephonyManager == null) {
            m1028a = ConnectionType.CELLULAR_NETWORK_UN;
        } else if (Build.VERSION.SDK_INT >= 30) {
            m1027a(telephonyManager);
            return;
        } else {
            m1028a = m1028a(telephonyManager.getNetworkType());
        }
        this.f502b = m1028a;
    }

    public static boolean isNetworkAvailable(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
        boolean z = false;
        if (connectivityManager != null) {
            z = false;
            if (ContextCompat.checkSelfPermission(context, "android.permission.ACCESS_NETWORK_STATE") == 0) {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                z = false;
                if (activeNetworkInfo != null) {
                    z = false;
                    if (activeNetworkInfo.isConnectedOrConnecting()) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    public ConnectionType getConnectionType() {
        return this.f502b;
    }

    public boolean isNetworkAvailable() {
        return isNetworkAvailable(this.f501a);
    }

    public boolean isWiFiConnected() {
        return this.f502b == ConnectionType.WIFI;
    }

    public void registerConnectivityListener(PMConnectivityListener pMConnectivityListener) {
        if (this.connectivityListeners == null) {
            this.connectivityListeners = new ArrayList(1);
        }
        this.connectivityListeners.add(pMConnectivityListener);
    }

    public void resetConnectivityListener() {
        List<PMConnectivityListener> list = this.connectivityListeners;
        if (list != null) {
            list.clear();
            this.connectivityListeners = null;
        }
    }

    public void unregisterConnectivityListener(PMConnectivityListener pMConnectivityListener) {
        List<PMConnectivityListener> list;
        if (pMConnectivityListener == null || (list = this.connectivityListeners) == null || !list.contains(pMConnectivityListener)) {
            return;
        }
        this.connectivityListeners.remove(pMConnectivityListener);
        if (this.connectivityListeners.size() != 0) {
            return;
        }
        this.connectivityListeners = null;
    }

    public void updateConnectionType() {
        ConnectionType connectionType;
        NetworkInfo activeNetworkInfo;
        if (this.f503c == null || ContextCompat.checkSelfPermission(this.f501a, "android.permission.ACCESS_NETWORK_STATE") != 0 || (activeNetworkInfo = this.f503c.getActiveNetworkInfo()) == null) {
            connectionType = ConnectionType.UNKNOWN;
        } else {
            int type = activeNetworkInfo.getType();
            if (type == 0) {
                m1020d();
                return;
            } else if (type == 1) {
                connectionType = ConnectionType.WIFI;
            } else if (type != 9) {
                return;
            } else {
                connectionType = ConnectionType.ETHERNET;
            }
        }
        this.f502b = connectionType;
    }
}
