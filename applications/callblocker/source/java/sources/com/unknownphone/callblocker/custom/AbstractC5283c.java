package com.unknownphone.callblocker.custom;

import android.text.Editable;
import android.text.TextWatcher;
/* renamed from: com.unknownphone.callblocker.custom.c */
/* loaded from: classes-dex2jar.jar:com/unknownphone/callblocker/custom/c.class */
public abstract class AbstractC5283c implements TextWatcher {
    /* renamed from: a */
    public abstract void mo1099a(Editable editable);

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        mo1099a(editable);
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
