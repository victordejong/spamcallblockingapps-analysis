package net.pubnative.lite.sdk.utils;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/utils/CountryUtils.class */
public class CountryUtils {
    private static Set<String> GDPR_COUNTRIES;

    static {
        HashSet hashSet = new HashSet();
        GDPR_COUNTRIES = hashSet;
        hashSet.addAll(Arrays.asList("BE", "EL", "LT", "PT", "BG", "ES", "LU", "RO", "CZ", "FR", "HU", "SI", "DK", "HR", "MT", "SK", "DE", "IT", "NL", "FI", "EE", "CY", "AT", "SE", "IE", "LV", "PL", "UK", "GB", "CH", "NO", "IS", "LI"));
    }

    public static boolean isGDPRCountry(String str) {
        return GDPR_COUNTRIES.contains(str.toUpperCase(Locale.ENGLISH));
    }
}
