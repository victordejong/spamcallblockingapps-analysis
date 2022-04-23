package com.callapp.framework.phone;

import com.callapp.common.util.SerializablePair;
import com.callapp.framework.util.SerializableLock;
import com.callapp.framework.util.StringUtils;
import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.i;
import com.google.i18n.phonenumbers.k;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.io.Serializable;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/callapp/framework/phone/Phone.class */
public class Phone implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    public static CountryRegionProvider f17099a = new NullCountryRegionProvider();

    /* renamed from: b  reason: collision with root package name */
    public static final Phone f17100b = b("");
    private static final Locale g = new Locale("en", "US");

    /* renamed from: d  reason: collision with root package name */
    public transient String f17102d;
    public transient String e;
    public transient String f;
    private final String h;
    private String i;
    private transient k.a j;
    private transient String k;
    private transient String l;
    private transient String m;
    private transient String n;
    private transient String o;
    private transient String p;
    private transient String q;
    private transient String r;
    private transient String s;
    private Boolean t;
    private Boolean v;

    /* renamed from: c  reason: collision with root package name */
    public PhoneType f17101c = PhoneType.OTHER;
    private final SerializableLock u = new SerializableLock();
    private final SerializableLock w = new SerializableLock();

    protected Phone(String str) {
        this.h = str == null ? "" : str;
    }

    private static SerializablePair<String, String> a(k.a aVar) {
        int lengthOfNationalDestinationCode = PhoneNumberUtil.getInstance().getLengthOfNationalDestinationCode(aVar);
        if (lengthOfNationalDestinationCode <= 0) {
            return null;
        }
        String nationalSignificantNumber = PhoneNumberUtil.getInstance().getNationalSignificantNumber(aVar);
        if (StringUtils.b((CharSequence) nationalSignificantNumber)) {
            return new SerializablePair<>(nationalSignificantNumber.substring(0, lengthOfNationalDestinationCode), nationalSignificantNumber.substring(lengthOfNationalDestinationCode));
        }
        return null;
    }

    public static Phone a(String str, String str2) {
        Phone b2 = b(str);
        b2.j = b2.d(str2);
        return b2;
    }

    private String a(PhoneNumberUtil.c cVar) {
        if (StringUtils.a((CharSequence) this.h)) {
            return "";
        }
        if (!isValid()) {
            return this.h;
        }
        String format = PhoneNumberUtil.getInstance().format(getPhoneNumber(), cVar);
        String str = format;
        if (this.i != null) {
            str = format + "," + this.i;
        }
        return str;
    }

    public static String a(String str) {
        if (StringUtils.a((CharSequence) str)) {
            return str;
        }
        String substring = str.substring(0, 1);
        String str2 = str;
        if (!substring.equals("+")) {
            str2 = str;
            if (!StringUtils.g(substring)) {
                str2 = str.substring(1);
            }
        }
        return str2.replace(org.apache.commons.lang3.StringUtils.SPACE, ".").replace(VerificationLanguage.REGION_PREFIX, ".").replace("(", ".").replace(").", ".").replace(")", ".");
    }

    public static Phone b(String str) {
        return new Phone(str);
    }

    private k.a b(String str, String str2) {
        k.a aVar;
        this.v = null;
        try {
        } catch (NumberParseException e) {
            k.a aVar2 = new k.a();
            aVar2.b(str);
            this.v = null;
            aVar = aVar2;
        }
        if (!str.startsWith("*") && !str.startsWith("#")) {
            k.a parse = PhoneNumberUtil.getInstance().parse(str, str2);
            k.a aVar3 = parse;
            if (parse.f32891b > 999999) {
                aVar3 = parse;
                if (!str.startsWith("+")) {
                    Boolean valueOf = Boolean.valueOf(PhoneNumberUtil.getInstance().isValidNumber(parse));
                    this.v = valueOf;
                    aVar3 = parse;
                    if (!valueOf.booleanValue()) {
                        try {
                            k.a parse2 = PhoneNumberUtil.getInstance().parse("+".concat(String.valueOf(str.startsWith("00") ? str.substring(2) : str)), str2);
                            aVar3 = parse;
                            if (PhoneNumberUtil.getInstance().isValidNumber(parse2)) {
                                try {
                                    this.v = Boolean.TRUE;
                                } catch (NumberParseException e2) {
                                }
                                aVar3 = parse2;
                            }
                        } catch (NumberParseException e3) {
                            aVar3 = parse;
                        }
                    }
                }
            }
            if (aVar3.f32891b <= 99999) {
                k.a aVar4 = new k.a();
                aVar4.b(str);
                this.v = null;
                aVar = aVar4;
            } else if (aVar3.f32892c) {
                this.i = aVar3.f32893d;
                aVar3.a();
                aVar = aVar3;
            } else {
                this.i = null;
                aVar = aVar3;
            }
            return aVar;
        }
        k.a aVar5 = new k.a();
        aVar5.b(str);
        aVar = aVar5;
        return aVar;
    }

    private boolean b(k.a aVar) {
        if (this.v == null) {
            synchronized (this.w) {
                if (this.v == null) {
                    this.v = Boolean.valueOf(PhoneNumberUtil.getInstance().isValidNumber(aVar));
                }
            }
        }
        return this.v.booleanValue();
    }

    private String c(String str) {
        String str2 = str;
        if (this.h.length() >= 2) {
            str2 = str;
            if (this.h.charAt(0) == '0') {
                str2 = str;
                if (str.equals(Long.toString(getNationalNumber()))) {
                    str2 = "0".concat(String.valueOf(str));
                }
            }
        }
        return str2;
    }

    private k.a d(String str) {
        k.a aVar = this.j;
        if (aVar != null) {
            return aVar;
        }
        synchronized (this.w) {
            String b2 = PhoneNumberUtils.b(PhoneNumberUtils.c(this.h));
            k.a b3 = b(b2, str);
            if (b(b3)) {
                return b3;
            }
            long j = b3.f32891b;
            if (j == 0) {
                return b3;
            }
            if (!b2.equals(Long.toString(j))) {
                return b3;
            }
            SerializablePair<String, String> a2 = a(b3);
            String b4 = f17099a.b();
            if (!StringUtils.a((CharSequence) b4) && (a2 == null || !StringUtils.b(a2.f10397a, b4))) {
                k.a b5 = b(b4 + b2, str);
                k.a aVar2 = b3;
                if (PhoneNumberUtil.getInstance().getCountryCodeForRegion(str) == b5.f32890a) {
                    aVar2 = b3;
                    if (PhoneNumberUtil.getInstance().isValidNumber(b5)) {
                        this.v = Boolean.TRUE;
                        aVar2 = b5;
                    }
                }
                return aVar2;
            }
            return b3;
        }
    }

    private void f() {
        SerializablePair<String, String> a2 = a(getPhoneNumber());
        if (a2 != null) {
            this.r = a2.f10397a;
            this.s = a2.f10398b;
        }
    }

    public static CountryRegionProvider getCountryRegionProvider() {
        return f17099a;
    }

    public static void setCountryRegionProvider(CountryRegionProvider countryRegionProvider) {
        f17099a = countryRegionProvider;
    }

    public final String a() {
        if (this.k == null) {
            this.k = PhoneNumberUtils.c(a(PhoneNumberUtil.c.E164));
        }
        return this.k;
    }

    public final String a(CharSequence charSequence) {
        if (this.m == null) {
            if (charSequence == null || !charSequence.equals(getRegionCode())) {
                this.m = c();
            } else {
                this.m = d();
            }
        }
        return this.m;
    }

    public final String b() {
        if (this.l == null) {
            this.l = PhoneNumberUtils.c(c(a(PhoneNumberUtil.c.NATIONAL)));
        }
        return this.l;
    }

    public final String c() {
        if (this.o == null) {
            this.o = a(PhoneNumberUtil.c.INTERNATIONAL);
        }
        return this.o;
    }

    public final String d() {
        if (this.n == null) {
            this.n = a(PhoneNumberUtil.c.NATIONAL);
        }
        return this.n;
    }

    public final String e() {
        return a((CharSequence) f17099a.a());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Phone)) {
            return false;
        }
        return a().equals(((Phone) obj).a());
    }

    public String getCarrier() {
        i a2 = i.a();
        k.a phoneNumber = getPhoneNumber();
        Locale locale = Locale.getDefault();
        if (!i.a(a2.f32876b.getNumberType(phoneNumber))) {
            return "";
        }
        return a2.f32875a.a(phoneNumber, locale.getLanguage(), "", locale.getCountry());
    }

    public int getCountryCode() {
        return getPhoneNumber().f32890a;
    }

    public String getCustomType() {
        return this.p;
    }

    public PhoneNumberUtil.d getLineType() {
        return PhoneNumberUtil.getInstance().getNumberType(getPhoneNumber());
    }

    public String getLocalNumberWithoutAreaCode() {
        if (this.s == null) {
            f();
        }
        return this.s;
    }

    public String getNDC() {
        if (this.r == null) {
            f();
        }
        return this.r;
    }

    public long getNationalNumber() {
        return getPhoneNumber().f32891b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00b3, code lost:
        if (r0 != com.google.i18n.phonenumbers.PhoneNumberUtil.d.MOBILE) goto L_0x00b6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getPhoneInfo() {
        /*
            Method dump skipped, instructions count: 261
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.framework.phone.Phone.getPhoneInfo():java.lang.String");
    }

    public k.a getPhoneNumber() {
        if (this.j == null) {
            synchronized (this) {
                this.j = d(f17099a.a());
            }
        }
        return this.j;
    }

    public String getRawNumber() {
        return this.h;
    }

    public String getRegionCode() {
        if (this.q == null) {
            this.q = PhoneNumberUtil.getInstance().getRegionCodeForNumber(getPhoneNumber());
        }
        return this.q;
    }

    public PhoneType getType() {
        return this.f17101c;
    }

    public int hashCode() {
        return a().hashCode();
    }

    public boolean isEmpty() {
        return this.h.length() == 0;
    }

    public boolean isNotEmpty() {
        return this.h.length() > 0;
    }

    public boolean isValid() {
        return getNationalNumber() != 0;
    }

    public boolean isValidForSearch() {
        if (this.t == null) {
            synchronized (this.u) {
                if (this.t == null) {
                    this.t = Boolean.valueOf(isValid() && getNationalNumber() > 99999 && !this.h.startsWith("000") && !this.h.startsWith("+000") && b(getPhoneNumber()));
                }
            }
        }
        return this.t.booleanValue();
    }

    public void setCustomType(String str) {
        this.p = str;
    }

    public String toString() {
        return getRawNumber();
    }
}
