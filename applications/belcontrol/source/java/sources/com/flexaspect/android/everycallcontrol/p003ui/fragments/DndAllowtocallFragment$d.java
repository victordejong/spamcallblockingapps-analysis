package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.view.View;
import android.widget.CompoundButton;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.DndAllowtocallFragment$d */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/DndAllowtocallFragment$d.class */
public class DndAllowtocallFragment$d implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ CompoundButton f3019a;

    public DndAllowtocallFragment$d(DndAllowtocallFragment dndAllowtocallFragment, CompoundButton compoundButton) {
        this.f3019a = compoundButton;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        CompoundButton compoundButton = this.f3019a;
        compoundButton.setChecked(!compoundButton.isChecked());
    }
}
