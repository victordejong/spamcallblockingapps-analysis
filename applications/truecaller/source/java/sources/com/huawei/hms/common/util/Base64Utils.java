package com.huawei.hms.common.util;

import android.util.Base64;
import com.huawei.hms.support.log.HMSLog;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/common/util/Base64Utils.class */
public final class Base64Utils {
    private static final int FLAG_DEFAULT = 0;
    private static final int FLAG_URL = 10;
    private static final int FLAG_URL_NOPADDING = 11;
    private static final String TAG = "Base64Utils";

    public static byte[] decode(String str) {
        if (str != null) {
            try {
                return Base64.decode(str, 0);
            } catch (IllegalArgumentException e) {
                StringBuilder m8728C = C22128a.m8728C("decode failed : ");
                m8728C.append(e.getMessage());
                HMSLog.m37195e(TAG, m8728C.toString());
            }
        }
        return new byte[0];
    }

    public static byte[] decodeUrlSafe(String str) {
        if (str != null) {
            try {
                return Base64.decode(str, 10);
            } catch (IllegalArgumentException e) {
                StringBuilder m8728C = C22128a.m8728C("decodeUrlSafe failed : ");
                m8728C.append(e.getMessage());
                HMSLog.m37195e(TAG, m8728C.toString());
            }
        }
        return new byte[0];
    }

    public static byte[] decodeUrlSafeNoPadding(String str) {
        if (str != null) {
            try {
                return Base64.decode(str, 11);
            } catch (IllegalArgumentException e) {
                StringBuilder m8728C = C22128a.m8728C("decodeUrlSafeNoPadding failed : ");
                m8728C.append(e.getMessage());
                HMSLog.m37195e(TAG, m8728C.toString());
            }
        }
        return new byte[0];
    }

    public static String encode(byte[] bArr) {
        if (bArr != null) {
            return Base64.encodeToString(bArr, 0);
        }
        return null;
    }

    public static String encodeUrlSafe(byte[] bArr) {
        if (bArr != null) {
            return Base64.encodeToString(bArr, 10);
        }
        return null;
    }

    public static String encodeUrlSafeNoPadding(byte[] bArr) {
        if (bArr != null) {
            return Base64.encodeToString(bArr, 11);
        }
        return null;
    }
}
