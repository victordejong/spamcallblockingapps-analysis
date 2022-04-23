package com.google.i18n.phonenumbers.internal;

import com.google.i18n.phonenumbers.Phonemetadata;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/internal/RegexBasedMatcher.class */
public final class RegexBasedMatcher implements MatcherApi {

    /* renamed from: a */
    private final RegexCache f12387a = new RegexCache(100);

    private RegexBasedMatcher() {
    }

    /* renamed from: b */
    public static MatcherApi m7871b() {
        return new RegexBasedMatcher();
    }

    /* renamed from: c */
    private static boolean m7870c(CharSequence charSequence, Pattern pattern, boolean z) {
        Matcher matcher = pattern.matcher(charSequence);
        if (!matcher.lookingAt()) {
            return false;
        }
        if (matcher.matches()) {
            z = true;
        }
        return z;
    }

    @Override // com.google.i18n.phonenumbers.internal.MatcherApi
    /* renamed from: a */
    public boolean mo7872a(CharSequence charSequence, Phonemetadata.PhoneNumberDesc phoneNumberDesc, boolean z) {
        String a = phoneNumberDesc.m7914a();
        if (a.length() == 0) {
            return false;
        }
        return m7870c(charSequence, this.f12387a.m7869a(a), z);
    }
}
