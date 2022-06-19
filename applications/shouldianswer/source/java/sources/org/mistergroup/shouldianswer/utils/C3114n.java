package org.mistergroup.shouldianswer.utils;

import com.google.i18n.phonenumbers.NumberParseException;
import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.Phonenumber;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p077b.p078a.C1630b;
import kotlin.p081e.p083b.C1694h;
import kotlin.p087i.C1747g;
/* renamed from: org.mistergroup.shouldianswer.utils.n */
/* loaded from: classes-dex2jar.jar:org/mistergroup/shouldianswer/utils/n.class */
public final class C3114n {

    /* renamed from: a */
    public static final C3114n f9174a = new C3114n();

    private C3114n() {
    }

    /* renamed from: a */
    public final Object m127a(String str, String str2, AbstractC1641c<? super String> abstractC1641c) {
        try {
            Phonenumber.PhoneNumber parse = PhoneNumberUtil.getInstance().parse(str, str2);
            C1694h.m3122a((Object) parse, "phoneNumber");
            return String.valueOf(parse.getNationalNumber());
        } catch (NumberParseException e) {
            C3104j.f9124a.m163a(e);
            return str;
        }
    }

    /* renamed from: a */
    public final String m128a(String str) {
        C1694h.m3117b(str, "number");
        return C1747g.m3037a(C1747g.m3037a(C1747g.m3037a(C1747g.m3037a(str, " ", "", false, 4, (Object) null), "-", "", false, 4, (Object) null), "(", "", false, 4, (Object) null), ")", "", false, 4, (Object) null);
    }

    /* renamed from: b */
    public final Object m126b(String str, String str2, AbstractC1641c<? super Boolean> abstractC1641c) {
        PhoneNumberUtil phoneNumberUtil = PhoneNumberUtil.getInstance();
        try {
            String regionCodeForNumber = phoneNumberUtil.getRegionCodeForNumber(phoneNumberUtil.parse(str, str2));
            boolean z = true;
            if (regionCodeForNumber == null || C1747g.m3036a(regionCodeForNumber, str2, true)) {
                z = false;
            }
            return C1630b.m3166a(z);
        } catch (NumberParseException e) {
            C3104j.f9124a.m163a(e);
            return C1630b.m3166a(false);
        }
    }

    /* renamed from: c */
    public final Object m125c(String str, String str2, AbstractC1641c<? super Boolean> abstractC1641c) {
        PhoneNumberUtil phoneNumberUtil = PhoneNumberUtil.getInstance();
        try {
            Phonenumber.PhoneNumber parse = phoneNumberUtil.parse(str, str2);
            C1694h.m3122a((Object) parse, "phoneUtil.parse(number, operatorCountry)");
            if (phoneNumberUtil.getNumberType(parse) == PhoneNumberUtil.PhoneNumberType.PREMIUM_RATE) {
                return C1630b.m3166a(true);
            }
        } catch (NumberParseException e) {
            C3104j c3104j = C3104j.f9124a;
            c3104j.m163a(new Exception("isNumberPremiumRate " + str + " " + e.getMessage()));
        }
        return C1630b.m3166a(false);
    }
}
