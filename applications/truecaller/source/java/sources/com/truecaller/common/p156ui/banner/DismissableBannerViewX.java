package com.truecaller.common.p156ui.banner;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.C3700R;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p372b0.p373a.p388u.View$OnClickListenerC8338b;
import s1.g;
import s1.s;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0016\u0018��2\u00020\u0001B\u001b\b\u0016\u0012\u0006\u00107\u001a\u000206\u0012\b\u00109\u001a\u0004\u0018\u000108¢\u0006\u0004\b:\u0010;J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\u0006J\u0017\u0010\n\u001a\u00020\u00042\b\u0010\t\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00042\b\b\u0001\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0010\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0010\u0010\u0006J\u0017\u0010\u0011\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0011\u0010\u0006J\u0015\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0012¢\u0006\u0004\b\u0014\u0010\u0015J%\u0010\u0019\u001a\u00020\u00042\u0016\b\u0002\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ%\u0010\u001b\u001a\u00020\u00042\u0016\b\u0002\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0016¢\u0006\u0004\b\u001b\u0010\u001aJ%\u0010\u001c\u001a\u00020\u00042\u0016\b\u0002\u0010\u0018\u001a\u0010\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0016¢\u0006\u0004\b\u001c\u0010\u001aR%\u0010#\u001a\n \u001e*\u0004\u0018\u00010\u001d0\u001d8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"R%\u0010&\u001a\n \u001e*\u0004\u0018\u00010\u001d0\u001d8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b$\u0010 \u001a\u0004\b%\u0010\"R%\u0010*\u001a\n \u001e*\u0004\u0018\u00010'0'8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010 \u001a\u0004\b(\u0010)R%\u0010/\u001a\n \u001e*\u0004\u0018\u00010+0+8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b,\u0010 \u001a\u0004\b-\u0010.R%\u00102\u001a\n \u001e*\u0004\u0018\u00010'0'8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b0\u0010 \u001a\u0004\b1\u0010)R%\u00105\u001a\n \u001e*\u0004\u0018\u00010+0+8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b3\u0010 \u001a\u0004\b4\u0010.¨\u0006<"}, d2 = {"Lcom/truecaller/common/ui/banner/DismissableBannerViewX;", "Landroid/widget/FrameLayout;", "", "text", "Ls1/s;", "setTitle", "(Ljava/lang/String;)V", "setSubtitle", "Landroid/graphics/drawable/Drawable;", "drawable", "setImage", "(Landroid/graphics/drawable/Drawable;)V", "", "drawableRes", "setImageResource", "(I)V", "setPrimaryButtonText", "setSecondaryButtonText", "", AnalyticsConstants.SHOW, "a", "(Z)V", "Lkotlin/Function1;", "Landroid/view/View;", "listener", "setPrimaryButtonCLickListener", "(Ls1/z/b/l;)V", "setSecondaryButtonCLickListener", "setDismissButtonClickListener", "Landroid/widget/TextView;", "kotlin.jvm.PlatformType", "d", "Ls1/g;", "getSubtitle", "()Landroid/widget/TextView;", "subtitle", "e", "getTitle", "title", "Landroid/widget/Button;", "getButtonPrimary", "()Landroid/widget/Button;", "buttonPrimary", "Landroid/widget/ImageView;", "f", "getDismiss", "()Landroid/widget/ImageView;", "dismiss", C22021b.f61237c, "getButtonSecondary", "buttonSecondary", AbstractC2405c.f7629a, "getImage", "image", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "common-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.common.ui.banner.DismissableBannerViewX */
/* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/banner/DismissableBannerViewX.class */
public class DismissableBannerViewX extends FrameLayout {

    /* renamed from: a */
    public final g f11149a = C19286f.m13660s(this, C3700R.C3702id.buttonPrimary);

    /* renamed from: b */
    public final g f11150b = C19286f.m13660s(this, C3700R.C3702id.buttonSecondary);

    /* renamed from: c */
    public final g f11151c = C19286f.m13660s(this, C3700R.C3702id.image);

    /* renamed from: d */
    public final g f11152d = C19286f.m13660s(this, C3700R.C3702id.subtitle);

    /* renamed from: e */
    public final g f11153e = C19286f.m13660s(this, C3700R.C3702id.title);

    /* renamed from: f */
    public final g f11154f = C19286f.m13660s(this, C3700R.C3702id.dismiss);

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DismissableBannerViewX(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(context, AnalyticsConstants.CONTEXT);
        FrameLayout.inflate(context, C3700R.layout.layout_tcx_dismissable_banner, this);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C3700R.styleable.BannerViewX, 0, 0);
            l.d(obtainStyledAttributes, "context.obtainStyledAttr…leable.BannerViewX, 0, 0)");
            try {
                String string = obtainStyledAttributes.getString(C3700R.styleable.BannerViewX_bannerViewTitle);
                if (string != null) {
                    l.d(string, "it");
                    setTitle(string);
                }
                String string2 = obtainStyledAttributes.getString(C3700R.styleable.BannerViewX_bannerViewSubtitle);
                if (string2 != null) {
                    l.d(string2, "it");
                    setSubtitle(string2);
                }
                Drawable drawable = obtainStyledAttributes.getDrawable(C3700R.styleable.BannerViewX_bannerViewImage);
                if (drawable != null) {
                    setImage(drawable);
                }
                setPrimaryButtonText(obtainStyledAttributes.getString(C3700R.styleable.BannerViewX_bannerViewPrimaryButton));
                setSecondaryButtonText(obtainStyledAttributes.getString(C3700R.styleable.BannerViewX_bannerViewSecondaryButton));
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
    }

    private final Button getButtonPrimary() {
        return (Button) this.f11149a.getValue();
    }

    private final Button getButtonSecondary() {
        return (Button) this.f11150b.getValue();
    }

    private final ImageView getDismiss() {
        return (ImageView) this.f11154f.getValue();
    }

    private final ImageView getImage() {
        return (ImageView) this.f11151c.getValue();
    }

    private final TextView getSubtitle() {
        return (TextView) this.f11152d.getValue();
    }

    private final TextView getTitle() {
        return (TextView) this.f11153e.getValue();
    }

    /* renamed from: a */
    public final void m35696a(boolean z) {
        ImageView dismiss = getDismiss();
        l.d(dismiss, "dismiss");
        dismiss.setVisibility(z ? 0 : 4);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void setDismissButtonClickListener(s1.z.b.l<? super View, s> lVar) {
        ImageView dismiss = getDismiss();
        View$OnClickListenerC8338b view$OnClickListenerC8338b = lVar;
        if (lVar != 0) {
            view$OnClickListenerC8338b = new View$OnClickListenerC8338b(lVar);
        }
        dismiss.setOnClickListener(view$OnClickListenerC8338b);
    }

    public final void setImage(Drawable drawable) {
        getImage().setImageDrawable(drawable);
    }

    public final void setImageResource(int i) {
        getImage().setImageResource(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void setPrimaryButtonCLickListener(s1.z.b.l<? super View, s> lVar) {
        Button buttonPrimary = getButtonPrimary();
        View$OnClickListenerC8338b view$OnClickListenerC8338b = lVar;
        if (lVar != 0) {
            view$OnClickListenerC8338b = new View$OnClickListenerC8338b(lVar);
        }
        buttonPrimary.setOnClickListener(view$OnClickListenerC8338b);
    }

    public final void setPrimaryButtonText(String str) {
        Button buttonPrimary = getButtonPrimary();
        C19286f.m13683U(buttonPrimary, true ^ (str == null || str.length() == 0));
        l.d(buttonPrimary, "this");
        buttonPrimary.setText(str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void setSecondaryButtonCLickListener(s1.z.b.l<? super View, s> lVar) {
        Button buttonSecondary = getButtonSecondary();
        View$OnClickListenerC8338b view$OnClickListenerC8338b = lVar;
        if (lVar != 0) {
            view$OnClickListenerC8338b = new View$OnClickListenerC8338b(lVar);
        }
        buttonSecondary.setOnClickListener(view$OnClickListenerC8338b);
    }

    public final void setSecondaryButtonText(String str) {
        Button buttonSecondary = getButtonSecondary();
        C19286f.m13683U(buttonSecondary, true ^ (str == null || str.length() == 0));
        l.d(buttonSecondary, "this");
        buttonSecondary.setText(str);
    }

    public final void setSubtitle(String str) {
        l.e(str, "text");
        TextView subtitle = getSubtitle();
        l.d(subtitle, "subtitle");
        subtitle.setText(str);
    }

    public final void setTitle(String str) {
        l.e(str, "text");
        TextView title = getTitle();
        l.d(title, "title");
        title.setText(str);
    }
}
