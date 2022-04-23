package com.google.i18n.phonenumbers.geocoding;

import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.b.f;
import com.google.i18n.phonenumbers.k;
import java.util.List;
import java.util.Locale;
/* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder.class */
public class PhoneNumberOfflineGeocoder {
    private static final String MAPPING_DATA_DIRECTORY = "/com/google/i18n/phonenumbers/geocoding/data/";
    private static PhoneNumberOfflineGeocoder instance;
    private final PhoneNumberUtil phoneUtil = PhoneNumberUtil.getInstance();
    private f prefixFileReader;

    PhoneNumberOfflineGeocoder(String str) {
        this.prefixFileReader = null;
        this.prefixFileReader = new f(str);
    }

    private String getCountryNameForNumber(k.a aVar, Locale locale) {
        List<String> regionCodesForCountryCode = this.phoneUtil.getRegionCodesForCountryCode(aVar.f32890a);
        if (regionCodesForCountryCode.size() == 1) {
            return getRegionDisplayName(regionCodesForCountryCode.get(0), locale);
        }
        String str = "ZZ";
        for (String str2 : regionCodesForCountryCode) {
            if (this.phoneUtil.isValidNumberForRegion(aVar, str2)) {
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

    public String getDescriptionForNumber(k.a aVar, Locale locale) {
        PhoneNumberUtil.d numberType = this.phoneUtil.getNumberType(aVar);
        return numberType == PhoneNumberUtil.d.UNKNOWN ? "" : !this.phoneUtil.isNumberGeographical(numberType, aVar.f32890a) ? getCountryNameForNumber(aVar, locale) : getDescriptionForValidNumber(aVar, locale);
    }

    public String getDescriptionForNumber(k.a aVar, Locale locale, String str) {
        PhoneNumberUtil.d numberType = this.phoneUtil.getNumberType(aVar);
        return numberType == PhoneNumberUtil.d.UNKNOWN ? "" : !this.phoneUtil.isNumberGeographical(numberType, aVar.f32890a) ? getCountryNameForNumber(aVar, locale) : getDescriptionForValidNumber(aVar, locale, str);
    }

    public String getDescriptionForValidNumber(k.a aVar, Locale locale) {
        String str;
        k.a aVar2;
        String language = locale.getLanguage();
        String country = locale.getCountry();
        String countryMobileToken = PhoneNumberUtil.getCountryMobileToken(aVar.f32890a);
        String nationalSignificantNumber = this.phoneUtil.getNationalSignificantNumber(aVar);
        if (countryMobileToken.equals("") || !nationalSignificantNumber.startsWith(countryMobileToken)) {
            str = this.prefixFileReader.a(aVar, language, "", country);
        } else {
            try {
                aVar2 = this.phoneUtil.parse(nationalSignificantNumber.substring(countryMobileToken.length()), this.phoneUtil.getRegionCodeForCountryCode(aVar.f32890a));
            } catch (NumberParseException e) {
                aVar2 = aVar;
            }
            str = this.prefixFileReader.a(aVar2, language, "", country);
        }
        return str.length() > 0 ? str : getCountryNameForNumber(aVar, locale);
    }

    public String getDescriptionForValidNumber(k.a aVar, Locale locale, String str) {
        String regionCodeForNumber = this.phoneUtil.getRegionCodeForNumber(aVar);
        return str.equals(regionCodeForNumber) ? getDescriptionForValidNumber(aVar, locale) : getRegionDisplayName(regionCodeForNumber, locale);
    }
}
