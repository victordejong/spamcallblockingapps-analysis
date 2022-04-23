package com.callapp.contacts.activity.contact.details;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.v;
import com.google.android.material.appbar.AppBarLayout;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/FixAppBarLayoutBehavior.class */
public class FixAppBarLayoutBehavior extends AppBarLayout.Behavior {
    public FixAppBarLayoutBehavior() {
    }

    public FixAppBarLayoutBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void a(int i, AppBarLayout appBarLayout, View view, int i2) {
        if (i2 == 1) {
            int topAndBottomOffset = getTopAndBottomOffset();
            if ((i < 0 && topAndBottomOffset == 0) || (i > 0 && topAndBottomOffset == (-appBarLayout.c()))) {
                v.A(view);
            }
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    public final /* bridge */ /* synthetic */ void a(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2, int i3, int i4, int i5) {
        AppBarLayout appBarLayout = (AppBarLayout) view;
        super.a(coordinatorLayout, appBarLayout, view2, i, i2, i3, i4, i5);
        a(i4, appBarLayout, view2, i5);
    }

    @Override // com.google.android.material.appbar.AppBarLayout.Behavior, com.google.android.material.appbar.AppBarLayout.BaseBehavior
    public final void a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i, int i2, int[] iArr, int i3) {
        super.a(coordinatorLayout, appBarLayout, view, i, i2, iArr, i3);
        a(i2, appBarLayout, view, i3);
    }
}
