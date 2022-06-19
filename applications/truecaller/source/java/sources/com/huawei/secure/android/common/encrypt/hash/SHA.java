package com.huawei.secure.android.common.encrypt.hash;

import android.text.TextUtils;
import com.huawei.secure.android.common.encrypt.utils.C2480b;
import com.huawei.secure.android.common.encrypt.utils.HexUtil;
import com.tenor.android.core.constant.StringConstant;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/encrypt/hash/SHA.class */
public final class SHA {

    /* renamed from: a */
    private static final String f7940a = "SHA";

    /* renamed from: c */
    private static final String f7942c = "";

    /* renamed from: b */
    private static final String f7941b = "SHA-256";

    /* renamed from: d */
    private static final String[] f7943d = {f7941b, "SHA-384", "SHA-512"};

    private SHA() {
    }

    /* renamed from: a */
    private static boolean m37083a(String str) {
        for (String str2 : f7943d) {
            if (str2.equals(str)) {
                return true;
            }
        }
        return false;
    }

    public static String sha256Encrypt(String str) {
        return shaEncrypt(str, f7941b);
    }

    public static String shaEncrypt(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            C2480b.m37037b(f7940a, "content or algorithm is null.");
            return "";
        } else if (!m37083a(str2)) {
            C2480b.m37037b(f7940a, "algorithm is not safe or legal");
            return "";
        } else {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance(str2);
                messageDigest.update(str.getBytes(StringConstant.UTF8));
                return HexUtil.byteArray2HexStr(messageDigest.digest());
            } catch (UnsupportedEncodingException e) {
                C2480b.m37037b(f7940a, "Error in generate SHA UnsupportedEncodingException");
                return "";
            } catch (NoSuchAlgorithmException e2) {
                C2480b.m37037b(f7940a, "Error in generate SHA NoSuchAlgorithmException");
                return "";
            }
        }
    }

    public static boolean validateSHA(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || TextUtils.isEmpty(str3)) {
            return false;
        }
        return str2.equals(shaEncrypt(str, str3));
    }

    public static boolean validateSHA256(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        return str2.equals(sha256Encrypt(str));
    }
}
