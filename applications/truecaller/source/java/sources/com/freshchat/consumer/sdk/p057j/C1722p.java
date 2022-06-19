package com.freshchat.consumer.sdk.p057j;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.freshchat.consumer.sdk.Freshchat;
import com.freshchat.consumer.sdk.beans.User;
import com.razorpay.AnalyticsConstants;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.freshchat.consumer.sdk.j.p */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/p.class */
public class C1722p {
    /* renamed from: a */
    public static boolean m39832a(Context context, WindowManager windowManager) {
        if (m39828at(context) || m39827au(context)) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            windowManager.getDefaultDisplay().getMetrics(displayMetrics);
            return BigDecimal.valueOf(Math.sqrt(Math.pow((double) (((float) m39829as(context)) / displayMetrics.ydpi), 2.0d) + Math.pow((double) (((float) m39830ar(context)) / displayMetrics.xdpi), 2.0d))).setScale(1, RoundingMode.HALF_UP).compareTo(BigDecimal.valueOf(6.1d)) >= 0;
        }
        return false;
    }

    /* renamed from: aD */
    public static boolean m39831aD(Context context) {
        boolean z = false;
        if ((C1630aw.m40199eX() ? TextUtils.getLayoutDirectionFromLocale(C1612ah.m40290bb(context)) : 0) != 0) {
            z = true;
        }
        return z;
    }

    /* renamed from: ar */
    public static int m39830ar(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        if (C1630aw.m40199eX()) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            defaultDisplay.getRealMetrics(displayMetrics);
            return displayMetrics.widthPixels;
        }
        if (C1630aw.m40202eU()) {
            try {
                return ((Integer) Display.class.getMethod("getRawWidth", new Class[0]).invoke(defaultDisplay, new Object[0])).intValue();
            } catch (Exception e) {
            }
        }
        return defaultDisplay.getWidth();
    }

    /* renamed from: as */
    public static int m39829as(Context context) {
        Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        if (C1630aw.m40199eX()) {
            DisplayMetrics displayMetrics = new DisplayMetrics();
            defaultDisplay.getRealMetrics(displayMetrics);
            return displayMetrics.heightPixels;
        }
        if (C1630aw.m40202eU()) {
            try {
                return ((Integer) Display.class.getMethod("getRawHeight", new Class[0]).invoke(defaultDisplay, new Object[0])).intValue();
            } catch (Exception e) {
            }
        }
        return defaultDisplay.getHeight();
    }

    /* renamed from: at */
    private static boolean m39828at(Context context) {
        return context != null && (context.getResources().getConfiguration().screenLayout & 15) == 3;
    }

    /* renamed from: au */
    private static boolean m39827au(Context context) {
        return context != null && (context.getResources().getConfiguration().screenLayout & 15) == 4;
    }

    /* renamed from: av */
    public static Map<String, String> m39826av(Context context) {
        HashMap hashMap = new HashMap();
        try {
            String str = Build.MANUFACTURER;
            String str2 = Build.MODEL;
            String str3 = Build.VERSION.RELEASE;
            int i = Build.VERSION.SDK_INT;
            hashMap.put("manufacturer", str);
            hashMap.put("model", str2);
            hashMap.put(User.DEVICE_META_OS_NAME, AnalyticsConstants.ANDROID);
            hashMap.put(User.DEVICE_META_OS_VERSION_NAME, str3);
            hashMap.put(User.DEVICE_META_OS_VERSION_CODE, String.valueOf(i));
            hashMap.put("app_version", C1710g.m39957ae(context));
            hashMap.put(User.DEVICE_META_APP_VERSION_CODE, String.valueOf(C1710g.m39956af(context)));
            hashMap.put(User.DEVICE_META_SDK_VERSION_CODE, String.valueOf(Freshchat.getSDKVersionCode()));
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
        return hashMap;
    }

    /* renamed from: cq */
    public static int m39825cq(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRealMetrics(displayMetrics);
        return displayMetrics.heightPixels * displayMetrics.widthPixels;
    }

    /* renamed from: ew */
    public static boolean m39824ew() {
        return Build.MANUFACTURER.toUpperCase().contains("XIAOMI");
    }
}
