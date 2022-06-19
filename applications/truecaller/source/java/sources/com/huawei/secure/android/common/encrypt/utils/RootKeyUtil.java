package com.huawei.secure.android.common.encrypt.utils;

import android.os.Build;
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/encrypt/utils/RootKeyUtil.class */
public class RootKeyUtil {

    /* renamed from: b */
    private static final String f7991b = "RootKeyUtil";

    /* renamed from: a */
    private byte[] f7992a = null;

    private RootKeyUtil() {
    }

    /* renamed from: a */
    private void m37054a(String str, String str2, String str3, String str4) {
        m37053a(str, str2, str3, HexUtil.hexStr2ByteArray(str4));
    }

    /* renamed from: a */
    private void m37053a(String str, String str2, String str3, byte[] bArr) {
        if (Build.VERSION.SDK_INT < 26) {
            C2480b.m37036c(f7991b, "initRootKey: sha1");
            this.f7992a = BaseKeyUtil.exportRootKey(str, str2, str3, bArr, false);
            return;
        }
        C2480b.m37036c(f7991b, "initRootKey: sha256");
        this.f7992a = BaseKeyUtil.exportRootKey(str, str2, str3, bArr, true);
    }

    public static RootKeyUtil newInstance(String str, String str2, String str3, String str4) {
        RootKeyUtil rootKeyUtil = new RootKeyUtil();
        rootKeyUtil.m37054a(str, str2, str3, str4);
        return rootKeyUtil;
    }

    public static RootKeyUtil newInstance(String str, String str2, String str3, byte[] bArr) {
        RootKeyUtil rootKeyUtil = new RootKeyUtil();
        rootKeyUtil.m37053a(str, str2, str3, bArr);
        return rootKeyUtil;
    }

    public byte[] getRootKey() {
        return (byte[]) this.f7992a.clone();
    }

    public String getRootKeyHex() {
        return HexUtil.byteArray2HexStr(this.f7992a);
    }
}
