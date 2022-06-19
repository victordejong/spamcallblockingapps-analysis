package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.text.Editable;
import android.text.TextWatcher;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.RecentActivityFragment$e */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/RecentActivityFragment$e.class */
public class RecentActivityFragment$e implements TextWatcher {

    /* renamed from: a */
    public final /* synthetic */ RecentActivityFragment f3085a;

    public RecentActivityFragment$e(RecentActivityFragment recentActivityFragment) {
        this.f3085a = recentActivityFragment;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
        if (editable.length() <= 1) {
            RecentActivityFragment.L(this.f3085a);
        }
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }
}
