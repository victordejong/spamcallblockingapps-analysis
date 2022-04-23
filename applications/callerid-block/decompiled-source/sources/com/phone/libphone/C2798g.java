package com.phone.libphone;

import com.phone.libphone.PhoneNumberUtil;
import com.phone.libphone.prefixmapper.C2811d;
import java.util.List;
import java.util.Locale;
/* renamed from: com.phone.libphone.g */
/* loaded from: classes2-dex2jar.jar:com/phone/libphone/g.class */
public class C2798g {

    /* renamed from: d */
    private static C2798g f11634d;

    /* renamed from: a */
    private C2811d f11635a;

    /* renamed from: b */
    private PhoneNumberUtil f11636b;

    /* renamed from: c */
    private boolean f11637c = false;

    private C2798g(String str) {
        this.f11635a = null;
        this.f11635a = new C2811d(str);
        if (this.f11636b == null) {
            this.f11636b = PhoneNumberUtil.m1676q();
        }
    }

    /* renamed from: a */
    private String m1657a(Phonenumber$PhoneNumber phonenumber$PhoneNumber, Locale locale) {
        List<String> B = this.f11636b.m1718B(phonenumber$PhoneNumber.getCountryCode());
        if (B.size() == 1) {
            return m1653e(B.get(0), locale);
        }
        String str = "ZZ";
        for (String str2 : B) {
            if (this.f11636b.m1713G(phonenumber$PhoneNumber, str2)) {
                if (!str.equals("ZZ")) {
                    return "";
                }
                str = str2;
            }
        }
        return m1653e(str, locale);
    }

    /* renamed from: d */
    public static C2798g m1654d() {
        C2798g gVar;
        synchronized (C2798g.class) {
            try {
                if (f11634d == null) {
                    f11634d = new C2798g(C2805k.f11648d);
                }
                gVar = f11634d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return gVar;
    }

    /* renamed from: e */
    private String m1653e(String str, Locale locale) {
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
    public String m1656b(Phonenumber$PhoneNumber phonenumber$PhoneNumber, Locale locale) {
        this.f11637c = false;
        PhoneNumberUtil.PhoneNumberType w = this.f11636b.m1670w(phonenumber$PhoneNumber);
        if (w == PhoneNumberUtil.PhoneNumberType.UNKNOWN) {
            return "";
        }
        if (this.f11636b.m1716D(w, phonenumber$PhoneNumber.getCountryCode())) {
            return m1655c(phonenumber$PhoneNumber, locale);
        }
        this.f11637c = false;
        return m1657a(phonenumber$PhoneNumber, locale);
    }

    /* renamed from: c */
    public String m1655c(Phonenumber$PhoneNumber phonenumber$PhoneNumber, Locale locale) {
        String str;
        Phonenumber$PhoneNumber phonenumber$PhoneNumber2;
        String language = locale.getLanguage();
        String country = locale.getCountry();
        String p = PhoneNumberUtil.m1677p(phonenumber$PhoneNumber.getCountryCode());
        String u = this.f11636b.m1672u(phonenumber$PhoneNumber);
        if (p.equals("") || !u.startsWith(p)) {
            str = this.f11635a.m1595b(phonenumber$PhoneNumber, language, "", country);
        } else {
            try {
                phonenumber$PhoneNumber2 = this.f11636b.m1701S(u.substring(p.length()), this.f11636b.m1668y(phonenumber$PhoneNumber.getCountryCode()));
            } catch (NumberParseException e) {
                phonenumber$PhoneNumber2 = phonenumber$PhoneNumber;
            }
            str = this.f11635a.m1595b(phonenumber$PhoneNumber2, language, "", country);
        }
        if (str.length() > 0) {
            this.f11637c = true;
            return str;
        }
        this.f11637c = false;
        return m1657a(phonenumber$PhoneNumber, locale);
    }

    /* renamed from: f */
    public boolean m1652f() {
        return this.f11637c;
    }

    /* renamed from: g */
    public boolean m1651g(Phonenumber$PhoneNumber phonenumber$PhoneNumber) {
        return this.f11636b.m1715E(phonenumber$PhoneNumber);
    }
}
