package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.os.Bundle;
import android.view.View;
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.DndFragment$a */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$a.class */
public class DndFragment$a implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ DndFragment f3020a;

    public DndFragment$a(DndFragment dndFragment) {
        this.f3020a = dndFragment;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        DndFragment.x(this.f3020a).m4324r(this.f3020a, DndAllowtocallFragment.class, new Bundle());
    }
}
