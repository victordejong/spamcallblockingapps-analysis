package com.huawei.secure.android.common.encrypt.hash;

import android.text.TextUtils;
import com.huawei.secure.android.common.encrypt.utils.C2480b;
import com.huawei.secure.android.common.encrypt.utils.HexUtil;
import com.tenor.android.core.constant.StringConstant;
import java.io.UnsupportedEncodingException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/encrypt/hash/HMACSHA256.class */
public abstract class HMACSHA256 {

    /* renamed from: a */
    private static final String f7927a = "HMACSHA256";

    /* renamed from: b */
    private static final String f7928b = "HmacSHA256";

    /* renamed from: c */
    private static final String f7929c = "";

    /* renamed from: d */
    private static final int f7930d = 32;

    public static String hmacSHA256Encrypt(String str, String str2) {
        return (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) ? "" : hmacSHA256Encrypt(str, HexUtil.hexStr2ByteArray(str2));
    }

    public static String hmacSHA256Encrypt(String str, byte[] bArr) {
        if (TextUtils.isEmpty(str) || bArr == null) {
            return "";
        }
        if (bArr.length < 32) {
            C2480b.m37037b(f7927a, "hmac key length is not right");
            return "";
        }
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, f7928b);
            Mac mac = Mac.getInstance(secretKeySpec.getAlgorithm());
            mac.init(secretKeySpec);
            return HexUtil.byteArray2HexStr(mac.doFinal(str.getBytes(StringConstant.UTF8)));
        } catch (UnsupportedEncodingException | InvalidKeyException | NoSuchAlgorithmException e) {
            C22128a.m8727C0(e, C22128a.m8728C("hmacsha256 encrypt exception"), f7927a);
            return "";
        }
    }
}
