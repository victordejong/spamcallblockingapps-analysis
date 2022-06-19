package com.amazonaws.mobileconnectors.p100s3.transferutility;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.amazonaws.mobileconnectors.s3.transferutility.TransferNetworkConnectionType */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkConnectionType.class */
public enum TransferNetworkConnectionType {
    ANY { // from class: com.amazonaws.mobileconnectors.s3.transferutility.TransferNetworkConnectionType.1
        @Override // com.amazonaws.mobileconnectors.p100s3.transferutility.TransferNetworkConnectionType
        protected final boolean verify(NetworkInfo networkInfo) {
            return networkInfo != null && networkInfo.isConnected();
        }
    },
    WIFI { // from class: com.amazonaws.mobileconnectors.s3.transferutility.TransferNetworkConnectionType.2
        @Override // com.amazonaws.mobileconnectors.p100s3.transferutility.TransferNetworkConnectionType
        protected final boolean verify(NetworkInfo networkInfo) {
            return networkInfo != null && networkInfo.isConnected() && networkInfo.getType() == 1;
        }
    },
    MOBILE { // from class: com.amazonaws.mobileconnectors.s3.transferutility.TransferNetworkConnectionType.3
        @Override // com.amazonaws.mobileconnectors.p100s3.transferutility.TransferNetworkConnectionType
        protected final boolean verify(NetworkInfo networkInfo) {
            return networkInfo != null && networkInfo.isConnected() && networkInfo.getType() == 0;
        }
    };
    
    private static final Log LOGGER;
    private static final Map<String, TransferNetworkConnectionType> MAP = new HashMap();

    static {
        TransferNetworkConnectionType[] values;
        for (TransferNetworkConnectionType transferNetworkConnectionType : values()) {
            MAP.put(transferNetworkConnectionType.toString(), transferNetworkConnectionType);
        }
        LOGGER = LogFactory.m38584a(TransferNetworkConnectionType.class);
    }

    public static TransferNetworkConnectionType getConnectionType(String str) {
        Map<String, TransferNetworkConnectionType> map = MAP;
        if (map.containsKey(str)) {
            return map.get(str);
        }
        Log log = LOGGER;
        log.mo38586e("Unknown connection type " + str + " transfer will have connection type set to ANY.");
        return ANY;
    }

    public boolean isConnected(ConnectivityManager connectivityManager) {
        return verify(connectivityManager.getActiveNetworkInfo());
    }

    protected abstract boolean verify(NetworkInfo networkInfo);
}
