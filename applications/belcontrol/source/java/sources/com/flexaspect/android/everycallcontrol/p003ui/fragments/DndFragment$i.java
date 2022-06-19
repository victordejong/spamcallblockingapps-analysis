package com.flexaspect.android.everycallcontrol.p003ui.fragments;

import android.annotation.TargetApi;
import android.view.MenuItem;
import android.widget.PopupMenu;
@TargetApi(11)
/* renamed from: com.flexaspect.android.everycallcontrol.ui.fragments.DndFragment$i */
/* loaded from: classes-dex2jar.jar:com/flexaspect/android/everycallcontrol/ui/fragments/DndFragment$i.class */
public class DndFragment$i implements PopupMenu.OnMenuItemClickListener {

    /* renamed from: a */
    public final /* synthetic */ DndFragment f3026a;

    public DndFragment$i(DndFragment dndFragment) {
        this.f3026a = dndFragment;
    }

    @Override // android.widget.PopupMenu.OnMenuItemClickListener
    public boolean onMenuItemClick(MenuItem menuItem) {
        return this.f3026a.I(menuItem);
    }
}
