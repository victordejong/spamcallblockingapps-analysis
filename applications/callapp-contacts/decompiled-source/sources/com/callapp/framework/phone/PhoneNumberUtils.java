package com.callapp.framework.phone;

import com.callapp.common.util.PhoneNumberUtilWrapper;
import com.callapp.common.util.RegexUtils;
import com.callapp.framework.util.StringUtils;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.a;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/callapp/framework/phone/PhoneNumberUtils.class */
public class PhoneNumberUtils {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f17103a = Pattern.compile("[-.'\"\\s()]");

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f17104b = Pattern.compile("(^[#*])(.*)([#*])(.*)(#)$");

    /* renamed from: c  reason: collision with root package name */
    private static final Pattern f17105c = Pattern.compile("(^[#*])(.*)([#*])(.*)");

    /* renamed from: com.callapp.framework.phone.PhoneNumberUtils$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/framework/phone/PhoneNumberUtils$1.class */
    static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f17106a;

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
            int[] iArr = new int[PhoneNumberUtil.d.values().length];
            f17106a = iArr;
            try {
                iArr[PhoneNumberUtil.d.UAN.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f17106a[PhoneNumberUtil.d.FIXED_LINE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f17106a[PhoneNumberUtil.d.MOBILE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f17106a[PhoneNumberUtil.d.PAGER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f17106a[PhoneNumberUtil.d.VOIP.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f17106a[PhoneNumberUtil.d.PERSONAL_NUMBER.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f17106a[PhoneNumberUtil.d.PREMIUM_RATE.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f17106a[PhoneNumberUtil.d.SHARED_COST.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f17106a[PhoneNumberUtil.d.TOLL_FREE.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f17106a[PhoneNumberUtil.d.VOICEMAIL.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
        }
    }

    public static String a(Phone phone) {
        boolean z;
        String str;
        PhoneNumberUtil.d lineType = phone.getLineType();
        switch (AnonymousClass1.f17106a[lineType.ordinal()]) {
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
        if (StringUtils.b((CharSequence) str)) {
            str2 = (z ? str.toUpperCase() : StringUtils.a(str.toLowerCase(), new char[0])).replaceAll("_", org.apache.commons.lang3.StringUtils.SPACE);
        }
        return str2;
    }

    public static boolean a(String str) {
        return RegexUtils.q(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b(String str) {
        if (StringUtils.a((CharSequence) str)) {
            return str;
        }
        Matcher matcher = f17104b.matcher(str);
        if (!matcher.matches()) {
            Matcher matcher2 = f17105c.matcher(str);
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

    public static boolean b(Phone phone) {
        return PhoneNumberUtil.getInstance().isValidNumberForRegion(phone.getPhoneNumber(), Phone.getCountryRegionProvider().a());
    }

    public static String c(String str) {
        return f17103a.matcher(str).replaceAll("");
    }

    public static String d(String str) {
        return str.replace(org.apache.commons.lang3.StringUtils.SPACE, "").replace("(", "").replace(")", "").replace(VerificationLanguage.REGION_PREFIX, "");
    }

    public static String e(String str) {
        return String.format("replace(replace(replace(replace(%s,' ','') ,'(',''),')',''),'-','')", str);
    }

    public static String f(String str) {
        a asYouTypeFormatter = PhoneNumberUtilWrapper.getInstance().f10390a.getAsYouTypeFormatter(Phone.getCountryRegionProvider().a());
        String str2 = null;
        str2 = null;
        if (StringUtils.b((CharSequence) str)) {
            for (int i = 0; i < str.length(); i++) {
                str2 = asYouTypeFormatter.a(str.charAt(i));
            }
        }
        asYouTypeFormatter.a();
        return str2;
    }
}
