package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.view.View;
import android.widget.CompoundButton;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.DndFragment$d */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$d.class */
public class DndFragment$d implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ CompoundButton f3022a;

    public DndFragment$d(DndFragment dndFragment, CompoundButton compoundButton) {
        this.f3022a = compoundButton;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        this.f3022a.toggle();
    }
}
