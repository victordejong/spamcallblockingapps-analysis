package com.apptentive.android.sdk.encryption.resolvers;

import android.content.Context;
import android.security.keystore.KeyGenParameterSpec;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import com.apptentive.android.sdk.encryption.EncryptionKey;
import com.apptentive.android.sdk.util.ObjectUtils;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.UnrecoverableEntryException;
import java.security.cert.CertificateException;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
@RequiresApi(api = 23)
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/encryption/resolvers/KeyResolver23.class */
class KeyResolver23 implements KeyResolver {
    private static final String CIPHER_TRANSFORMATION = "AES/CBC/PKCS7Padding";
    private static final String KEYSTORE_PROVIDER = "AndroidKeyStore";

    private SecretKey generateKey(String str) throws NoSuchProviderException, NoSuchAlgorithmException, InvalidAlgorithmParameterException {
        KeyGenerator instance = KeyGenerator.getInstance("AES", KEYSTORE_PROVIDER);
        instance.init(new KeyGenParameterSpec.Builder(str, 3).setBlockModes("CBC").setEncryptionPaddings("PKCS7Padding").setRandomizedEncryptionRequired(false).build());
        return instance.generateKey();
    }

    @Nullable
    private SecretKey loadExistingKey(String str) throws CertificateException, NoSuchAlgorithmException, IOException, UnrecoverableEntryException, KeyStoreException {
        KeyStore instance = KeyStore.getInstance(KEYSTORE_PROVIDER);
        SecretKey secretKey = null;
        instance.load(null);
        KeyStore.SecretKeyEntry secretKeyEntry = (KeyStore.SecretKeyEntry) ObjectUtils.m395as(instance.getEntry(str, null), KeyStore.SecretKeyEntry.class);
        if (secretKeyEntry != null) {
            secretKey = secretKeyEntry.getSecretKey();
        }
        return secretKey;
    }

    private SecretKey resolveSecretKey(String str) throws CertificateException, NoSuchAlgorithmException, IOException, UnrecoverableEntryException, KeyStoreException, NoSuchProviderException, InvalidAlgorithmParameterException {
        SecretKey loadExistingKey = loadExistingKey(str);
        return loadExistingKey != null ? loadExistingKey : generateKey(str);
    }

    @Override // com.apptentive.android.sdk.encryption.resolvers.KeyResolver
    @NonNull
    public EncryptionKey resolveKey(Context context, String str) throws KeyStoreException, CertificateException, NoSuchAlgorithmException, UnrecoverableEntryException, IOException, NoSuchProviderException, InvalidAlgorithmParameterException {
        return new EncryptionKey(resolveSecretKey(str), CIPHER_TRANSFORMATION);
    }
}
