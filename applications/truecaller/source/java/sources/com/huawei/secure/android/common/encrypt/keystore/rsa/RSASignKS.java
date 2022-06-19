package com.huawei.secure.android.common.encrypt.keystore.rsa;

import android.security.keystore.KeyGenParameterSpec;
import android.text.TextUtils;
import android.util.Base64;
import com.huawei.secure.android.common.encrypt.utils.C2480b;
import com.tenor.android.core.constant.StringConstant;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.KeyPair;
import java.security.KeyPairGenerator;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.Signature;
import java.security.SignatureException;
import java.security.UnrecoverableEntryException;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/encrypt/keystore/rsa/RSASignKS.class */
public abstract class RSASignKS {

    /* renamed from: a */
    private static final String f7964a = "RSASignKS";

    /* renamed from: b */
    private static final String f7965b = "AndroidKeyStore";

    /* renamed from: c */
    private static final String f7966c = "SHA256withRSA/PSS";

    /* renamed from: d */
    private static final String f7967d = "";

    /* renamed from: e */
    private static final int f7968e = 2048;

    /* renamed from: f */
    private static final int f7969f = 3072;

    /* renamed from: a */
    private static KeyPair m37068a(String str, boolean z) {
        KeyPair keyPair;
        synchronized (RSASignKS.class) {
            try {
                if (m37069a(str)) {
                    C2480b.m37037b(f7964a, "Key pair exits");
                    return null;
                }
                try {
                    try {
                        KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA", f7965b);
                        if (!z) {
                            keyPairGenerator.initialize(new KeyGenParameterSpec.Builder(str, 12).setDigests("SHA-256", "SHA-512").setSignaturePaddings("PSS").setKeySize(2048).build());
                        } else {
                            keyPairGenerator.initialize(new KeyGenParameterSpec.Builder(str, 12).setDigests("SHA-256", "SHA-512").setSignaturePaddings("PSS").setKeySize(f7969f).build());
                        }
                        keyPair = keyPairGenerator.generateKeyPair();
                    } catch (InvalidAlgorithmParameterException e) {
                        C2480b.m37037b(f7964a, "InvalidAlgorithmParameterException: " + e.getMessage());
                        keyPair = null;
                    }
                } catch (NoSuchAlgorithmException e2) {
                    C2480b.m37037b(f7964a, "NoSuchAlgorithmException: " + e2.getMessage());
                    keyPair = null;
                } catch (NoSuchProviderException e3) {
                    C2480b.m37037b(f7964a, "NoSuchProviderException: " + e3.getMessage());
                    keyPair = null;
                }
                return keyPair;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    private static boolean m37069a(String str) {
        boolean z = false;
        try {
            KeyStore keyStore = KeyStore.getInstance(f7965b);
            keyStore.load(null);
            if (keyStore.getKey(str, null) != null) {
                z = true;
            }
            return z;
        } catch (IOException e) {
            String str2 = f7964a;
            StringBuilder m8728C = C22128a.m8728C("IOException: ");
            m8728C.append(e.getMessage());
            C2480b.m37037b(str2, m8728C.toString());
            return false;
        } catch (KeyStoreException e2) {
            String str3 = f7964a;
            StringBuilder m8728C2 = C22128a.m8728C("KeyStoreException: ");
            m8728C2.append(e2.getMessage());
            C2480b.m37037b(str3, m8728C2.toString());
            return false;
        } catch (NoSuchAlgorithmException e3) {
            String str4 = f7964a;
            StringBuilder m8728C3 = C22128a.m8728C("NoSuchAlgorithmException: ");
            m8728C3.append(e3.getMessage());
            C2480b.m37037b(str4, m8728C3.toString());
            return false;
        } catch (UnrecoverableKeyException e4) {
            String str5 = f7964a;
            StringBuilder m8728C4 = C22128a.m8728C("UnrecoverableKeyException: ");
            m8728C4.append(e4.getMessage());
            C2480b.m37037b(str5, m8728C4.toString());
            return false;
        } catch (CertificateException e5) {
            String str6 = f7964a;
            StringBuilder m8728C5 = C22128a.m8728C("CertificateException: ");
            m8728C5.append(e5.getMessage());
            C2480b.m37037b(str6, m8728C5.toString());
            return false;
        }
    }

    /* renamed from: a */
    private static boolean m37066a(String str, byte[] bArr, byte[] bArr2, boolean z) {
        boolean z2;
        if (TextUtils.isEmpty(str) || bArr == null || bArr2 == null) {
            C2480b.m37037b(f7964a, "alias or content or sign value is null");
            return false;
        } else if (!isBuildVersionHigherThan22()) {
            C2480b.m37037b(f7964a, "sdk version is too low");
            return false;
        } else {
            KeyStore.Entry m37065b = m37065b(str, z);
            if (!(m37065b instanceof KeyStore.PrivateKeyEntry)) {
                C2480b.m37037b(f7964a, "Not an instance of a PrivateKeyEntry");
                return false;
            }
            try {
                Signature signature = Signature.getInstance(f7966c);
                signature.initVerify(((KeyStore.PrivateKeyEntry) m37065b).getCertificate());
                signature.update(bArr);
                z2 = signature.verify(bArr2);
            } catch (InvalidKeyException e) {
                String str2 = f7964a;
                StringBuilder m8728C = C22128a.m8728C("InvalidKeyException: ");
                m8728C.append(e.getMessage());
                C2480b.m37037b(str2, m8728C.toString());
                z2 = false;
            } catch (NoSuchAlgorithmException e2) {
                String str3 = f7964a;
                StringBuilder m8728C2 = C22128a.m8728C("NoSuchAlgorithmException: ");
                m8728C2.append(e2.getMessage());
                C2480b.m37037b(str3, m8728C2.toString());
                z2 = false;
            } catch (SignatureException e3) {
                String str4 = f7964a;
                StringBuilder m8728C3 = C22128a.m8728C("SignatureException: ");
                m8728C3.append(e3.getMessage());
                C2480b.m37037b(str4, m8728C3.toString());
                z2 = false;
            } catch (Exception e4) {
                C22128a.m8727C0(e4, C22128a.m8728C("Exception: "), f7964a);
                z2 = false;
            }
            return z2;
        }
    }

    /* renamed from: a */
    private static byte[] m37067a(String str, byte[] bArr, boolean z) {
        byte[] bArr2 = new byte[0];
        if (TextUtils.isEmpty(str) || bArr == null) {
            C2480b.m37037b(f7964a, "alias or content is null");
            return bArr2;
        } else if (!isBuildVersionHigherThan22()) {
            C2480b.m37037b(f7964a, "sdk version is too low");
            return bArr2;
        } else {
            KeyStore.Entry m37065b = m37065b(str, z);
            if (!(m37065b instanceof KeyStore.PrivateKeyEntry)) {
                C2480b.m37037b(f7964a, "Not an instance of a PrivateKeyEntry");
                return bArr2;
            }
            try {
                Signature signature = Signature.getInstance(f7966c);
                signature.initSign(((KeyStore.PrivateKeyEntry) m37065b).getPrivateKey());
                signature.update(bArr);
                return signature.sign();
            } catch (InvalidKeyException e) {
                String str2 = f7964a;
                StringBuilder m8728C = C22128a.m8728C("InvalidKeyException: ");
                m8728C.append(e.getMessage());
                C2480b.m37037b(str2, m8728C.toString());
                return bArr2;
            } catch (NoSuchAlgorithmException e2) {
                String str3 = f7964a;
                StringBuilder m8728C2 = C22128a.m8728C("NoSuchAlgorithmException: ");
                m8728C2.append(e2.getMessage());
                C2480b.m37037b(str3, m8728C2.toString());
                return bArr2;
            } catch (SignatureException e3) {
                String str4 = f7964a;
                StringBuilder m8728C3 = C22128a.m8728C("SignatureException: ");
                m8728C3.append(e3.getMessage());
                C2480b.m37037b(str4, m8728C3.toString());
                return bArr2;
            } catch (Exception e4) {
                C22128a.m8727C0(e4, C22128a.m8728C("Exception: "), f7964a);
                return bArr2;
            }
        }
    }

    /* renamed from: b */
    private static KeyStore.Entry m37065b(String str, boolean z) {
        KeyStore.Entry entry;
        if (!m37069a(str)) {
            m37068a(str, z);
        }
        try {
            KeyStore keyStore = KeyStore.getInstance(f7965b);
            keyStore.load(null);
            entry = keyStore.getEntry(str, null);
        } catch (IOException e) {
            String str2 = f7964a;
            StringBuilder m8728C = C22128a.m8728C("IOException: ");
            m8728C.append(e.getMessage());
            C2480b.m37037b(str2, m8728C.toString());
            entry = null;
        } catch (KeyStoreException e2) {
            String str3 = f7964a;
            StringBuilder m8728C2 = C22128a.m8728C("KeyStoreException: ");
            m8728C2.append(e2.getMessage());
            C2480b.m37037b(str3, m8728C2.toString());
            entry = null;
        } catch (NoSuchAlgorithmException e3) {
            String str4 = f7964a;
            StringBuilder m8728C3 = C22128a.m8728C("NoSuchAlgorithmException: ");
            m8728C3.append(e3.getMessage());
            C2480b.m37037b(str4, m8728C3.toString());
            entry = null;
        } catch (UnrecoverableEntryException e4) {
            String str5 = f7964a;
            StringBuilder m8728C4 = C22128a.m8728C("UnrecoverableEntryException: ");
            m8728C4.append(e4.getMessage());
            C2480b.m37037b(str5, m8728C4.toString());
            entry = null;
        } catch (CertificateException e5) {
            String str6 = f7964a;
            StringBuilder m8728C5 = C22128a.m8728C("CertificateException: ");
            m8728C5.append(e5.getMessage());
            C2480b.m37037b(str6, m8728C5.toString());
            entry = null;
        }
        return entry;
    }

    public static boolean isBuildVersionHigherThan22() {
        return true;
    }

    @Deprecated
    public static String sign(String str, String str2) {
        try {
            return Base64.encodeToString(sign(str, str2.getBytes(StringConstant.UTF8)), 0);
        } catch (UnsupportedEncodingException e) {
            e.getMessage();
            return "";
        }
    }

    @Deprecated
    public static byte[] sign(String str, byte[] bArr) {
        return m37067a(str, bArr, false);
    }

    public static String signNew(String str, String str2) {
        try {
            return Base64.encodeToString(signNew(str, str2.getBytes(StringConstant.UTF8)), 0);
        } catch (UnsupportedEncodingException e) {
            e.getMessage();
            return "";
        }
    }

    public static byte[] signNew(String str, byte[] bArr) {
        return m37067a(str, bArr, true);
    }

    @Deprecated
    public static boolean verifySign(String str, String str2, String str3) {
        try {
            return verifySign(str, str2.getBytes(StringConstant.UTF8), Base64.decode(str3, 0));
        } catch (UnsupportedEncodingException e) {
            e.getMessage();
            return false;
        } catch (Exception e2) {
            C22128a.m8727C0(e2, C22128a.m8728C("base64 decode Exception"), f7964a);
            return false;
        }
    }

    @Deprecated
    public static boolean verifySign(String str, byte[] bArr, byte[] bArr2) {
        return m37066a(str, bArr, bArr2, false);
    }

    public static boolean verifySignNew(String str, String str2, String str3) {
        try {
            return verifySignNew(str, str2.getBytes(StringConstant.UTF8), Base64.decode(str3, 0));
        } catch (UnsupportedEncodingException e) {
            e.getMessage();
            return false;
        } catch (Exception e2) {
            C22128a.m8727C0(e2, C22128a.m8728C("base64 decode Exception"), f7964a);
            return false;
        }
    }

    public static boolean verifySignNew(String str, byte[] bArr, byte[] bArr2) {
        return m37066a(str, bArr, bArr2, true);
    }
}
