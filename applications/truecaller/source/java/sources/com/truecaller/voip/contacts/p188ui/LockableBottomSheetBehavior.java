package com.truecaller.voip.contacts.p188ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��*\b\b��\u0010\u0002*\u00020\u00012\b\u0012\u0004\u0012\u00028��0\u0003B\u001d\b\u0007\u0012\u0006\u0010\r\u001a\u00020\f\u0012\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u0010\u0010\u0011J'\u0010\n\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00028��2\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000b¨\u0006\u0012"}, d2 = {"Lcom/truecaller/voip/contacts/ui/LockableBottomSheetBehavior;", "Landroid/view/View;", "V", "Lcom/google/android/material/bottomsheet/BottomSheetBehavior;", "Landroidx/coordinatorlayout/widget/CoordinatorLayout;", "parent", "child", "Landroid/view/MotionEvent;", "event", "", "A", "(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.voip.contacts.ui.LockableBottomSheetBehavior */
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/contacts/ui/LockableBottomSheetBehavior.class */
public final class LockableBottomSheetBehavior<V extends View> extends BottomSheetBehavior<V> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LockableBottomSheetBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        l.e(context, AnalyticsConstants.CONTEXT);
    }

    /* renamed from: A */
    public boolean m34348A(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        l.e(coordinatorLayout, "parent");
        l.e(v, "child");
        l.e(motionEvent, "event");
        return ((BottomSheetBehavior) this).E ? LockableBottomSheetBehavior.super.A(coordinatorLayout, v, motionEvent) : false;
    }
}
