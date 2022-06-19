package com.huawei.hms.framework.network.grs.p090h;

import android.text.TextUtils;
import com.amazon.device.ads.DtbConstants;
import com.huawei.hms.framework.common.Logger;
import com.tenor.android.core.constant.StringConstant;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.regex.Pattern;
/* renamed from: com.huawei.hms.framework.network.grs.h.b */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/network/grs/h/b.class */
public class C2333b {

    /* renamed from: a */
    private static final String f7487a = "b";

    /* renamed from: b */
    private static final Pattern f7488b = Pattern.compile("[0-9]*[a-z|A-Z]*[一-龥]*");

    /* renamed from: a */
    public static String m37858a(String str) {
        return m37857a(str, "SHA-256");
    }

    /* renamed from: a */
    private static String m37857a(String str, String str2) {
        String str3;
        Object obj;
        try {
        } catch (UnsupportedEncodingException e) {
            str3 = f7487a;
            obj = "encrypt UnsupportedEncodingException";
        }
        try {
            return m37856a(MessageDigest.getInstance(str2).digest(str.getBytes(StringConstant.UTF8)));
        } catch (NoSuchAlgorithmException e2) {
            str3 = f7487a;
            obj = "encrypt NoSuchAlgorithmException";
            Logger.m38040w(str3, obj);
            return null;
        }
    }

    /* renamed from: a */
    private static String m37856a(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() == 1) {
                sb.append(DtbConstants.NETWORK_TYPE_UNKNOWN);
            }
            sb.append(hexString);
        }
        return sb.toString();
    }

    /* renamed from: b */
    public static String m37855b(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        int i = 1;
        if (str.length() == 1) {
            return "*";
        }
        StringBuffer stringBuffer = new StringBuffer();
        int i2 = 0;
        while (i2 < str.length()) {
            String str2 = str.charAt(i2) + "";
            int i3 = i;
            String str3 = str2;
            if (f7488b.matcher(str2).matches()) {
                if (i % 2 == 0) {
                    str2 = "*";
                }
                i3 = i + 1;
                str3 = str2;
            }
            stringBuffer.append(str3);
            i2++;
            i = i3;
        }
        return stringBuffer.toString();
    }
}
