package com.callapp.framework.phone;

import com.callapp.common.util.SerializablePair;
import com.callapp.framework.util.SerializableLock;
import com.callapp.framework.util.StringUtils;
import com.google.i18n.phonenumbers.C16128i;
import com.google.i18n.phonenumbers.C16136k;
import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.io.Serializable;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/callapp/framework/phone/Phone.class */
public class Phone implements Serializable {

    /* renamed from: a */
    public static CountryRegionProvider f29661a = new NullCountryRegionProvider();

    /* renamed from: b */
    public static final Phone f29662b = m26093b("");

    /* renamed from: g */
    private static final Locale f29663g = new Locale("en", "US");

    /* renamed from: d */
    public transient String f29665d;

    /* renamed from: e */
    public transient String f29666e;

    /* renamed from: f */
    public transient String f29667f;

    /* renamed from: h */
    private final String f29668h;

    /* renamed from: i */
    private String f29669i;

    /* renamed from: j */
    private transient C16136k.C16137a f29670j;

    /* renamed from: k */
    private transient String f29671k;

    /* renamed from: l */
    private transient String f29672l;

    /* renamed from: m */
    private transient String f29673m;

    /* renamed from: n */
    private transient String f29674n;

    /* renamed from: o */
    private transient String f29675o;

    /* renamed from: p */
    private transient String f29676p;

    /* renamed from: q */
    private transient String f29677q;

    /* renamed from: r */
    private transient String f29678r;

    /* renamed from: s */
    private transient String f29679s;

    /* renamed from: t */
    private Boolean f29680t;

    /* renamed from: v */
    private Boolean f29682v;

    /* renamed from: c */
    public PhoneType f29664c = PhoneType.OTHER;

    /* renamed from: u */
    private final SerializableLock f29681u = new SerializableLock();

    /* renamed from: w */
    private final SerializableLock f29683w = new SerializableLock();

    protected Phone(String str) {
        this.f29668h = str == null ? "" : str;
    }

    /* renamed from: a */
    private static SerializablePair<String, String> m26099a(C16136k.C16137a c16137a) {
        int lengthOfNationalDestinationCode = PhoneNumberUtil.getInstance().getLengthOfNationalDestinationCode(c16137a);
        if (lengthOfNationalDestinationCode > 0) {
            String nationalSignificantNumber = PhoneNumberUtil.getInstance().getNationalSignificantNumber(c16137a);
            if (!StringUtils.m26045b((CharSequence) nationalSignificantNumber)) {
                return null;
            }
            return new SerializablePair<>(nationalSignificantNumber.substring(0, lengthOfNationalDestinationCode), nationalSignificantNumber.substring(lengthOfNationalDestinationCode));
        }
        return null;
    }

    /* renamed from: a */
    public static Phone m26096a(String str, String str2) {
        Phone m26093b = m26093b(str);
        m26093b.f29670j = m26093b.m26088d(str2);
        return m26093b;
    }

    /* renamed from: a */
    private String m26100a(PhoneNumberUtil.EnumC16103c enumC16103c) {
        if (StringUtils.m26059a((CharSequence) this.f29668h)) {
            return "";
        }
        if (!isValid()) {
            return this.f29668h;
        }
        String format = PhoneNumberUtil.getInstance().format(getPhoneNumber(), enumC16103c);
        String str = format;
        if (this.f29669i != null) {
            str = format + "," + this.f29669i;
        }
        return str;
    }

    /* renamed from: a */
    public static String m26097a(String str) {
        if (StringUtils.m26059a((CharSequence) str)) {
            return str;
        }
        String substring = str.substring(0, 1);
        String str2 = str;
        if (!substring.equals("+")) {
            str2 = str;
            if (!StringUtils.m26026g(substring)) {
                str2 = str.substring(1);
            }
        }
        return str2.replace(org.apache.commons.lang3.StringUtils.SPACE, ".").replace(VerificationLanguage.REGION_PREFIX, ".").replace("(", ".").replace(").", ".").replace(")", ".");
    }

    /* renamed from: b */
    public static Phone m26093b(String str) {
        return new Phone(str);
    }

    /* renamed from: b */
    private C16136k.C16137a m26092b(String str, String str2) {
        C16136k.C16137a c16137a;
        this.f29682v = null;
        try {
        } catch (NumberParseException e) {
            C16136k.C16137a c16137a2 = new C16136k.C16137a();
            c16137a2.m7767b(str);
            this.f29682v = null;
            c16137a = c16137a2;
        }
        if (!str.startsWith("*") && !str.startsWith("#")) {
            C16136k.C16137a parse = PhoneNumberUtil.getInstance().parse(str, str2);
            C16136k.C16137a c16137a3 = parse;
            if (parse.f57030b > 999999) {
                c16137a3 = parse;
                if (!str.startsWith("+")) {
                    Boolean valueOf = Boolean.valueOf(PhoneNumberUtil.getInstance().isValidNumber(parse));
                    this.f29682v = valueOf;
                    c16137a3 = parse;
                    if (!valueOf.booleanValue()) {
                        try {
                            C16136k.C16137a parse2 = PhoneNumberUtil.getInstance().parse("+".concat(String.valueOf(str.startsWith("00") ? str.substring(2) : str)), str2);
                            c16137a3 = parse;
                            if (PhoneNumberUtil.getInstance().isValidNumber(parse2)) {
                                try {
                                    this.f29682v = Boolean.TRUE;
                                } catch (NumberParseException e2) {
                                }
                                c16137a3 = parse2;
                            }
                        } catch (NumberParseException e3) {
                            c16137a3 = parse;
                        }
                    }
                }
            }
            if (c16137a3.f57030b <= 99999) {
                C16136k.C16137a c16137a4 = new C16136k.C16137a();
                c16137a4.m7767b(str);
                this.f29682v = null;
                c16137a = c16137a4;
            } else if (c16137a3.f57031c) {
                this.f29669i = c16137a3.f57032d;
                c16137a3.m7777a();
                c16137a = c16137a3;
            } else {
                this.f29669i = null;
                c16137a = c16137a3;
            }
            return c16137a;
        }
        C16136k.C16137a c16137a5 = new C16136k.C16137a();
        c16137a5.m7767b(str);
        c16137a = c16137a5;
        return c16137a;
    }

    /* renamed from: b */
    private boolean m26094b(C16136k.C16137a c16137a) {
        if (this.f29682v == null) {
            synchronized (this.f29683w) {
                if (this.f29682v == null) {
                    this.f29682v = Boolean.valueOf(PhoneNumberUtil.getInstance().isValidNumber(c16137a));
                }
            }
        }
        return this.f29682v.booleanValue();
    }

    /* renamed from: c */
    private String m26090c(String str) {
        String str2 = str;
        if (this.f29668h.length() >= 2) {
            str2 = str;
            if (this.f29668h.charAt(0) == '0') {
                str2 = str;
                if (str.equals(Long.toString(getNationalNumber()))) {
                    str2 = "0".concat(String.valueOf(str));
                }
            }
        }
        return str2;
    }

    /* renamed from: d */
    private C16136k.C16137a m26088d(String str) {
        C16136k.C16137a c16137a = this.f29670j;
        if (c16137a != null) {
            return c16137a;
        }
        synchronized (this.f29683w) {
            String m26082b = PhoneNumberUtils.m26082b(PhoneNumberUtils.m26081c(this.f29668h));
            C16136k.C16137a m26092b = m26092b(m26082b, str);
            if (m26094b(m26092b)) {
                return m26092b;
            }
            long j = m26092b.f57030b;
            if (j == 0) {
                return m26092b;
            }
            if (!m26082b.equals(Long.toString(j))) {
                return m26092b;
            }
            SerializablePair<String, String> m26099a = m26099a(m26092b);
            String mo26102b = f29661a.mo26102b();
            if (!StringUtils.m26059a((CharSequence) mo26102b) && (m26099a == null || !StringUtils.m26042b(m26099a.f19154a, mo26102b))) {
                C16136k.C16137a m26092b2 = m26092b(mo26102b + m26082b, str);
                C16136k.C16137a c16137a2 = m26092b;
                if (PhoneNumberUtil.getInstance().getCountryCodeForRegion(str) == m26092b2.f57029a) {
                    c16137a2 = m26092b;
                    if (PhoneNumberUtil.getInstance().isValidNumber(m26092b2)) {
                        this.f29682v = Boolean.TRUE;
                        c16137a2 = m26092b2;
                    }
                }
                return c16137a2;
            }
            return m26092b;
        }
    }

    /* renamed from: f */
    private void m26086f() {
        SerializablePair<String, String> m26099a = m26099a(getPhoneNumber());
        if (m26099a != null) {
            this.f29678r = m26099a.f19154a;
            this.f29679s = m26099a.f19155b;
        }
    }

    public static CountryRegionProvider getCountryRegionProvider() {
        return f29661a;
    }

    public static void setCountryRegionProvider(CountryRegionProvider countryRegionProvider) {
        f29661a = countryRegionProvider;
    }

    /* renamed from: a */
    public final String m26101a() {
        if (this.f29671k == null) {
            this.f29671k = PhoneNumberUtils.m26081c(m26100a(PhoneNumberUtil.EnumC16103c.E164));
        }
        return this.f29671k;
    }

    /* renamed from: a */
    public final String m26098a(CharSequence charSequence) {
        if (this.f29673m == null) {
            if (charSequence == null || !charSequence.equals(getRegionCode())) {
                this.f29673m = m26091c();
            } else {
                this.f29673m = m26089d();
            }
        }
        return this.f29673m;
    }

    /* renamed from: b */
    public final String m26095b() {
        if (this.f29672l == null) {
            this.f29672l = PhoneNumberUtils.m26081c(m26090c(m26100a(PhoneNumberUtil.EnumC16103c.NATIONAL)));
        }
        return this.f29672l;
    }

    /* renamed from: c */
    public final String m26091c() {
        if (this.f29675o == null) {
            this.f29675o = m26100a(PhoneNumberUtil.EnumC16103c.INTERNATIONAL);
        }
        return this.f29675o;
    }

    /* renamed from: d */
    public final String m26089d() {
        if (this.f29674n == null) {
            this.f29674n = m26100a(PhoneNumberUtil.EnumC16103c.NATIONAL);
        }
        return this.f29674n;
    }

    /* renamed from: e */
    public final String m26087e() {
        return m26098a((CharSequence) f29661a.mo26103a());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Phone) {
            return m26101a().equals(((Phone) obj).m26101a());
        }
        return false;
    }

    public String getCarrier() {
        C16128i m7802a = C16128i.m7802a();
        C16136k.C16137a phoneNumber = getPhoneNumber();
        Locale locale = Locale.getDefault();
        if (C16128i.m7801a(m7802a.f56948b.getNumberType(phoneNumber))) {
            return m7802a.f56947a.m7825a(phoneNumber, locale.getLanguage(), "", locale.getCountry());
        }
        return "";
    }

    public int getCountryCode() {
        return getPhoneNumber().f57029a;
    }

    public String getCustomType() {
        return this.f29676p;
    }

    public PhoneNumberUtil.EnumC16104d getLineType() {
        return PhoneNumberUtil.getInstance().getNumberType(getPhoneNumber());
    }

    public String getLocalNumberWithoutAreaCode() {
        if (this.f29679s == null) {
            m26086f();
        }
        return this.f29679s;
    }

    public String getNDC() {
        if (this.f29678r == null) {
            m26086f();
        }
        return this.f29678r;
    }

    public long getNationalNumber() {
        return getPhoneNumber().f57030b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x00b3, code lost:
        if (r0 != com.google.i18n.phonenumbers.PhoneNumberUtil.EnumC16104d.MOBILE) goto L26;
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

    public C16136k.C16137a getPhoneNumber() {
        if (this.f29670j == null) {
            synchronized (this) {
                this.f29670j = m26088d(f29661a.mo26103a());
            }
        }
        return this.f29670j;
    }

    public String getRawNumber() {
        return this.f29668h;
    }

    public String getRegionCode() {
        if (this.f29677q == null) {
            this.f29677q = PhoneNumberUtil.getInstance().getRegionCodeForNumber(getPhoneNumber());
        }
        return this.f29677q;
    }

    public PhoneType getType() {
        return this.f29664c;
    }

    public int hashCode() {
        return m26101a().hashCode();
    }

    public boolean isEmpty() {
        return this.f29668h.length() == 0;
    }

    public boolean isNotEmpty() {
        return this.f29668h.length() > 0;
    }

    public boolean isValid() {
        return getNationalNumber() != 0;
    }

    public boolean isValidForSearch() {
        if (this.f29680t == null) {
            synchronized (this.f29681u) {
                if (this.f29680t == null) {
                    this.f29680t = Boolean.valueOf(isValid() && getNationalNumber() > 99999 && !this.f29668h.startsWith("000") && !this.f29668h.startsWith("+000") && m26094b(getPhoneNumber()));
                }
            }
        }
        return this.f29680t.booleanValue();
    }

    public void setCustomType(String str) {
        this.f29676p = str;
    }

    public String toString() {
        return getRawNumber();
    }
}
