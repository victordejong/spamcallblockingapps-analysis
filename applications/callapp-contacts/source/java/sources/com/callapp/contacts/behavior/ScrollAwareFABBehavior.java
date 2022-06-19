package com.callapp.contacts.behavior;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/behavior/ScrollAwareFABBehavior.class */
public class ScrollAwareFABBehavior extends CoordinatorLayout.Behavior<FloatingActionButton> {
    public ScrollAwareFABBehavior(Context context, AttributeSet attributeSet) {
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public final /* synthetic */ void mo29077a(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, View view, int i, int i2, int i3, int i4) {
        final FloatingActionButton floatingActionButton2 = floatingActionButton;
        super.mo29077a(coordinatorLayout, (CoordinatorLayout) floatingActionButton2, view, i, i2, i3, i4);
        if (i2 > 0 && floatingActionButton2.getVisibility() == 0) {
            floatingActionButton2.m10738b(new FloatingActionButton.AbstractC14569a() { // from class: com.callapp.contacts.behavior.ScrollAwareFABBehavior.1
                @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.AbstractC14569a
                /* renamed from: a */
                public final void mo10725a(FloatingActionButton floatingActionButton3) {
                    super.mo10725a(floatingActionButton3);
                }

                @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.AbstractC14569a
                /* renamed from: b */
                public final void mo10724b(FloatingActionButton floatingActionButton3) {
                    super.mo10724b(floatingActionButton3);
                    floatingActionButton2.setVisibility(4);
                }
            }, true);
        } else if (i2 >= 0 || floatingActionButton2.getVisibility() == 0) {
        } else {
            floatingActionButton2.m10743a((FloatingActionButton.AbstractC14569a) null, true);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ boolean mo29078a(int i) {
        return true;
    }
}
