package com.huawei.secure.android.common.encrypt.utils;

import com.huawei.secure.android.common.encrypt.hash.PBKDF2;
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/encrypt/utils/BaseKeyUtil.class */
public class BaseKeyUtil {

    /* renamed from: a */
    private static final String f7981a = "BaseKeyUtil";

    /* renamed from: b */
    private static final int f7982b = 16;

    /* renamed from: c */
    private static final int f7983c = 16;

    /* renamed from: d */
    private static final int f7984d = 10000;

    /* renamed from: a */
    private static int m37059a(int i, int i2, int i3) {
        int i4 = i;
        if (i2 < i) {
            i4 = i2;
        }
        if (i3 >= i4) {
            i3 = i4;
        }
        return i3;
    }

    /* renamed from: a */
    private static boolean m37060a(int i) {
        return i >= 16;
    }

    /* renamed from: a */
    private static boolean m37058a(int i, byte[] bArr) {
        return m37060a(i) & m37057a(bArr);
    }

    /* renamed from: a */
    private static boolean m37057a(byte[] bArr) {
        return bArr.length >= 16;
    }

    public static String exportHexRootKey(String str, String str2, String str3, byte[] bArr, int i, boolean z) {
        return HexUtil.byteArray2HexStr(exportRootKey(str, str2, str3, bArr, i, z));
    }

    public static byte[] exportRootKey(String str, String str2, String str3, String str4, int i, boolean z) {
        return exportRootKey(str, str2, str3, HexUtil.hexStr2ByteArray(str4), i, z);
    }

    public static byte[] exportRootKey(String str, String str2, String str3, byte[] bArr, int i, boolean z) {
        byte[] hexStr2ByteArray;
        byte[] hexStr2ByteArray2;
        byte[] hexStr2ByteArray3;
        int m37059a = m37059a(HexUtil.hexStr2ByteArray(str).length, HexUtil.hexStr2ByteArray(str2).length, HexUtil.hexStr2ByteArray(str3).length);
        if (m37058a(m37059a, bArr)) {
            char[] cArr = new char[m37059a];
            for (int i2 = 0; i2 < m37059a; i2++) {
                cArr[i2] = (char) ((hexStr2ByteArray[i2] ^ hexStr2ByteArray2[i2]) ^ hexStr2ByteArray3[i2]);
            }
            if (!z) {
                C2480b.m37036c(f7981a, "exportRootKey: sha1");
                return PBKDF2.pbkdf2(cArr, bArr, 10000, i * 8);
            }
            C2480b.m37036c(f7981a, "exportRootKey: sha256");
            return PBKDF2.pbkdf2SHA256(cArr, bArr, 10000, i * 8);
        }
        throw new IllegalArgumentException("key length must be more than 128bit.");
    }

    public static byte[] exportRootKey(String str, String str2, String str3, byte[] bArr, boolean z) {
        return exportRootKey(str, str2, str3, bArr, 16, z);
    }
}
