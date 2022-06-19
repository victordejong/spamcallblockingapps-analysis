package com.huawei.secure.android.common.anonymization;

import android.text.TextUtils;
import com.tenor.android.core.constant.StringConstant;
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/anonymization/Anonymizer.class */
public class Anonymizer {

    /* renamed from: a */
    private static final String f7884a = "Anonymizer";

    public static String maskAccountId(String str) {
        return (str == null || str.length() <= 0) ? "" : str.length() <= 1 ? "*" : str.length() < 8 ? maskCommonString(str, 0, 1) : maskCommonString(str, 0, 4);
    }

    public static String maskBankAccount(String str) {
        return (str == null || str.length() <= 0) ? "" : str.length() <= 2 ? C2474a.m37121a(str, '*') : (str.length() < 11 || str.length() >= 20) ? maskCommonString(str, 6, 4) : maskCommonString(str, 4, 4);
    }

    public static String maskBirthday(String str) {
        if (str == null || str.length() <= 0) {
            return "";
        }
        if (str.length() <= 4) {
            return C2474a.m37121a(str, '*');
        }
        String[] m37119a = C2474a.m37119a(str, 4);
        return C2474a.m37114a("", C2474a.m37113a(m37119a, 0), C2474a.m37116a(C2474a.m37113a(m37119a, 1), "0123456789", "*"));
    }

    public static String maskCommonString(String str, int i, int i2) {
        int i3;
        if (str == null || str.length() <= 0) {
            return "";
        }
        int i4 = i;
        if (i < 0) {
            i4 = 0;
        }
        int i5 = i2;
        if (i2 < 0) {
            i5 = 0;
        }
        if (str.length() <= i4 + i5) {
            i3 = str.length() - 1;
            i4 = 1;
        } else {
            i3 = str.length() - i5;
        }
        String[] m37118a = C2474a.m37118a(str, i4, i3);
        return C2474a.m37114a("", C2474a.m37113a(m37118a, 0), C2474a.m37121a(C2474a.m37113a(m37118a, 1), '*'), C2474a.m37113a(m37118a, 2));
    }

    public static String maskEmail(String str) {
        if (str == null || str.length() <= 0) {
            return "";
        }
        if (str.length() <= 1) {
            return "*";
        }
        int indexOf = str.indexOf(64);
        if (indexOf < 0) {
            String[] m37119a = C2474a.m37119a(str, 1);
            return C2474a.m37114a("", C2474a.m37113a(m37119a, 0), C2474a.m37121a(C2474a.m37113a(m37119a, 1), '*'));
        }
        String[] m37117a = C2474a.m37117a(str, indexOf, indexOf + 1, str.lastIndexOf(46));
        return C2474a.m37114a("", C2474a.m37121a(C2474a.m37113a(m37117a, 0), '*'), C2474a.m37113a(m37117a, 1), C2474a.m37121a(C2474a.m37113a(m37117a, 2), '*'), C2474a.m37113a(m37117a, 3));
    }

    public static String maskId(String str) {
        return (str == null || str.length() <= 0) ? "" : maskCommonString(str, str.length() - 12, 0);
    }

    public static String maskImeiImsi(String str) {
        return (str == null || str.length() <= 0) ? "" : maskCommonString(str, str.length() - 4, 0);
    }

    public static String maskIpV4(String str) {
        if (str == null || str.length() <= 0) {
            return "";
        }
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf < 0) {
            return C2474a.m37121a(str, '*');
        }
        String[] m37119a = C2474a.m37119a(str, lastIndexOf + 1);
        return C2474a.m37114a("", C2474a.m37113a(m37119a, 0), C2474a.m37121a(C2474a.m37113a(m37119a, 1), '*'));
    }

    public static String maskIpV6(String str) {
        if (str == null || str.length() <= 0) {
            return "";
        }
        String[] m37110b = C2474a.m37110b(str, ':');
        if (m37110b.length <= 1) {
            return C2474a.m37121a(str, '*');
        }
        if (m37110b.length != 8) {
            String[] m37119a = C2474a.m37119a(str, str.indexOf(58) + 1);
            return C2474a.m37114a("", C2474a.m37113a(m37119a, 0), C2474a.m37116a(C2474a.m37113a(m37119a, 1), "0123456789ABCDEFabcdef", "*"));
        }
        m37110b[2] = maskLower8Bit(m37110b[2]);
        for (int i = 3; i < m37110b.length; i++) {
            m37110b[i] = C2474a.m37121a(m37110b[i], '*');
        }
        return C2474a.m37114a(StringConstant.COLON, m37110b);
    }

    public static String maskLower8Bit(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (str.length() <= 2) {
            return C2474a.m37121a(str, '*');
        }
        String[] m37119a = C2474a.m37119a(str, str.length() - 2);
        return C2474a.m37114a("", C2474a.m37113a(m37119a, 0), C2474a.m37121a(C2474a.m37113a(m37119a, 1), '*'));
    }

    public static String maskMac(String str) {
        if (str == null || str.length() <= 0) {
            return "";
        }
        int m37120a = C2474a.m37120a(str, '-', 2);
        if (m37120a < 0) {
            return C2474a.m37116a(str, "0123456789ABCDEFabcdef", "*");
        }
        String[] m37119a = C2474a.m37119a(str, m37120a);
        return C2474a.m37114a("", C2474a.m37113a(m37119a, 0), C2474a.m37116a(C2474a.m37113a(m37119a, 1), "0123456789ABCDEFabcdef", "*"));
    }

    public static String maskName(String str) {
        return (str == null || str.length() <= 0) ? "" : str.length() <= 1 ? "*" : maskCommonString(str, 1, 0);
    }

    public static String maskPhone(String str) {
        return (str == null || str.length() <= 0) ? "" : str.length() <= 2 ? C2474a.m37121a(str, '*') : (str.length() < 8 || str.length() >= 11) ? maskCommonString(str, 3, 4) : maskCommonString(str, 2, 2);
    }
}
