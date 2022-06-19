package com.phone.libphone;

import com.phone.libphone.PhoneNumberUtil;
import com.phone.libphone.prefixmapper.C9416d;
import java.util.Locale;
/* renamed from: com.phone.libphone.h */
/* loaded from: classes2-dex2jar.jar:com/phone/libphone/h.class */
public class C9404h {

    /* renamed from: a */
    private static C9404h f40241a;

    /* renamed from: b */
    private C9416d f40242b;

    /* renamed from: c */
    private PhoneNumberUtil f40243c;

    private C9404h(String str) {
        this.f40242b = null;
        this.f40243c = null;
        this.f40242b = new C9416d(str);
        if (this.f40243c == null) {
            this.f40243c = PhoneNumberUtil.m693q();
        }
    }

    /* renamed from: a */
    public static C9404h m665a() {
        C9404h c9404h;
        synchronized (C9404h.class) {
            try {
                if (f40241a == null) {
                    f40241a = new C9404h(C9410k.f40253f);
                }
                c9404h = f40241a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c9404h;
    }

    /* renamed from: d */
    private boolean m662d(PhoneNumberUtil.PhoneNumberType phoneNumberType) {
        return phoneNumberType == PhoneNumberUtil.PhoneNumberType.MOBILE || phoneNumberType == PhoneNumberUtil.PhoneNumberType.FIXED_LINE_OR_MOBILE || phoneNumberType == PhoneNumberUtil.PhoneNumberType.PAGER;
    }

    /* renamed from: b */
    public String m664b(Phonenumber$PhoneNumber phonenumber$PhoneNumber, Locale locale) {
        return m662d(this.f40243c.m687w(phonenumber$PhoneNumber)) ? m663c(phonenumber$PhoneNumber, locale) : "";
    }

    /* renamed from: c */
    public String m663c(Phonenumber$PhoneNumber phonenumber$PhoneNumber, Locale locale) {
        return this.f40242b.m609b(phonenumber$PhoneNumber, locale.getLanguage(), "", locale.getCountry());
    }
}
