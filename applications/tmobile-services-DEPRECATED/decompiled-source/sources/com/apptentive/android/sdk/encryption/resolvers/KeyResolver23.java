package com.apptentive.android.sdk.encryption.resolvers;

import android.content.Context;
import android.security.keystore.KeyGenParameterSpec;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
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
@RequiresApi
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/encryption/resolvers/KeyResolver23.class */
class KeyResolver23 implements KeyResolver {
    private SecretKey generateKey(String str) throws NoSuchProviderException, NoSuchAlgorithmException, InvalidAlgorithmParameterException {
        KeyGenerator instance = KeyGenerator.getInstance("AES", "AndroidKeyStore");
        instance.init(new KeyGenParameterSpec.Builder(str, 3).setBlockModes("CBC").setEncryptionPaddings("PKCS7Padding").setRandomizedEncryptionRequired(false).build());
        return instance.generateKey();
    }

    @Nullable
    private SecretKey loadExistingKey(String str) throws CertificateException, NoSuchAlgorithmException, IOException, UnrecoverableEntryException, KeyStoreException {
        KeyStore instance = KeyStore.getInstance("AndroidKeyStore");
        SecretKey secretKey = null;
        instance.load(null);
        KeyStore.SecretKeyEntry secretKeyEntry = (KeyStore.SecretKeyEntry) ObjectUtils.m15631as(instance.getEntry(str, null), KeyStore.SecretKeyEntry.class);
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
        return new EncryptionKey(resolveSecretKey(str), "AES/CBC/PKCS7Padding");
    }
}
