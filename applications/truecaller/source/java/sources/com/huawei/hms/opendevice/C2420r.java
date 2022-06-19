package com.huawei.hms.opendevice;

import android.text.TextUtils;
import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.HEX;
import com.tenor.android.core.constant.StringConstant;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* renamed from: com.huawei.hms.opendevice.r */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/opendevice/r.class */
public final class C2420r {
    /* renamed from: a */
    public static String m37388a(String str, String str2) {
        try {
            byte[] bytes = str.getBytes(StringConstant.UTF8);
            if (TextUtils.isEmpty(str2)) {
                str2 = "SHA-256";
            }
            MessageDigest messageDigest = MessageDigest.getInstance(str2);
            messageDigest.update(bytes);
            return HEX.encodeHexString(messageDigest.digest(), false);
        } catch (UnsupportedEncodingException e) {
            HMSLog.m37195e("SHACoder", "trans failed .");
            return null;
        } catch (NoSuchAlgorithmException e2) {
            HMSLog.m37195e("SHACoder", "encrypt failed .");
            return null;
        }
    }
}
