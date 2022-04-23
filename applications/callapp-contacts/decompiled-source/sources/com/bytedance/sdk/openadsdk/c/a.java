package com.bytedance.sdk.openadsdk.c;

import android.text.TextUtils;
import android.util.Base64;
import com.bytedance.sdk.openadsdk.utils.q;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/c/a.class */
public class a {
    @Deprecated
    public static String a(String str, String str2) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            byte[] decode = Base64.decode(str, 0);
            SecretKeySpec secretKeySpec = new SecretKeySpec(str2.getBytes(), "AES");
            Cipher instance = Cipher.getInstance("AES/ECB/PKCS5Padding");
            instance.init(2, secretKeySpec);
            return new String(instance.doFinal(decode));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String a(String str, String str2, String str3) {
        SecretKeySpec secretKeySpec = new SecretKeySpec(str3.getBytes(), "AES");
        try {
            Cipher instance = Cipher.getInstance("AES/CBC/PKCS5Padding");
            instance.init(1, secretKeySpec, new IvParameterSpec(str2.getBytes()));
            return Base64.encodeToString(instance.doFinal(str.getBytes("utf-8")), 0);
        } catch (Throwable th) {
            q.b(th.getMessage());
            return null;
        }
    }

    public static String b(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            byte[] decode = Base64.decode(str, 0);
            SecretKeySpec secretKeySpec = new SecretKeySpec(str3.getBytes(), "AES");
            Cipher instance = Cipher.getInstance("AES/CBC/PKCS5Padding");
            instance.init(2, secretKeySpec, new IvParameterSpec(str2.getBytes()));
            return new String(instance.doFinal(decode));
        } catch (Exception e) {
            q.b(e.getMessage());
            return null;
        }
    }
}
