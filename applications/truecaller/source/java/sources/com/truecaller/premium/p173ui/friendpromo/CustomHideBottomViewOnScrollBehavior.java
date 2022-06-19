package com.truecaller.premium.p173ui.friendpromo;

import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0015\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��*\b\b��\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028��0\u0003B\u0007¢\u0006\u0004\b\u0013\u0010\u0014JW\u0010\u0011\u001a\u00020\u00102\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00028��2\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0015"}, d2 = {"Lcom/truecaller/premium/ui/friendpromo/CustomHideBottomViewOnScrollBehavior;", "Landroid/view/View;", "v", "Lcom/google/android/material/behavior/HideBottomViewOnScrollBehavior;", "Landroidx/coordinatorlayout/widget/CoordinatorLayout;", "coordinatorLayout", "child", "target", "", "dxConsumed", "dyConsumed", "dxUnconsumed", "dyUnconsumed", "type", "", "consumed", "Ls1/s;", "r", "(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V", "<init>", "()V", "premium_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.premium.ui.friendpromo.CustomHideBottomViewOnScrollBehavior */
/* loaded from: classes12-dex2jar.jar:com/truecaller/premium/ui/friendpromo/CustomHideBottomViewOnScrollBehavior.class */
public final class CustomHideBottomViewOnScrollBehavior<v extends View> extends HideBottomViewOnScrollBehavior<v> {
    /* renamed from: r */
    public void m34803r(CoordinatorLayout coordinatorLayout, v v, View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        l.e(coordinatorLayout, "coordinatorLayout");
        l.e(v, "child");
        l.e(view, "target");
        l.e(iArr, "consumed");
        if (i2 > 0) {
            C(v);
        } else if (i2 < 0) {
            D(v);
        }
        if (i2 == 0 && i4 > 0) {
            C(v);
        } else if (i2 != 0 || i4 >= 0) {
        } else {
            D(v);
        }
    }
}
