package androidx.core.hardware.fingerprint;

import android.hardware.fingerprint.FingerprintManager;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.security.Signature;
import javax.crypto.Cipher;
import javax.crypto.Mac;
@Deprecated
/* loaded from: classes-dex2jar.jar:androidx/core/hardware/fingerprint/FingerprintManagerCompat.class */
public class FingerprintManagerCompat {

    /* renamed from: androidx.core.hardware.fingerprint.FingerprintManagerCompat$1 */
    /* loaded from: classes-dex2jar.jar:androidx/core/hardware/fingerprint/FingerprintManagerCompat$1.class */
    class C02061 extends FingerprintManager.AuthenticationCallback {

        /* renamed from: a */
        final /* synthetic */ AuthenticationCallback f3085a;

        @Override // android.hardware.fingerprint.FingerprintManager.AuthenticationCallback
        public void onAuthenticationError(int i, CharSequence charSequence) {
            this.f3085a.m19458a(i, charSequence);
        }

        @Override // android.hardware.fingerprint.FingerprintManager.AuthenticationCallback
        public void onAuthenticationFailed() {
            this.f3085a.m19457b();
        }

        @Override // android.hardware.fingerprint.FingerprintManager.AuthenticationCallback
        public void onAuthenticationHelp(int i, CharSequence charSequence) {
            this.f3085a.m19456c(i, charSequence);
        }

        @Override // android.hardware.fingerprint.FingerprintManager.AuthenticationCallback
        public void onAuthenticationSucceeded(FingerprintManager.AuthenticationResult authenticationResult) {
            this.f3085a.m19455d(new AuthenticationResult(FingerprintManagerCompat.m19459a(authenticationResult.getCryptoObject())));
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationCallback.class */
    public static abstract class AuthenticationCallback {
        /* renamed from: a */
        public void m19458a(int i, CharSequence charSequence) {
        }

        /* renamed from: b */
        public void m19457b() {
        }

        /* renamed from: c */
        public void m19456c(int i, CharSequence charSequence) {
        }

        /* renamed from: d */
        public void m19455d(AuthenticationResult authenticationResult) {
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/hardware/fingerprint/FingerprintManagerCompat$AuthenticationResult.class */
    public static final class AuthenticationResult {
        public AuthenticationResult(CryptoObject cryptoObject) {
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/hardware/fingerprint/FingerprintManagerCompat$CryptoObject.class */
    public static class CryptoObject {
        public CryptoObject(@NonNull Signature signature) {
        }

        public CryptoObject(@NonNull Cipher cipher) {
        }

        public CryptoObject(@NonNull Mac mac) {
        }
    }

    @RequiresApi
    /* renamed from: a */
    static CryptoObject m19459a(FingerprintManager.CryptoObject cryptoObject) {
        CryptoObject cryptoObject2 = null;
        if (cryptoObject == null) {
            return null;
        }
        if (cryptoObject.getCipher() != null) {
            return new CryptoObject(cryptoObject.getCipher());
        }
        if (cryptoObject.getSignature() != null) {
            return new CryptoObject(cryptoObject.getSignature());
        }
        if (cryptoObject.getMac() != null) {
            cryptoObject2 = new CryptoObject(cryptoObject.getMac());
        }
        return cryptoObject2;
    }
}
