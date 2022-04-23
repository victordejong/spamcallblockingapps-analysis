package com.asus.contacts.yellowpage.utils;

import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.asus.updatesdk.BuildConfig;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/yellowpage/utils/VolleyHttpUtils.class */
public class VolleyHttpUtils {

    /* renamed from: a  reason: collision with root package name */
    public static final String f2872a = VolleyHttpUtils.class.getSimpleName();

    static {
        try {
            System.loadLibrary("asus_yellow_page");
        } catch (Exception e) {
            Log.e(f2872a, "Failed to load library. Exception:" + e.toString());
        } catch (UnsatisfiedLinkError e2) {
            Log.e(f2872a, "Failed to load library due to UnsatisfiedLinkError. Exception:" + e2.toString());
        }
    }

    public static String a() {
        StringBuilder sb = new StringBuilder();
        try {
            for (String str : getValue()) {
                sb.append(str);
            }
        } catch (Exception e) {
            Log.e(f2872a, "Failed to get Auth Key. Exception:" + e.toString());
        } catch (UnsatisfiedLinkError e2) {
            Log.e(f2872a, "Failed to get Auth Key due to UnsatisfiedLinkError. Exception:" + e2.toString());
        }
        return sb.toString();
    }

    public static String a(String str, String str2, boolean z, int i) {
        new String(BuildConfig.FLAVOR);
        try {
            str = URLEncoder.encode(str, StandardCharsets.UTF_8.displayName()).replace("+", "%20");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        StringBuilder sb = new StringBuilder();
        sb.append('?').append("keyword=").append(str);
        sb.append('&').append("orderby=company_name");
        if (!z) {
            sb.append('&').append("top=20");
            sb.append('&').append("city=").append(str2);
        } else {
            sb.append('&').append("top=1000");
            sb.append('&').append("geohash=").append(str2);
        }
        if (i > 0) {
            sb.append('&').append("skip=").append(i);
        } else {
            sb.append('&').append("skip=0");
        }
        return "https://asus-telephony-yellowpage.azure-mobile.net/api/search" + sb.toString();
    }

    public static String a(String str, ArrayList<Pair<String, String>> arrayList, int i, boolean z) {
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = "https://asus-telephony-yellowpage.azure-mobile.net/tables/asusbusiness4";
        }
        String a2 = a(arrayList);
        StringBuilder sb = new StringBuilder();
        sb.append('?').append('$').append("filter=(").append(a2).append(')');
        sb.append('&').append('$').append("orderby=company_name");
        if (!z) {
            sb.append('&').append('$').append("top=20");
        } else {
            sb.append('&').append('$').append("top=1000");
        }
        if (i > 0) {
            sb.append('&').append('$').append("skip=").append(i);
        } else {
            sb.append('&').append('$').append("skip=0");
        }
        return str2 + sb.toString();
    }

    private static String a(ArrayList<Pair<String, String>> arrayList) {
        String str = BuildConfig.FLAVOR;
        Iterator<Pair<String, String>> it = arrayList.iterator();
        while (it.hasNext()) {
            Pair<String, String> next = it.next();
            if ("big_class".equals(next.first) || "mid_class".equals(next.first) || "sml_class".equals(next.first)) {
                if (!str.isEmpty()) {
                    str = str + " or ";
                }
                str = str + "startswith(" + ((String) next.first) + ", '" + ((String) next.second) + "') eq true";
            } else if ("city".equals(next.first)) {
                String str2 = str;
                if (!str.isEmpty()) {
                    str2 = str + " and ";
                }
                str = str2 + "city eq " + ((String) next.second);
            } else if ("geohash".equals(next.first)) {
                String str3 = str;
                if (!str.isEmpty()) {
                    str3 = str + " and ";
                }
                str = str3 + "geohash eq '" + ((String) next.second) + "'";
            } else {
                String str4 = str;
                if (!str.isEmpty()) {
                    str4 = str + " or ";
                }
                str = str4 + "substringof('" + ((String) next.second) + "', " + ((String) next.first) + ") eq true";
            }
        }
        try {
            str = URLEncoder.encode(str, StandardCharsets.UTF_8.displayName()).replace("+", "%20");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }
        return str;
    }

    public static native String[] getValue();
}
