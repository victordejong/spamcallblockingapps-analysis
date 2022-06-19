package com.truecaller.premium.p173ui.subscription.buttons;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.razorpay.AnalyticsConstants;
import com.truecaller.premium.C4334R;
import kotlin.Metadata;
import p193e.p194a.p1011l.p1033v2.p1037i.p1038a.C17279a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\u0007\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0002¢\u0006\u0004\b\u0007\u0010\u0006J\u0019\u0010\t\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0002H\u0002¢\u0006\u0004\b\t\u0010\u0006J\u0019\u0010\u000b\u001a\u00020\u00042\b\u0010\n\u001a\u0004\u0018\u00010\u0002H\u0002¢\u0006\u0004\b\u000b\u0010\u0006J\u0015\u0010\u000e\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fR%\u0010\u0016\u001a\n \u0011*\u0004\u0018\u00010\u00100\u00108B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R%\u0010\u0019\u001a\n \u0011*\u0004\u0018\u00010\u00100\u00108B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0013\u001a\u0004\b\u0018\u0010\u0015R%\u0010\u001c\u001a\n \u0011*\u0004\u0018\u00010\u00100\u00108B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u0013\u001a\u0004\b\u001b\u0010\u0015R%\u0010!\u001a\n \u0011*\u0004\u0018\u00010\u001d0\u001d8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\u0013\u001a\u0004\b\u001f\u0010 ¨\u0006\""}, d2 = {"Lcom/truecaller/premium/ui/subscription/buttons/CardPurchaseButtonView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "", "price", "Ls1/s;", "setStrikeThroughPrice", "(Ljava/lang/String;)V", "setPrice", "profit", "setProfit", "subtext", "setSubText", "Le/a/l/v2/i/a/a;", "purchaseButton", "setPremiumCardSubscriptionButton", "(Le/a/l/v2/i/a/a;)V", "Landroid/widget/TextView;", "kotlin.jvm.PlatformType", "u", "Ls1/g;", "getPriceTextView", "()Landroid/widget/TextView;", "priceTextView", "w", "getSubTextView", "subTextView", "t", "getStrikeThroughPriceTextView", "strikeThroughPriceTextView", "Landroidx/appcompat/widget/AppCompatTextView;", "v", "getProfitTextView", "()Landroidx/appcompat/widget/AppCompatTextView;", "profitTextView", "premium_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.premium.ui.subscription.buttons.CardPurchaseButtonView */
/* loaded from: classes12-dex2jar.jar:com/truecaller/premium/ui/subscription/buttons/CardPurchaseButtonView.class */
public final class CardPurchaseButtonView extends ConstraintLayout {

    /* renamed from: t */
    public final g f14313t = C19286f.m13660s(this, C4334R.C4336id.strikeThroughPrice);

    /* renamed from: u */
    public final g f14314u = C19286f.m13660s(this, C4334R.C4336id.price);

    /* renamed from: v */
    public final g f14315v = C19286f.m13660s(this, C4334R.C4336id.profit);

    /* renamed from: w */
    public final g f14316w = C19286f.m13660s(this, C4334R.C4336id.subtext);

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CardPurchaseButtonView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        setLayoutParams(new ConstraintLayout.C0111a(-1, -2));
        C19286f.m13668k(this, C4334R.layout.layout_premium_tab_card_subscription_button, true);
        TextView strikeThroughPriceTextView = getStrikeThroughPriceTextView();
        strikeThroughPriceTextView.setPaintFlags(strikeThroughPriceTextView.getPaintFlags() | 16);
    }

    private final TextView getPriceTextView() {
        return (TextView) this.f14314u.getValue();
    }

    private final AppCompatTextView getProfitTextView() {
        return (AppCompatTextView) this.f14315v.getValue();
    }

    private final TextView getStrikeThroughPriceTextView() {
        return (TextView) this.f14313t.getValue();
    }

    private final TextView getSubTextView() {
        return (TextView) this.f14316w.getValue();
    }

    private final void setPrice(String str) {
        TextView priceTextView = getPriceTextView();
        priceTextView.setText(str);
        C19286f.m13683U(priceTextView, !(str == null || str.length() == 0));
    }

    private final void setProfit(String str) {
        AppCompatTextView profitTextView = getProfitTextView();
        profitTextView.setText(str);
        C19286f.m13683U(profitTextView, !(str == null || str.length() == 0));
    }

    private final void setStrikeThroughPrice(String str) {
        TextView strikeThroughPriceTextView = getStrikeThroughPriceTextView();
        strikeThroughPriceTextView.setText(str);
        C19286f.m13683U(strikeThroughPriceTextView, !(str == null || str.length() == 0));
    }

    private final void setSubText(String str) {
        TextView subTextView = getSubTextView();
        subTextView.setText(str);
        C19286f.m13683U(subTextView, !(str == null || str.length() == 0));
    }

    public final void setPremiumCardSubscriptionButton(C17279a c17279a) {
        l.e(c17279a, "purchaseButton");
        setStrikeThroughPrice(c17279a.f48474a);
        setPrice(c17279a.f48475b);
        setProfit(c17279a.f48476c);
        setSubText(c17279a.f48477d);
        setBackgroundResource(c17279a.f48478e);
    }
}
