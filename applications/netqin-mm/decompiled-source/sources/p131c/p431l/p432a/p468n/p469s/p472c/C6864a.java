package p131c.p431l.p432a.p468n.p469s.p472c;

import android.text.TextUtils;
/* renamed from: c.l.a.n.s.c.a */
/* loaded from: classes2-dex2jar.jar:c/l/a/n/s/c/a.class */
public class C6864a {
    /* renamed from: a */
    public static String m19520a(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        String str2 = "";
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            str2 = str2;
            if (Character.isDigit(charAt)) {
                str2 = str2 + charAt;
            }
        }
        return str2;
    }

    /* renamed from: b */
    public static String m19519b(String str) {
        String a = m19520a(str);
        String str2 = a;
        if (a != null) {
            str2 = a.length() <= 8 ? a : a.substring(a.length() - 8, a.length());
        }
        return str2;
    }

    /* renamed from: c */
    public static String m19518c(String str) {
        return TextUtils.isEmpty(str) ? "" : new StringBuffer(m19519b(str)).reverse().toString();
    }
}
