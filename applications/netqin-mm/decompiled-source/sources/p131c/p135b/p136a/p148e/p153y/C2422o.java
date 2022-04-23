package p131c.p135b.p136a.p148e.p153y;

import android.net.Uri;
import android.text.TextUtils;
import com.android.volley.Request;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.util.Iterator;
import java.util.Map;
/* renamed from: c.b.a.e.y.o */
/* loaded from: classes-dex2jar.jar:c/b/a/e/y/o.class */
public class C2422o {

    /* renamed from: a */
    public static final char[] f9339a = "0123456789abcdef".toCharArray();

    /* renamed from: a */
    public static int m29859a(String str) {
        return m29858a(str, 0);
    }

    /* renamed from: a */
    public static int m29858a(String str, int i) {
        if (m29848d(str)) {
            i = Integer.parseInt(str);
        }
        return i;
    }

    /* renamed from: a */
    public static String m29860a(int i, String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        int i2 = i;
        if (i > str.length()) {
            i2 = str.length();
        }
        return str.substring(0, i2);
    }

    /* renamed from: a */
    public static String m29857a(String str, Integer num) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            MessageDigest instance = MessageDigest.getInstance("SHA-1");
            instance.update(str.getBytes(Request.DEFAULT_PARAMS_ENCODING));
            String a = m29852a(instance.digest());
            return num.intValue() > 0 ? a.substring(0, Math.min(num.intValue(), a.length())) : a;
        } catch (Throwable th) {
            throw new RuntimeException("SHA-1 for \"" + str + "\" failed.", th);
        }
    }

    /* renamed from: a */
    public static String m29855a(String str, String str2, String str3) {
        String str4 = str;
        if (!TextUtils.isEmpty(str)) {
            if (TextUtils.isEmpty(str2)) {
                str4 = str;
            } else {
                Uri.Builder buildUpon = Uri.parse(str).buildUpon();
                buildUpon.appendQueryParameter(str2, str3);
                str4 = buildUpon.build().toString();
            }
        }
        return str4;
    }

    /* renamed from: a */
    public static String m29854a(String str, Map<String, String> map) {
        String str2 = str;
        if (str != null) {
            if (map != null) {
                Iterator<Map.Entry<String, String>> it = map.entrySet().iterator();
                while (true) {
                    str2 = str;
                    if (!it.hasNext()) {
                        break;
                    }
                    Map.Entry<String, String> next = it.next();
                    str = str.replace(next.getKey(), next.getValue());
                }
            } else {
                str2 = str;
            }
        }
        return str2;
    }

    /* renamed from: a */
    public static String m29853a(boolean z) {
        return z ? "1" : "0";
    }

    /* renamed from: a */
    public static String m29852a(byte[] bArr) {
        if (bArr != null) {
            char[] cArr = new char[bArr.length * 2];
            for (int i = 0; i < bArr.length; i++) {
                int i2 = i * 2;
                char[] cArr2 = f9339a;
                cArr[i2] = cArr2[(bArr[i] & 240) >>> 4];
                cArr[i2 + 1] = cArr2[bArr[i] & 15];
            }
            return new String(cArr);
        }
        throw new IllegalArgumentException("No data specified");
    }

    /* renamed from: a */
    public static boolean m29856a(String str, String str2) {
        return m29851b(str) && m29851b(str2) && str.toLowerCase().contains(str2.toLowerCase());
    }

    /* renamed from: b */
    public static String m29850b(String str, Map<String, String> map) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        String str2 = str;
        if (map != null) {
            if (map.isEmpty()) {
                str2 = str;
            } else {
                Uri.Builder buildUpon = Uri.parse(str).buildUpon();
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    buildUpon.appendQueryParameter(entry.getKey(), entry.getValue());
                }
                str2 = buildUpon.build().toString();
            }
        }
        return str2;
    }

    /* renamed from: b */
    public static boolean m29851b(String str) {
        return !TextUtils.isEmpty(str);
    }

    /* renamed from: c */
    public static String m29849c(String str) {
        String str2 = str;
        if (str == null) {
            str2 = "";
        }
        return str2;
    }

    /* renamed from: d */
    public static boolean m29848d(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        char charAt = str.charAt(0);
        int i = (charAt == '-' || charAt == '+') ? 1 : 0;
        int length = str.length();
        int i2 = i;
        if (i == 1) {
            i2 = i;
            if (length == 1) {
                return false;
            }
        }
        while (i2 < length) {
            if (!Character.isDigit(str.charAt(i2))) {
                return false;
            }
            i2++;
        }
        return true;
    }

    /* renamed from: e */
    public static String m29847e(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        try {
            return URLEncoder.encode(str, Request.DEFAULT_PARAMS_ENCODING);
        } catch (UnsupportedEncodingException e) {
            throw new UnsupportedOperationException(e);
        }
    }

    /* renamed from: f */
    public static String m29846f(String str) {
        return m29857a(str, (Integer) 16);
    }
}
