package com.phone.libphone.internal;

import com.phone.libphone.Phonemetadata$PhoneNumberDesc;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.phone.libphone.internal.b */
/* loaded from: classes2-dex2jar.jar:com/phone/libphone/internal/b.class */
public final class C9408b implements AbstractC9407a {

    /* renamed from: a */
    private final RegexCache f40247a = new RegexCache(100);

    private C9408b() {
    }

    /* renamed from: b */
    public static AbstractC9407a m654b() {
        return new C9408b();
    }

    /* renamed from: c */
    private static boolean m653c(CharSequence charSequence, Pattern pattern, boolean z) {
        Matcher matcher = pattern.matcher(charSequence);
        if (!matcher.lookingAt()) {
            return false;
        }
        if (matcher.matches()) {
            z = true;
        }
        return z;
    }

    @Override // com.phone.libphone.internal.AbstractC9407a
    /* renamed from: a */
    public boolean mo655a(CharSequence charSequence, Phonemetadata$PhoneNumberDesc phonemetadata$PhoneNumberDesc, boolean z) {
        String nationalNumberPattern = phonemetadata$PhoneNumberDesc.getNationalNumberPattern();
        if (nationalNumberPattern.length() == 0) {
            return false;
        }
        return m653c(charSequence, this.f40247a.m659a(nationalNumberPattern), z);
    }
}
