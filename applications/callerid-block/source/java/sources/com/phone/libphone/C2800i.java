package com.phone.libphone;

import com.callerid.block.main.EZCallApplication;
import com.callerid.block.util.C1216t0;
import com.callerid.block.util.C1227w;
import com.phone.libphone.PhoneNumberUtil;
import com.phone.libphone.p087l.C2806a;
import java.io.File;
import java.util.Locale;
/* renamed from: com.phone.libphone.i */
/* loaded from: classes2-dex2jar.jar:com/phone/libphone/i.class */
public class C2800i {
    /* renamed from: a */
    public static C2806a m1646a(String str, String str2, String str3, Locale locale) {
        try {
            PhoneNumberUtil m1676q = PhoneNumberUtil.m1676q();
            Phonenumber$PhoneNumber m1701S = m1676q.m1701S(str, str2);
            String m1683j = m1676q.m1683j(m1701S, PhoneNumberUtil.PhoneNumberFormat.NATIONAL);
            String m1683j2 = m1676q.m1683j(m1701S, PhoneNumberUtil.PhoneNumberFormat.E164);
            C2798g m1654d = C2798g.m1654d();
            String m1656b = m1654d.m1656b(m1701S, locale);
            boolean m1651g = m1654d.m1651g(m1701S);
            boolean m1652f = m1654d.m1652f();
            String m1649b = C2799h.m1650a().m1649b(m1701S, locale);
            PhoneNumberUtil.PhoneNumberType m1670w = m1676q.m1670w(m1701S);
            C2806a c2806a = new C2806a();
            c2806a.m1626j(m1683j);
            c2806a.m1625k(m1683j2);
            c2806a.m1624l(m1656b);
            c2806a.m1627i(m1649b);
            c2806a.m1623m(m1651g);
            c2806a.m1622n(m1652f);
            c2806a.m1621o(m1670w);
            c2806a.m1620p(PhoneNumberUtil.PhoneNumberType.MOBILE == m1670w ? "Mobile" : PhoneNumberUtil.PhoneNumberType.FIXED_LINE == m1670w ? "Fixed line" : PhoneNumberUtil.PhoneNumberType.FIXED_LINE_OR_MOBILE == m1670w ? "Fixed line ／Mobile" : "");
            return c2806a;
        } catch (Exception e) {
            e.printStackTrace();
            if (!C1227w.f5084a) {
                return null;
            }
            C1227w.m9527a("wbb", "Exception: " + e.getMessage() + " phonenumber:" + str);
            return null;
        }
    }

    /* renamed from: b */
    public static boolean m1645b() {
        return new File(C2805k.f11647c).exists();
    }

    /* renamed from: c */
    public static boolean m1644c() {
        StringBuilder sb = new StringBuilder();
        sb.append("data/data/");
        sb.append(C1216t0.m9552y(EZCallApplication.m10163c()));
        sb.append("/databases/offlinedatavest.sqlite");
        return new File(sb.toString()).exists();
    }
}
