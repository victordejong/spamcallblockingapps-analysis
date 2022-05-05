package com.privacystar.core.util;

import android.support.annotation.NonNull;
import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.Phonenumber;
import com.privacystar.core.C1566R;
import com.privacystar.core.PSApplication;
import com.privacystar.core.service.PreferenceUtil;
import java.math.BigInteger;
import java.text.NumberFormat;
import java.text.ParsePosition;
import java.util.Objects;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/NumbersUtil.class */
public class NumbersUtil {
    private static final String DEBUG_NUMBER_PREF = "storedOverrideDeviceNumber";
    public static final PhoneNumberUtil phoneNumberUtil = PhoneNumberUtil.getInstance();

    public static boolean containsDigits(String str) {
        for (char c : str.toCharArray()) {
            if (Character.isDigit(c)) {
                return true;
            }
        }
        return false;
    }

    public static String formatNumberToE164(String str) {
        return formatNumberToE164(str, PSApplication.context().getString(C1566R.string.default_country_code));
    }

    public static String formatNumberToE164(String str, String str2) {
        PhoneNumberUtil instance = PhoneNumberUtil.getInstance();
        try {
            return instance.format(instance.parse(str, str2), PhoneNumberUtil.PhoneNumberFormat.E164);
        } catch (NumberParseException e) {
            Timber.m32e(e, "Raw phone number failed to parse", new Object[0]);
            return "";
        }
    }

    public static int getCountryCode(String str) {
        try {
            return phoneNumberUtil.parse(str, "US").getCountryCode();
        } catch (NumberParseException e) {
            Timber.m23w(e, "Couldn't parse number.", new Object[0]);
            return -1;
        }
    }

    public static String getDebugNumber() {
        return "";
    }

    public static String getDisplayNumber(String str) {
        str = "";
        if (str == null || str.isEmpty()) {
            Timber.m37d("Can not format a null or empty number String.", new Object[0]);
            return "";
        }
        try {
            Phonenumber.PhoneNumber parse = phoneNumberUtil.parse(str, "US");
            str = parse.getCountryCode() == 1 ? phoneNumberUtil.format(parse, PhoneNumberUtil.PhoneNumberFormat.NATIONAL) : phoneNumberUtil.format(parse, PhoneNumberUtil.PhoneNumberFormat.INTERNATIONAL);
        } catch (NumberParseException e) {
            Timber.m23w(e, "Error parsing phone number from string: %s", str);
        }
        return str;
    }

    public static String getLast10Digits(String str) {
        return getLast10Digits(str, -1);
    }

    public static String getLast10Digits(String str, int i) {
        String strippedNumber = getStrippedNumber(str);
        int i2 = i;
        if (i == -1) {
            i2 = PreferenceUtil.getMatchTrimLength();
        }
        int length = strippedNumber.length();
        String str2 = strippedNumber;
        if (length > i2) {
            str2 = strippedNumber.substring(length - i2, length);
        }
        return str2;
    }

    public static String getNumberForCallerId(String str) {
        try {
            str = Long.toString(phoneNumberUtil.parse(str, "US").getNationalNumber());
        } catch (NumberParseException e) {
            Timber.m32e(e, "", new Object[0]);
        }
        return str;
    }

    public static String getNumberForServer(String str) {
        try {
            Phonenumber.PhoneNumber parse = phoneNumberUtil.parse(str, "US");
            str = "+" + parse.getCountryCode() + parse.getNationalNumber();
        } catch (NumberParseException e) {
            Timber.m32e(e, "", new Object[0]);
        }
        return str;
    }

    public static Long getNumericPhoneNumber(String str) {
        Long parseLong = parseLong(str);
        Long l = parseLong;
        if (parseLong != null) {
            l = parseLong;
            if (parseLong.longValue() <= 999) {
                Timber.m28v("Tried to parse numeric phone number from %s, but was too short.", str);
                l = null;
            }
        }
        return l;
    }

    @NonNull
    public static String getStrippedNumber(String str) {
        String strippedNumber;
        synchronized (NumbersUtil.class) {
            try {
                strippedNumber = getStrippedNumber(str, true);
            } catch (Throwable th) {
                throw th;
            }
        }
        return strippedNumber;
    }

    @NonNull
    public static String getStrippedNumber(String str, boolean z) {
        synchronized (NumbersUtil.class) {
            if (str == null) {
                return "";
            }
            try {
                StringBuilder sb = new StringBuilder();
                for (int i = 0; i < str.length(); i++) {
                    char charAt = str.charAt(i);
                    if (z && (charAt == 'x' || charAt == 'X')) {
                        break;
                    }
                    if (Character.isDigit(charAt)) {
                        sb.append(charAt);
                    }
                }
                return sb.toString();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static Boolean isNumberMatch(String str, String str2) {
        try {
            return Boolean.valueOf(phoneNumberUtil.isNumberMatch(phoneNumberUtil.parse(str, "US"), phoneNumberUtil.parse(str2, "US")) != PhoneNumberUtil.MatchType.NO_MATCH);
        } catch (NumberParseException e) {
            Timber.m23w(e, "Couldn't parse number.", new Object[0]);
            return false;
        }
    }

    public static boolean isNumeric(String str) {
        NumberFormat instance = NumberFormat.getInstance();
        boolean z = false;
        ParsePosition parsePosition = new ParsePosition(0);
        instance.parse(str, parsePosition);
        if (str.length() == parsePosition.getIndex()) {
            z = true;
        }
        return z;
    }

    public static Boolean isPhoneNumber(String str) {
        try {
            return Boolean.valueOf(phoneNumberUtil.isPossibleNumber(phoneNumberUtil.parse(str, "US")));
        } catch (NumberParseException e) {
            Timber.m32e(e, "", new Object[0]);
            return false;
        }
    }

    public static boolean isValidNumber(String str) {
        return str != null && Text.isNumeric(str);
    }

    public static boolean isValidPhoneNumber(String str) {
        return isValidNumber(str) && str.length() == 10;
    }

    public static boolean isValidPossiblePhoneNumber(String str) {
        return isValidPossiblePhoneNumber(str, PSApplication.context().getString(C1566R.string.default_country_code));
    }

    public static boolean isValidPossiblePhoneNumber(String str, String str2) {
        PhoneNumberUtil instance = PhoneNumberUtil.getInstance();
        if (str == null || str2 == null || Text.isBlank(str)) {
            Timber.m37d("Number [%s] or region code [%s] is null or blank.", str, str2);
            return false;
        } else if (!containsDigits(str)) {
            Timber.m37d("Number pre-screening found no digits: [%s]", str);
            return false;
        } else {
            try {
                return instance.isValidNumberForRegion(instance.parse(str, str2), str2);
            } catch (NumberParseException e) {
                Timber.m28v("String failed to parse as a phone number: [%s]", str);
                return false;
            }
        }
    }

    public static int lossyIntFromLong(long j) {
        return j >= 0 ? (int) Math.min(j, 2147483647L) : (int) Math.max(j, -2147483648L);
    }

    public static int parseIntegerFromUuid(String str) {
        char[] charArray;
        StringBuilder sb = new StringBuilder();
        for (char c : str.toCharArray()) {
            if (c >= '0' && c <= '9') {
                sb.append(c);
            }
        }
        if (sb.toString().isEmpty()) {
            return -1;
        }
        BigInteger bigInteger = new BigInteger(sb.toString());
        BigInteger valueOf = BigInteger.valueOf(2147483647L);
        BigInteger bigInteger2 = bigInteger;
        if (Objects.equals(bigInteger.min(valueOf), valueOf)) {
            bigInteger2 = new BigInteger(sb.toString().substring(0, 9));
        }
        return bigInteger2.intValue();
    }

    public static Long parseLong(String str) {
        Long l;
        try {
            l = Long.valueOf(Long.parseLong(str));
        } catch (NumberFormatException e) {
            Timber.m37d("Tried to parse Long from %s, but was unable.", str);
            l = null;
        }
        return l;
    }

    public static void putDebugNumber(String str) {
    }

    public static long timestampDelta(long j, long j2) {
        if (j == -1 || j2 == -1) {
            return -1L;
        }
        return j2 - j;
    }

    public static String toNumeralString(Boolean bool) {
        if (bool == null) {
            return "null";
        }
        return bool.booleanValue() ? "1" : "0";
    }
}
