package io.fabric.sdk.android.services.network;

import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
/* loaded from: classes2-dex2jar.jar:io/fabric/sdk/android/services/network/NetworkUtils.class */
public final class NetworkUtils {
    private NetworkUtils() {
    }

    public static final SSLSocketFactory getSSLSocketFactory(PinningInfoProvider pinningInfoProvider) throws KeyManagementException, NoSuchAlgorithmException {
        SSLContext instance = SSLContext.getInstance("TLS");
        instance.init(null, new TrustManager[]{new PinningTrustManager(new SystemKeyStore(pinningInfoProvider.getKeyStoreStream(), pinningInfoProvider.getKeyStorePassword()), pinningInfoProvider)}, null);
        return instance.getSocketFactory();
    }
}
