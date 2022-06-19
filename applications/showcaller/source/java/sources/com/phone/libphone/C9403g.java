package com.phone.libphone;

import com.phone.libphone.PhoneNumberUtil;
import com.phone.libphone.prefixmapper.C9416d;
import java.util.List;
import java.util.Locale;
/* renamed from: com.phone.libphone.g */
/* loaded from: classes2-dex2jar.jar:com/phone/libphone/g.class */
public class C9403g {

    /* renamed from: a */
    private static C9403g f40237a;

    /* renamed from: b */
    private C9416d f40238b;

    /* renamed from: c */
    private PhoneNumberUtil f40239c;

    /* renamed from: d */
    private boolean f40240d = false;

    private C9403g(String str) {
        this.f40238b = null;
        this.f40238b = new C9416d(str);
        if (this.f40239c == null) {
            this.f40239c = PhoneNumberUtil.m693q();
        }
    }

    /* renamed from: a */
    private String m674a(Phonenumber$PhoneNumber phonenumber$PhoneNumber, Locale locale) {
        List<String> m735B = this.f40239c.m735B(phonenumber$PhoneNumber.getCountryCode());
        if (m735B.size() == 1) {
            return m668g(m735B.get(0), locale);
        }
        String str = "ZZ";
        for (String str2 : m735B) {
            if (this.f40239c.m730G(phonenumber$PhoneNumber, str2)) {
                if (!str.equals("ZZ")) {
                    return "";
                }
                str = str2;
            }
        }
        return m668g(str, locale);
    }

    /* renamed from: d */
    public static C9403g m671d() {
        C9403g c9403g;
        synchronized (C9403g.class) {
            try {
                if (f40237a == null) {
                    f40237a = new C9403g(C9410k.f40254g);
                }
                c9403g = f40237a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c9403g;
    }

    /* renamed from: g */
    private String m668g(String str, Locale locale) {
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
    public String m673b(Phonenumber$PhoneNumber phonenumber$PhoneNumber, Locale locale) {
        this.f40240d = false;
        PhoneNumberUtil.PhoneNumberType m687w = this.f40239c.m687w(phonenumber$PhoneNumber);
        if (m687w == PhoneNumberUtil.PhoneNumberType.UNKNOWN) {
            return "";
        }
        if (this.f40239c.m733D(m687w, phonenumber$PhoneNumber.getCountryCode())) {
            return m672c(phonenumber$PhoneNumber, locale);
        }
        this.f40240d = false;
        return m674a(phonenumber$PhoneNumber, locale);
    }

    /* renamed from: c */
    public String m672c(Phonenumber$PhoneNumber phonenumber$PhoneNumber, Locale locale) {
        String str;
        Phonenumber$PhoneNumber phonenumber$PhoneNumber2;
        String language = locale.getLanguage();
        String country = locale.getCountry();
        String m694p = PhoneNumberUtil.m694p(phonenumber$PhoneNumber.getCountryCode());
        String m689u = this.f40239c.m689u(phonenumber$PhoneNumber);
        if (m694p.equals("") || !m689u.startsWith(m694p)) {
            str = this.f40238b.m609b(phonenumber$PhoneNumber, language, "", country);
        } else {
            try {
                phonenumber$PhoneNumber2 = this.f40239c.m718S(m689u.substring(m694p.length()), this.f40239c.m685y(phonenumber$PhoneNumber.getCountryCode()));
            } catch (NumberParseException e) {
                phonenumber$PhoneNumber2 = phonenumber$PhoneNumber;
            }
            str = this.f40238b.m609b(phonenumber$PhoneNumber2, language, "", country);
        }
        if (str.length() > 0) {
            this.f40240d = true;
            return str;
        }
        this.f40240d = false;
        return m674a(phonenumber$PhoneNumber, locale);
    }

    /* renamed from: e */
    public String m670e(Phonenumber$PhoneNumber phonenumber$PhoneNumber, Locale locale) {
        return this.f40239c.m687w(phonenumber$PhoneNumber) == PhoneNumberUtil.PhoneNumberType.UNKNOWN ? "" : m669f(phonenumber$PhoneNumber, locale);
    }

    /* renamed from: f */
    public String m669f(Phonenumber$PhoneNumber phonenumber$PhoneNumber, Locale locale) {
        String str;
        String language = locale.getLanguage();
        String country = locale.getCountry();
        String m694p = PhoneNumberUtil.m694p(phonenumber$PhoneNumber.getCountryCode());
        String m689u = this.f40239c.m689u(phonenumber$PhoneNumber);
        if (m694p.equals("") || !m689u.startsWith(m694p)) {
            str = this.f40238b.m609b(phonenumber$PhoneNumber, language, "", country);
        } else {
            try {
                phonenumber$PhoneNumber = this.f40239c.m718S(m689u.substring(m694p.length()), this.f40239c.m685y(phonenumber$PhoneNumber.getCountryCode()));
            } catch (NumberParseException e) {
            }
            str = this.f40238b.m609b(phonenumber$PhoneNumber, language, "", country);
        }
        return str.length() > 0 ? str : "";
    }

    /* renamed from: h */
    public boolean m667h() {
        return this.f40240d;
    }

    /* renamed from: i */
    public boolean m666i(Phonenumber$PhoneNumber phonenumber$PhoneNumber) {
        return this.f40239c.m732E(phonenumber$PhoneNumber);
    }
}
