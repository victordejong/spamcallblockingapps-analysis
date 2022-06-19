package com.huawei.secure.android.common.encrypt.keystore.aes;

import android.security.keystore.KeyGenParameterSpec;
import android.text.TextUtils;
import com.huawei.secure.android.common.encrypt.utils.C2480b;
import com.huawei.secure.android.common.encrypt.utils.HexUtil;
import com.tenor.android.core.constant.StringConstant;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.KeyStore;
import java.security.KeyStoreException;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.UnrecoverableKeyException;
import java.security.cert.CertificateException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.KeyGenerator;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.spec.IvParameterSpec;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/encrypt/keystore/aes/AesCbcKS.class */
public class AesCbcKS {

    /* renamed from: a */
    private static final String f7944a = "AesCbcKS";

    /* renamed from: b */
    private static final String f7945b = "AndroidKeyStore";

    /* renamed from: c */
    private static final String f7946c = "AES/CBC/PKCS7Padding";

    /* renamed from: d */
    private static final String f7947d = "";

    /* renamed from: e */
    private static final int f7948e = 16;

    /* renamed from: f */
    private static final int f7949f = 256;

    /* renamed from: g */
    private static Map<String, SecretKey> f7950g = new HashMap();

    /* renamed from: a */
    private static SecretKey m37081a(String str) {
        SecretKey secretKey;
        synchronized (AesCbcKS.class) {
            try {
                String str2 = f7944a;
                C2480b.m37036c(str2, "load key");
                secretKey = null;
                try {
                    try {
                        try {
                            try {
                                KeyStore keyStore = KeyStore.getInstance(f7945b);
                                keyStore.load(null);
                                Key key = keyStore.getKey(str, null);
                                if (key == null || !(key instanceof SecretKey)) {
                                    C2480b.m37036c(str2, "generate key");
                                    KeyGenerator keyGenerator = KeyGenerator.getInstance("AES", f7945b);
                                    keyGenerator.init(new KeyGenParameterSpec.Builder(str, 3).setBlockModes("CBC").setEncryptionPaddings("PKCS7Padding").setKeySize(256).build());
                                    secretKey = keyGenerator.generateKey();
                                } else {
                                    secretKey = (SecretKey) key;
                                }
                            } catch (IOException e) {
                                C2480b.m37037b(f7944a, "IOException: " + e.getMessage());
                            } catch (KeyStoreException e2) {
                                C2480b.m37037b(f7944a, "KeyStoreException: " + e2.getMessage());
                            }
                        } catch (InvalidAlgorithmParameterException e3) {
                            C2480b.m37037b(f7944a, "InvalidAlgorithmParameterException: " + e3.getMessage());
                        } catch (NoSuchProviderException e4) {
                            C2480b.m37037b(f7944a, "NoSuchProviderException: " + e4.getMessage());
                        }
                    } catch (CertificateException e5) {
                        C2480b.m37037b(f7944a, "CertificateException: " + e5.getMessage());
                    } catch (Exception e6) {
                        C2480b.m37037b(f7944a, "Exception: " + e6.getMessage());
                    }
                } catch (NoSuchAlgorithmException e7) {
                    C2480b.m37037b(f7944a, "NoSuchAlgorithmException: " + e7.getMessage());
                } catch (UnrecoverableKeyException e8) {
                    C2480b.m37037b(f7944a, "UnrecoverableKeyException: " + e8.getMessage());
                }
                f7950g.put(str, secretKey);
            } catch (Throwable th) {
                throw th;
            }
        }
        return secretKey;
    }

    /* renamed from: a */
    private static boolean m37082a() {
        return true;
    }

    /* renamed from: b */
    private static SecretKey m37080b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (f7950g.get(str) == null) {
            m37081a(str);
        }
        return f7950g.get(str);
    }

    public static String decrypt(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            C2480b.m37037b(f7944a, "alias or encrypt content is null");
            return "";
        }
        try {
            return new String(decrypt(str, HexUtil.hexStr2ByteArray(str2)), StringConstant.UTF8);
        } catch (UnsupportedEncodingException e) {
            C2480b.m37037b(f7944a, "encrypt: UnsupportedEncodingException");
            return "";
        }
    }

    public static byte[] decrypt(String str, byte[] bArr) {
        byte[] bArr2 = new byte[0];
        if (TextUtils.isEmpty(str) || bArr == null) {
            C2480b.m37037b(f7944a, "alias or encrypt content is null");
            return bArr2;
        } else if (!m37082a()) {
            C2480b.m37037b(f7944a, "sdk version is too low");
            return bArr2;
        } else if (bArr.length <= 16) {
            C2480b.m37037b(f7944a, "Decrypt source data is invalid.");
            return bArr2;
        } else {
            SecretKey m37080b = m37080b(str);
            if (m37080b == null) {
                C2480b.m37037b(f7944a, "decrypt secret key is null");
                return bArr2;
            }
            byte[] copyOf = Arrays.copyOf(bArr, 16);
            try {
                Cipher cipher = Cipher.getInstance(f7946c);
                cipher.init(2, m37080b, new IvParameterSpec(copyOf));
                return cipher.doFinal(bArr, 16, bArr.length - 16);
            } catch (InvalidAlgorithmParameterException e) {
                String str2 = f7944a;
                StringBuilder m8728C = C22128a.m8728C("InvalidAlgorithmParameterException: ");
                m8728C.append(e.getMessage());
                C2480b.m37037b(str2, m8728C.toString());
                return bArr2;
            } catch (InvalidKeyException e2) {
                String str3 = f7944a;
                StringBuilder m8728C2 = C22128a.m8728C("InvalidKeyException: ");
                m8728C2.append(e2.getMessage());
                C2480b.m37037b(str3, m8728C2.toString());
                return bArr2;
            } catch (NoSuchAlgorithmException e3) {
                String str4 = f7944a;
                StringBuilder m8728C3 = C22128a.m8728C("NoSuchAlgorithmException: ");
                m8728C3.append(e3.getMessage());
                C2480b.m37037b(str4, m8728C3.toString());
                return bArr2;
            } catch (BadPaddingException e4) {
                String str5 = f7944a;
                StringBuilder m8728C4 = C22128a.m8728C("BadPaddingException: ");
                m8728C4.append(e4.getMessage());
                C2480b.m37037b(str5, m8728C4.toString());
                return bArr2;
            } catch (IllegalBlockSizeException e5) {
                String str6 = f7944a;
                StringBuilder m8728C5 = C22128a.m8728C("IllegalBlockSizeException: ");
                m8728C5.append(e5.getMessage());
                C2480b.m37037b(str6, m8728C5.toString());
                return bArr2;
            } catch (NoSuchPaddingException e6) {
                String str7 = f7944a;
                StringBuilder m8728C6 = C22128a.m8728C("NoSuchPaddingException: ");
                m8728C6.append(e6.getMessage());
                C2480b.m37037b(str7, m8728C6.toString());
                return bArr2;
            } catch (Exception e7) {
                C22128a.m8727C0(e7, C22128a.m8728C("Exception: "), f7944a);
                return bArr2;
            }
        }
    }

    public static String encrypt(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            C2480b.m37037b(f7944a, "encrypt: content is null");
            return "";
        }
        try {
            return HexUtil.byteArray2HexStr(encrypt(str, str2.getBytes(StringConstant.UTF8)));
        } catch (UnsupportedEncodingException e) {
            C2480b.m37037b(f7944a, "encrypt: UnsupportedEncodingException");
            return "";
        }
    }

    public static byte[] encrypt(String str, byte[] bArr) {
        byte[] bArr2;
        Cipher cipher;
        SecretKey m37080b;
        byte[] bArr3 = new byte[0];
        if (TextUtils.isEmpty(str) || bArr == null) {
            C2480b.m37037b(f7944a, "alias or encrypt content is null");
            return bArr3;
        } else if (!m37082a()) {
            C2480b.m37037b(f7944a, "sdk version is too low");
            return bArr3;
        } else {
            try {
                cipher = Cipher.getInstance(f7946c);
                m37080b = m37080b(str);
            } catch (InvalidKeyException e) {
                String str2 = f7944a;
                StringBuilder m8728C = C22128a.m8728C("InvalidKeyException: ");
                m8728C.append(e.getMessage());
                C2480b.m37037b(str2, m8728C.toString());
                bArr2 = bArr3;
            } catch (NoSuchAlgorithmException e2) {
                String str3 = f7944a;
                StringBuilder m8728C2 = C22128a.m8728C("NoSuchAlgorithmException: ");
                m8728C2.append(e2.getMessage());
                C2480b.m37037b(str3, m8728C2.toString());
                bArr2 = bArr3;
            } catch (BadPaddingException e3) {
                String str4 = f7944a;
                StringBuilder m8728C3 = C22128a.m8728C("BadPaddingException: ");
                m8728C3.append(e3.getMessage());
                C2480b.m37037b(str4, m8728C3.toString());
                bArr2 = bArr3;
            } catch (IllegalBlockSizeException e4) {
                String str5 = f7944a;
                StringBuilder m8728C4 = C22128a.m8728C("IllegalBlockSizeException: ");
                m8728C4.append(e4.getMessage());
                C2480b.m37037b(str5, m8728C4.toString());
                bArr2 = bArr3;
            } catch (NoSuchPaddingException e5) {
                String str6 = f7944a;
                StringBuilder m8728C5 = C22128a.m8728C("NoSuchPaddingException: ");
                m8728C5.append(e5.getMessage());
                C2480b.m37037b(str6, m8728C5.toString());
                bArr2 = bArr3;
            } catch (Exception e6) {
                C22128a.m8727C0(e6, C22128a.m8728C("Exception: "), f7944a);
                bArr2 = bArr3;
            }
            if (m37080b == null) {
                C2480b.m37037b(f7944a, "encrypt secret key is null");
                return bArr3;
            }
            cipher.init(1, m37080b);
            byte[] doFinal = cipher.doFinal(bArr);
            byte[] iv = cipher.getIV();
            if (iv != null && iv.length == 16) {
                bArr2 = Arrays.copyOf(iv, iv.length + doFinal.length);
                System.arraycopy(doFinal, 0, bArr2, iv.length, doFinal.length);
                return bArr2;
            }
            C2480b.m37037b(f7944a, "IV is invalid.");
            return bArr3;
        }
    }
}
