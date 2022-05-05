package com.google.i18n.phonenumbers.geocoding;

import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.Phonenumber;
import com.google.i18n.phonenumbers.prefixmapper.PrefixFileReader;
import java.util.List;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/geocoding/PhoneNumberOfflineGeocoder.class */
public class PhoneNumberOfflineGeocoder {

    /* renamed from: c */
    private static PhoneNumberOfflineGeocoder f12384c;

    /* renamed from: a */
    private PrefixFileReader f12385a;

    /* renamed from: b */
    private final PhoneNumberUtil f12386b = PhoneNumberUtil.m7999t();

    PhoneNumberOfflineGeocoder(String str) {
        this.f12385a = null;
        this.f12385a = new PrefixFileReader(str);
    }

    /* renamed from: a */
    private String m7877a(Phonenumber.PhoneNumber phoneNumber, Locale locale) {
        List<String> F = this.f12386b.m8052F(phoneNumber.m7902e());
        if (F.size() == 1) {
            return m7873e(F.get(0), locale);
        }
        String str = "ZZ";
        for (String str2 : F) {
            if (this.f12386b.m8041Q(phoneNumber, str2)) {
                if (!str.equals("ZZ")) {
                    return "";
                }
                str = str2;
            }
        }
        return m7873e(str, locale);
    }

    /* renamed from: d */
    public static PhoneNumberOfflineGeocoder m7874d() {
        PhoneNumberOfflineGeocoder phoneNumberOfflineGeocoder;
        synchronized (PhoneNumberOfflineGeocoder.class) {
            try {
                if (f12384c == null) {
                    f12384c = new PhoneNumberOfflineGeocoder("/com/google/i18n/phonenumbers/geocoding/data/");
                }
                phoneNumberOfflineGeocoder = f12384c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return phoneNumberOfflineGeocoder;
    }

    /* renamed from: e */
    private String m7873e(String str, Locale locale) {
        String str2 = "";
        if (str != null) {
            str2 = "";
            if (!str.equals("ZZ")) {
                str2 = str.equals("001") ? "" : new Locale("", str).getDisplayCountry(locale);
            }
        }
        return str2;
    }

    /* renamed from: b */
    public String m7876b(Phonenumber.PhoneNumber phoneNumber, Locale locale) {
        PhoneNumberUtil.PhoneNumberType A = this.f12386b.m8057A(phoneNumber);
        return A == PhoneNumberUtil.PhoneNumberType.UNKNOWN ? "" : !this.f12386b.m8049I(A, phoneNumber.m7902e()) ? m7877a(phoneNumber, locale) : m7875c(phoneNumber, locale);
    }

    /* renamed from: c */
    public String m7875c(Phonenumber.PhoneNumber phoneNumber, Locale locale) {
        String str;
        Phonenumber.PhoneNumber phoneNumber2;
        String language = locale.getLanguage();
        String country = locale.getCountry();
        String s = PhoneNumberUtil.m8000s(phoneNumber.m7902e());
        String x = this.f12386b.m7995x(phoneNumber);
        if (s.equals("") || !x.startsWith(s)) {
            str = this.f12385a.m7846b(phoneNumber, language, "", country);
        } else {
            try {
                phoneNumber2 = this.f12386b.m8026c0(x.substring(s.length()), this.f12386b.m8055C(phoneNumber.m7902e()));
            } catch (NumberParseException e) {
                phoneNumber2 = phoneNumber;
            }
            str = this.f12385a.m7846b(phoneNumber2, language, "", country);
        }
        if (str.length() <= 0) {
            str = m7877a(phoneNumber, locale);
        }
        return str;
    }
}
