package com.google.i18n.phonenumbers.internal;

import com.google.i18n.phonenumbers.Phonemetadata;
import com.google.i18n.phonenumbers.RegexCache;
import java.util.regex.Matcher;
/* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/internal/RegexBasedMatcher.class */
public final class RegexBasedMatcher implements MatcherApi {
    private final RegexCache regexCache = new RegexCache(100);

    private RegexBasedMatcher() {
    }

    public static MatcherApi create() {
        return new RegexBasedMatcher();
    }

    @Override // com.google.i18n.phonenumbers.internal.MatcherApi
    public boolean matchesNationalNumber(String str, Phonemetadata.PhoneNumberDesc phoneNumberDesc, boolean z) {
        Matcher matcher = this.regexCache.getPatternForRegex(phoneNumberDesc.getNationalNumberPattern()).matcher(str);
        return matcher.matches() || (z && matcher.lookingAt());
    }
}
