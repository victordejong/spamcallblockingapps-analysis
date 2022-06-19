package com.huawei.secure.android.common.ssl;

import android.content.Context;
import android.os.AsyncTask;
import com.huawei.secure.android.common.ssl.util.AsyncTaskC2491e;
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
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/ssl/SSFSecureX509SingleInstance.class */
public class SSFSecureX509SingleInstance {

    /* renamed from: a */
    private static final String f8008a = "SSFSecureX509SingleInstance";

    /* renamed from: b */
    private static volatile SecureX509TrustManager f8009b;

    private SSFSecureX509SingleInstance() {
    }

    public static SecureX509TrustManager getInstance(Context context) throws CertificateException, NoSuchAlgorithmException, KeyStoreException, IOException {
        Objects.requireNonNull(context, "context is null");
        C2489c.m36978a(context);
        if (f8009b == null) {
            synchronized (SSFSecureX509SingleInstance.class) {
                try {
                    if (f8009b == null) {
                        InputStream filesBksIS = BksUtil.getFilesBksIS(context);
                        if (filesBksIS == null) {
                            C2493g.m36955c(f8008a, "get assets bks");
                            filesBksIS = context.getAssets().open("hmsrootcas.bks");
                        } else {
                            C2493g.m36955c(f8008a, "get files bks");
                        }
                        f8009b = new SecureX509TrustManager(filesBksIS, "", true);
                        new AsyncTaskC2491e().executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f8009b;
    }

    public static void updateBks(InputStream inputStream) {
        String str = f8008a;
        C2493g.m36955c(str, "update bks");
        long currentTimeMillis = System.currentTimeMillis();
        if (inputStream != null && f8009b != null) {
            f8009b = new SecureX509TrustManager(inputStream, "", true);
            StringBuilder m8728C = C22128a.m8728C("updateBks: new SecureX509TrustManager cost : ");
            m8728C.append(System.currentTimeMillis() - currentTimeMillis);
            m8728C.append(" ms");
            C2493g.m36958a(str, m8728C.toString());
            SSFCompatiableSystemCA.m37030a(f8009b);
            SASFCompatiableSystemCA.a(f8009b);
        }
        StringBuilder m8728C2 = C22128a.m8728C("update bks cost : ");
        m8728C2.append(System.currentTimeMillis() - currentTimeMillis);
        m8728C2.append(" ms");
        C2493g.m36958a(str, m8728C2.toString());
    }
}
