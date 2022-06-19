package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.text.InputFilter;
import android.text.Spanned;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.ContactTNFragment$e */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/ContactTNFragment$e.class */
public class ContactTNFragment$e implements InputFilter {
    public ContactTNFragment$e(ContactTNFragment contactTNFragment) {
    }

    @Override // android.text.InputFilter
    public CharSequence filter(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        if (!(spanned.subSequence(0, i3).toString() + ((Object) charSequence.subSequence(i, i2)) + spanned.subSequence(i4, spanned.length()).toString()).matches("^\\+?[\\d\\*\\?]+$")) {
            return "";
        }
        return null;
    }
}
