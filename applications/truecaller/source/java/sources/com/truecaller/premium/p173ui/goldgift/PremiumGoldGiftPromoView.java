package com.truecaller.premium.p173ui.goldgift;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout$b;
import androidx.coordinatorlayout.widget.CoordinatorLayout$c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.banner.BannerViewX;
import com.truecaller.premium.p173ui.friendpromo.CustomHideBottomViewOnScrollBehavior;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u00012\u00020\u0002B\u001b\b\u0016\u0012\u0006\u0010\f\u001a\u00020\u000b\u0012\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u000f\u0010\u0010J\u0013\u0010\u0004\u001a\u0006\u0012\u0002\b\u00030\u0003H\u0016¢\u0006\u0004\b\u0004\u0010\u0005R\u001c\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\u00068\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\u0011"}, d2 = {"Lcom/truecaller/premium/ui/goldgift/PremiumGoldGiftPromoView;", "Landroidx/coordinatorlayout/widget/CoordinatorLayout$b;", "Lcom/truecaller/common/ui/banner/BannerViewX;", "Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;", "getBehavior", "()Landroidx/coordinatorlayout/widget/CoordinatorLayout$c;", "Lcom/truecaller/premium/ui/friendpromo/CustomHideBottomViewOnScrollBehavior;", "Landroid/view/View;", "f", "Lcom/truecaller/premium/ui/friendpromo/CustomHideBottomViewOnScrollBehavior;", "customHideBottomViewOnScrollBehavior", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.premium.ui.goldgift.PremiumGoldGiftPromoView */
/* loaded from: classes12-dex2jar.jar:com/truecaller/premium/ui/goldgift/PremiumGoldGiftPromoView.class */
public final class PremiumGoldGiftPromoView extends BannerViewX implements CoordinatorLayout$b {

    /* renamed from: f */
    public final CustomHideBottomViewOnScrollBehavior<View> f14312f = new CustomHideBottomViewOnScrollBehavior<>();

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PremiumGoldGiftPromoView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(context, AnalyticsConstants.CONTEXT);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.coordinatorlayout.widget.CoordinatorLayout$c<?>, com.truecaller.premium.ui.friendpromo.CustomHideBottomViewOnScrollBehavior<android.view.View>] */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout$b
    public CoordinatorLayout$c<?> getBehavior() {
        return this.f14312f;
    }
}
