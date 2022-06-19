package com.tenor.android.core.util;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.telephony.TelephonyManager;
import com.razorpay.AnalyticsConstants;
import java.text.SimpleDateFormat;
import java.util.Locale;
/* loaded from: classes3-dex2jar.jar:com/tenor/android/core/util/AbstractLocaleUtils.class */
public abstract class AbstractLocaleUtils {
    public static final String ISO_US = "us";

    public static Locale getCurrentLocale(Context context) {
        Resources resources;
        Locale locale;
        if (context != null && (resources = context.getResources()) != null) {
            Configuration configuration = resources.getConfiguration();
            return (configuration == null || (locale = configuration.locale) == null) ? Locale.getDefault() : locale;
        }
        return Locale.getDefault();
    }

    public static String getCurrentLocaleName(Context context) {
        return getCurrentLocale(context).toString();
    }

    public static String getUtcOffset(Context context) {
        return getUtcOffset(context, Locale.US);
    }

    public static String getUtcOffset(Context context, Locale locale) {
        return context == null ? "" : locale == null ? getUtcOffset(context, Locale.US) : new SimpleDateFormat("ZZZ", locale).format(Long.valueOf(System.currentTimeMillis()));
    }

    public static boolean isUSRegion(Context context) {
        boolean z;
        TelephonyManager telephonyManager;
        if (context == null) {
            return false;
        }
        try {
            telephonyManager = (TelephonyManager) context.getSystemService(AnalyticsConstants.PHONE);
        } catch (Throwable th) {
            z = false;
        }
        if (telephonyManager == null) {
            return false;
        }
        if (AbstractNetworkUtils.isWifiConnected(context) && telephonyManager.getPhoneType() != 4) {
            return ISO_US.equals(telephonyManager.getNetworkCountryIso());
        }
        z = false;
        if (telephonyManager.getSimState() != 1) {
            z = false;
            if (ISO_US.equals(telephonyManager.getSimCountryIso())) {
                z = true;
            }
        }
        return z;
    }
}
