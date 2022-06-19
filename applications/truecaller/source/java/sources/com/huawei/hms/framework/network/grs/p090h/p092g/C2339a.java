package com.huawei.hms.framework.network.grs.p090h.p092g;

import android.content.Context;
import android.content.res.AssetManager;
import com.huawei.hms.framework.network.grs.GrsApp;
import com.huawei.secure.android.common.ssl.SecureSSLSocketFactory;
import com.huawei.secure.android.common.ssl.SecureX509TrustManager;
import com.huawei.secure.android.common.ssl.hostname.StrictHostnameVerifier;
import com.tenor.android.core.constant.StringConstant;
import java.io.IOException;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;
/* renamed from: com.huawei.hms.framework.network.grs.h.g.a */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/network/grs/h/g/a.class */
public class C2339a {
    /* renamed from: a */
    public static HostnameVerifier m37846a() {
        return new StrictHostnameVerifier();
    }

    /* renamed from: a */
    public static SSLSocketFactory m37845a(Context context) {
        try {
            AssetManager assets = context.getAssets();
            return new SecureSSLSocketFactory(new SecureX509TrustManager(assets.open(GrsApp.getInstance().getBrand(StringConstant.SLASH) + "grs_sp.bks"), ""));
        } catch (IOException | KeyManagementException | NoSuchAlgorithmException e) {
            throw new AssertionError(e);
        }
    }
}
