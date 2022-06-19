package com.huawei.hms.opendevice;

import com.huawei.secure.android.common.encrypt.utils.HexUtil;
/* renamed from: com.huawei.hms.opendevice.a */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/opendevice/a.class */
public abstract class AbstractC2403a {
    /* renamed from: a */
    public static String m37453a(byte[] bArr) {
        return HexUtil.byteArray2HexStr(bArr);
    }

    /* renamed from: a */
    public static byte[] m37454a(String str) {
        return HexUtil.hexStr2ByteArray(str);
    }
}
