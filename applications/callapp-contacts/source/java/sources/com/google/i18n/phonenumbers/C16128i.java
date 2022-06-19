package com.google.i18n.phonenumbers;

import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.p403b.C16118f;
/* renamed from: com.google.i18n.phonenumbers.i */
/* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/i.class */
public final class C16128i {

    /* renamed from: c */
    private static C16128i f56946c;

    /* renamed from: a */
    public C16118f f56947a;

    /* renamed from: b */
    public final PhoneNumberUtil f56948b = PhoneNumberUtil.getInstance();

    C16128i(String str) {
        this.f56947a = null;
        this.f56947a = new C16118f(str);
    }

    /* renamed from: a */
    public static C16128i m7802a() {
        C16128i c16128i;
        synchronized (C16128i.class) {
            try {
                if (f56946c == null) {
                    f56946c = new C16128i("/com/google/i18n/phonenumbers/carrier/data/");
                }
                c16128i = f56946c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c16128i;
    }

    /* renamed from: a */
    public static boolean m7801a(PhoneNumberUtil.EnumC16104d enumC16104d) {
        return enumC16104d == PhoneNumberUtil.EnumC16104d.MOBILE || enumC16104d == PhoneNumberUtil.EnumC16104d.FIXED_LINE_OR_MOBILE || enumC16104d == PhoneNumberUtil.EnumC16104d.PAGER;
    }
}
