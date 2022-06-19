package com.phone.libphone;

import com.allinone.callerid.util.C3718c0;
import com.phone.libphone.PhoneNumberUtil;
import com.phone.libphone.p318l.C9411a;
import java.io.File;
import java.util.Locale;
/* renamed from: com.phone.libphone.i */
/* loaded from: classes2-dex2jar.jar:com/phone/libphone/i.class */
public class C9405i {
    /* renamed from: a */
    public static C9411a m661a(String str, String str2, String str3, Locale locale) {
        try {
            PhoneNumberUtil m693q = PhoneNumberUtil.m693q();
            Phonenumber$PhoneNumber m718S = m693q.m718S(str, str2);
            String m700j = m693q.m700j(m718S, PhoneNumberUtil.PhoneNumberFormat.NATIONAL);
            String m700j2 = m693q.m700j(m718S, PhoneNumberUtil.PhoneNumberFormat.E164);
            C9403g m671d = C9403g.m671d();
            String m673b = m671d.m673b(m718S, locale);
            boolean m666i = m671d.m666i(m718S);
            boolean m667h = m671d.m667h();
            String m670e = m671d.m670e(m718S, locale);
            String m664b = C9404h.m665a().m664b(m718S, locale);
            PhoneNumberUtil.PhoneNumberType m687w = m693q.m687w(m718S);
            C9411a c9411a = new C9411a();
            c9411a.m641k(m700j);
            c9411a.m640l(m700j2);
            c9411a.m639m(m673b);
            c9411a.m642j(m664b);
            c9411a.m638n(m667h);
            c9411a.m636p(m666i);
            c9411a.m635q(m687w);
            c9411a.m637o(m670e);
            if (PhoneNumberUtil.PhoneNumberType.MOBILE == m687w) {
                c9411a.m634r("Mobile");
            } else if (PhoneNumberUtil.PhoneNumberType.FIXED_LINE == m687w) {
                c9411a.m634r("Fixed line");
            } else if (PhoneNumberUtil.PhoneNumberType.FIXED_LINE_OR_MOBILE == m687w) {
                c9411a.m634r("Fixed line ／Mobile");
            } else {
                c9411a.m634r("");
            }
            return c9411a;
        } catch (Exception e) {
            e.printStackTrace();
            if (!C3718c0.f11914a) {
                return null;
            }
            C3718c0.m24436a("wbb", "Exception: " + e.getMessage() + " phonenumber:" + str);
            return null;
        }
    }

    /* renamed from: b */
    public static boolean m660b() {
        return new File(C9410k.f40253f).exists();
    }
}
