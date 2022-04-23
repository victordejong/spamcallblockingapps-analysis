package com.phone.libphone.internal;

import com.phone.libphone.Phonemetadata$PhoneNumberDesc;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.phone.libphone.internal.b */
/* loaded from: classes2-dex2jar.jar:com/phone/libphone/internal/b.class */
public final class C2803b implements AbstractC2802a {

    /* renamed from: a */
    private final RegexCache f11644a = new RegexCache(100);

    private C2803b() {
    }

    /* renamed from: b */
    public static AbstractC2802a m1638b() {
        return new C2803b();
    }

    /* renamed from: c */
    private static boolean m1637c(CharSequence charSequence, Pattern pattern, boolean z) {
        Matcher matcher = pattern.matcher(charSequence);
        if (!matcher.lookingAt()) {
            return false;
        }
        if (matcher.matches()) {
            z = true;
        }
        return z;
    }

    @Override // com.phone.libphone.internal.AbstractC2802a
    /* renamed from: a */
    public boolean mo1639a(CharSequence charSequence, Phonemetadata$PhoneNumberDesc phonemetadata$PhoneNumberDesc, boolean z) {
        String nationalNumberPattern = phonemetadata$PhoneNumberDesc.getNationalNumberPattern();
        if (nationalNumberPattern.length() == 0) {
            return false;
        }
        return m1637c(charSequence, this.f11644a.m1643a(nationalNumberPattern), z);
    }
}
