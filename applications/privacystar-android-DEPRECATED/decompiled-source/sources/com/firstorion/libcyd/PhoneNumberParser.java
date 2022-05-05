package com.firstorion.libcyd;

import android.content.Context;
import android.telephony.TelephonyManager;
import android.util.Log;
import io.michaelrocks.libphonenumber.android.NumberParseException;
import io.michaelrocks.libphonenumber.android.PhoneNumberUtil;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/PhoneNumberParser.class */
public final class PhoneNumberParser {
    private static PhoneNumberUtil phoneNumberUtil;

    private PhoneNumberParser() {
    }

    private static String getDefaultRegion(Context context) {
        return ((TelephonyManager) context.getApplicationContext().getSystemService("phone")).getSimCountryIso().toUpperCase();
    }

    private static PhoneNumberUtil getPhoneNumberUtil(Context context) {
        if (phoneNumberUtil != null) {
            return phoneNumberUtil;
        }
        phoneNumberUtil = PhoneNumberUtil.createInstance(context.getApplicationContext());
        return phoneNumberUtil;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String parse(String str, Context context) {
        if (str == null) {
            return null;
        }
        try {
            PhoneNumberUtil phoneNumberUtil2 = getPhoneNumberUtil(context);
            return phoneNumberUtil2.format(phoneNumberUtil2.parse(str, getDefaultRegion(context)), PhoneNumberUtil.PhoneNumberFormat.E164);
        } catch (NumberParseException e) {
            e.printStackTrace();
            Log.e("PhoneNumberParser", e.toString());
            return null;
        }
    }
}
