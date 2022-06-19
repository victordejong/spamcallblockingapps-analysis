package com.huawei.secure.android.common.encrypt.utils;

import android.text.TextUtils;
import com.tenor.android.core.constant.StringConstant;
import java.io.UnsupportedEncodingException;
import java.util.Locale;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/encrypt/utils/HexUtil.class */
public final class HexUtil {

    /* renamed from: a */
    private static final String f7989a = "";

    /* renamed from: b */
    private static final String f7990b = "HexUtil";

    private HexUtil() {
    }

    public static String byteArray2HexStr(String str) {
        String str2;
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            str2 = byteArray2HexStr(str.getBytes(StringConstant.UTF8));
        } catch (UnsupportedEncodingException e) {
            StringBuilder m8728C = C22128a.m8728C("byte array 2 hex string exception : ");
            m8728C.append(e.getMessage());
            C2480b.m37037b(f7990b, m8728C.toString());
            str2 = "";
        }
        return str2;
    }

    public static String byteArray2HexStr(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() == 1) {
                sb.append('0');
            }
            sb.append(hexString);
        }
        return sb.toString();
    }

    public static byte[] hexStr2ByteArray(String str) {
        int i;
        if (TextUtils.isEmpty(str)) {
            return new byte[0];
        }
        String upperCase = str.toUpperCase(Locale.ENGLISH);
        int length = upperCase.length() / 2;
        byte[] bArr = new byte[length];
        try {
            byte[] bytes = upperCase.getBytes(StringConstant.UTF8);
            for (int i2 = 0; i2 < length; i2++) {
                StringBuilder sb = new StringBuilder();
                sb.append("0x");
                sb.append(new String(new byte[]{bytes[i2 * 2]}, StringConstant.UTF8));
                byte byteValue = (byte) (Byte.decode(sb.toString()).byteValue() << 4);
                bArr[i2] = (byte) (byteValue ^ Byte.decode("0x" + new String(new byte[]{bytes[i + 1]}, StringConstant.UTF8)).byteValue());
            }
        } catch (UnsupportedEncodingException | NumberFormatException e) {
            C22128a.m8727C0(e, C22128a.m8728C("hex string 2 byte array exception : "), f7990b);
        }
        return bArr;
    }
}
