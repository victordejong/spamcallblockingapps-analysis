package com.huawei.hms.hatool;

import com.huawei.secure.android.common.encrypt.utils.HexUtil;
import com.tenor.android.core.constant.StringConstant;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
/* renamed from: com.huawei.hms.hatool.e */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/hatool/e.class */
public class C2355e {
    static {
        Charset.forName(StringConstant.UTF8);
    }

    /* renamed from: a */
    public static String m37730a(String str, String str2) {
        try {
            return m37729a(str, str2.getBytes(StringConstant.UTF8));
        } catch (UnsupportedEncodingException e) {
            C2398y.m37473c("hmsSdk", "Unsupported encoding exception,utf-8");
            return "";
        }
    }

    /* renamed from: a */
    public static String m37729a(String str, byte[] bArr) {
        String str2;
        if (bArr == null || bArr.length == 0) {
            C2398y.m37469f("hmsSdk", "encrypt: content is empty or null");
            return "";
        }
        try {
            return HexUtil.byteArray2HexStr(m37727a(bArr, m37728a(HexUtil.hexStr2ByteArray(str))));
        } catch (NoSuchAlgorithmException e) {
            str2 = "encrypt(): getInstance - No such algorithm,transformation";
            C2398y.m37469f("hmsSdk", str2);
            return "";
        } catch (InvalidKeySpecException e2) {
            str2 = "encrypt(): Invalid key specification";
            C2398y.m37469f("hmsSdk", str2);
            return "";
        }
    }

    /* renamed from: a */
    public static PublicKey m37728a(byte[] bArr) {
        return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(bArr));
    }

    /* renamed from: a */
    public static byte[] m37727a(byte[] bArr, PublicKey publicKey) {
        String str;
        try {
            if (publicKey == null) {
                throw new UnsupportedEncodingException("The loaded public key is null");
            }
            Cipher cipher = Cipher.getInstance("RSA/ECB/OAEPWITHSHA-1ANDMGF1PADDING");
            cipher.init(1, publicKey);
            return cipher.doFinal(bArr);
        } catch (UnsupportedEncodingException e) {
            str = "rsaEncrypt(): getBytes - Unsupported coding format!";
            C2398y.m37469f("hmsSdk", str);
            return new byte[0];
        } catch (InvalidKeyException e2) {
            str = "rsaEncrypt(): init - Invalid key!";
            C2398y.m37469f("hmsSdk", str);
            return new byte[0];
        } catch (NoSuchAlgorithmException e3) {
            str = "rsaEncrypt(): getInstance - No such algorithm,transformation";
            C2398y.m37469f("hmsSdk", str);
            return new byte[0];
        } catch (BadPaddingException e4) {
            str = "rsaEncrypt():False filling parameters!";
            C2398y.m37469f("hmsSdk", str);
            return new byte[0];
        } catch (IllegalBlockSizeException e5) {
            str = "rsaEncrypt(): doFinal - The provided block is not filled with";
            C2398y.m37469f("hmsSdk", str);
            return new byte[0];
        } catch (NoSuchPaddingException e6) {
            str = "rsaEncrypt():  No such filling parameters ";
            C2398y.m37469f("hmsSdk", str);
            return new byte[0];
        }
    }
}
