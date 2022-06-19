package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.view.View;
import android.widget.CompoundButton;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.DndFragment$b */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$b.class */
public class DndFragment$b implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    public final /* synthetic */ DndFragment f3021a;

    public DndFragment$b(DndFragment dndFragment) {
        this.f3021a = dndFragment;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        View findViewById;
        this.f3021a.k.setVisibility(!z ? 0 : 4);
        u71.m420w(z);
        View view = this.f3021a.getView();
        if (view == null || (findViewById = view.findViewById(2131362402)) == null) {
            return;
        }
        findViewById.setVisibility(!z ? 0 : 4);
    }
}
