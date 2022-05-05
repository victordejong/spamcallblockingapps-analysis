package com.android.contacts.dialpad;

import android.telephony.PhoneNumberUtils;
import android.text.Spanned;
import android.text.method.DialerKeyListener;
/* loaded from: classes-dex2jar.jar:com/android/contacts/dialpad/k.class */
public final class k extends DialerKeyListener {

    /* renamed from: a  reason: collision with root package name */
    public static final k f1078a = new k();

    @Override // android.text.method.NumberKeyListener, android.text.InputFilter
    public final CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        String convertKeypadLettersToDigits = PhoneNumberUtils.convertKeypadLettersToDigits(PhoneNumberUtils.replaceUnicodeDigits(charSequence.toString()));
        CharSequence filter = super.filter(convertKeypadLettersToDigits, i, i2, spanned, i3, i4);
        CharSequence charSequence2 = filter;
        if (filter == null) {
            charSequence2 = charSequence.equals(convertKeypadLettersToDigits) ? null : convertKeypadLettersToDigits.subSequence(i, i2);
        }
        return charSequence2;
    }
}
