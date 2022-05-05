package com.google.i18n.phonenumbers.internal;

import com.google.i18n.phonenumbers.Phonemetadata;
/* loaded from: classes-dex2jar.jar:com/google/i18n/phonenumbers/internal/MatcherApi.class */
public interface MatcherApi {
    boolean matchesNationalNumber(String str, Phonemetadata.PhoneNumberDesc phoneNumberDesc, boolean z);
}
