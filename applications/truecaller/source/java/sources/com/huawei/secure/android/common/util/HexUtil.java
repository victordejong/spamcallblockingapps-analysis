package com.huawei.secure.android.common.util;

import android.text.TextUtils;
import com.tenor.android.core.constant.StringConstant;
import java.io.UnsupportedEncodingException;
import java.util.Locale;
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/util/HexUtil.class */
public final class HexUtil {

    /* renamed from: a */
    private static final String f8121a = "";

    /* renamed from: b */
    private static final String f8122b = "HexUtil";

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
            e.getMessage();
            str2 = "";
        } catch (Exception e2) {
            e2.getMessage();
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
        Exception e;
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
        } catch (UnsupportedEncodingException e2) {
            e = e2;
            e.getMessage();
        } catch (NumberFormatException e3) {
            e = e3;
            e.getMessage();
        } catch (Exception e4) {
            e4.getMessage();
        }
        return bArr;
    }
}
