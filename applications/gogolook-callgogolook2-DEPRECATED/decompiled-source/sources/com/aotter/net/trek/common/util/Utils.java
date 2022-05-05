package com.aotter.net.trek.common.util;

import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.aotter.net.trek.common.Constants;
import com.aotter.net.trek.global.AotterTrekApplication;
import com.aotter.net.trek.model.AdFetch;
import com.aotter.net.trek.model.Payload;
import java.security.MessageDigest;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/common/util/Utils.class */
public class Utils {
    public static String RenderCacheKey(String str, String str2, String str3, boolean z) {
        StringBuilder sb;
        String str4 = str3;
        if (TextUtils.isEmpty(str3)) {
            str4 = "*";
        }
        if (z) {
            sb = new StringBuilder();
            sb.append("housead-");
        } else {
            sb = new StringBuilder();
        }
        sb.append(str);
        sb.append("-");
        sb.append(str2);
        sb.append("-");
        sb.append(str4);
        return sb.toString();
    }

    public static String RenderPayloadJson(String str, String str2, String str3, int i) {
        Payload payload = new Payload();
        payload.setPlace(str2);
        if (!TextUtils.isEmpty(str3)) {
            payload.setCategories(str3);
        }
        return new AdFetch.Builder().user(AotterTrekApplication.mUser.toJsonObject()).device(AotterTrekApplication.mDevice.toJsonObject()).adType(str).payload(payload.toJsonObject()).fetchNumber(i).sdkVersion("android_2.0.2_rc12").returnBlank(false).build().toJsonString();
    }

    public static void disableOnClick(ViewGroup viewGroup) {
        viewGroup.setEnabled(false);
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (!TextUtils.equals(childAt.getClass().getName(), Constants.VIDEOVIEW_CLASSNAME)) {
                if (childAt instanceof ViewGroup) {
                    disableOnClick((ViewGroup) childAt);
                } else {
                    childAt.setClickable(false);
                }
            }
        }
        viewGroup.setEnabled(true);
    }

    public static String sha1(String str) {
        StringBuilder sb = new StringBuilder();
        try {
            MessageDigest instance = MessageDigest.getInstance("SHA-1");
            byte[] bytes = str.getBytes("UTF-8");
            instance.update(bytes, 0, bytes.length);
            byte[] digest = instance.digest();
            int length = digest.length;
            for (int i = 0; i < length; i++) {
                sb.append(String.format("%02X", Byte.valueOf(digest[i])));
            }
            return sb.toString().toLowerCase(Locale.US);
        } catch (Exception e) {
            return "";
        }
    }

    public static String sha256(String str) {
        StringBuilder sb = new StringBuilder();
        try {
            MessageDigest instance = MessageDigest.getInstance("SHA-256");
            byte[] bytes = str.getBytes("UTF-8");
            instance.update(bytes, 0, bytes.length);
            byte[] digest = instance.digest();
            int length = digest.length;
            for (int i = 0; i < length; i++) {
                sb.append(String.format("%02X", Byte.valueOf(digest[i])));
            }
            return sb.toString().toLowerCase(Locale.US);
        } catch (Exception e) {
            return "";
        }
    }
}
