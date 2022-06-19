package com.truecaller.p183ui.settings.troubleshoot;

import android.content.Context;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p682e.p684b.p696p.View$OnClickListenerC13035a;
import s1.g;
import s1.s;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\u001b\b\u0016\u0012\u0006\u0010&\u001a\u00020%\u0012\b\u0010(\u001a\u0004\u0018\u00010'¢\u0006\u0004\b)\u0010*J\u0017\u0010\u0005\u001a\u00020\u00042\b\b\u0001\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\r\u0010\u000b\u001a\u00020\u0004¢\u0006\u0004\b\u000b\u0010\fJ%\u0010\u0010\u001a\u00020\u00042\u0016\b\u0002\u0010\u000f\u001a\u0010\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u0004\u0018\u00010\r¢\u0006\u0004\b\u0010\u0010\u0011R%\u0010\u0017\u001a\n \u0013*\u0004\u0018\u00010\u00120\u00128B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R%\u0010\u001c\u001a\n \u0013*\u0004\u0018\u00010\u00180\u00188B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0019\u0010\u0014\u001a\u0004\b\u001a\u0010\u001bR%\u0010!\u001a\n \u0013*\u0004\u0018\u00010\u001d0\u001d8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\u0014\u001a\u0004\b\u001f\u0010 R%\u0010$\u001a\n \u0013*\u0004\u0018\u00010\u00180\u00188B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010\u0014\u001a\u0004\b#\u0010\u001b¨\u0006+"}, d2 = {"Lcom/truecaller/ui/settings/troubleshoot/CallerIdBannerView;", "Landroid/widget/FrameLayout;", "", RemoteMessageConst.Notification.ICON, "Ls1/s;", "setTitleIcon", "(I)V", "Landroid/text/SpannableString;", "text", "setSubtitleWithLink", "(Landroid/text/SpannableString;)V", "a", "()V", "Lkotlin/Function1;", "Landroid/view/View;", "listener", "setEnableButtonClickListener", "(Ls1/z/b/l;)V", "Landroid/widget/Button;", "kotlin.jvm.PlatformType", "Ls1/g;", "getEnableButton", "()Landroid/widget/Button;", "enableButton", "Landroid/widget/TextView;", "d", "getTitle", "()Landroid/widget/TextView;", "title", "Landroid/widget/ImageView;", C22021b.f61237c, "getImage", "()Landroid/widget/ImageView;", "image", AbstractC2405c.f7629a, "getSubtitle", "subtitle", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.ui.settings.troubleshoot.CallerIdBannerView */
/* loaded from: classes15-dex2jar.jar:com/truecaller/ui/settings/troubleshoot/CallerIdBannerView.class */
public final class CallerIdBannerView extends FrameLayout {

    /* renamed from: a */
    public final g f15867a = C19286f.m13660s(this, C2752R.C2754id.buttonEnable);

    /* renamed from: b */
    public final g f15868b = C19286f.m13660s(this, C2752R.C2754id.imageCallerId);

    /* renamed from: c */
    public final g f15869c = C19286f.m13660s(this, 2131366110);

    /* renamed from: d */
    public final g f15870d = C19286f.m13660s(this, 2131366469);

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CallerIdBannerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(context, AnalyticsConstants.CONTEXT);
        FrameLayout.inflate(context, C2752R.layout.layout_caller_id_banner, this);
    }

    private final Button getEnableButton() {
        return (Button) this.f15867a.getValue();
    }

    private final ImageView getImage() {
        return (ImageView) this.f15868b.getValue();
    }

    private final TextView getSubtitle() {
        return (TextView) this.f15869c.getValue();
    }

    private final TextView getTitle() {
        return (TextView) this.f15870d.getValue();
    }

    /* renamed from: a */
    public final void m34489a() {
        ImageView image = getImage();
        l.d(image, "image");
        C19286f.m13683U(image, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void setEnableButtonClickListener(s1.z.b.l<? super View, s> lVar) {
        Button enableButton = getEnableButton();
        View$OnClickListenerC13035a view$OnClickListenerC13035a = lVar;
        if (lVar != 0) {
            view$OnClickListenerC13035a = new View$OnClickListenerC13035a(lVar);
        }
        enableButton.setOnClickListener(view$OnClickListenerC13035a);
    }

    public final void setSubtitleWithLink(SpannableString spannableString) {
        l.e(spannableString, "text");
        TextView subtitle = getSubtitle();
        l.d(subtitle, "subtitle");
        subtitle.setText(spannableString);
        TextView subtitle2 = getSubtitle();
        l.d(subtitle2, "subtitle");
        subtitle2.setMovementMethod(LinkMovementMethod.getInstance());
    }

    public final void setTitleIcon(int i) {
        TextView title = getTitle();
        l.d(title, "title");
        title.setCompoundDrawablePadding(C19291g.m13603O(4));
        getTitle().setCompoundDrawablesWithIntrinsicBounds(i, 0, 0, 0);
    }
}
