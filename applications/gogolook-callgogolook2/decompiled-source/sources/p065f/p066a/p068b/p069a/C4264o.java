package p065f.p066a.p068b.p069a;

import android.text.TextUtils;
import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.Phonenumber;
/* renamed from: f.a.b.a.o */
/* loaded from: classes-dex2jar.jar:f/a/b/a/o.class */
public class C4264o {
    /* renamed from: a */
    public static String m29171a(String str, String str2) {
        if (!TextUtils.isEmpty(str)) {
            PhoneNumberUtil instance = PhoneNumberUtil.getInstance();
            try {
                Phonenumber.PhoneNumber parse = instance.parse(str, str2);
                if (parse != null && instance.isValidNumber(parse)) {
                    return instance.format(parse, PhoneNumberUtil.PhoneNumberFormat.NATIONAL).replaceAll("\\D", "");
                }
            } catch (NumberParseException e) {
                String str3 = "getNumberNoCountryCode: invalid number " + e;
            }
        }
        return str;
    }
}
