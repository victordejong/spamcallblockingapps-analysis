package com.truecaller.premium.p173ui.subscription.offerpicker;

import android.content.Context;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.mopub.mobileads.VastIconXmlManager;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import java.util.Objects;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p194a.p1011l.p1033v2.p1037i.p1040c.AbstractC17293d;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018��2\u00020\u0001J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\u0006J\u0017\u0010\n\u001a\u00020\u00042\b\u0010\t\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\n\u0010\u0006J\u0015\u0010\f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0002¢\u0006\u0004\b\f\u0010\u0006J\u0015\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0012\u001a\u00020\u00042\b\u0010\u0011\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0012\u0010\u0006J\u0015\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\r¢\u0006\u0004\b\u0014\u0010\u0010J\u0015\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\r¢\u0006\u0004\b\u0015\u0010\u0010J\u0015\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\r¢\u0006\u0004\b\u0016\u0010\u0010J\u0015\u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\r¢\u0006\u0004\b\u0018\u0010\u0010J\u0015\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0019¢\u0006\u0004\b\u001b\u0010\u001cJ\u0015\u0010\u001e\u001a\u00020\u00042\u0006\u0010\u001d\u001a\u00020\r¢\u0006\u0004\b\u001e\u0010\u0010R%\u0010%\u001a\n  *\u0004\u0018\u00010\u001f0\u001f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\"\u001a\u0004\b#\u0010$R%\u0010*\u001a\n  *\u0004\u0018\u00010&0&8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b'\u0010\"\u001a\u0004\b(\u0010)R%\u0010/\u001a\n  *\u0004\u0018\u00010+0+8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b,\u0010\"\u001a\u0004\b-\u0010.R%\u00102\u001a\n  *\u0004\u0018\u00010+0+8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b0\u0010\"\u001a\u0004\b1\u0010.R%\u00105\u001a\n  *\u0004\u0018\u00010+0+8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b3\u0010\"\u001a\u0004\b4\u0010.R\u001d\u0010:\u001a\u0002068F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b7\u0010\"\u001a\u0004\b8\u00109R%\u0010=\u001a\n  *\u0004\u0018\u00010+0+8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b;\u0010\"\u001a\u0004\b<\u0010.R%\u0010@\u001a\n  *\u0004\u0018\u000106068B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b>\u0010\"\u001a\u0004\b?\u00109¨\u0006A"}, d2 = {"Lcom/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferButton;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "", VastIconXmlManager.DURATION, "Ls1/s;", "setOfferDuration", "(Ljava/lang/String;)V", "pricePerMonth", "setOfferPricePerMoth", "heading", "setOfferHeading", "price", "setOfferPrice", "", RemoteMessageConst.Notification.COLOR, "setOfferPriceTextColor", "(I)V", "subtext", "setSubtext", "backgroundDrawable", "setOuterBackground", "setInnerBackground", "setSubtextBackground", "fontColor", "setSubtextFontColor", "Le/a/l/v2/i/c/d;", "state", "setOfferState", "(Le/a/l/v2/i/c/d;)V", "value", "setInnerContainerHeight", "Landroidx/appcompat/widget/AppCompatTextView;", "kotlin.jvm.PlatformType", "x", "Ls1/g;", "getSubstituteText", "()Landroidx/appcompat/widget/AppCompatTextView;", "substituteText", "Landroid/widget/ImageView;", "z", "getSelectedTickIcon", "()Landroid/widget/ImageView;", "selectedTickIcon", "Landroid/widget/TextView;", "t", "getOfferDuration", "()Landroid/widget/TextView;", "offerDuration", "v", "getOfferPricePerMonth", "offerPricePerMonth", "w", "getOfferHeading", "offerHeading", "Landroid/widget/LinearLayout;", "A", "getInnerContainer", "()Landroid/widget/LinearLayout;", "innerContainer", "u", "getOfferPrice", "offerPrice", "y", "getFrameContainer", "frameContainer", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.premium.ui.subscription.offerpicker.SubscriptionOfferButton */
/* loaded from: classes12-dex2jar.jar:com/truecaller/premium/ui/subscription/offerpicker/SubscriptionOfferButton.class */
public final class SubscriptionOfferButton extends ConstraintLayout {

    /* renamed from: t */
    public final g f14334t = C19286f.m13660s(this, C2752R.C2754id.offerDuration);

    /* renamed from: u */
    public final g f14335u = C19286f.m13660s(this, C2752R.C2754id.offerPrice);

    /* renamed from: v */
    public final g f14336v = C19286f.m13660s(this, C2752R.C2754id.offerPricePerMonth);

    /* renamed from: w */
    public final g f14337w = C19286f.m13660s(this, C2752R.C2754id.offerHeading);

    /* renamed from: x */
    public final g f14338x = C19286f.m13660s(this, 2131366109);

    /* renamed from: y */
    public final g f14339y = C19286f.m13660s(this, C2752R.C2754id.frameContainer);

    /* renamed from: z */
    public final g f14340z = C19286f.m13660s(this, C2752R.C2754id.selectedTickIcon);

    /* renamed from: A */
    public final g f14333A = C19286f.m13660s(this, C2752R.C2754id.innerContainer);

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubscriptionOfferButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        C17422k.m16099S(this, C2752R.layout.view_subscription_offer, true, false, 4);
    }

    private final LinearLayout getFrameContainer() {
        return (LinearLayout) this.f14339y.getValue();
    }

    private final TextView getOfferDuration() {
        return (TextView) this.f14334t.getValue();
    }

    private final TextView getOfferHeading() {
        return (TextView) this.f14337w.getValue();
    }

    private final TextView getOfferPrice() {
        return (TextView) this.f14335u.getValue();
    }

    private final TextView getOfferPricePerMonth() {
        return (TextView) this.f14336v.getValue();
    }

    private final ImageView getSelectedTickIcon() {
        return (ImageView) this.f14340z.getValue();
    }

    private final AppCompatTextView getSubstituteText() {
        return (AppCompatTextView) this.f14338x.getValue();
    }

    public final LinearLayout getInnerContainer() {
        return (LinearLayout) this.f14333A.getValue();
    }

    public final void setInnerBackground(int i) {
        getInnerContainer().setBackgroundResource(i);
    }

    public final void setInnerContainerHeight(int i) {
        LinearLayout innerContainer = getInnerContainer();
        ViewGroup.LayoutParams layoutParams = getInnerContainer().getLayoutParams();
        Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams");
        LinearLayout.LayoutParams layoutParams2 = (LinearLayout.LayoutParams) layoutParams;
        layoutParams2.height = i;
        innerContainer.setLayoutParams(layoutParams2);
    }

    public final void setOfferDuration(String str) {
        l.e(str, VastIconXmlManager.DURATION);
        TextView offerDuration = getOfferDuration();
        l.d(offerDuration, "offerDuration");
        offerDuration.setText(str);
    }

    public final void setOfferHeading(String str) {
        TextView offerHeading = getOfferHeading();
        l.d(offerHeading, "offerHeading");
        offerHeading.setText(str);
        TextView offerHeading2 = getOfferHeading();
        l.d(offerHeading2, "offerHeading");
        C19286f.m13683U(offerHeading2, !(str == null || str.length() == 0));
    }

    public final void setOfferPrice(String str) {
        l.e(str, "price");
        TextView offerPrice = getOfferPrice();
        l.d(offerPrice, "offerPrice");
        offerPrice.setText(str);
    }

    public final void setOfferPricePerMoth(String str) {
        l.e(str, "pricePerMonth");
        TextView offerPricePerMonth = getOfferPricePerMonth();
        l.d(offerPricePerMonth, "offerPricePerMonth");
        offerPricePerMonth.setText(str);
    }

    public final void setOfferPriceTextColor(int i) {
        getOfferPrice().setTextColor(i);
    }

    public final void setOfferState(AbstractC17293d abstractC17293d) {
        l.e(abstractC17293d, "state");
        boolean z = true;
        if (abstractC17293d instanceof AbstractC17293d.C17294a) {
            LinearLayout frameContainer = getFrameContainer();
            l.d(frameContainer, "frameContainer");
            frameContainer.setSelected(false);
            AppCompatTextView substituteText = getSubstituteText();
            l.d(substituteText, "substituteText");
            substituteText.setSelected(false);
            getInnerContainer().setSelected(false);
            TextView offerHeading = getOfferHeading();
            l.d(offerHeading, "offerHeading");
            C19286f.m13689O(offerHeading);
            ImageView selectedTickIcon = getSelectedTickIcon();
            l.d(selectedTickIcon, "selectedTickIcon");
            C19286f.m13689O(selectedTickIcon);
            AppCompatTextView substituteText2 = getSubstituteText();
            l.d(substituteText2, "substituteText");
            AppCompatTextView substituteText3 = getSubstituteText();
            l.d(substituteText3, "substituteText");
            CharSequence text = substituteText3.getText();
            l.d(text, "substituteText.text");
            if (text.length() <= 0) {
                z = false;
            }
            C19286f.m13683U(substituteText2, z);
            setAlpha(1.0f);
        } else if (!(abstractC17293d instanceof AbstractC17293d.C17295b)) {
        } else {
            LinearLayout frameContainer2 = getFrameContainer();
            l.d(frameContainer2, "frameContainer");
            frameContainer2.setSelected(true);
            getInnerContainer().setSelected(true);
            AppCompatTextView substituteText4 = getSubstituteText();
            substituteText4.setSelected(true);
            AppCompatTextView substituteText5 = getSubstituteText();
            l.d(substituteText5, "substituteText");
            CharSequence text2 = substituteText5.getText();
            l.d(text2, "substituteText.text");
            C19286f.m13683U(substituteText4, text2.length() > 0);
            TextView offerHeading2 = getOfferHeading();
            l.d(offerHeading2, "offerHeading");
            TextView offerHeading3 = getOfferHeading();
            l.d(offerHeading3, "offerHeading");
            CharSequence text3 = offerHeading3.getText();
            l.d(text3, "offerHeading.text");
            C19286f.m13683U(offerHeading2, text3.length() > 0);
            ImageView selectedTickIcon2 = getSelectedTickIcon();
            l.d(selectedTickIcon2, "selectedTickIcon");
            C19286f.m13684T(selectedTickIcon2);
            setAlpha(1.0f);
        }
    }

    public final void setOuterBackground(int i) {
        getFrameContainer().setBackgroundResource(i);
    }

    public final void setSubtext(String str) {
        AppCompatTextView substituteText = getSubstituteText();
        l.d(substituteText, "substituteText");
        substituteText.setText(str);
        AppCompatTextView substituteText2 = getSubstituteText();
        l.d(substituteText2, "substituteText");
        C19286f.m13683U(substituteText2, !(str == null || str.length() == 0));
    }

    public final void setSubtextBackground(int i) {
        getSubstituteText().setBackgroundResource(i);
    }

    public final void setSubtextFontColor(int i) {
        getSubstituteText().setTextColor(C26467a.m1799c(getContext(), i));
    }
}
