package com.truecaller.common.p156ui.banner;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.text.SpannableString;
import android.text.method.LinkMovementMethod;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.C3700R;
import java.util.Objects;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1451f.p1452a.ComponentCallbacks2C22222c;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p373a.p388u.View$OnClickListenerC8337a;
import s1.g;
import s1.s;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0016\u0018��2\u00020\u0001B\u001b\b\u0016\u0012\u0006\u0010>\u001a\u00020=\u0012\b\u0010@\u001a\u0004\u0018\u00010?¢\u0006\u0004\bA\u0010BB#\b\u0016\u0012\u0006\u0010>\u001a\u00020=\u0012\b\u0010@\u001a\u0004\u0018\u00010?\u0012\u0006\u0010C\u001a\u00020\u000e¢\u0006\u0004\bA\u0010DJ\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002¢\u0006\u0004\b\u0007\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\f\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ\u0015\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0010\u0010\u0011J\u0015\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u0012\u0010\rJ\u0015\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000e¢\u0006\u0004\b\u0013\u0010\u0011J\u0015\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00042\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u0019\u001a\u00020\u00042\b\u0010\u001b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u0019\u0010\rJ\u0017\u0010\u001d\u001a\u00020\u00042\b\b\u0001\u0010\u001c\u001a\u00020\u000e¢\u0006\u0004\b\u001d\u0010\u0011J\u0017\u0010\u001e\u001a\u00020\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u001e\u0010\rJ\u0017\u0010\u001f\u001a\u00020\u00042\b\u0010\u000b\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u001f\u0010\rJ%\u0010#\u001a\u00020\u00042\u0016\b\u0002\u0010\"\u001a\u0010\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\u0004\u0018\u00010 ¢\u0006\u0004\b#\u0010$J%\u0010%\u001a\u00020\u00042\u0016\b\u0002\u0010\"\u001a\u0010\u0012\u0004\u0012\u00020!\u0012\u0004\u0012\u00020\u0004\u0018\u00010 ¢\u0006\u0004\b%\u0010$R%\u0010,\u001a\n '*\u0004\u0018\u00010&0&8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+R%\u0010/\u001a\n '*\u0004\u0018\u00010&0&8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b-\u0010)\u001a\u0004\b.\u0010+R%\u00104\u001a\n '*\u0004\u0018\u000100008B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b1\u0010)\u001a\u0004\b2\u00103R%\u00109\u001a\n '*\u0004\u0018\u000105058B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b6\u0010)\u001a\u0004\b7\u00108R%\u0010<\u001a\n '*\u0004\u0018\u000100008B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b:\u0010)\u001a\u0004\b;\u00103¨\u0006E"}, d2 = {"Lcom/truecaller/common/ui/banner/BannerViewX;", "Landroid/widget/FrameLayout;", "", "value", "Ls1/s;", "setImageWidth", "(F)V", "setImageHeight", "onFinishInflate", "()V", "", "text", "setTitle", "(Ljava/lang/String;)V", "", RemoteMessageConst.Notification.COLOR, "setTitleColor", "(I)V", "setSubtitle", "setSubtitleColor", "Landroid/text/SpannableString;", "setSubtitleWithLink", "(Landroid/text/SpannableString;)V", "Landroid/graphics/drawable/Drawable;", "drawable", "setImage", "(Landroid/graphics/drawable/Drawable;)V", "url", "drawableRes", "setImageResource", "setPrimaryButtonText", "setSecondaryButtonText", "Lkotlin/Function1;", "Landroid/view/View;", "listener", "setPrimaryButtonCLickListener", "(Ls1/z/b/l;)V", "setSecondaryButtonCLickListener", "Landroid/widget/TextView;", "kotlin.jvm.PlatformType", "d", "Ls1/g;", "getSubtitle", "()Landroid/widget/TextView;", "subtitle", "e", "getTitle", "title", "Landroid/widget/Button;", C22021b.f61237c, "getButtonSecondary", "()Landroid/widget/Button;", "buttonSecondary", "Landroid/widget/ImageView;", AbstractC2405c.f7629a, "getImage", "()Landroid/widget/ImageView;", "image", "a", "getButtonPrimary", "buttonPrimary", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroid/util/AttributeSet;", "attrs", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "common-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.common.ui.banner.BannerViewX */
/* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/banner/BannerViewX.class */
public class BannerViewX extends FrameLayout {

    /* renamed from: a */
    public final g f11144a;

    /* renamed from: b */
    public final g f11145b;

    /* renamed from: c */
    public final g f11146c;

    /* renamed from: d */
    public final g f11147d;

    /* renamed from: e */
    public final g f11148e;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BannerViewX(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BannerViewX(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f11144a = C19286f.m13660s(this, C3700R.C3702id.buttonPrimary);
        this.f11145b = C19286f.m13660s(this, C3700R.C3702id.buttonSecondary);
        this.f11146c = C19286f.m13660s(this, C3700R.C3702id.image);
        this.f11147d = C19286f.m13660s(this, C3700R.C3702id.subtitle);
        this.f11148e = C19286f.m13660s(this, C3700R.C3702id.title);
        FrameLayout.inflate(context, C3700R.layout.layout_tcx_banner, this);
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
                setImageHeight(obtainStyledAttributes.getDimension(C3700R.styleable.BannerViewX_bannerViewImageHeight, getResources().getDimension(C3700R.dimen.banner_tcx_image_height)));
                setImageWidth(obtainStyledAttributes.getDimension(C3700R.styleable.BannerViewX_bannerViewImageWidth, getResources().getDimension(C3700R.dimen.banner_tcx_image_width)));
                setPrimaryButtonText(obtainStyledAttributes.getString(C3700R.styleable.BannerViewX_bannerViewPrimaryButton));
                setSecondaryButtonText(obtainStyledAttributes.getString(C3700R.styleable.BannerViewX_bannerViewSecondaryButton));
            } finally {
                obtainStyledAttributes.recycle();
            }
        }
    }

    /* renamed from: a */
    public static void m35697a(BannerViewX bannerViewX, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i2 = 4;
        }
        TextView title = bannerViewX.getTitle();
        l.d(title, "title");
        title.setCompoundDrawablePadding(C19291g.m13603O(i2));
        bannerViewX.getTitle().setCompoundDrawablesWithIntrinsicBounds(i, 0, 0, 0);
    }

    private final Button getButtonPrimary() {
        return (Button) this.f11144a.getValue();
    }

    private final Button getButtonSecondary() {
        return (Button) this.f11145b.getValue();
    }

    private final ImageView getImage() {
        return (ImageView) this.f11146c.getValue();
    }

    private final TextView getSubtitle() {
        return (TextView) this.f11147d.getValue();
    }

    private final TextView getTitle() {
        return (TextView) this.f11148e.getValue();
    }

    private final void setImageHeight(float f) {
        ImageView image = getImage();
        l.d(image, "image");
        ImageView image2 = getImage();
        l.d(image2, "image");
        ViewGroup.LayoutParams layoutParams = image2.getLayoutParams();
        Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.C0111a c0111a = (ConstraintLayout.C0111a) layoutParams;
        ((ViewGroup.MarginLayoutParams) c0111a).height = (int) f;
        image.setLayoutParams(c0111a);
    }

    private final void setImageWidth(float f) {
        ImageView image = getImage();
        l.d(image, "image");
        ImageView image2 = getImage();
        l.d(image2, "image");
        ViewGroup.LayoutParams layoutParams = image2.getLayoutParams();
        Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.C0111a c0111a = (ConstraintLayout.C0111a) layoutParams;
        ((ViewGroup.MarginLayoutParams) c0111a).width = (int) f;
        image.setLayoutParams(c0111a);
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        if (getBackground() == null) {
            setBackgroundResource(C3700R.C3701drawable.background_tcx_rectangle_outline);
        }
    }

    public final void setImage(Drawable drawable) {
        getImage().setImageDrawable(drawable);
    }

    public final void setImage(String str) {
        ComponentCallbacks2C22222c.m8445f(this).mo8407r(str).mo8104c().m8427O(getImage());
    }

    public final void setImageResource(int i) {
        getImage().setImageResource(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void setPrimaryButtonCLickListener(s1.z.b.l<? super View, s> lVar) {
        Button buttonPrimary = getButtonPrimary();
        View$OnClickListenerC8337a view$OnClickListenerC8337a = lVar;
        if (lVar != 0) {
            view$OnClickListenerC8337a = new View$OnClickListenerC8337a(lVar);
        }
        buttonPrimary.setOnClickListener(view$OnClickListenerC8337a);
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
        View$OnClickListenerC8337a view$OnClickListenerC8337a = lVar;
        if (lVar != 0) {
            view$OnClickListenerC8337a = new View$OnClickListenerC8337a(lVar);
        }
        buttonSecondary.setOnClickListener(view$OnClickListenerC8337a);
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

    public final void setSubtitleColor(int i) {
        getSubtitle().setTextColor(i);
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

    public final void setTitle(String str) {
        l.e(str, "text");
        TextView title = getTitle();
        l.d(title, "title");
        title.setText(str);
    }

    public final void setTitleColor(int i) {
        getTitle().setTextColor(i);
    }
}
