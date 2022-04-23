package com.google.i18n.phonenumbers;

import com.google.i18n.phonenumbers.PhoneNumberUtil;
import com.google.i18n.phonenumbers.b.f;
/* loaded from: classes4-dex2jar.jar:com/google/i18n/phonenumbers/i.class */
public final class i {

    /* renamed from: c  reason: collision with root package name */
    private static i f32874c;

    /* renamed from: a  reason: collision with root package name */
    public f f32875a;

    /* renamed from: b  reason: collision with root package name */
    public final PhoneNumberUtil f32876b = PhoneNumberUtil.getInstance();

    i(String str) {
        this.f32875a = null;
        this.f32875a = new f(str);
    }

    public static i a() {
        i iVar;
        synchronized (i.class) {
            try {
                if (f32874c == null) {
                    f32874c = new i("/com/google/i18n/phonenumbers/carrier/data/");
                }
                iVar = f32874c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return iVar;
    }

    public static boolean a(PhoneNumberUtil.d dVar) {
        return dVar == PhoneNumberUtil.d.MOBILE || dVar == PhoneNumberUtil.d.FIXED_LINE_OR_MOBILE || dVar == PhoneNumberUtil.d.PAGER;
    }
}
