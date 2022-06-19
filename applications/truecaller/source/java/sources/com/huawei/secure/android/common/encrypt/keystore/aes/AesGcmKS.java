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
import javax.crypto.spec.GCMParameterSpec;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/encrypt/keystore/aes/AesGcmKS.class */
public class AesGcmKS {

    /* renamed from: a */
    private static final String f7951a = "AesGcmKS";

    /* renamed from: b */
    private static final String f7952b = "AndroidKeyStore";

    /* renamed from: c */
    private static final String f7953c = "AES/GCM/NoPadding";

    /* renamed from: d */
    private static final String f7954d = "";

    /* renamed from: e */
    private static final int f7955e = 12;

    /* renamed from: f */
    private static final int f7956f = 256;

    /* renamed from: g */
    private static Map<String, SecretKey> f7957g = new HashMap();

    /* renamed from: a */
    private static SecretKey m37078a(String str) {
        SecretKey secretKey;
        synchronized (AesGcmKS.class) {
            try {
                String str2 = f7951a;
                C2480b.m37036c(str2, "load key");
                secretKey = null;
                try {
                    try {
                        try {
                            try {
                                KeyStore keyStore = KeyStore.getInstance(f7952b);
                                keyStore.load(null);
                                Key key = keyStore.getKey(str, null);
                                if (key instanceof SecretKey) {
                                    secretKey = (SecretKey) key;
                                } else {
                                    C2480b.m37036c(str2, "generate key");
                                    KeyGenerator keyGenerator = KeyGenerator.getInstance("AES", f7952b);
                                    keyGenerator.init(new KeyGenParameterSpec.Builder(str, 3).setBlockModes("GCM").setEncryptionPaddings("NoPadding").setKeySize(256).build());
                                    secretKey = keyGenerator.generateKey();
                                }
                            } catch (IOException e) {
                                C2480b.m37037b(f7951a, "IOException : " + e.getMessage());
                            } catch (KeyStoreException e2) {
                                C2480b.m37037b(f7951a, "KeyStoreException : " + e2.getMessage());
                            }
                        } catch (InvalidAlgorithmParameterException e3) {
                            C2480b.m37037b(f7951a, "InvalidAlgorithmParameterException : " + e3.getMessage());
                        } catch (NoSuchAlgorithmException e4) {
                            C2480b.m37037b(f7951a, "NoSuchAlgorithmException : " + e4.getMessage());
                        }
                    } catch (NoSuchProviderException e5) {
                        C2480b.m37037b(f7951a, "NoSuchProviderException : " + e5.getMessage());
                    } catch (Exception e6) {
                        C2480b.m37037b(f7951a, "Exception: " + e6.getMessage());
                    }
                } catch (UnrecoverableKeyException e7) {
                    C2480b.m37037b(f7951a, "UnrecoverableKeyException : " + e7.getMessage());
                } catch (CertificateException e8) {
                    C2480b.m37037b(f7951a, "CertificateException : " + e8.getMessage());
                }
                f7957g.put(str, secretKey);
            } catch (Throwable th) {
                throw th;
            }
        }
        return secretKey;
    }

    /* renamed from: a */
    private static boolean m37079a() {
        return true;
    }

    /* renamed from: b */
    private static SecretKey m37077b(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (f7957g.get(str) == null) {
            m37078a(str);
        }
        return f7957g.get(str);
    }

    public static String decrypt(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            C2480b.m37037b(f7951a, "alias or encrypt content is null");
            return "";
        }
        try {
            return new String(decrypt(str, HexUtil.hexStr2ByteArray(str2)), StringConstant.UTF8);
        } catch (UnsupportedEncodingException e) {
            String str3 = f7951a;
            StringBuilder m8728C = C22128a.m8728C("decrypt: UnsupportedEncodingException : ");
            m8728C.append(e.getMessage());
            C2480b.m37037b(str3, m8728C.toString());
            return "";
        }
    }

    public static byte[] decrypt(String str, byte[] bArr) {
        byte[] bArr2 = new byte[0];
        if (TextUtils.isEmpty(str) || bArr == null) {
            C2480b.m37037b(f7951a, "alias or encrypt content is null");
            return bArr2;
        } else if (!m37079a()) {
            C2480b.m37037b(f7951a, "sdk version is too low");
            return bArr2;
        } else if (bArr.length > 12) {
            return decrypt(m37077b(str), bArr);
        } else {
            C2480b.m37037b(f7951a, "Decrypt source data is invalid.");
            return bArr2;
        }
    }

    public static byte[] decrypt(SecretKey secretKey, byte[] bArr) {
        byte[] bArr2;
        byte[] bArr3 = new byte[0];
        if (secretKey == null) {
            C2480b.m37037b(f7951a, "Decrypt secret key is null");
            return bArr3;
        } else if (bArr == null) {
            C2480b.m37037b(f7951a, "content is null");
            return bArr3;
        } else if (!m37079a()) {
            C2480b.m37037b(f7951a, "sdk version is too low");
            return bArr3;
        } else if (bArr.length <= 12) {
            C2480b.m37037b(f7951a, "Decrypt source data is invalid.");
            return bArr3;
        } else {
            byte[] copyOf = Arrays.copyOf(bArr, 12);
            try {
                Cipher cipher = Cipher.getInstance(f7953c);
                cipher.init(2, secretKey, new GCMParameterSpec(128, copyOf));
                bArr2 = cipher.doFinal(bArr, 12, bArr.length - 12);
            } catch (InvalidAlgorithmParameterException e) {
                String str = f7951a;
                StringBuilder m8728C = C22128a.m8728C("InvalidAlgorithmParameterException : ");
                m8728C.append(e.getMessage());
                C2480b.m37037b(str, m8728C.toString());
                bArr2 = bArr3;
            } catch (InvalidKeyException e2) {
                String str2 = f7951a;
                StringBuilder m8728C2 = C22128a.m8728C("InvalidKeyException : ");
                m8728C2.append(e2.getMessage());
                C2480b.m37037b(str2, m8728C2.toString());
                bArr2 = bArr3;
            } catch (NoSuchAlgorithmException e3) {
                String str3 = f7951a;
                StringBuilder m8728C3 = C22128a.m8728C("NoSuchAlgorithmException : ");
                m8728C3.append(e3.getMessage());
                C2480b.m37037b(str3, m8728C3.toString());
                bArr2 = bArr3;
            } catch (BadPaddingException e4) {
                String str4 = f7951a;
                StringBuilder m8728C4 = C22128a.m8728C("BadPaddingException : ");
                m8728C4.append(e4.getMessage());
                C2480b.m37037b(str4, m8728C4.toString());
                bArr2 = bArr3;
            } catch (IllegalBlockSizeException e5) {
                String str5 = f7951a;
                StringBuilder m8728C5 = C22128a.m8728C("IllegalBlockSizeException : ");
                m8728C5.append(e5.getMessage());
                C2480b.m37037b(str5, m8728C5.toString());
                bArr2 = bArr3;
            } catch (NoSuchPaddingException e6) {
                String str6 = f7951a;
                StringBuilder m8728C6 = C22128a.m8728C("NoSuchPaddingException : ");
                m8728C6.append(e6.getMessage());
                C2480b.m37037b(str6, m8728C6.toString());
                bArr2 = bArr3;
            } catch (Exception e7) {
                C22128a.m8727C0(e7, C22128a.m8728C("Exception: "), f7951a);
                bArr2 = bArr3;
            }
            return bArr2;
        }
    }

    public static String encrypt(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            C2480b.m37037b(f7951a, "alias or encrypt content is null");
            return "";
        }
        try {
            return HexUtil.byteArray2HexStr(encrypt(str, str2.getBytes(StringConstant.UTF8)));
        } catch (UnsupportedEncodingException e) {
            String str3 = f7951a;
            StringBuilder m8728C = C22128a.m8728C("encrypt: UnsupportedEncodingException : ");
            m8728C.append(e.getMessage());
            C2480b.m37037b(str3, m8728C.toString());
            return "";
        }
    }

    public static byte[] encrypt(String str, byte[] bArr) {
        byte[] bArr2 = new byte[0];
        if (TextUtils.isEmpty(str) || bArr == null) {
            C2480b.m37037b(f7951a, "alias or encrypt content is null");
            return bArr2;
        } else if (m37079a()) {
            return encrypt(m37077b(str), bArr);
        } else {
            C2480b.m37037b(f7951a, "sdk version is too low");
            return bArr2;
        }
    }

    public static byte[] encrypt(SecretKey secretKey, byte[] bArr) {
        byte[] bArr2;
        byte[] doFinal;
        byte[] iv;
        byte[] bArr3 = new byte[0];
        if (bArr == null) {
            C2480b.m37037b(f7951a, "content is null");
            return bArr3;
        } else if (secretKey == null) {
            C2480b.m37037b(f7951a, "secret key is null");
            return bArr3;
        } else if (!m37079a()) {
            C2480b.m37037b(f7951a, "sdk version is too low");
            return bArr3;
        } else {
            try {
                Cipher cipher = Cipher.getInstance(f7953c);
                cipher.init(1, secretKey);
                doFinal = cipher.doFinal(bArr);
                iv = cipher.getIV();
            } catch (InvalidKeyException e) {
                String str = f7951a;
                StringBuilder m8728C = C22128a.m8728C("InvalidKeyException : ");
                m8728C.append(e.getMessage());
                C2480b.m37037b(str, m8728C.toString());
                bArr2 = bArr3;
            } catch (NoSuchAlgorithmException e2) {
                String str2 = f7951a;
                StringBuilder m8728C2 = C22128a.m8728C("NoSuchAlgorithmException : ");
                m8728C2.append(e2.getMessage());
                C2480b.m37037b(str2, m8728C2.toString());
                bArr2 = bArr3;
            } catch (BadPaddingException e3) {
                String str3 = f7951a;
                StringBuilder m8728C3 = C22128a.m8728C("BadPaddingException : ");
                m8728C3.append(e3.getMessage());
                C2480b.m37037b(str3, m8728C3.toString());
                bArr2 = bArr3;
            } catch (IllegalBlockSizeException e4) {
                String str4 = f7951a;
                StringBuilder m8728C4 = C22128a.m8728C("IllegalBlockSizeException : ");
                m8728C4.append(e4.getMessage());
                C2480b.m37037b(str4, m8728C4.toString());
                bArr2 = bArr3;
            } catch (NoSuchPaddingException e5) {
                String str5 = f7951a;
                StringBuilder m8728C5 = C22128a.m8728C("NoSuchPaddingException : ");
                m8728C5.append(e5.getMessage());
                C2480b.m37037b(str5, m8728C5.toString());
                bArr2 = bArr3;
            } catch (Exception e6) {
                C22128a.m8727C0(e6, C22128a.m8728C("Exception: "), f7951a);
                bArr2 = bArr3;
            }
            if (iv != null && iv.length == 12) {
                bArr2 = Arrays.copyOf(iv, iv.length + doFinal.length);
                System.arraycopy(doFinal, 0, bArr2, iv.length, doFinal.length);
                return bArr2;
            }
            C2480b.m37037b(f7951a, "IV is invalid.");
            return bArr3;
        }
    }
}
