package io.fabric.sdk.android.services.network;

import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
/* renamed from: io.fabric.sdk.android.services.network.e */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/network/e.class */
public final class C1589e {
    /* renamed from: a */
    public static final SSLSocketFactory m3225a(AbstractC1590f abstractC1590f) {
        SSLContext sSLContext = SSLContext.getInstance("TLS");
        sSLContext.init(null, new TrustManager[]{new C1591g(new C1592h(abstractC1590f.getKeyStoreStream(), abstractC1590f.getKeyStorePassword()), abstractC1590f)}, null);
        return sSLContext.getSocketFactory();
    }
}
