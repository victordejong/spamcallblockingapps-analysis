package com.flurry.sdk;

import android.annotation.TargetApi;
import android.os.Build;
import android.security.keystore.KeyGenParameterSpec;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.Key;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import javax.crypto.KeyGenerator;
/* renamed from: com.flurry.sdk.iy */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/iy.class */
public class C3322iy {

    /* renamed from: a */
    public static final String f5644a = "iy";

    /* renamed from: b */
    public KeyStore f5645b;

    @TargetApi(23)
    public C3322iy() {
        if (Build.VERSION.SDK_INT >= 23) {
            try {
                this.f5645b = KeyStore.getInstance("AndroidKeyStore");
                this.f5645b.load(null);
                if (!this.f5645b.containsAlias("fl.install.id.sec.key")) {
                    KeyGenerator instance = KeyGenerator.getInstance("AES", "AndroidKeyStore");
                    instance.init(new KeyGenParameterSpec.Builder("fl.install.id.sec.key", 3).setBlockModes("CBC").setEncryptionPaddings("PKCS7Padding").setRandomizedEncryptionRequired(false).setDigests("SHA-256", "SHA-512").build());
                    instance.generateKey();
                }
            } catch (IOException | InvalidAlgorithmParameterException | KeyStoreException | NoSuchAlgorithmException | NoSuchProviderException | CertificateException e) {
                String str = f5644a;
                C3356jq.m32614a(5, str, "Error while generating Key" + e.getMessage(), e);
            }
        }
    }

    /* renamed from: a */
    public final Key m32691a() {
        KeyStore keyStore;
        if (Build.VERSION.SDK_INT < 23 || (keyStore = this.f5645b) == null) {
            return null;
        }
        try {
            return keyStore.getKey("fl.install.id.sec.key", null);
        } catch (KeyStoreException | NoSuchAlgorithmException | UnrecoverableKeyException e) {
            C3356jq.m32615a(6, f5644a, "Error in getting key.");
            return null;
        }
    }
}
