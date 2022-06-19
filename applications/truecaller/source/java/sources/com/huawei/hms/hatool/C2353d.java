package com.huawei.hms.hatool;

import android.util.Pair;
import com.huawei.secure.android.common.encrypt.aes.AesCbc;
import com.huawei.secure.android.common.encrypt.utils.HexUtil;
import com.tenor.android.core.constant.StringConstant;
import java.nio.charset.Charset;
/* renamed from: com.huawei.hms.hatool.d */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/hatool/d.class */
public class C2353d {

    /* renamed from: a */
    public static final Charset f7506a = Charset.forName(StringConstant.UTF8);

    /* renamed from: a */
    public static Pair<byte[], String> m37744a(String str) {
        if (str == null || str.length() < 32) {
            return new Pair<>(new byte[0], str);
        }
        String substring = str.substring(0, 32);
        return new Pair<>(HexUtil.hexStr2ByteArray(substring), str.substring(32));
    }

    /* renamed from: a */
    public static String m37743a(String str, String str2) {
        Pair<byte[], String> m37744a = m37744a(str);
        return new String(AesCbc.decrypt(HexUtil.hexStr2ByteArray((String) m37744a.second), HexUtil.hexStr2ByteArray(str2), (byte[]) m37744a.first), f7506a);
    }

    /* renamed from: a */
    public static String m37742a(byte[] bArr, String str) {
        String str2;
        if (bArr == null || bArr.length == 0 || str == null) {
            str2 = "cbc encrypt(byte) param is not right";
        } else {
            byte[] hexStr2ByteArray = HexUtil.hexStr2ByteArray(str);
            if (hexStr2ByteArray.length >= 16) {
                return HexUtil.byteArray2HexStr(AesCbc.encrypt(bArr, hexStr2ByteArray));
            }
            str2 = "key length is not right";
        }
        C2398y.m37476b("AesCipher", str2);
        return "";
    }

    /* renamed from: b */
    public static String m37741b(String str, String str2) {
        return HexUtil.byteArray2HexStr(AesCbc.encrypt(str.getBytes(f7506a), HexUtil.hexStr2ByteArray(str2)));
    }
}
