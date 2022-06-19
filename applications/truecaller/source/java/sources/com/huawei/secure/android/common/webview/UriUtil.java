package com.huawei.secure.android.common.webview;

import android.net.Uri;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.huawei.secure.android.common.util.LogsUtil;
import com.tenor.android.core.constant.StringConstant;
import java.net.MalformedURLException;
import java.net.URL;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/huawei/secure/android/common/webview/UriUtil.class */
public class UriUtil {

    /* renamed from: a */
    private static final String f8177a = "UriUtil";

    /* renamed from: a */
    private static String m36864a(String str) {
        if (!TextUtils.isEmpty(str)) {
            return !URLUtil.isNetworkUrl(str) ? str : getHostByURI(str);
        }
        LogsUtil.m36915i(f8177a, "whiteListUrl is null");
        return null;
    }

    public static String getHostByURI(String str) {
        if (TextUtils.isEmpty(str)) {
            LogsUtil.m36915i(f8177a, "url is null");
            return str;
        }
        try {
            if (URLUtil.isNetworkUrl(str)) {
                return new URL(str.replaceAll("[\\\\#]", StringConstant.SLASH)).getHost();
            }
            LogsUtil.m36921e(f8177a, "url don't starts with http or https");
            return "";
        } catch (MalformedURLException e) {
            StringBuilder m8728C = C22128a.m8728C("getHostByURI error  MalformedURLException : ");
            m8728C.append(e.getMessage());
            LogsUtil.m36921e(f8177a, m8728C.toString());
            return "";
        }
    }

    public static boolean isUrlHostAndPathInWhitelist(String str, String[] strArr) {
        if (strArr == null || strArr.length == 0) {
            LogsUtil.m36921e(f8177a, "whitelist is null");
            return false;
        }
        for (String str2 : strArr) {
            if (isUrlHostAndPathMatchWhitelist(str, str2)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isUrlHostAndPathMatchWhitelist(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || str.contains("..") || str.contains(StringConstant.f9511AT)) {
            return false;
        }
        if (str2.equals(str)) {
            return true;
        }
        if (str.startsWith(str2 + "?")) {
            return true;
        }
        if (str.startsWith(str2 + StringConstant.HASH)) {
            return true;
        }
        if (!str2.endsWith(StringConstant.SLASH)) {
            return false;
        }
        if (Uri.parse(str).getPathSegments().size() - Uri.parse(str2).getPathSegments().size() == 1) {
            return str.startsWith(str2);
        }
        return false;
    }

    public static boolean isUrlHostInWhitelist(String str, String[] strArr) {
        if (strArr == null || strArr.length == 0) {
            LogsUtil.m36921e(f8177a, "whitelist is null");
            return false;
        }
        for (String str2 : strArr) {
            if (isUrlHostMatchWhitelist(str, str2)) {
                return true;
            }
        }
        return false;
    }

    public static boolean isUrlHostMatchWhitelist(String str, String str2) {
        String hostByURI = getHostByURI(str);
        if (TextUtils.isEmpty(hostByURI) || TextUtils.isEmpty(str2)) {
            LogsUtil.m36921e(f8177a, "url or whitelist is null");
            return false;
        }
        String m36864a = m36864a(str2);
        if (TextUtils.isEmpty(m36864a)) {
            return false;
        }
        if (m36864a.equals(hostByURI)) {
            return true;
        }
        if (!hostByURI.endsWith(m36864a)) {
            return false;
        }
        try {
            String substring = hostByURI.substring(0, hostByURI.length() - m36864a.length());
            if (substring.endsWith(StringConstant.DOT)) {
                return substring.matches("^[A-Za-z0-9.-]+$");
            }
            return false;
        } catch (IndexOutOfBoundsException e) {
            StringBuilder m8728C = C22128a.m8728C("IndexOutOfBoundsException");
            m8728C.append(e.getMessage());
            LogsUtil.m36921e(f8177a, m8728C.toString());
            return false;
        } catch (Exception e2) {
            StringBuilder m8728C2 = C22128a.m8728C("Exception : ");
            m8728C2.append(e2.getMessage());
            LogsUtil.m36921e(f8177a, m8728C2.toString());
            return false;
        }
    }

    public static boolean isUrlHostSameWhitelist(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return false;
        }
        return TextUtils.equals(getHostByURI(str), m36864a(str2));
    }

    public static boolean isUrlHostSameWhitelist(String str, String[] strArr) {
        if (strArr == null || strArr.length == 0) {
            LogsUtil.m36921e(f8177a, "whitelist is null");
            return false;
        }
        for (String str2 : strArr) {
            if (isUrlHostSameWhitelist(str, str2)) {
                return true;
            }
        }
        return false;
    }
}
