package com.pubmatic.sdk.common.utility;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.webkit.URLUtil;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.pubmatic.sdk.common.log.PMLog;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/utility/POBDeepLinkUtil.class */
public class POBDeepLinkUtil {
    /* renamed from: a */
    private static String m995a(String str) {
        String str2 = null;
        String str3 = null;
        try {
            if (str.contains("browser_fallback_url")) {
                str2 = Uri.decode(str).split(SimpleComparison.EQUAL_TO_OPERATION)[1];
                StringBuilder sb = new StringBuilder();
                sb.append("Fall back url :");
                sb.append(str2);
                str3 = str2;
                PMLog.debug("PMDeepLinkUtil", sb.toString(), new Object[0]);
            }
        } catch (Exception e) {
            PMLog.error("PMDeepLinkUtil", e.getLocalizedMessage(), new Object[0]);
            str2 = str3;
        }
        return str2;
    }

    /* renamed from: a */
    private static boolean m997a(Context context, Uri uri) {
        boolean z;
        if (m996a(context, uri.toString())) {
            PMLog.debug("PMDeepLinkUtil", "uri based deep link success!", "URL - " + uri.toString());
            z = true;
        } else {
            String[] split = uri.toString().split(";");
            int length = split.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    z = false;
                    break;
                }
                String m995a = m995a(split[i]);
                if (m995a != null && m996a(context, m995a)) {
                    PMLog.debug("PMDeepLinkUtil", "fallback based deep link success!", "Fallback URL - " + m995a);
                    z = true;
                    break;
                }
                i++;
            }
            if (!z) {
                int length2 = split.length;
                int i2 = 0;
                while (true) {
                    if (i2 < length2) {
                        String m994b = m994b(split[i2]);
                        if (m994b != null && m996a(context, m994b)) {
                            PMLog.debug("PMDeepLinkUtil", "package based based deep link success!", "Package URL - " + m994b);
                            z = true;
                            break;
                        }
                        i2++;
                    } else {
                        break;
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: a */
    private static boolean m996a(Context context, String str) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.addFlags(268435456);
            intent.setData(Uri.parse(str));
            context.startActivity(intent);
            return true;
        } catch (ActivityNotFoundException e) {
            PMLog.warn("PMDeepLinkUtil", "Activity not found for the uri: " + str, new Object[0]);
            return false;
        }
    }

    /* renamed from: b */
    private static String m994b(String str) {
        String str2;
        try {
        } catch (Exception e) {
            PMLog.error("PMDeepLinkUtil", e.getLocalizedMessage(), new Object[0]);
        }
        if (str.contains("package")) {
            String[] split = Uri.decode(str).split(SimpleComparison.EQUAL_TO_OPERATION);
            str2 = "https://play.google.com/store/apps/details?id=" + split[1];
            return str2;
        }
        str2 = null;
        return str2;
    }

    public static boolean validateAndRedirect(Context context, String str) {
        return str != null && context != null && !URLUtil.isValidUrl(str) && m997a(context, Uri.parse(str));
    }
}
