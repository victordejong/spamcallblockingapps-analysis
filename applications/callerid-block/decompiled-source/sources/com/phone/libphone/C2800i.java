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
            PhoneNumberUtil q = PhoneNumberUtil.m1676q();
            Phonenumber$PhoneNumber S = q.m1701S(str, str2);
            String j = q.m1683j(S, PhoneNumberUtil.PhoneNumberFormat.NATIONAL);
            String j2 = q.m1683j(S, PhoneNumberUtil.PhoneNumberFormat.E164);
            C2798g d = C2798g.m1654d();
            String b = d.m1656b(S, locale);
            boolean g = d.m1651g(S);
            boolean f = d.m1652f();
            String b2 = C2799h.m1650a().m1649b(S, locale);
            PhoneNumberUtil.PhoneNumberType w = q.m1670w(S);
            C2806a aVar = new C2806a();
            aVar.m1626j(j);
            aVar.m1625k(j2);
            aVar.m1624l(b);
            aVar.m1627i(b2);
            aVar.m1623m(g);
            aVar.m1622n(f);
            aVar.m1621o(w);
            aVar.m1620p(PhoneNumberUtil.PhoneNumberType.MOBILE == w ? "Mobile" : PhoneNumberUtil.PhoneNumberType.FIXED_LINE == w ? "Fixed line" : PhoneNumberUtil.PhoneNumberType.FIXED_LINE_OR_MOBILE == w ? "Fixed line ／Mobile" : "");
            return aVar;
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
