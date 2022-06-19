package com.amazonaws.services.p101s3.internal.crypto;

import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.security.Provider;
import java.security.Security;
import javax.crypto.Cipher;
@Deprecated
/* renamed from: com.amazonaws.services.s3.internal.crypto.CryptoRuntime */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/CryptoRuntime.class */
public class CryptoRuntime {

    /* renamed from: a */
    private static final Log f12412a = LogFactory.m38584a(CryptoRuntime.class);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.amazonaws.services.s3.internal.crypto.CryptoRuntime$AesGcm */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/CryptoRuntime$AesGcm.class */
    public static final class AesGcm {
        private AesGcm() {
        }

        /* renamed from: b */
        public static boolean m38351b(Provider provider) {
            try {
                Cipher.getInstance(ContentCryptoScheme.f12406b.mo38364b(), provider);
                return true;
            } catch (Exception e) {
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.amazonaws.services.s3.internal.crypto.CryptoRuntime$RsaEcbOaepWithSHA256AndMGF1Padding */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/CryptoRuntime$RsaEcbOaepWithSHA256AndMGF1Padding.class */
    public static final class RsaEcbOaepWithSHA256AndMGF1Padding {
        private RsaEcbOaepWithSHA256AndMGF1Padding() {
        }

        /* renamed from: b */
        public static boolean m38349b(Provider provider) {
            try {
                Cipher.getInstance("RSA/ECB/OAEPWithSHA-256AndMGF1Padding", provider);
                return true;
            } catch (Exception e) {
                return false;
            }
        }
    }

    /* renamed from: a */
    public static boolean m38356a() {
        boolean z;
        synchronized (CryptoRuntime.class) {
            try {
                z = Security.getProvider("BC") != null;
            } catch (Throwable th) {
                throw th;
            }
        }
        return z;
    }

    /* renamed from: a */
    public static boolean m38355a(Provider provider) {
        if (provider == null) {
            provider = Security.getProvider("BC");
        }
        return AesGcm.m38351b(provider);
    }

    /* renamed from: b */
    public static void m38354b() {
        synchronized (CryptoRuntime.class) {
            try {
                if (m38356a()) {
                    return;
                }
                try {
                    Security.addProvider((Provider) Class.forName("org.bouncycastle.jce.provider.BouncyCastleProvider").newInstance());
                } catch (Exception e) {
                    f12412a.mo38595a("Bouncy Castle not available", e);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    public static boolean m38353b(Provider provider) {
        if (provider == null) {
            provider = Security.getProvider("BC");
        }
        return RsaEcbOaepWithSHA256AndMGF1Padding.m38349b(provider);
    }
}
