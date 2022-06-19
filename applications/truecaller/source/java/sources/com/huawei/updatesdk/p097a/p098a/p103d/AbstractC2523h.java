package com.huawei.updatesdk.p097a.p098a.p103d;

import android.text.TextUtils;
import com.huawei.updatesdk.p097a.p098a.p100c.p101a.p102a.C2515a;
import com.tenor.android.core.constant.StringConstant;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.IllegalFormatException;
import java.util.Locale;
/* renamed from: com.huawei.updatesdk.a.a.d.h */
/* loaded from: classes3-dex2jar.jar:com/huawei/updatesdk/a/a/d/h.class */
public abstract class AbstractC2523h {
    /* renamed from: a */
    public static String m36818a(String str) {
        if (str == null) {
            return null;
        }
        try {
            return URLEncoder.encode(str, StringConstant.UTF8).replace("+", "%20").replace("*", "%2A").replace("~", "%7E");
        } catch (UnsupportedEncodingException e) {
            C2515a.m36848a("StringUtils", "encode2utf8 error", e);
            return null;
        }
    }

    /* renamed from: a */
    public static String m36817a(byte[] bArr) {
        String str;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            messageDigest.update(bArr);
            StringBuilder sb = new StringBuilder(256);
            for (byte b : messageDigest.digest()) {
                sb.append(String.format(Locale.ENGLISH, "%02X", Byte.valueOf(b)));
            }
            return sb.toString();
        } catch (NoSuchAlgorithmException e) {
            str = "sha256EncryptStr error:NoSuchAlgorithmException";
            C2515a.m36847b("StringUtils", str);
            return null;
        } catch (IllegalFormatException e2) {
            str = "sha256EncryptStr error:IllegalFormatException";
            C2515a.m36847b("StringUtils", str);
            return null;
        } catch (Exception e3) {
            str = "sha256EncryptStr error:Exception";
            C2515a.m36847b("StringUtils", str);
            return null;
        }
    }

    /* renamed from: b */
    public static String m36816b(String str) {
        String m36813e = m36813e(str);
        return m36813e == null ? null : m36813e.toLowerCase(Locale.getDefault());
    }

    /* renamed from: c */
    public static byte[] m36815c(String str) {
        char[] charArray = str.toCharArray();
        int length = charArray.length / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            int digit = Character.digit(charArray[i2 + 1], 16) | (Character.digit(charArray[i2], 16) << 4);
            int i3 = digit;
            if (digit > 127) {
                i3 = digit - 256;
            }
            bArr[i] = Byte.valueOf(String.valueOf(i3)).byteValue();
        }
        return bArr;
    }

    /* renamed from: d */
    public static boolean m36814d(String str) {
        return str != null && str.trim().startsWith("{") && str.trim().endsWith("}");
    }

    /* renamed from: e */
    public static String m36813e(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return m36817a(str.getBytes(StringConstant.UTF8));
        } catch (UnsupportedEncodingException e) {
            C2515a.m36847b("StringUtils", "can not getBytes");
            return null;
        }
    }
}
