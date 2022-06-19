package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.os.Bundle;
import android.widget.CompoundButton;
import p000.r81;
import p000.w91;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.ThirdPartySettingsFragment$a */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/ThirdPartySettingsFragment$a.class */
public class ThirdPartySettingsFragment$a implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    public final /* synthetic */ ThirdPartySettingsFragment f3115a;

    public ThirdPartySettingsFragment$a(ThirdPartySettingsFragment thirdPartySettingsFragment) {
        this.f3115a = thirdPartySettingsFragment;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        w91.EnumC1708a enumC1708a;
        r81.EnumC1640a m663R = ThirdPartySettingsFragment.x(this.f3115a).m663R();
        if (m663R == r81.EnumC1640a.NEW) {
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("Value", ThirdPartySettingsFragment.x(this.f3115a).f8023f);
        if (!z || !(m663R == r81.EnumC1640a.BLOCKED || m663R == r81.EnumC1640a.VIOLATING)) {
            ThirdPartySettingsFragment.x(this.f3115a).m674G();
            enumC1708a = w91.EnumC1708a.THIRD_PARTY_APPS_BLOCKED;
        } else {
            r81.m675F(ThirdPartySettingsFragment.x(this.f3115a).f8023f);
            enumC1708a = w91.EnumC1708a.THIRD_PARTY_APPS_ALLOWED;
        }
        w91.m275c(this, enumC1708a, bundle);
        ThirdPartySettingsFragment.x(this.f3115a).m664Q(ThirdPartySettingsFragment.x(this.f3115a).f8023f);
    }
}
