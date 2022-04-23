package com.sinch.verification.utils;

import android.content.Context;
import android.telephony.PhoneNumberUtils;
import android.telephony.TelephonyManager;
import com.callapp.contacts.model.Constants;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0016\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u0004¨\u0006\u000b"}, d2 = {"Lcom/sinch/verification/utils/SinchPhoneNumberUtils;", "", "()V", "getDefaultLocale", "", "context", "Landroid/content/Context;", "isPossiblePhoneNumber", "", "phoneNumber", "countryIso", "utils_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/utils/SinchPhoneNumberUtils.class */
public final class SinchPhoneNumberUtils {
    public static final SinchPhoneNumberUtils INSTANCE = new SinchPhoneNumberUtils();

    private SinchPhoneNumberUtils() {
    }

    public final String getDefaultLocale(Context context) {
        p.c(context, "context");
        Object systemService = context.getSystemService(Constants.EXTRA_PHONE_NUMBER);
        if (systemService != null) {
            TelephonyManager telephonyManager = (TelephonyManager) systemService;
            if (telephonyManager.getSimState() == 5) {
                String simCountryIso = telephonyManager.getSimCountryIso();
                p.a((Object) simCountryIso, "telephonyManager.simCountryIso");
                Locale locale = Locale.ROOT;
                p.a((Object) locale, "Locale.ROOT");
                if (simCountryIso != null) {
                    String upperCase = simCountryIso.toUpperCase(locale);
                    p.a((Object) upperCase, "(this as java.lang.String).toUpperCase(locale)");
                    return upperCase;
                }
                throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
            }
            Locale locale2 = Locale.getDefault();
            p.a((Object) locale2, "Locale.getDefault()");
            String country = locale2.getCountry();
            p.a((Object) country, "Locale.getDefault().country");
            return country;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.telephony.TelephonyManager");
    }

    public final boolean isPossiblePhoneNumber(String phoneNumber, String countryIso) {
        p.c(phoneNumber, "phoneNumber");
        p.c(countryIso, "countryIso");
        return PhoneNumberUtils.formatNumberToE164(phoneNumber, countryIso) != null;
    }
}
