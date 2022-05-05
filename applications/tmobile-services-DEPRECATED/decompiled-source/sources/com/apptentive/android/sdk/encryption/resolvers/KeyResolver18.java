package com.apptentive.android.sdk.encryption.resolvers;

import android.content.Context;
import android.content.SharedPreferences;
import android.security.KeyPairGeneratorSpec;
import android.util.Base64;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.apptentive.android.sdk.ApptentiveLog;
import com.apptentive.android.sdk.ApptentiveLogTag;
import com.apptentive.android.sdk.encryption.EncryptionKey;
import com.apptentive.android.sdk.util.ObjectUtils;
import com.apptentive.android.sdk.util.StringUtils;
import java.io.IOException;
import java.math.BigInteger;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.UnrecoverableKeyException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.util.Calendar;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.security.auth.x500.X500Principal;
@RequiresApi
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/encryption/resolvers/KeyResolver18.class */
class KeyResolver18 implements KeyResolver {
    private static SecretKey generateSymmetricKey() throws NoSuchAlgorithmException {
        return KeyGenerator.getInstance("AES").generateKey();
    }

    private SecretKey generateSymmetricKey(Context context, KeyPair keyPair) throws NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeyException, IllegalBlockSizeException {
        SecretKey generateSymmetricKey = generateSymmetricKey();
        storeSymmetricKey(context, generateSymmetricKey, keyPair);
        return generateSymmetricKey;
    }

    private static KeyPair generateWrapperKey(Context context, String str) throws NoSuchProviderException, NoSuchAlgorithmException, InvalidAlgorithmParameterException {
        KeyPairGenerator instance = KeyPairGenerator.getInstance("RSA", "AndroidKeyStore");
        Calendar instance2 = Calendar.getInstance();
        Calendar instance3 = Calendar.getInstance();
        instance3.add(1, 25);
        instance.initialize(new KeyPairGeneratorSpec.Builder(context).setAlias(str).setSerialNumber(BigInteger.ONE).setSubject(new X500Principal("CN=${alias} CA Certificate")).setStartDate(instance2.getTime()).setEndDate(instance3.getTime()).build());
        return instance.generateKeyPair();
    }

    private static SharedPreferences getKeyPrefs(Context context) {
        return context.getSharedPreferences("com.apptentive.sdk.security.keys", 0);
    }

    @Nullable
    private static KeyPair loadExistingWrapperKey(String str) throws KeyStoreException, CertificateException, NoSuchAlgorithmException, IOException, UnrecoverableKeyException {
        Certificate certificate;
        PublicKey publicKey;
        KeyStore instance = KeyStore.getInstance("AndroidKeyStore");
        instance.load(null);
        PrivateKey privateKey = (PrivateKey) ObjectUtils.m15631as(instance.getKey(str, null), PrivateKey.class);
        if (privateKey == null || (certificate = instance.getCertificate(str)) == null || (publicKey = certificate.getPublicKey()) == null) {
            return null;
        }
        return new KeyPair(publicKey, privateKey);
    }

    @Nullable
    private static SecretKey loadSymmetricKey(Context context, KeyPair keyPair) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        String string = getKeyPrefs(context).getString("key", null);
        if (StringUtils.isNullOrEmpty(string)) {
            return null;
        }
        return unwrapSymmetricKey(keyPair, string);
    }

    private SecretKey resolveSymmetricKey(Context context, String str) throws UnrecoverableKeyException, CertificateException, NoSuchAlgorithmException, KeyStoreException, IOException, NoSuchProviderException, InvalidAlgorithmParameterException, NoSuchPaddingException, InvalidKeyException, IllegalBlockSizeException {
        KeyPair resolveWrapperKey = resolveWrapperKey(context, str);
        SecretKey loadSymmetricKey = loadSymmetricKey(context, resolveWrapperKey);
        return loadSymmetricKey != null ? loadSymmetricKey : generateSymmetricKey(context, resolveWrapperKey);
    }

    private static KeyPair resolveWrapperKey(Context context, String str) throws UnrecoverableKeyException, CertificateException, NoSuchAlgorithmException, KeyStoreException, IOException, NoSuchProviderException, InvalidAlgorithmParameterException {
        KeyPair loadExistingWrapperKey = loadExistingWrapperKey(str);
        if (loadExistingWrapperKey != null) {
            ApptentiveLog.m15638v(ApptentiveLogTag.SECURITY, "Loaded existing asymmetric wrapper key (alias: %s)", str);
            return loadExistingWrapperKey;
        }
        KeyPair generateWrapperKey = generateWrapperKey(context, str);
        ApptentiveLog.m15638v(ApptentiveLogTag.SECURITY, "Generated new asymmetric wrapper key (alias: %s)", str);
        return generateWrapperKey;
    }

    private static void storeSymmetricKey(Context context, SecretKey secretKey, KeyPair keyPair) throws IllegalBlockSizeException, InvalidKeyException, NoSuchAlgorithmException, NoSuchPaddingException {
        getKeyPrefs(context).edit().putString("key", wrapSymmetricKey(keyPair, secretKey)).apply();
    }

    private static SecretKey unwrapSymmetricKey(KeyPair keyPair, String str) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        byte[] decode = Base64.decode(str, 0);
        Cipher instance = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        instance.init(4, keyPair.getPrivate());
        return (SecretKey) instance.unwrap(decode, "AES", 3);
    }

    private static String wrapSymmetricKey(KeyPair keyPair, SecretKey secretKey) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, IllegalBlockSizeException {
        Cipher instance = Cipher.getInstance("RSA/ECB/PKCS1Padding");
        instance.init(3, keyPair.getPublic());
        return Base64.encodeToString(instance.wrap(secretKey), 0);
    }

    @Override // com.apptentive.android.sdk.encryption.resolvers.KeyResolver
    @NonNull
    public EncryptionKey resolveKey(Context context, String str) throws UnrecoverableKeyException, CertificateException, NoSuchAlgorithmException, KeyStoreException, IOException, NoSuchProviderException, InvalidAlgorithmParameterException, NoSuchPaddingException, InvalidKeyException, IllegalBlockSizeException {
        return new EncryptionKey(resolveSymmetricKey(context, str), "AES/CBC/PKCS7Padding");
    }
}
