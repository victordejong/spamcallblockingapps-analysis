package com.flexaspect.android.everycallcontrol.p003ui.fragments.support;

import android.text.Editable;
import android.text.TextWatcher;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.support.SupportFragment$a */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/support/SupportFragment$a.class */
public class SupportFragment$a implements TextWatcher {

    /* renamed from: a */
    public final /* synthetic */ SupportFragment f3156a;

    public SupportFragment$a(SupportFragment supportFragment) {
        this.f3156a = supportFragment;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        if (charSequence.length() > 0) {
            SupportFragment.J(this.f3156a, false);
        }
    }
}
