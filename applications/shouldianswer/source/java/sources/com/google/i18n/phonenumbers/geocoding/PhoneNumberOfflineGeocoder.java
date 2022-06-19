package com.google.i18n.phonenumbers.geocoding;

import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.Phonenumber;
import com.google.i18n.phonenumbers.prefixmapper.PrefixFileReader;
import java.util.List;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder.class */
public class PhoneNumberOfflineGeocoder {
    private static final String MAPPING_DATA_DIRECTORY = "/com/google/i18n/phonenumbers/geocoding/data/";
    private static PhoneNumberOfflineGeocoder instance;
    private final PhoneNumberUtil phoneUtil = PhoneNumberUtil.getInstance();
    private PrefixFileReader prefixFileReader;

    PhoneNumberOfflineGeocoder(String str) {
        this.prefixFileReader = null;
        this.prefixFileReader = new PrefixFileReader(str);
    }

    private String getCountryNameForNumber(Phonenumber.PhoneNumber phoneNumber, Locale locale) {
        List<String> regionCodesForCountryCode = this.phoneUtil.getRegionCodesForCountryCode(phoneNumber.getCountryCode());
        if (regionCodesForCountryCode.size() == 1) {
            return getRegionDisplayName(regionCodesForCountryCode.get(0), locale);
        }
        String str = "ZZ";
        for (String str2 : regionCodesForCountryCode) {
            if (this.phoneUtil.isValidNumberForRegion(phoneNumber, str2)) {
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
        String str2 = "";
        if (str != null) {
            str2 = "";
            if (!str.equals("ZZ")) {
                str2 = str.equals(PhoneNumberUtil.REGION_CODE_FOR_NON_GEO_ENTITY) ? "" : new Locale("", str).getDisplayCountry(locale);
            }
        }
        return str2;
    }

    public String getDescriptionForNumber(Phonenumber.PhoneNumber phoneNumber, Locale locale) {
        PhoneNumberUtil.PhoneNumberType numberType = this.phoneUtil.getNumberType(phoneNumber);
        return numberType == PhoneNumberUtil.PhoneNumberType.UNKNOWN ? "" : !this.phoneUtil.isNumberGeographical(numberType, phoneNumber.getCountryCode()) ? getCountryNameForNumber(phoneNumber, locale) : getDescriptionForValidNumber(phoneNumber, locale);
    }

    public String getDescriptionForNumber(Phonenumber.PhoneNumber phoneNumber, Locale locale, String str) {
        PhoneNumberUtil.PhoneNumberType numberType = this.phoneUtil.getNumberType(phoneNumber);
        return numberType == PhoneNumberUtil.PhoneNumberType.UNKNOWN ? "" : !this.phoneUtil.isNumberGeographical(numberType, phoneNumber.getCountryCode()) ? getCountryNameForNumber(phoneNumber, locale) : getDescriptionForValidNumber(phoneNumber, locale, str);
    }

    public String getDescriptionForValidNumber(Phonenumber.PhoneNumber phoneNumber, Locale locale) {
        String str;
        Phonenumber.PhoneNumber phoneNumber2;
        String language = locale.getLanguage();
        String country = locale.getCountry();
        String countryMobileToken = PhoneNumberUtil.getCountryMobileToken(phoneNumber.getCountryCode());
        String nationalSignificantNumber = this.phoneUtil.getNationalSignificantNumber(phoneNumber);
        if (countryMobileToken.equals("") || !nationalSignificantNumber.startsWith(countryMobileToken)) {
            str = this.prefixFileReader.getDescriptionForNumber(phoneNumber, language, "", country);
        } else {
            try {
                phoneNumber2 = this.phoneUtil.parse(nationalSignificantNumber.substring(countryMobileToken.length()), this.phoneUtil.getRegionCodeForCountryCode(phoneNumber.getCountryCode()));
            } catch (NumberParseException e) {
                phoneNumber2 = phoneNumber;
            }
            str = this.prefixFileReader.getDescriptionForNumber(phoneNumber2, language, "", country);
        }
        if (str.length() <= 0) {
            str = getCountryNameForNumber(phoneNumber, locale);
        }
        return str;
    }

    public String getDescriptionForValidNumber(Phonenumber.PhoneNumber phoneNumber, Locale locale, String str) {
        String regionCodeForNumber = this.phoneUtil.getRegionCodeForNumber(phoneNumber);
        return str.equals(regionCodeForNumber) ? getDescriptionForValidNumber(phoneNumber, locale) : getRegionDisplayName(regionCodeForNumber, locale);
    }
}
