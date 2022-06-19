package com.freshchat.consumer.sdk.p057j;

import android.text.Html;
import android.text.Spanned;
import com.amazon.device.ads.DtbConstants;
import java.util.Locale;
import p1727n3.p1807k.p1818g.AbstractC26540c;
import p1727n3.p1807k.p1818g.C26536a;
import p1727n3.p1807k.p1818g.C26541d;
/* renamed from: com.freshchat.consumer.sdk.j.as */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/as.class */
public class C1626as {
    /* renamed from: a */
    public static String m40232a(String str, String str2, int i) {
        if (!isEmpty(str) && i > 0) {
            StringBuilder sb = new StringBuilder(str);
            for (int i2 = 1; i2 < i; i2++) {
                sb.append(str2);
                sb.append(str);
            }
            return sb.toString();
        }
        return "";
    }

    /* renamed from: a */
    public static String m40231a(String[] strArr, String str) {
        if (C1716k.m39896c(strArr)) {
            return "";
        }
        StringBuilder sb = new StringBuilder(strArr[0]);
        int length = strArr.length;
        for (int i = 1; i < length; i++) {
            String str2 = strArr[i];
            if (m40233a(sb) && m40233a(str2)) {
                sb.append(str);
                sb.append(str2);
            }
        }
        return sb.toString();
    }

    /* renamed from: a */
    public static boolean m40233a(CharSequence charSequence) {
        return !isEmpty(charSequence);
    }

    /* renamed from: aH */
    public static String m40230aH(String str) {
        return str == null ? "" : str.trim();
    }

    /* renamed from: aJ */
    public static String m40229aJ(String str) {
        String str2;
        int i;
        if (str == null) {
            return null;
        }
        String lowerCase = str.toLowerCase(Locale.ENGLISH);
        if (!lowerCase.startsWith(DtbConstants.HTTPS)) {
            str2 = lowerCase;
            if (lowerCase.startsWith(DtbConstants.HTTP)) {
                i = 7;
            }
            return str2;
        }
        i = 8;
        str2 = lowerCase.substring(i);
        return str2;
    }

    /* renamed from: b */
    public static long m40228b(CharSequence charSequence) {
        if (charSequence == null) {
            return 0L;
        }
        return charSequence.length();
    }

    /* renamed from: b */
    public static String m40227b(String str, int i) {
        String str2;
        if (str == null) {
            str2 = "";
        } else {
            str2 = str;
            if (str.length() > i) {
                str2 = str.substring(0, i - 1);
            }
        }
        return str2;
    }

    /* renamed from: c */
    public static boolean m40226c(String str, boolean z) {
        if (isEmpty(str)) {
            return false;
        }
        String str2 = str;
        if (z) {
            str2 = fromHtml(str).toString();
        }
        AbstractC26540c abstractC26540c = C26536a.m1710c().f74358c;
        return ((C26541d.AbstractC26544c) abstractC26540c).m1702b(str2, 0, str2.length());
    }

    /* renamed from: f */
    public static boolean m40225f(String[] strArr) {
        return strArr != null && strArr.length > 0;
    }

    public static Spanned fromHtml(String str) {
        return Html.fromHtml(str);
    }

    public static boolean isEmpty(CharSequence charSequence) {
        int length;
        if (charSequence == null || (length = charSequence.length()) == 0) {
            return true;
        }
        for (int i = 0; i < length; i++) {
            if (!Character.isWhitespace(charSequence.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: m */
    public static boolean m40224m(String str, String str2) {
        if (!isEmpty(str) || !isEmpty(str2)) {
            if (m40233a(str) && m40233a(str2)) {
                return str.equalsIgnoreCase(str2);
            }
            return false;
        }
        return true;
    }

    /* renamed from: o */
    public static boolean m40223o(String str, String str2) {
        return str == null ? str2 == null : str.equals(str2);
    }

    /* renamed from: p */
    public static boolean m40222p(String str, String str2) {
        return !m40223o(str, str2);
    }

    /* renamed from: q */
    public static boolean m40221q(String str, String str2) {
        return m40224m(m40229aJ(str), m40229aJ(str2));
    }
}
