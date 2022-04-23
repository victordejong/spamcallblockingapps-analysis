package com.amazonaws.services.s3.internal.crypto;

import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.security.Provider;
import java.security.Security;
import javax.crypto.Cipher;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/CryptoRuntime.class */
public class CryptoRuntime {

    /* renamed from: a  reason: collision with root package name */
    private static final Log f6861a = LogFactory.a(CryptoRuntime.class);

    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/CryptoRuntime$AesGcm.class */
    static final class AesGcm {
        private AesGcm() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean b(Provider provider) {
            try {
                Cipher.getInstance(ContentCryptoScheme.f6855b.b(), provider);
                return true;
            } catch (Exception e) {
                return false;
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/crypto/CryptoRuntime$RsaEcbOaepWithSHA256AndMGF1Padding.class */
    static final class RsaEcbOaepWithSHA256AndMGF1Padding {
        private RsaEcbOaepWithSHA256AndMGF1Padding() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static boolean b(Provider provider) {
            try {
                Cipher.getInstance("RSA/ECB/OAEPWithSHA-256AndMGF1Padding", provider);
                return true;
            } catch (Exception e) {
                return false;
            }
        }
    }

    public static boolean a() {
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

    public static boolean a(Provider provider) {
        if (provider == null) {
            provider = Security.getProvider("BC");
        }
        return AesGcm.b(provider);
    }

    public static void b() {
        synchronized (CryptoRuntime.class) {
            try {
                if (!a()) {
                    try {
                        Security.addProvider((Provider) Class.forName("org.bouncycastle.jce.provider.BouncyCastleProvider").newInstance());
                    } catch (Exception e) {
                        f6861a.a("Bouncy Castle not available", e);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean b(Provider provider) {
        if (provider == null) {
            provider = Security.getProvider("BC");
        }
        return RsaEcbOaepWithSHA256AndMGF1Padding.b(provider);
    }
}
