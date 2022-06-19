package p000;

import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.Phonenumber;
import java.io.Serializable;
/* renamed from: i91 */
/* loaded from: classes3-dex2jar.jar:i91.class */
public final class i91 implements Serializable {

    /* renamed from: s */
    public static final String[] f6746s = {"911", "112"};

    /* renamed from: a */
    public String f6747a;

    /* renamed from: b */
    public String f6748b;

    /* renamed from: c */
    public String f6749c;

    /* renamed from: d */
    public String f6750d;

    /* renamed from: f */
    public String f6751f;

    /* renamed from: g */
    public String[] f6752g;

    /* renamed from: h */
    public String f6753h;

    /* renamed from: j */
    public boolean f6754j;

    /* renamed from: k */
    public boolean f6755k;

    /* renamed from: l */
    public boolean f6756l;

    /* renamed from: m */
    public boolean f6757m;

    /* renamed from: n */
    public boolean f6758n;

    /* renamed from: o */
    public boolean f6759o;

    /* renamed from: p */
    public String f6760p;

    /* renamed from: q */
    public String f6761q;

    /* renamed from: r */
    public PhoneNumberUtil.PhoneNumberType f6762r;

    /* renamed from: i91$a */
    /* loaded from: classes3-dex2jar.jar:i91$a.class */
    public static /* synthetic */ class C1445a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f6763a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0095 -> B:49:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0099 -> B:43:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x009d -> B:61:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00a1 -> B:53:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00a5 -> B:47:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00a9 -> B:41:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00ad -> B:59:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b1 -> B:51:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00b5 -> B:45:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00b9 -> B:39:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00bd -> B:57:0x0088). Please submit an issue!!! */
        static {
            int[] iArr = new int[PhoneNumberUtil.PhoneNumberType.values().length];
            f6763a = iArr;
            try {
                iArr[PhoneNumberUtil.PhoneNumberType.FIXED_LINE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f6763a[PhoneNumberUtil.PhoneNumberType.MOBILE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f6763a[PhoneNumberUtil.PhoneNumberType.FIXED_LINE_OR_MOBILE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f6763a[PhoneNumberUtil.PhoneNumberType.TOLL_FREE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f6763a[PhoneNumberUtil.PhoneNumberType.PREMIUM_RATE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f6763a[PhoneNumberUtil.PhoneNumberType.SHARED_COST.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f6763a[PhoneNumberUtil.PhoneNumberType.VOIP.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f6763a[PhoneNumberUtil.PhoneNumberType.PERSONAL_NUMBER.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f6763a[PhoneNumberUtil.PhoneNumberType.PAGER.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f6763a[PhoneNumberUtil.PhoneNumberType.UAN.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f6763a[PhoneNumberUtil.PhoneNumberType.VOICEMAIL.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f6763a[PhoneNumberUtil.PhoneNumberType.UNKNOWN.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
        }
    }

    /* renamed from: i91$b */
    /* loaded from: classes3-dex2jar.jar:i91$b.class */
    public enum EnumC1446b {
        FULL(i61.mask_full),
        PARTIAL(i61.mask_partial),
        AREA_CODE(i61.mask_area),
        WHOLE_COUNTRY(i61.mask_country),
        ARBITRARY(i61.mask_arbitrary);
        

        /* renamed from: a */
        public int f6770a;

        EnumC1446b(int i) {
            this.f6770a = i;
        }

        /* renamed from: a */
        public int m1589a() {
            return this.f6770a;
        }
    }

    public i91(String str, int i) {
        this(str, b91.m5723k(i).toUpperCase());
    }

    public i91(String str, int i, String str2) {
        this(str, b91.m5723k(i).toUpperCase());
        m1591w(str2);
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x0486  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x04ac  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x04d5  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x04f4  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0519  */
    /* JADX WARN: Removed duplicated region for block: B:156:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00a9  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x041f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public i91(java.lang.String r7, java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 1343
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.i91.<init>(java.lang.String, java.lang.String):void");
    }

    public i91(String str, String str2, String str3) {
        this(str, str2);
        m1591w(str3);
    }

    /* renamed from: a */
    public static i91 m1613a(String str, String str2) {
        PhoneNumberUtil phoneNumberUtil;
        String str3;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String str4 = str2;
        if (TextUtils.isEmpty(str2)) {
            str4 = b91.m5723k(0);
        }
        String upperCase = str4.toUpperCase();
        try {
            phoneNumberUtil = PhoneNumberUtil.getInstance();
        } catch (Throwable th) {
            phoneNumberUtil = null;
        }
        if (phoneNumberUtil == null) {
            return null;
        }
        try {
            if (phoneNumberUtil.isValidNumber(phoneNumberUtil.parse(str, upperCase))) {
                return new i91(str, upperCase);
            }
        } catch (Throwable th2) {
        }
        try {
            if (phoneNumberUtil.isValidNumber(phoneNumberUtil.parse("+" + str, upperCase))) {
                return new i91(str, upperCase);
            }
        } catch (Throwable th3) {
        }
        int m1611c = m1611c(upperCase);
        if (m1611c <= 0) {
            return null;
        }
        for (int i = 0; i < 6; i++) {
            String str5 = new String[]{"222222222222222", "333333333333333", "444444444444444", "555555555555555", "666666666666666", "777777777777777"}[i];
            try {
                Phonenumber.PhoneNumber parse = phoneNumberUtil.parse(("+" + m1611c + str) + str5.substring(0, str5.length() - str3.length()), upperCase);
                phoneNumberUtil.truncateTooLongNumber(parse);
                if (phoneNumberUtil.isValidNumber(parse)) {
                    String substring = String.valueOf(parse.getNationalNumber()).substring(0, phoneNumberUtil.getLengthOfNationalDestinationCode(parse));
                    if ((!TextUtils.isEmpty(substring) && substring.equals(str)) || substring.replaceAll("^0+", "").equals(str.replaceAll("^0+", ""))) {
                        return new i91(phoneNumberUtil.format(parse, PhoneNumberUtil.PhoneNumberFormat.INTERNATIONAL), upperCase);
                    }
                } else {
                    continue;
                }
            } catch (Throwable th4) {
            }
        }
        return null;
    }

    /* renamed from: c */
    public static int m1611c(String str) {
        return PhoneNumberUtil.getInstance().getCountryCodeForRegion(str.toUpperCase());
    }

    /* renamed from: x */
    public static void m1590x() {
        try {
            PhoneNumberUtil.getInstance().parse("+1(800)555-5555", "US");
        } catch (Throwable th) {
        }
    }

    /* renamed from: b */
    public String m1612b() {
        return this.f6760p;
    }

    /* renamed from: d */
    public String m1610d() {
        if (this.f6752g == null) {
            return null;
        }
        return m1607g(EnumC1446b.AREA_CODE).replaceAll(".*\\((\\d+)\\).*", "$1");
    }

    /* renamed from: e */
    public String m1609e() {
        PhoneNumberUtil phoneNumberUtil = PhoneNumberUtil.getInstance();
        try {
            return phoneNumberUtil.format(phoneNumberUtil.parse(this.f6747a, (String) null), PhoneNumberUtil.PhoneNumberFormat.INTERNATIONAL);
        } catch (NumberParseException e) {
            e.printStackTrace();
            String str = this.f6747a;
            if (str == null) {
                str = "";
            }
            return str;
        }
    }

    /* renamed from: f */
    public String m1608f() {
        return this.f6753h;
    }

    /* renamed from: g */
    public String m1607g(EnumC1446b enumC1446b) {
        if (this.f6752g == null && enumC1446b == EnumC1446b.ARBITRARY && !TextUtils.isEmpty(this.f6751f)) {
            return this.f6751f;
        }
        String[] strArr = this.f6752g;
        return strArr == null ? this.f6748b : strArr[enumC1446b.ordinal()];
    }

    /* renamed from: h */
    public String m1606h() {
        return this.f6761q;
    }

    /* renamed from: i */
    public String m1605i() {
        return this.f6747a;
    }

    /* renamed from: j */
    public PhoneNumberUtil.PhoneNumberType m1604j() {
        return this.f6762r;
    }

    /* renamed from: k */
    public int m1603k() {
        switch (C1445a.f6763a[this.f6762r.ordinal()]) {
            case 1:
                return i61.phone_type_fixed_line;
            case 2:
                return i61.phone_type_mobile;
            case 3:
                return i61.phone_type_fixed_or_mobile;
            case 4:
                return i61.phone_type_toll_free;
            case 5:
                return i61.phone_type_premium_rate;
            case 6:
                return i61.phone_type_shared_cost;
            case 7:
                return i61.phone_type_voip;
            case 8:
                return i61.phone_type_personal;
            case 9:
                return i61.phone_type_pager;
            case 10:
                return i61.phone_type_uan;
            case 11:
                return i61.phone_type_voicemail;
            case 12:
                return i61.phone_type_regular;
            default:
                return i61.phone_type_regular;
        }
    }

    /* renamed from: l */
    public String m1602l() {
        return this.f6750d;
    }

    /* renamed from: m */
    public String m1601m() {
        return this.f6749c;
    }

    /* renamed from: n */
    public boolean m1600n() {
        return this.f6757m;
    }

    /* renamed from: o */
    public boolean m1599o() {
        return this.f6758n;
    }

    /* renamed from: p */
    public boolean m1598p() {
        try {
            if (PhoneNumberUtils.isEmergencyNumber(this.f6748b)) {
                return true;
            }
        } catch (SecurityException e) {
        }
        for (String str : f6746s) {
            if (this.f6748b.equals(str)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: q */
    public boolean m1597q() {
        return this.f6754j;
    }

    /* renamed from: r */
    public boolean m1596r() {
        return this.f6759o;
    }

    /* renamed from: s */
    public boolean m1595s() {
        return this.f6755k;
    }

    /* renamed from: t */
    public boolean m1594t() {
        return this.f6756l;
    }

    public String toString() {
        return this.f6748b;
    }

    /* renamed from: u */
    public final void m1593u() {
        this.f6754j = true;
        this.f6747a = "";
        this.f6748b = "";
        this.f6749c = fa1.m1840j().getString(i61.number_private);
    }

    /* renamed from: v */
    public final void m1592v() {
        this.f6755k = true;
        this.f6747a = "";
        this.f6748b = "";
        this.f6749c = fa1.m1840j().getString(i61.number_unknown);
    }

    /* renamed from: w */
    public void m1591w(String str) {
        if (str == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.f6751f = str.replaceAll("[^\\d\\+\\*\\?]+", "");
        String[] strArr = this.f6752g;
        if (strArr == null) {
            return;
        }
        strArr[EnumC1446b.ARBITRARY.ordinal()] = this.f6751f;
    }
}
