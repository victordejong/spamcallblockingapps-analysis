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
    public final /* synthetic */ void a(CoordinatorLayout coordinatorLayout, FloatingActionButton floatingActionButton, View view, int i, int i2, int i3, int i4) {
        final FloatingActionButton floatingActionButton2 = floatingActionButton;
        super.a(coordinatorLayout, (CoordinatorLayout) floatingActionButton2, view, i, i2, i3, i4);
        if (i2 > 0 && floatingActionButton2.getVisibility() == 0) {
            floatingActionButton2.b(new FloatingActionButton.a() { // from class: com.callapp.contacts.behavior.ScrollAwareFABBehavior.1
                @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.a
                public final void a(FloatingActionButton floatingActionButton3) {
                    super.a(floatingActionButton3);
                }

                @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.a
                public final void b(FloatingActionButton floatingActionButton3) {
                    super.b(floatingActionButton3);
                    floatingActionButton2.setVisibility(4);
                }
            }, true);
        } else if (i2 < 0 && floatingActionButton2.getVisibility() != 0) {
            floatingActionButton2.a((FloatingActionButton.a) null, true);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final /* bridge */ /* synthetic */ boolean a(int i) {
        return true;
    }
}
