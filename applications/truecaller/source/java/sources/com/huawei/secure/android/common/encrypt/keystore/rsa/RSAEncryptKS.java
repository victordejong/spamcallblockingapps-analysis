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
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.UnrecoverableKeyException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.spec.MGF1ParameterSpec;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.OAEPParameterSpec;
import javax.crypto.spec.PSource;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/encrypt/keystore/rsa/RSAEncryptKS.class */
public abstract class RSAEncryptKS {

    /* renamed from: a */
    private static final String f7958a = "RSAEncryptKS";

    /* renamed from: b */
    private static final String f7959b = "AndroidKeyStore";

    /* renamed from: c */
    private static final String f7960c = "RSA/ECB/OAEPWithSHA-256AndMGF1Padding";

    /* renamed from: d */
    private static final String f7961d = "";

    /* renamed from: e */
    private static final int f7962e = 2048;

    /* renamed from: f */
    private static final int f7963f = 3072;

    /* renamed from: a */
    private static KeyPair m37074a(String str, boolean z) {
        KeyPair keyPair;
        synchronized (RSAEncryptKS.class) {
            try {
                if (m37072b(str)) {
                    C2480b.m37037b(f7958a, "Key pair exits");
                    return null;
                }
                C2480b.m37036c(f7958a, "generate key pair.");
                try {
                    try {
                        try {
                            try {
                                KeyPairGenerator keyPairGenerator = KeyPairGenerator.getInstance("RSA", f7959b);
                                if (!z) {
                                    keyPairGenerator.initialize(new KeyGenParameterSpec.Builder(str, 2).setDigests("SHA-256", "SHA-512").setEncryptionPaddings("OAEPPadding").setKeySize(2048).build());
                                } else {
                                    keyPairGenerator.initialize(new KeyGenParameterSpec.Builder(str, 2).setDigests("SHA-256", "SHA-512").setEncryptionPaddings("OAEPPadding").setKeySize(f7963f).build());
                                }
                                keyPair = keyPairGenerator.generateKeyPair();
                            } catch (Exception e) {
                                C2480b.m37037b(f7958a, "Exception: " + e.getMessage());
                                keyPair = null;
                            }
                        } catch (InvalidAlgorithmParameterException e2) {
                            C2480b.m37037b(f7958a, "InvalidAlgorithmParameterException: " + e2.getMessage());
                            keyPair = null;
                        }
                    } catch (NoSuchAlgorithmException e3) {
                        C2480b.m37037b(f7958a, "NoSuchAlgorithmException: " + e3.getMessage());
                        keyPair = null;
                    }
                } catch (NoSuchProviderException e4) {
                    C2480b.m37037b(f7958a, "NoSuchProviderException: " + e4.getMessage());
                    keyPair = null;
                }
                return keyPair;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    private static PrivateKey m37075a(String str) {
        PrivateKey privateKey;
        if (!m37072b(str)) {
            return null;
        }
        try {
            KeyStore keyStore = KeyStore.getInstance(f7959b);
            keyStore.load(null);
            privateKey = (PrivateKey) keyStore.getKey(str, null);
        } catch (IOException e) {
            String str2 = f7958a;
            StringBuilder m8728C = C22128a.m8728C("IOException: ");
            m8728C.append(e.getMessage());
            C2480b.m37037b(str2, m8728C.toString());
            privateKey = null;
        } catch (KeyStoreException e2) {
            String str3 = f7958a;
            StringBuilder m8728C2 = C22128a.m8728C("KeyStoreException: ");
            m8728C2.append(e2.getMessage());
            C2480b.m37037b(str3, m8728C2.toString());
            privateKey = null;
        } catch (NoSuchAlgorithmException e3) {
            String str4 = f7958a;
            StringBuilder m8728C3 = C22128a.m8728C("NoSuchAlgorithmException: ");
            m8728C3.append(e3.getMessage());
            C2480b.m37037b(str4, m8728C3.toString());
            privateKey = null;
        } catch (UnrecoverableKeyException e4) {
            String str5 = f7958a;
            StringBuilder m8728C4 = C22128a.m8728C("UnrecoverableKeyException: ");
            m8728C4.append(e4.getMessage());
            C2480b.m37037b(str5, m8728C4.toString());
            privateKey = null;
        } catch (CertificateException e5) {
            String str6 = f7958a;
            StringBuilder m8728C5 = C22128a.m8728C("CertificateException: ");
            m8728C5.append(e5.getMessage());
            C2480b.m37037b(str6, m8728C5.toString());
            privateKey = null;
        } catch (Exception e6) {
            C22128a.m8727C0(e6, C22128a.m8728C("Exception: "), f7958a);
            privateKey = null;
        }
        return privateKey;
    }

    /* renamed from: a */
    private static boolean m37076a() {
        return true;
    }

    /* renamed from: a */
    private static byte[] m37073a(String str, byte[] bArr, boolean z) {
        byte[] bArr2 = new byte[0];
        if (TextUtils.isEmpty(str) || bArr == null) {
            C2480b.m37037b(f7958a, "alias or content is null");
            return bArr2;
        } else if (!m37076a()) {
            C2480b.m37037b(f7958a, "sdk version is too low");
            return bArr2;
        } else {
            PublicKey m37071b = m37071b(str, z);
            if (m37071b == null) {
                C2480b.m37037b(f7958a, "Public key is null");
                return bArr2;
            }
            try {
                Cipher cipher = Cipher.getInstance(f7960c);
                cipher.init(1, m37071b, new OAEPParameterSpec("SHA-256", "MGF1", new MGF1ParameterSpec("SHA-1"), PSource.PSpecified.DEFAULT));
                return cipher.doFinal(bArr);
            } catch (InvalidAlgorithmParameterException e) {
                String str2 = f7958a;
                StringBuilder m8728C = C22128a.m8728C("InvalidAlgorithmParameterException: ");
                m8728C.append(e.getMessage());
                C2480b.m37037b(str2, m8728C.toString());
                return bArr2;
            } catch (InvalidKeyException e2) {
                String str3 = f7958a;
                StringBuilder m8728C2 = C22128a.m8728C("InvalidKeyException: ");
                m8728C2.append(e2.getMessage());
                C2480b.m37037b(str3, m8728C2.toString());
                return bArr2;
            } catch (NoSuchAlgorithmException e3) {
                String str4 = f7958a;
                StringBuilder m8728C3 = C22128a.m8728C("NoSuchAlgorithmException: ");
                m8728C3.append(e3.getMessage());
                C2480b.m37037b(str4, m8728C3.toString());
                return bArr2;
            } catch (BadPaddingException e4) {
                String str5 = f7958a;
                StringBuilder m8728C4 = C22128a.m8728C("BadPaddingException: ");
                m8728C4.append(e4.getMessage());
                C2480b.m37037b(str5, m8728C4.toString());
                return bArr2;
            } catch (IllegalBlockSizeException e5) {
                String str6 = f7958a;
                StringBuilder m8728C5 = C22128a.m8728C("IllegalBlockSizeException: ");
                m8728C5.append(e5.getMessage());
                C2480b.m37037b(str6, m8728C5.toString());
                return bArr2;
            } catch (NoSuchPaddingException e6) {
                String str7 = f7958a;
                StringBuilder m8728C6 = C22128a.m8728C("NoSuchPaddingException: ");
                m8728C6.append(e6.getMessage());
                C2480b.m37037b(str7, m8728C6.toString());
                return bArr2;
            } catch (Exception e7) {
                C22128a.m8727C0(e7, C22128a.m8728C("Exception: "), f7958a);
                return bArr2;
            }
        }
    }

    /* renamed from: b */
    private static PublicKey m37071b(String str, boolean z) {
        if (!m37072b(str)) {
            m37074a(str, z);
        }
        Certificate m37070c = m37070c(str);
        if (m37070c != null) {
            return m37070c.getPublicKey();
        }
        return null;
    }

    /* renamed from: b */
    private static boolean m37072b(String str) {
        boolean z = false;
        try {
            KeyStore keyStore = KeyStore.getInstance(f7959b);
            keyStore.load(null);
            if (keyStore.getKey(str, null) != null) {
                z = true;
            }
            return z;
        } catch (IOException e) {
            String str2 = f7958a;
            StringBuilder m8728C = C22128a.m8728C("IOException: ");
            m8728C.append(e.getMessage());
            C2480b.m37037b(str2, m8728C.toString());
            return false;
        } catch (KeyStoreException e2) {
            String str3 = f7958a;
            StringBuilder m8728C2 = C22128a.m8728C("KeyStoreException: ");
            m8728C2.append(e2.getMessage());
            C2480b.m37037b(str3, m8728C2.toString());
            return false;
        } catch (NoSuchAlgorithmException e3) {
            String str4 = f7958a;
            StringBuilder m8728C3 = C22128a.m8728C("NoSuchAlgorithmException: ");
            m8728C3.append(e3.getMessage());
            C2480b.m37037b(str4, m8728C3.toString());
            return false;
        } catch (UnrecoverableKeyException e4) {
            String str5 = f7958a;
            StringBuilder m8728C4 = C22128a.m8728C("UnrecoverableKeyException: ");
            m8728C4.append(e4.getMessage());
            C2480b.m37037b(str5, m8728C4.toString());
            return false;
        } catch (CertificateException e5) {
            String str6 = f7958a;
            StringBuilder m8728C5 = C22128a.m8728C("CertificateException: ");
            m8728C5.append(e5.getMessage());
            C2480b.m37037b(str6, m8728C5.toString());
            return false;
        } catch (Exception e6) {
            C22128a.m8727C0(e6, C22128a.m8728C("Exception: "), f7958a);
            return false;
        }
    }

    /* renamed from: c */
    private static Certificate m37070c(String str) {
        Certificate certificate;
        try {
            KeyStore keyStore = KeyStore.getInstance(f7959b);
            keyStore.load(null);
            certificate = keyStore.getCertificate(str);
        } catch (IOException e) {
            String str2 = f7958a;
            StringBuilder m8728C = C22128a.m8728C("IOException: ");
            m8728C.append(e.getMessage());
            C2480b.m37037b(str2, m8728C.toString());
            certificate = null;
        } catch (KeyStoreException e2) {
            String str3 = f7958a;
            StringBuilder m8728C2 = C22128a.m8728C("KeyStoreException: ");
            m8728C2.append(e2.getMessage());
            C2480b.m37037b(str3, m8728C2.toString());
            certificate = null;
        } catch (NoSuchAlgorithmException e3) {
            String str4 = f7958a;
            StringBuilder m8728C3 = C22128a.m8728C("NoSuchAlgorithmException: ");
            m8728C3.append(e3.getMessage());
            C2480b.m37037b(str4, m8728C3.toString());
            certificate = null;
        } catch (CertificateException e4) {
            String str5 = f7958a;
            StringBuilder m8728C4 = C22128a.m8728C("CertificateException: ");
            m8728C4.append(e4.getMessage());
            C2480b.m37037b(str5, m8728C4.toString());
            certificate = null;
        } catch (Exception e5) {
            C22128a.m8727C0(e5, C22128a.m8728C("Exception: "), f7958a);
            certificate = null;
        }
        return certificate;
    }

    @Deprecated
    public static String decrpyt(String str, String str2) {
        try {
            return new String(decrpyt(str, Base64.decode(str2, 0)), StringConstant.UTF8);
        } catch (UnsupportedEncodingException e) {
            String str3 = f7958a;
            StringBuilder m8728C = C22128a.m8728C("UnsupportedEncodingException: ");
            m8728C.append(e.getMessage());
            C2480b.m37037b(str3, m8728C.toString());
            return "";
        } catch (Exception e2) {
            C22128a.m8727C0(e2, C22128a.m8728C("Exception: "), f7958a);
            return "";
        }
    }

    @Deprecated
    public static byte[] decrpyt(String str, byte[] bArr) {
        byte[] bArr2 = new byte[0];
        if (TextUtils.isEmpty(str) || bArr == null) {
            C2480b.m37037b(f7958a, "alias or encrypted content is null");
            return bArr2;
        } else if (!m37076a()) {
            C2480b.m37037b(f7958a, "sdk version is too low");
            return bArr2;
        } else {
            PrivateKey m37075a = m37075a(str);
            if (m37075a == null) {
                C2480b.m37037b(f7958a, "Private key is null");
                return bArr2;
            }
            try {
                Cipher cipher = Cipher.getInstance(f7960c);
                cipher.init(2, m37075a, new OAEPParameterSpec("SHA-256", "MGF1", new MGF1ParameterSpec("SHA-1"), PSource.PSpecified.DEFAULT));
                return cipher.doFinal(bArr);
            } catch (InvalidAlgorithmParameterException e) {
                String str2 = f7958a;
                StringBuilder m8728C = C22128a.m8728C("InvalidAlgorithmParameterException: ");
                m8728C.append(e.getMessage());
                C2480b.m37037b(str2, m8728C.toString());
                return bArr2;
            } catch (InvalidKeyException e2) {
                String str3 = f7958a;
                StringBuilder m8728C2 = C22128a.m8728C("InvalidKeyException: ");
                m8728C2.append(e2.getMessage());
                C2480b.m37037b(str3, m8728C2.toString());
                return bArr2;
            } catch (NoSuchAlgorithmException e3) {
                String str4 = f7958a;
                StringBuilder m8728C3 = C22128a.m8728C("NoSuchAlgorithmException: ");
                m8728C3.append(e3.getMessage());
                C2480b.m37037b(str4, m8728C3.toString());
                return bArr2;
            } catch (BadPaddingException e4) {
                String str5 = f7958a;
                StringBuilder m8728C4 = C22128a.m8728C("BadPaddingException: ");
                m8728C4.append(e4.getMessage());
                C2480b.m37037b(str5, m8728C4.toString());
                return bArr2;
            } catch (IllegalBlockSizeException e5) {
                String str6 = f7958a;
                StringBuilder m8728C5 = C22128a.m8728C("IllegalBlockSizeException: ");
                m8728C5.append(e5.getMessage());
                C2480b.m37037b(str6, m8728C5.toString());
                return bArr2;
            } catch (NoSuchPaddingException e6) {
                String str7 = f7958a;
                StringBuilder m8728C6 = C22128a.m8728C("NoSuchPaddingException: ");
                m8728C6.append(e6.getMessage());
                C2480b.m37037b(str7, m8728C6.toString());
                return bArr2;
            } catch (Exception e7) {
                C22128a.m8727C0(e7, C22128a.m8728C("Exception: "), f7958a);
                return bArr2;
            }
        }
    }

    public static String decrpytNew(String str, String str2) {
        try {
            return new String(decrpytNew(str, Base64.decode(str2, 0)), StringConstant.UTF8);
        } catch (UnsupportedEncodingException e) {
            String str3 = f7958a;
            StringBuilder m8728C = C22128a.m8728C("UnsupportedEncodingException: ");
            m8728C.append(e.getMessage());
            C2480b.m37037b(str3, m8728C.toString());
            return "";
        } catch (Exception e2) {
            C22128a.m8727C0(e2, C22128a.m8728C("Exception: "), f7958a);
            return "";
        }
    }

    public static byte[] decrpytNew(String str, byte[] bArr) {
        return decrpyt(str, bArr);
    }

    @Deprecated
    public static String encrypt(String str, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            try {
                return Base64.encodeToString(encrypt(str, str2.getBytes(StringConstant.UTF8)), 0);
            } catch (UnsupportedEncodingException e) {
                String str3 = f7958a;
                StringBuilder m8728C = C22128a.m8728C("UnsupportedEncodingException: ");
                m8728C.append(e.getMessage());
                C2480b.m37037b(str3, m8728C.toString());
                return "";
            }
        }
        return "";
    }

    @Deprecated
    public static byte[] encrypt(String str, byte[] bArr) {
        return m37073a(str, bArr, false);
    }

    public static String encryptNew(String str, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            try {
                return Base64.encodeToString(encryptNew(str, str2.getBytes(StringConstant.UTF8)), 0);
            } catch (UnsupportedEncodingException e) {
                String str3 = f7958a;
                StringBuilder m8728C = C22128a.m8728C("UnsupportedEncodingException: ");
                m8728C.append(e.getMessage());
                C2480b.m37037b(str3, m8728C.toString());
                return "";
            }
        }
        return "";
    }

    public static byte[] encryptNew(String str, byte[] bArr) {
        return m37073a(str, bArr, true);
    }
}
