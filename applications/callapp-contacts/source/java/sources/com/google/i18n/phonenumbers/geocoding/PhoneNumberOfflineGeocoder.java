package com.google.i18n.phonenumbers.geocoding;

import com.google.i18n.phonenumbers.C16136k;
import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.p403b.C16118f;
import java.util.List;
import java.util.Locale;
/* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder.class */
public class PhoneNumberOfflineGeocoder {
    private static final String MAPPING_DATA_DIRECTORY = "/com/google/i18n/phonenumbers/geocoding/data/";
    private static PhoneNumberOfflineGeocoder instance;
    private final PhoneNumberUtil phoneUtil = PhoneNumberUtil.getInstance();
    private C16118f prefixFileReader;

    PhoneNumberOfflineGeocoder(String str) {
        this.prefixFileReader = null;
        this.prefixFileReader = new C16118f(str);
    }

    private String getCountryNameForNumber(C16136k.C16137a c16137a, Locale locale) {
        List<String> regionCodesForCountryCode = this.phoneUtil.getRegionCodesForCountryCode(c16137a.f57029a);
        if (regionCodesForCountryCode.size() == 1) {
            return getRegionDisplayName(regionCodesForCountryCode.get(0), locale);
        }
        String str = "ZZ";
        for (String str2 : regionCodesForCountryCode) {
            if (this.phoneUtil.isValidNumberForRegion(c16137a, str2)) {
                if (!str.equals("ZZ")) {
                    return "";
                }
                str = str2;
            }
        }
        return getRegionDisplayName(str, locale);
    }

    public static PhoneNumberOfflineGeocoder getInstance() {
        PhoneNumberOfflineGeocoder phoneNumberOfflineGeocoder;
        synchronized (PhoneNumberOfflineGeocoder.class) {
            try {
                if (instance == null) {
                    instance = new PhoneNumberOfflineGeocoder(MAPPING_DATA_DIRECTORY);
                }
                phoneNumberOfflineGeocoder = instance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return phoneNumberOfflineGeocoder;
    }

    private String getRegionDisplayName(String str, Locale locale) {
        return (str == null || str.equals("ZZ") || str.equals(PhoneNumberUtil.REGION_CODE_FOR_NON_GEO_ENTITY)) ? "" : new Locale("", str).getDisplayCountry(locale);
    }

    public String getDescriptionForNumber(C16136k.C16137a c16137a, Locale locale) {
        PhoneNumberUtil.EnumC16104d numberType = this.phoneUtil.getNumberType(c16137a);
        return numberType == PhoneNumberUtil.EnumC16104d.UNKNOWN ? "" : !this.phoneUtil.isNumberGeographical(numberType, c16137a.f57029a) ? getCountryNameForNumber(c16137a, locale) : getDescriptionForValidNumber(c16137a, locale);
    }

    public String getDescriptionForNumber(C16136k.C16137a c16137a, Locale locale, String str) {
        PhoneNumberUtil.EnumC16104d numberType = this.phoneUtil.getNumberType(c16137a);
        return numberType == PhoneNumberUtil.EnumC16104d.UNKNOWN ? "" : !this.phoneUtil.isNumberGeographical(numberType, c16137a.f57029a) ? getCountryNameForNumber(c16137a, locale) : getDescriptionForValidNumber(c16137a, locale, str);
    }

    public String getDescriptionForValidNumber(C16136k.C16137a c16137a, Locale locale) {
        String str;
        C16136k.C16137a c16137a2;
        String language = locale.getLanguage();
        String country = locale.getCountry();
        String countryMobileToken = PhoneNumberUtil.getCountryMobileToken(c16137a.f57029a);
        String nationalSignificantNumber = this.phoneUtil.getNationalSignificantNumber(c16137a);
        if (countryMobileToken.equals("") || !nationalSignificantNumber.startsWith(countryMobileToken)) {
            str = this.prefixFileReader.m7825a(c16137a, language, "", country);
        } else {
            try {
                c16137a2 = this.phoneUtil.parse(nationalSignificantNumber.substring(countryMobileToken.length()), this.phoneUtil.getRegionCodeForCountryCode(c16137a.f57029a));
            } catch (NumberParseException e) {
                c16137a2 = c16137a;
            }
            str = this.prefixFileReader.m7825a(c16137a2, language, "", country);
        }
        return str.length() > 0 ? str : getCountryNameForNumber(c16137a, locale);
    }

    public String getDescriptionForValidNumber(C16136k.C16137a c16137a, Locale locale, String str) {
        String regionCodeForNumber = this.phoneUtil.getRegionCodeForNumber(c16137a);
        return str.equals(regionCodeForNumber) ? getDescriptionForValidNumber(c16137a, locale) : getRegionDisplayName(regionCodeForNumber, locale);
    }
}
