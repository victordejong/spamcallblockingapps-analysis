package p202p7;

import com.google.android.gms.common.api.Api;
/* renamed from: p7.a */
/* loaded from: classes2-dex2jar.jar:p7/a.class */
public final class C4024a {

    /* renamed from: p7.a$a */
    /* loaded from: classes2-dex2jar.jar:p7/a$a.class */
    public interface AbstractC4025a {
        /* renamed from: a */
        void mo1472a(String str, String str2);
    }

    /* renamed from: a */
    public static void m1499a(String str, AbstractC4025a abstractC4025a) {
        int i;
        String str2;
        if (str == null) {
            return;
        }
        int i2 = 0;
        while (i2 < str.length()) {
            int m1497c = m1497c(str, i2, "=,");
            String trim = str.substring(i2, m1497c).trim();
            if (m1497c != str.length()) {
                int i3 = m1497c;
                if (str.charAt(m1497c) != ',') {
                    while (true) {
                        i = i3 + 1;
                        if (i >= str.length()) {
                            break;
                        }
                        char charAt = str.charAt(i);
                        i3 = i;
                        if (charAt != ' ') {
                            i3 = i;
                            if (charAt != '\t') {
                                break;
                            }
                        }
                    }
                    if (i >= str.length() || str.charAt(i) != '\"') {
                        i2 = m1497c(str, i, ",");
                        str2 = str.substring(i, i2).trim();
                    } else {
                        int i4 = i + 1;
                        int m1497c2 = m1497c(str, i4, "\"");
                        str2 = str.substring(i4, m1497c2);
                        i2 = m1497c2 + 1;
                    }
                    abstractC4025a.mo1472a(trim, str2);
                }
            }
            abstractC4025a.mo1472a(trim, null);
            i2 = m1497c + 1;
        }
    }

    /* renamed from: b */
    public static int m1498b(String str) {
        try {
            long parseLong = Long.parseLong(str);
            if (parseLong > 2147483647L) {
                return Api.BaseClientBuilder.API_PRIORITY_OTHER;
            }
            if (parseLong >= 0) {
                return (int) parseLong;
            }
            return 0;
        } catch (NumberFormatException e) {
            return -1;
        }
    }

    /* renamed from: c */
    public static int m1497c(String str, int i, String str2) {
        while (i < str.length() && str2.indexOf(str.charAt(i)) == -1) {
            i++;
        }
        return i;
    }
}
