package com.phone.libphone;

import com.phone.libphone.PhoneNumberUtil;
import com.phone.libphone.prefixmapper.C2811d;
import java.util.Locale;
/* renamed from: com.phone.libphone.h */
/* loaded from: classes2-dex2jar.jar:com/phone/libphone/h.class */
public class C2799h {

    /* renamed from: c */
    private static C2799h f11638c;

    /* renamed from: a */
    private C2811d f11639a;

    /* renamed from: b */
    private PhoneNumberUtil f11640b;

    private C2799h(String str) {
        this.f11639a = null;
        this.f11640b = null;
        this.f11639a = new C2811d(str);
        if (this.f11640b == null) {
            this.f11640b = PhoneNumberUtil.m1676q();
        }
    }

    /* renamed from: a */
    public static C2799h m1650a() {
        C2799h c2799h;
        synchronized (C2799h.class) {
            try {
                if (f11638c == null) {
                    f11638c = new C2799h(C2805k.f11647c);
                }
                c2799h = f11638c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c2799h;
    }

    /* renamed from: d */
    private boolean m1647d(PhoneNumberUtil.PhoneNumberType phoneNumberType) {
        return phoneNumberType == PhoneNumberUtil.PhoneNumberType.MOBILE || phoneNumberType == PhoneNumberUtil.PhoneNumberType.FIXED_LINE_OR_MOBILE || phoneNumberType == PhoneNumberUtil.PhoneNumberType.PAGER;
    }

    /* renamed from: b */
    public String m1649b(Phonenumber$PhoneNumber phonenumber$PhoneNumber, Locale locale) {
        try {
            return m1647d(this.f11640b.m1670w(phonenumber$PhoneNumber)) ? m1648c(phonenumber$PhoneNumber, locale) : "";
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

    /* renamed from: c */
    public String m1648c(Phonenumber$PhoneNumber phonenumber$PhoneNumber, Locale locale) {
        return this.f11639a.m1595b(phonenumber$PhoneNumber, locale.getLanguage(), "", locale.getCountry());
    }
}
