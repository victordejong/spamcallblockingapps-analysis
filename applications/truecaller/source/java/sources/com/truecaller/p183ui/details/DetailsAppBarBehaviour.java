package com.truecaller.p183ui.details;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import com.google.android.material.appbar.AppBarLayout;
import com.razorpay.AnalyticsConstants;
import com.truecaller.p183ui.components.FlingBehavior;
import com.truecaller.voip.notification.inapp.VoipInAppNotificationView;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import s1.u.i;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018��2\u00020\u0001B\t\b\u0016¢\u0006\u0004\b\u0010\u0010\u0011B\u0019\b\u0016\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0010\u0010\u0016J'\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0017"}, d2 = {"Lcom/truecaller/ui/details/DetailsAppBarBehaviour;", "Lcom/truecaller/ui/components/FlingBehavior;", "Landroidx/coordinatorlayout/widget/CoordinatorLayout;", "parent", "Lcom/google/android/material/appbar/AppBarLayout;", "abl", "", "layoutDirection", "", "K", "(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;I)Z", "appBarLayout", "Lcom/truecaller/voip/notification/inapp/VoipInAppNotificationView;", "inAppNotView", "R", "(Lcom/google/android/material/appbar/AppBarLayout;Lcom/truecaller/voip/notification/inapp/VoipInAppNotificationView;)Z", "<init>", "()V", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.ui.details.DetailsAppBarBehaviour */
/* loaded from: classes15-dex2jar.jar:com/truecaller/ui/details/DetailsAppBarBehaviour.class */
public final class DetailsAppBarBehaviour extends FlingBehavior {
    public DetailsAppBarBehaviour() {
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DetailsAppBarBehaviour(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(attributeSet, "attrs");
    }

    /* renamed from: K */
    public boolean m34512K(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i) {
        l.e(coordinatorLayout, "parent");
        l.e(appBarLayout, "abl");
        List e = coordinatorLayout.e(appBarLayout);
        l.d(e, "parent.getDependencies(abl)");
        ArrayList arrayList = new ArrayList();
        for (Object obj : e) {
            if (obj instanceof VoipInAppNotificationView) {
                arrayList.add(obj);
            }
        }
        VoipInAppNotificationView voipInAppNotificationView = (VoipInAppNotificationView) i.D(arrayList);
        if (voipInAppNotificationView == null) {
            DetailsAppBarBehaviour.super.K(coordinatorLayout, appBarLayout, i);
            return true;
        }
        if (voipInAppNotificationView.getVisibility() == 0) {
            voipInAppNotificationView.m34321i1();
            voipInAppNotificationView.bringToFront();
        }
        m34511R(appBarLayout, voipInAppNotificationView);
        DetailsAppBarBehaviour.super.K(coordinatorLayout, appBarLayout, i);
        return true;
    }

    /* renamed from: R */
    public final boolean m34511R(AppBarLayout appBarLayout, VoipInAppNotificationView voipInAppNotificationView) {
        ViewGroup.LayoutParams layoutParams = appBarLayout.getLayoutParams();
        if (layoutParams == null || !(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            return false;
        }
        int height = voipInAppNotificationView.getVisibility() == 8 ? 0 : voipInAppNotificationView.getHeight();
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        if (marginLayoutParams.topMargin == height) {
            return false;
        }
        marginLayoutParams.topMargin = height;
        appBarLayout.setLayoutParams(layoutParams);
        return true;
    }

    /* renamed from: d */
    public boolean m34510d(CoordinatorLayout coordinatorLayout, View view, View view2) {
        l.e(coordinatorLayout, "parent");
        l.e((AppBarLayout) view, "child");
        l.e(view2, "dependency");
        return view2 instanceof VoipInAppNotificationView;
    }

    /* renamed from: g */
    public boolean m34509g(CoordinatorLayout coordinatorLayout, View view, View view2) {
        AppBarLayout appBarLayout = (AppBarLayout) view;
        l.e(coordinatorLayout, "parent");
        l.e(appBarLayout, "child");
        l.e(view2, "dependency");
        return view2 instanceof VoipInAppNotificationView ? m34511R(appBarLayout, (VoipInAppNotificationView) view2) : false;
    }

    /* renamed from: h */
    public void m34508h(CoordinatorLayout coordinatorLayout, View view, View view2) {
        AppBarLayout appBarLayout = (AppBarLayout) view;
        l.e(coordinatorLayout, "parent");
        l.e(appBarLayout, "child");
        l.e(view2, "dependency");
        if (view2 instanceof VoipInAppNotificationView) {
            m34511R(appBarLayout, (VoipInAppNotificationView) view2);
        }
    }

    /* renamed from: k */
    public /* bridge */ /* synthetic */ boolean m34507k(CoordinatorLayout coordinatorLayout, View view, int i) {
        m34512K(coordinatorLayout, (AppBarLayout) view, i);
        return true;
    }
}
