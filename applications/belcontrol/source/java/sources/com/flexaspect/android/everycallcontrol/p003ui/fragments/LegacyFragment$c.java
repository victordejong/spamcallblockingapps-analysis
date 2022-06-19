package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.widget.TextView;
import p000.r71;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.LegacyFragment$c */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/LegacyFragment$c.class */
public class LegacyFragment$c implements Runnable {

    /* renamed from: a */
    public final /* synthetic */ LegacyFragment f3035a;

    public LegacyFragment$c(LegacyFragment legacyFragment) {
        this.f3035a = legacyFragment;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f3035a.getView() == null) {
            return;
        }
        ((TextView) this.f3035a.getView().findViewById(2131363505)).setText(r71.EnumC1638a.f7913O0.m695a() ? 2131821538 : r71.EnumC1638a.f7909M0.m695a() ? 2131821534 : 2131821533);
        LegacyFragment.J(this.f3035a).notifyDataSetChanged();
    }
}
