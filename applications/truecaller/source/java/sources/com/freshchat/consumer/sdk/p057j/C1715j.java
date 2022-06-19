package com.freshchat.consumer.sdk.p057j;

import com.razorpay.AnalyticsConstants;
import java.util.Locale;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.j.j */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/j.class */
public class C1715j {
    /* renamed from: a */
    private static String m39909a(String str, boolean z) {
        if (str == null || str.isEmpty()) {
            return "";
        }
        String lowerCase = str.toLowerCase(Locale.ROOT);
        String str2 = lowerCase;
        if (!m39910a(lowerCase, 2, 3)) {
            if (z) {
                return "";
            }
            str2 = "und";
        }
        return str2;
    }

    /* renamed from: a */
    public static String m39908a(Locale locale) {
        String language = locale.getLanguage();
        String country = locale.getCountry();
        String str = "";
        String replace = C1626as.m40233a(locale.getVariant()) ? locale.getVariant().replace('_', '-') : "";
        String m39909a = m39909a(language, false);
        String m39903b = m39903b(country, false);
        String m39907au = m39907au(replace);
        String str2 = m39909a;
        if (m39909a.isEmpty()) {
            str2 = "und";
        }
        if (!"no".equals(str2) || !"NO".equals(m39903b) || !"NY".equals(m39907au)) {
            str = m39907au;
        } else {
            str2 = "nn";
            m39903b = "NO";
        }
        StringBuilder m8554x = C22128a.m8554x(16, str2);
        if (!m39903b.isEmpty()) {
            m8554x.append('-');
            m8554x.append(m39903b);
        }
        if (!str.isEmpty()) {
            m8554x.append('-');
            m8554x.append(str);
        }
        return m8554x.toString();
    }

    /* renamed from: a */
    private static boolean m39910a(String str, int i, int i2) {
        int length = str.length();
        if (length < i || length > i2) {
            return false;
        }
        for (int i3 = 0; i3 < length; i3++) {
            char charAt = str.charAt(i3);
            if ((charAt < 'a' || charAt > 'z') && (charAt < 'A' || charAt > 'Z')) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: au */
    private static String m39907au(String str) {
        if (str == null || str.isEmpty()) {
            return "";
        }
        String replace = str.replace('-', '_');
        for (String str2 : replace.split(AnalyticsConstants.DELIMITER_MAIN)) {
            if (!m39905aw(str2)) {
                return "";
            }
        }
        return replace;
    }

    /* renamed from: av */
    private static boolean m39906av(String str) {
        if (str.length() != 3) {
            return false;
        }
        for (int i = 0; i < 3; i++) {
            char charAt = str.charAt(i);
            if (charAt < '0' || charAt > '9') {
                return false;
            }
        }
        return true;
    }

    /* renamed from: aw */
    private static boolean m39905aw(String str) {
        char charAt;
        return (str.length() < 5 || str.length() > 8) ? str.length() == 4 && (charAt = str.charAt(0)) >= '0' && charAt <= '9' && m39904ax(str) : m39904ax(str);
    }

    /* renamed from: ax */
    private static boolean m39904ax(String str) {
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if ((charAt < 'a' || charAt > 'z') && ((charAt < 'A' || charAt > 'Z') && (charAt < '0' || charAt > '9'))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: b */
    private static String m39903b(String str, boolean z) {
        if (str == null || str.isEmpty()) {
            return "";
        }
        String upperCase = str.toUpperCase(Locale.ROOT);
        return (m39910a(upperCase, 2, 2) || m39906av(upperCase)) ? upperCase : "";
    }
}
