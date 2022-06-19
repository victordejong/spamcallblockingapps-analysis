package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.widget.CompoundButton;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.DndAllowtocallFragment$b */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/DndAllowtocallFragment$b.class */
public class DndAllowtocallFragment$b implements CompoundButton.OnCheckedChangeListener {
    public DndAllowtocallFragment$b(DndAllowtocallFragment dndAllowtocallFragment) {
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        compoundButton.setChecked(z);
        if (!b81.m5750e()) {
            u71.m419x(z);
            return;
        }
        if (z) {
            u71.m418y(u71.m441b().length > 0 ? u71.m441b() : b81.m5754a());
        } else {
            u71.m418y(new Integer[0]);
        }
        u71.m449A(z);
    }
}
