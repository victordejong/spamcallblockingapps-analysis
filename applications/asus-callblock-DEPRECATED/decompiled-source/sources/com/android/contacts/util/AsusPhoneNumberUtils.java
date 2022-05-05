package com.android.contacts.util;

import android.content.Context;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import com.android.contacts.q;
import com.asus.updatesdk.BuildConfig;
/* loaded from: classes-dex2jar.jar:com/android/contacts/util/AsusPhoneNumberUtils.class */
public final class AsusPhoneNumberUtils {
    static final String TAG = "AsusPhoneNumberUtils";

    public static String formatNumberByCountryISO(Context context, String str, String str2) {
        String str3 = str2;
        if (TextUtils.isEmpty(str2)) {
            str3 = q.a(context);
        }
        return PhoneNumberUtils.formatNumber(str, str3);
    }

    public static String getLastPartString(String str) {
        StringBuilder sb = new StringBuilder(BuildConfig.FLAVOR);
        if (str != null && str.length() > 0) {
            int length = str.length();
            sb.append("xxx-xxx-");
            if (length > 3) {
                sb.append(str.substring(length - 3));
            } else {
                sb.append(str.substring(length - 1));
            }
        }
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isLocalEmergencyNumber(android.content.Context r4, java.lang.Object r5, java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.contacts.util.AsusPhoneNumberUtils.isLocalEmergencyNumber(android.content.Context, java.lang.Object, java.lang.String):boolean");
    }
}
