package com.huawei.secure.android.common.ssl;

import android.content.Context;
import android.os.AsyncTask;
import com.huawei.secure.android.common.ssl.util.AsyncTaskC2490d;
import com.huawei.secure.android.common.ssl.util.BksUtil;
import com.huawei.secure.android.common.ssl.util.C2489c;
import com.huawei.secure.android.common.ssl.util.C2493g;
import java.io.IOException;
import java.io.InputStream;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.cert.CertificateException;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/ssl/SecureX509SingleInstance.class */
public class SecureX509SingleInstance {

    /* renamed from: a */
    private static final String f8038a = "SecureX509SingleInstance";

    /* renamed from: b */
    private static volatile SecureX509TrustManager f8039b;

    private SecureX509SingleInstance() {
    }

    public static SecureX509TrustManager getInstance(Context context) throws CertificateException, NoSuchAlgorithmException, KeyStoreException, IOException {
        long currentTimeMillis = System.currentTimeMillis();
        Objects.requireNonNull(context, "context is null");
        C2489c.m36978a(context);
        if (f8039b == null) {
            synchronized (SecureX509SingleInstance.class) {
                try {
                    if (f8039b == null) {
                        InputStream filesBksIS = BksUtil.getFilesBksIS(context);
                        if (filesBksIS == null) {
                            C2493g.m36955c(f8038a, "get assets bks");
                            filesBksIS = context.getAssets().open("hmsrootcas.bks");
                        } else {
                            C2493g.m36955c(f8038a, "get files bks");
                        }
                        f8039b = new SecureX509TrustManager(filesBksIS, "");
                        new AsyncTaskC2490d().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        String str = f8038a;
        StringBuilder m8728C = C22128a.m8728C("SecureX509TrustManager getInstance: cost : ");
        m8728C.append(System.currentTimeMillis() - currentTimeMillis);
        m8728C.append(" ms");
        C2493g.m36958a(str, m8728C.toString());
        return f8039b;
    }

    public static void updateBks(InputStream inputStream) {
        String str = f8038a;
        C2493g.m36955c(str, "update bks");
        long currentTimeMillis = System.currentTimeMillis();
        if (inputStream != null && f8039b != null) {
            f8039b = new SecureX509TrustManager(inputStream, "");
            SecureSSLSocketFactory.m37028a(f8039b);
            SecureApacheSSLSocketFactory.a(f8039b);
        }
        StringBuilder m8728C = C22128a.m8728C("SecureX509TrustManager update bks cost : ");
        m8728C.append(System.currentTimeMillis() - currentTimeMillis);
        m8728C.append(" ms");
        C2493g.m36955c(str, m8728C.toString());
    }
}
