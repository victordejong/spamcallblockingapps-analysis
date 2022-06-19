package com.callapp.contacts.activity.contact.details;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.C0926v;
import com.google.android.material.appbar.AppBarLayout;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/details/FixAppBarLayoutBehavior.class */
public class FixAppBarLayoutBehavior extends AppBarLayout.Behavior {
    public FixAppBarLayoutBehavior() {
    }

    public FixAppBarLayoutBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: a */
    private void m30929a(int i, AppBarLayout appBarLayout, View view, int i2) {
        if (i2 == 1) {
            int topAndBottomOffset = getTopAndBottomOffset();
            if ((i >= 0 || topAndBottomOffset != 0) && (i <= 0 || topAndBottomOffset != (-appBarLayout.m11311c()))) {
                return;
            }
            C0926v.m44158A(view);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.Behavior
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo29080a(CoordinatorLayout coordinatorLayout, View view, View view2, int i, int i2, int i3, int i4, int i5) {
        AppBarLayout appBarLayout = (AppBarLayout) view;
        super.mo29080a(coordinatorLayout, appBarLayout, view2, i, i2, i3, i4, i5);
        m30929a(i4, appBarLayout, view2, i5);
    }

    @Override // com.google.android.material.appbar.AppBarLayout.Behavior, com.google.android.material.appbar.AppBarLayout.BaseBehavior
    /* renamed from: a */
    public final void mo11126a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i, int i2, int[] iArr, int i3) {
        super.mo11282a(coordinatorLayout, appBarLayout, view, i, i2, iArr, i3);
        m30929a(i2, appBarLayout, view, i3);
    }
}
