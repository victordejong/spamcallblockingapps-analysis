package com.callapp.framework.phone;

import com.callapp.common.util.PhoneNumberUtilWrapper;
import com.callapp.common.util.RegexUtils;
import com.callapp.framework.util.StringUtils;
import com.google.i18n.phonenumbers.C16106a;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/callapp/framework/phone/PhoneNumberUtils.class */
public class PhoneNumberUtils {

    /* renamed from: a */
    private static final Pattern f29684a = Pattern.compile("[-.'\"\\s()]");

    /* renamed from: b */
    private static final Pattern f29685b = Pattern.compile("(^[#*])(.*)([#*])(.*)(#)$");

    /* renamed from: c */
    private static final Pattern f29686c = Pattern.compile("(^[#*])(.*)([#*])(.*)");

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.callapp.framework.phone.PhoneNumberUtils$1 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/framework/phone/PhoneNumberUtils$1.class */
    public static /* synthetic */ class C82141 {

        /* renamed from: a */
        static final /* synthetic */ int[] f29687a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x007d -> B:51:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0081 -> B:45:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0085 -> B:41:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0089 -> B:35:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x008d -> B:49:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0091 -> B:43:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0095 -> B:39:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x0099 -> B:33:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x009d -> B:47:0x0070). Please submit an issue!!! */
        static {
            int[] iArr = new int[PhoneNumberUtil.EnumC16104d.values().length];
            f29687a = iArr;
            try {
                iArr[PhoneNumberUtil.EnumC16104d.UAN.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f29687a[PhoneNumberUtil.EnumC16104d.FIXED_LINE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f29687a[PhoneNumberUtil.EnumC16104d.MOBILE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f29687a[PhoneNumberUtil.EnumC16104d.PAGER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f29687a[PhoneNumberUtil.EnumC16104d.VOIP.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f29687a[PhoneNumberUtil.EnumC16104d.PERSONAL_NUMBER.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f29687a[PhoneNumberUtil.EnumC16104d.PREMIUM_RATE.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f29687a[PhoneNumberUtil.EnumC16104d.SHARED_COST.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f29687a[PhoneNumberUtil.EnumC16104d.TOLL_FREE.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f29687a[PhoneNumberUtil.EnumC16104d.VOICEMAIL.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
        }
    }

    /* renamed from: a */
    public static String m26085a(Phone phone) {
        boolean z;
        String str;
        PhoneNumberUtil.EnumC16104d lineType = phone.getLineType();
        switch (C82141.f29687a[lineType.ordinal()]) {
            case 1:
                z = true;
                str = lineType.name();
                break;
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
                z = false;
                str = lineType.name();
                break;
            default:
                str = "";
                z = false;
                break;
        }
        String str2 = str;
        if (StringUtils.m26045b((CharSequence) str)) {
            str2 = (z ? str.toUpperCase() : StringUtils.m26049a(str.toLowerCase(), new char[0])).replaceAll("_", org.apache.commons.lang3.StringUtils.SPACE);
        }
        return str2;
    }

    /* renamed from: a */
    public static boolean m26084a(String str) {
        return RegexUtils.m31884q(str);
    }

    /* renamed from: b */
    public static String m26082b(String str) {
        if (StringUtils.m26059a((CharSequence) str)) {
            return str;
        }
        Matcher matcher = f29685b.matcher(str);
        if (!matcher.matches()) {
            Matcher matcher2 = f29686c.matcher(str);
            if (matcher2.matches()) {
                str = matcher2.group(4);
            }
        } else if ("".equals(matcher.group(2))) {
            str = matcher.group(4);
        } else {
            str = matcher.group(4) + matcher.group(5);
        }
        return str;
    }

    /* renamed from: b */
    public static boolean m26083b(Phone phone) {
        return PhoneNumberUtil.getInstance().isValidNumberForRegion(phone.getPhoneNumber(), Phone.getCountryRegionProvider().mo26103a());
    }

    /* renamed from: c */
    public static String m26081c(String str) {
        return f29684a.matcher(str).replaceAll("");
    }

    /* renamed from: d */
    public static String m26080d(String str) {
        return str.replace(org.apache.commons.lang3.StringUtils.SPACE, "").replace("(", "").replace(")", "").replace(VerificationLanguage.REGION_PREFIX, "");
    }

    /* renamed from: e */
    public static String m26079e(String str) {
        return String.format("replace(replace(replace(replace(%s,' ','') ,'(',''),')',''),'-','')", str);
    }

    /* renamed from: f */
    public static String m26078f(String str) {
        C16106a asYouTypeFormatter = PhoneNumberUtilWrapper.getInstance().f19147a.getAsYouTypeFormatter(Phone.getCountryRegionProvider().mo26103a());
        String str2 = null;
        if (StringUtils.m26045b((CharSequence) str)) {
            str2 = null;
            for (int i = 0; i < str.length(); i++) {
                str2 = asYouTypeFormatter.m7862a(str.charAt(i));
            }
        }
        asYouTypeFormatter.m7863a();
        return str2;
    }
}
