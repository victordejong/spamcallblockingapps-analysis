package com.telguarder.helpers.contact;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import androidx.fragment.app.FragmentActivity;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.Phonenumber;
import com.google.i18n.phonenumbers.ShortNumberInfo;
import com.telguarder.C2083R;
import com.telguarder.features.numberLookup.ActorType;
import com.telguarder.helpers.analytics.AnalyticsManager;
import com.telguarder.helpers.backend.BackendLoggingManager;
import com.telguarder.helpers.common.AppUtil;
import com.telguarder.helpers.country.CountryManager;
import com.telguarder.helpers.errorhandling.ErrorHelper;
import com.telguarder.helpers.log.Logger;
import java.util.Arrays;
import java.util.Locale;
import java.util.regex.Pattern;
import org.slf4j.Marker;
/* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/contact/ContactUtils.class */
public class ContactUtils {
    private static final Pattern E164_PHONE_NUMBER_PATTERN = Pattern.compile("^\\+?[0-9]\\d{1,14}$");

    public static void callNumber(FragmentActivity fragmentActivity, String str, BackendLogEntry backendLogEntry, String str2) {
        if (fragmentActivity == null) {
            return;
        }
        String numberForCallOrTxt = getNumberForCallOrTxt(fragmentActivity, str, str2);
        try {
            fragmentActivity.startActivity(new Intent("android.intent.action.DIAL", Uri.parse("tel:" + numberForCallOrTxt)));
            if (backendLogEntry != null) {
                backendLogEntry.calledNumber = numberForCallOrTxt;
                sendLogToBackendIfActorTypeIsCompany(fragmentActivity, backendLogEntry);
            }
            AnalyticsManager.getInstance().sendCallAction(numberForCallOrTxt);
        } catch (ActivityNotFoundException e) {
            ErrorHelper.handleError(fragmentActivity, e);
        }
    }

    public static String getCountryCodeForRegion(String str) {
        String str2;
        if (!TextUtils.isEmpty(str)) {
            str2 = Marker.ANY_NON_NULL_MARKER + String.valueOf(PhoneNumberUtil.getInstance().getCountryCodeForRegion(str));
        } else {
            str2 = "";
        }
        return str2;
    }

    public static String getCountryCodeFromNumber(Context context, String str) {
        String str2;
        PhoneNumberUtil phoneNumberUtil = PhoneNumberUtil.getInstance();
        try {
            String regionCodeForNumber = phoneNumberUtil.getRegionCodeForNumber(phoneNumberUtil.parse(str, CountryManager.getInstance().getDefaultRegionForCalls(context)));
            str2 = "";
            if (!TextUtils.isEmpty(regionCodeForNumber)) {
                str2 = Marker.ANY_NON_NULL_MARKER + String.valueOf(phoneNumberUtil.getCountryCodeForRegion(regionCodeForNumber));
            }
        } catch (Exception e) {
            Logger.debug("getRegionCodeFromNumber - NumberParseException was thrown: " + str + " " + e.toString());
            str2 = "";
        }
        return str2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0030, code lost:
        if (r7.equals("NONE") != false) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getE164NUmberIfPossible(android.content.Context r5, java.lang.String r6, java.lang.String r7) {
        /*
            r0 = r6
            java.lang.String r0 = getPhoneNumberDigitsOnly(r0)
            r8 = r0
            r0 = r8
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L1b
            java.util.regex.Pattern r0 = com.telguarder.helpers.contact.ContactUtils.E164_PHONE_NUMBER_PATTERN
            r1 = r8
            java.util.regex.Matcher r0 = r0.matcher(r1)
            boolean r0 = r0.matches()
            if (r0 == 0) goto L1b
            r0 = r8
            return r0
        L1b:
            com.google.i18n.phonenumbers.PhoneNumberUtil r0 = com.google.i18n.phonenumbers.PhoneNumberUtil.getInstance()     // Catch: java.lang.Exception -> L5f
            r9 = r0
            r0 = r7
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Exception -> L5f
            if (r0 != 0) goto L33
            r0 = r7
            r10 = r0
            r0 = r7
            java.lang.String r1 = "NONE"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> L5f
            if (r0 == 0) goto L3c
        L33:
            com.telguarder.helpers.country.CountryManager r0 = com.telguarder.helpers.country.CountryManager.getInstance()     // Catch: java.lang.Exception -> L5f java.lang.Exception -> L5f
            r1 = r5
            java.lang.String r0 = r0.getDefaultRegionForCalls(r1)     // Catch: java.lang.Exception -> L5f
            r10 = r0
        L3c:
            r0 = r9
            r1 = r9
            r2 = r6
            r3 = r10
            com.google.i18n.phonenumbers.Phonenumber$PhoneNumber r1 = r1.parse(r2, r3)     // Catch: java.lang.Exception -> L5f
            com.google.i18n.phonenumbers.PhoneNumberUtil$PhoneNumberFormat r2 = com.google.i18n.phonenumbers.PhoneNumberUtil.PhoneNumberFormat.E164     // Catch: java.lang.Exception -> L5f
            java.lang.String r0 = r0.format(r1, r2)     // Catch: java.lang.Exception -> L5f
            r7 = r0
            r0 = r7
            boolean r0 = isPhoneNumber(r0)     // Catch: java.lang.Exception -> L5f
            r11 = r0
            r0 = r8
            r5 = r0
            r0 = r11
            if (r0 == 0) goto L8e
            r0 = r7
            r5 = r0
            goto L8e
        L5f:
            r7 = move-exception
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r5 = r0
            r0 = r5
            java.lang.String r1 = "getE164NUmberIfPossible - NumberParseException was thrown: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            java.lang.String r1 = " "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            r1 = r7
            java.lang.String r1 = r1.toString()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            java.lang.String r0 = r0.toString()
            com.telguarder.helpers.log.Logger.debug(r0)
            r0 = r8
            r5 = r0
        L8e:
            r0 = r5
            java.lang.String r0 = getPhoneNumberDigitsOnly(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.telguarder.helpers.contact.ContactUtils.getE164NUmberIfPossible(android.content.Context, java.lang.String, java.lang.String):java.lang.String");
    }

    public static String getFormattedPhoneNumber(Context context, String str, boolean z, String str2) {
        return getFormattedPhoneNumber(context, str, z, true, str2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002a, code lost:
        if (r8.equals("NONE") != false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getFormattedPhoneNumber(android.content.Context r4, java.lang.String r5, boolean r6, boolean r7, java.lang.String r8) {
        /*
            r0 = r5
            r9 = r0
            r0 = r5
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto Lb0
            com.google.i18n.phonenumbers.PhoneNumberUtil r0 = com.google.i18n.phonenumbers.PhoneNumberUtil.getInstance()
            r10 = r0
            com.telguarder.helpers.country.CountryManager r0 = com.telguarder.helpers.country.CountryManager.getInstance()
            r1 = r4
            java.lang.String r0 = r0.getDefaultRegionForCalls(r1)
            r9 = r0
            r0 = r8
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Exception -> L7a
            if (r0 != 0) goto L2d
            r0 = r8
            r4 = r0
            r0 = r8
            java.lang.String r1 = "NONE"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> L7a
            if (r0 == 0) goto L30
        L2d:
            r0 = r9
            r4 = r0
        L30:
            r0 = r10
            r1 = r5
            r2 = r4
            com.google.i18n.phonenumbers.Phonenumber$PhoneNumber r0 = r0.parse(r1, r2)     // Catch: java.lang.Exception -> L7a
            r4 = r0
            r0 = r10
            r1 = r4
            java.lang.String r0 = r0.getRegionCodeForNumber(r1)     // Catch: java.lang.Exception -> L7a
            r8 = r0
            r0 = r6
            if (r0 != 0) goto L6a
            r0 = r7
            if (r0 == 0) goto L5d
            r0 = r8
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Exception -> L7a
            if (r0 != 0) goto L5d
            r0 = r8
            r1 = r9
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> L7a
            if (r0 != 0) goto L5d
            goto L6a
        L5d:
            r0 = r10
            r1 = r4
            com.google.i18n.phonenumbers.PhoneNumberUtil$PhoneNumberFormat r2 = com.google.i18n.phonenumbers.PhoneNumberUtil.PhoneNumberFormat.NATIONAL     // Catch: java.lang.Exception -> L7a
            java.lang.String r0 = r0.format(r1, r2)     // Catch: java.lang.Exception -> L7a
            r4 = r0
            goto L74
        L6a:
            r0 = r10
            r1 = r4
            com.google.i18n.phonenumbers.PhoneNumberUtil$PhoneNumberFormat r2 = com.google.i18n.phonenumbers.PhoneNumberUtil.PhoneNumberFormat.INTERNATIONAL     // Catch: java.lang.Exception -> L7a
            java.lang.String r0 = r0.format(r1, r2)     // Catch: java.lang.Exception -> L7a
            r4 = r0
        L74:
            r0 = r4
            r9 = r0
            goto Lb0
        L7a:
            r4 = move-exception
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r8
            java.lang.String r1 = "getFormattedPhoneNumber - NumberParseException was thrown: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            r1 = r5
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            java.lang.String r1 = " "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            r1 = r4
            java.lang.String r1 = r1.toString()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            java.lang.String r0 = r0.toString()
            com.telguarder.helpers.log.Logger.debug(r0)
            r0 = r5
            r9 = r0
        Lb0:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.telguarder.helpers.contact.ContactUtils.getFormattedPhoneNumber(android.content.Context, java.lang.String, boolean, boolean, java.lang.String):java.lang.String");
    }

    public static String getHiddenNumberDisplayName(Context context) {
        return AppUtil.getStringResource(context, C2083R.string.hidden_number_callerid);
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x001a, code lost:
        if (r7.equals("NONE") != false) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String getNationalNumberIfPossible(android.content.Context r5, java.lang.String r6, java.lang.String r7) {
        /*
            r0 = r6
            java.lang.String r0 = getPhoneNumberDigitsOnly(r0)
            r8 = r0
            com.google.i18n.phonenumbers.PhoneNumberUtil r0 = com.google.i18n.phonenumbers.PhoneNumberUtil.getInstance()     // Catch: java.lang.Exception -> L3a
            r9 = r0
            r0 = r7
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: java.lang.Exception -> L3a
            if (r0 != 0) goto L1d
            r0 = r7
            r10 = r0
            r0 = r7
            java.lang.String r1 = "NONE"
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Exception -> L3a
            if (r0 == 0) goto L26
        L1d:
            com.telguarder.helpers.country.CountryManager r0 = com.telguarder.helpers.country.CountryManager.getInstance()     // Catch: java.lang.Exception -> L3a java.lang.Exception -> L3a
            r1 = r5
            java.lang.String r0 = r0.getDefaultRegionForCalls(r1)     // Catch: java.lang.Exception -> L3a
            r10 = r0
        L26:
            r0 = r9
            r1 = r9
            r2 = r6
            r3 = r10
            com.google.i18n.phonenumbers.Phonenumber$PhoneNumber r1 = r1.parse(r2, r3)     // Catch: java.lang.Exception -> L3a
            com.google.i18n.phonenumbers.PhoneNumberUtil$PhoneNumberFormat r2 = com.google.i18n.phonenumbers.PhoneNumberUtil.PhoneNumberFormat.NATIONAL     // Catch: java.lang.Exception -> L3a
            java.lang.String r0 = r0.format(r1, r2)     // Catch: java.lang.Exception -> L3a
            r5 = r0
            goto L69
        L3a:
            r5 = move-exception
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r7 = r0
            r0 = r7
            java.lang.String r1 = "getNationalNumberIfPossible - NumberParseException was thrown: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            java.lang.String r1 = " "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = r5
            java.lang.String r1 = r1.toString()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            java.lang.String r0 = r0.toString()
            com.telguarder.helpers.log.Logger.debug(r0)
            r0 = r8
            r5 = r0
        L69:
            r0 = r5
            java.lang.String r0 = getPhoneNumberDigitsOnly(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.telguarder.helpers.contact.ContactUtils.getNationalNumberIfPossible(android.content.Context, java.lang.String, java.lang.String):java.lang.String");
    }

    public static String getNumberForCallOrTxt(Context context, String str, String str2) {
        return (TextUtils.isEmpty(str2) || str2.equals("NONE") || str2.equals(CountryManager.getInstance().getDefaultRegionForCalls(context))) ? str : getE164NUmberIfPossible(context, str, str2);
    }

    public static String getPhoneNumberDigitsOnly(String str) {
        String str2 = str;
        if (!TextUtils.isEmpty(str)) {
            if (str.charAt(0) == '+') {
                str2 = Marker.ANY_NON_NULL_MARKER + str.replaceAll("[^0-9]", "");
            } else {
                str2 = str.replaceAll("[^0-9]", "");
            }
        }
        return str2;
    }

    public static String getRegionCodeFromNumber(Context context, String str) {
        String str2;
        PhoneNumberUtil phoneNumberUtil = PhoneNumberUtil.getInstance();
        try {
            String regionCodeForNumber = phoneNumberUtil.getRegionCodeForNumber(phoneNumberUtil.parse(str, CountryManager.getInstance().getDefaultRegionForCalls(context)));
            str2 = null;
            if (!TextUtils.isEmpty(regionCodeForNumber)) {
                str2 = regionCodeForNumber;
            }
        } catch (Exception e) {
            Logger.debug("getRegionCodeFromNumber - NumberParseException was thrown: " + str + " " + e.toString());
            str2 = null;
        }
        return str2;
    }

    public static String getRegionDisplayName(Context context, String str) {
        return getRegionDisplayName(context, str, false);
    }

    public static String getRegionDisplayName(Context context, String str, boolean z) {
        String str2 = "";
        if (!TextUtils.isEmpty(str)) {
            str2 = "";
            if (isPhoneNumber(str)) {
                String regionCodeFromNumber = getRegionCodeFromNumber(context, str);
                str2 = "";
                if (!TextUtils.isEmpty(regionCodeFromNumber)) {
                    str2 = "";
                    if (!regionCodeFromNumber.equals("ZZ")) {
                        str2 = "";
                        if (!regionCodeFromNumber.equals(PhoneNumberUtil.REGION_CODE_FOR_NON_GEO_ENTITY)) {
                            str2 = (z || !regionCodeFromNumber.equals(CountryManager.getInstance().getDefaultRegionForCalls(context))) ? new Locale("", regionCodeFromNumber).getDisplayCountry(Locale.getDefault()) : "";
                        }
                    }
                }
            }
        }
        return str2;
    }

    public static String getUnknownNumberWithRegionDisplayName(Context context, String str) {
        String str2;
        String regionDisplayName = getRegionDisplayName(context, str);
        StringBuilder sb = new StringBuilder();
        sb.append(AppUtil.getStringResource(context, C2083R.string.call_log_unknown_number));
        if (TextUtils.isEmpty(regionDisplayName)) {
            str2 = "";
        } else {
            str2 = " - " + regionDisplayName;
        }
        sb.append(str2);
        return sb.toString();
    }

    public static boolean isHiddenNumber(String str) {
        return str != null && str.equals("");
    }

    public static boolean isNumberTheSame(String str, String str2) {
        try {
            return Arrays.asList(PhoneNumberUtil.MatchType.SHORT_NSN_MATCH, PhoneNumberUtil.MatchType.NSN_MATCH, PhoneNumberUtil.MatchType.EXACT_MATCH).contains(PhoneNumberUtil.getInstance().isNumberMatch(str, str2));
        } catch (Exception e) {
            return false;
        }
    }

    public static boolean isPhoneNumber(String str) {
        return !TextUtils.isEmpty(str) && isPhoneNumberWithoutCharLimits(str.replaceAll(" ", ""));
    }

    public static boolean isPhoneNumberWithoutCharLimits(String str) {
        return PhoneNumberUtils.isGlobalPhoneNumber(str);
    }

    public static boolean isRealPhoneNumber(Context context, String str) {
        boolean z;
        PhoneNumberUtil phoneNumberUtil = PhoneNumberUtil.getInstance();
        try {
            Phonenumber.PhoneNumber parse = phoneNumberUtil.parse(str, CountryManager.getInstance().getDefaultRegion(context));
            PhoneNumberUtil.ValidationResult isPossibleNumberWithReason = phoneNumberUtil.isPossibleNumberWithReason(parse);
            if (isPossibleNumberWithReason == PhoneNumberUtil.ValidationResult.TOO_SHORT) {
                z = ShortNumberInfo.getInstance().isPossibleShortNumber(parse);
            } else {
                z = false;
                if (isPossibleNumberWithReason == PhoneNumberUtil.ValidationResult.IS_POSSIBLE) {
                    z = true;
                }
            }
        } catch (Exception e) {
            Logger.debug("NumberParse exception was thrown: " + e.toString());
            z = false;
        }
        return z;
    }

    public static boolean isTestNumber(String str) {
        if (!TextUtils.isEmpty(str)) {
            return isNumberTheSame("+4781550162", str);
        }
        return false;
    }

    private static void sendLogToBackendIfActorTypeIsCompany(Context context, BackendLogEntry backendLogEntry) {
        if (backendLogEntry.actorType == ActorType.COMPANY) {
            BackendLoggingManager.getInstance().logCompanyPhoneCall(context, backendLogEntry);
        }
    }

    public static void sendSms(FragmentActivity fragmentActivity, String str, String str2) {
        String numberForCallOrTxt = getNumberForCallOrTxt(fragmentActivity, str, str2);
        try {
            fragmentActivity.startActivity(new Intent("android.intent.action.VIEW", Uri.parse("sms:" + numberForCallOrTxt)));
            AnalyticsManager.getInstance().sendSmsAction(numberForCallOrTxt);
        } catch (ActivityNotFoundException e) {
            ErrorHelper.handleError(fragmentActivity, e);
        }
    }
}
