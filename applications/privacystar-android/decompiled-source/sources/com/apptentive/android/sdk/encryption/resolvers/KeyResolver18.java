package com.apptentive.android.sdk.encryption.resolvers;

import android.content.Context;
import android.content.SharedPreferences;
import android.security.KeyPairGeneratorSpec;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RequiresApi;
import android.util.Base64;
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
@RequiresApi(api = 18)
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/encryption/resolvers/KeyResolver18.class */
class KeyResolver18 implements KeyResolver {
    private static final String DEFAULT_KEY_ALGORITHM = "AES";
    private static final String DEFAULT_PROVIDER = "BC";
    private static final String DEFAULT_TRANSFORMATION = "AES/CBC/PKCS7Padding";
    private static final String KEYSTORE_PROVIDER = "AndroidKeyStore";
    private static final String PREFS_KEY_SYMMETRIC_KEY = "key";
    private static final String PREFS_NAME_SYMMETRIC_KEY = "com.apptentive.sdk.security.keys";
    private static final String WRAPPER_KEY_ALGORITHM = "RSA";
    private static final String WRAPPER_TRANSFORMATION = "RSA/ECB/PKCS1Padding";

    private static SecretKey generateSymmetricKey() throws NoSuchProviderException, NoSuchAlgorithmException {
        return KeyGenerator.getInstance(DEFAULT_KEY_ALGORITHM, DEFAULT_PROVIDER).generateKey();
    }

    private SecretKey generateSymmetricKey(Context context, KeyPair keyPair) throws NoSuchProviderException, NoSuchAlgorithmException, NoSuchPaddingException, InvalidKeyException, IllegalBlockSizeException {
        SecretKey generateSymmetricKey = generateSymmetricKey();
        storeSymmetricKey(context, generateSymmetricKey, keyPair);
        return generateSymmetricKey;
    }

    private static KeyPair generateWrapperKey(Context context, String str) throws NoSuchProviderException, NoSuchAlgorithmException, InvalidAlgorithmParameterException {
        KeyPairGenerator instance = KeyPairGenerator.getInstance(WRAPPER_KEY_ALGORITHM, KEYSTORE_PROVIDER);
        Calendar instance2 = Calendar.getInstance();
        Calendar instance3 = Calendar.getInstance();
        instance3.add(1, 25);
        instance.initialize(new KeyPairGeneratorSpec.Builder(context).setAlias(str).setSerialNumber(BigInteger.ONE).setSubject(new X500Principal("CN=${alias} CA Certificate")).setStartDate(instance2.getTime()).setEndDate(instance3.getTime()).build());
        return instance.generateKeyPair();
    }

    private static SharedPreferences getKeyPrefs(Context context) {
        return context.getSharedPreferences(PREFS_NAME_SYMMETRIC_KEY, 0);
    }

    @Nullable
    private static KeyPair loadExistingWrapperKey(String str) throws KeyStoreException, CertificateException, NoSuchAlgorithmException, IOException, UnrecoverableKeyException {
        Certificate certificate;
        PublicKey publicKey;
        KeyStore instance = KeyStore.getInstance(KEYSTORE_PROVIDER);
        instance.load(null);
        PrivateKey privateKey = (PrivateKey) ObjectUtils.m395as(instance.getKey(str, null), PrivateKey.class);
        if (privateKey == null || (certificate = instance.getCertificate(str)) == null || (publicKey = certificate.getPublicKey()) == null) {
            return null;
        }
        return new KeyPair(publicKey, privateKey);
    }

    @Nullable
    private static SecretKey loadSymmetricKey(Context context, KeyPair keyPair) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        String string = getKeyPrefs(context).getString(PREFS_KEY_SYMMETRIC_KEY, null);
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
            ApptentiveLog.m403v(ApptentiveLogTag.SECURITY, "Loaded existing asymmetric wrapper key (alias: %s)", str);
            return loadExistingWrapperKey;
        }
        KeyPair generateWrapperKey = generateWrapperKey(context, str);
        ApptentiveLog.m403v(ApptentiveLogTag.SECURITY, "Generated new asymmetric wrapper key (alias: %s)", str);
        return generateWrapperKey;
    }

    private static void storeSymmetricKey(Context context, SecretKey secretKey, KeyPair keyPair) throws IllegalBlockSizeException, InvalidKeyException, NoSuchAlgorithmException, NoSuchPaddingException {
        getKeyPrefs(context).edit().putString(PREFS_KEY_SYMMETRIC_KEY, wrapSymmetricKey(keyPair, secretKey)).apply();
    }

    private static SecretKey unwrapSymmetricKey(KeyPair keyPair, String str) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException {
        byte[] decode = Base64.decode(str, 0);
        Cipher instance = Cipher.getInstance(WRAPPER_TRANSFORMATION);
        instance.init(4, keyPair.getPrivate());
        return (SecretKey) instance.unwrap(decode, DEFAULT_KEY_ALGORITHM, 3);
    }

    private static String wrapSymmetricKey(KeyPair keyPair, SecretKey secretKey) throws NoSuchPaddingException, NoSuchAlgorithmException, InvalidKeyException, IllegalBlockSizeException {
        Cipher instance = Cipher.getInstance(WRAPPER_TRANSFORMATION);
        instance.init(3, keyPair.getPublic());
        return Base64.encodeToString(instance.wrap(secretKey), 0);
    }

    @Override // com.apptentive.android.sdk.encryption.resolvers.KeyResolver
    @NonNull
    public EncryptionKey resolveKey(Context context, String str) throws UnrecoverableKeyException, CertificateException, NoSuchAlgorithmException, KeyStoreException, IOException, NoSuchProviderException, InvalidAlgorithmParameterException, NoSuchPaddingException, InvalidKeyException, IllegalBlockSizeException {
        return new EncryptionKey(resolveSymmetricKey(context, str), DEFAULT_TRANSFORMATION);
    }
}
