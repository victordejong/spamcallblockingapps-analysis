package com.truecaller.premium.p173ui.subscription.buttons;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.text.Html;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.ShineView;
import com.truecaller.premium.C4334R;
import java.util.Objects;
import kotlin.Metadata;
import p1727n3.p1868v.AbstractC26992b0;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1033v2.p1037i.p1038a.C17280b;
import p193e.p194a.p1011l.p1033v2.p1037i.p1038a.C17286g;
import p193e.p194a.p1011l.p1033v2.p1037i.p1038a.C17287h;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p372b0.p373a.C8311g;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\b\u0018��2\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\t\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0002¢\u0006\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0013\u001a\u00020\u000f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0012R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R\u001d\u0010\u001c\u001a\u00020\u00148B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u0018\u0010 \u001a\u0004\u0018\u00010\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u001d\u0010%\u001a\u00020!8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\"\u0010\u0019\u001a\u0004\b#\u0010$R\u0016\u0010)\u001a\u00020&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0018\u0010+\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010\u0016R\u0018\u0010-\u001a\u0004\u0018\u00010\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b,\u0010\u0016R\u0016\u00101\u001a\u00020.8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b/\u00100R\u0018\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0016\u00105\u001a\u00020&8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u0010(¨\u00066"}, d2 = {"Lcom/truecaller/premium/ui/subscription/buttons/SubscriptionButtonView;", "Landroid/widget/LinearLayout;", "Le/a/l/v2/i/a/b;", "button", "Ls1/s;", "setButton", "(Le/a/l/v2/i/a/b;)V", "Ln3/v/b0;", "lifecycleOwner", "setShineLifecycleOwner", "(Ln3/v/b0;)V", "onAttachedToWindow", "()V", "", "text", "", "a", "(Ljava/lang/String;)I", "I", "defaultButtonLayout", "Landroid/widget/TextView;", C22021b.f61237c, "Landroid/widget/TextView;", "textView", "k", "Ls1/g;", "getNoteView", "()Landroid/widget/TextView;", "noteView", "Lcom/truecaller/common/ui/ShineView;", "e", "Lcom/truecaller/common/ui/ShineView;", "shineView", "Le/a/b0/a/g;", "i", "getGoldBackground", "()Le/a/b0/a/g;", "goldBackground", "", "h", "Z", "shouldShowDiscount", AbstractC2405c.f7629a, "profitView", "d", "subTitleView", "Landroid/widget/RelativeLayout;", "j", "Landroid/widget/RelativeLayout;", "buttonView", "f", "Le/a/l/v2/i/a/b;", "g", "shouldAutoSizePricingText", "premium_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.premium.ui.subscription.buttons.SubscriptionButtonView */
/* loaded from: classes12-dex2jar.jar:com/truecaller/premium/ui/subscription/buttons/SubscriptionButtonView.class */
public final class SubscriptionButtonView extends LinearLayout {

    /* renamed from: l */
    public static final /* synthetic */ int f14317l = 0;

    /* renamed from: a */
    public final int f14318a;

    /* renamed from: b */
    public TextView f14319b;

    /* renamed from: c */
    public TextView f14320c;

    /* renamed from: d */
    public TextView f14321d;

    /* renamed from: e */
    public ShineView f14322e;

    /* renamed from: f */
    public C17280b f14323f;

    /* renamed from: g */
    public boolean f14324g;

    /* renamed from: h */
    public boolean f14325h;

    /* renamed from: i */
    public final g f14326i;

    /* renamed from: j */
    public final RelativeLayout f14327j;

    /* renamed from: k */
    public final g f14328k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SubscriptionButtonView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        int i;
        int i2;
        l.e(context, AnalyticsConstants.CONTEXT);
        int i3 = 0;
        int i4 = C4334R.layout.subscription_button;
        this.f14318a = i4;
        this.f14324g = true;
        this.f14326i = C25225a.m3978P1(new C17286g(context));
        this.f14328k = C25225a.m3978P1(new C17287h(this, context));
        setOrientation(1);
        int i5 = -2;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C4334R.styleable.SubscriptionButtonView, 0, 0);
            l.d(obtainStyledAttributes, "context.obtainStyledAttr…criptionButtonView, 0, 0)");
            i4 = obtainStyledAttributes.getResourceId(C4334R.styleable.SubscriptionButtonView_subscriptionButtonLayout, i4);
            i2 = obtainStyledAttributes.getResourceId(C4334R.styleable.SubscriptionButtonView_subscriptionButtonBackground, -1);
            this.f14324g = obtainStyledAttributes.getBoolean(C4334R.styleable.SubscriptionButtonView_subscriptionButtonAutoSize, true);
            i5 = obtainStyledAttributes.getDimensionPixelSize(C4334R.styleable.SubscriptionButtonView_subscriptionButtonHeight, -2);
            i3 = obtainStyledAttributes.getDimensionPixelSize(C4334R.styleable.SubscriptionButtonView_subscriptionButtonMinHeight, 0);
            i = obtainStyledAttributes.getDimensionPixelSize(C4334R.styleable.SubscriptionButtonView_subscriptionButtonPadding, 0);
            obtainStyledAttributes.recycle();
        } else {
            i = 0;
            i2 = -1;
        }
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, i5));
        relativeLayout.setMinimumHeight(i3);
        if (i2 != -1) {
            relativeLayout.setBackgroundResource(i2);
        }
        relativeLayout.setGravity(17);
        relativeLayout.setPaddingRelative(i, i, i, i);
        this.f14327j = relativeLayout;
        addView(relativeLayout);
        LinearLayout.inflate(getContext(), i4, relativeLayout);
        View findViewById = findViewById(C4334R.C4336id.text);
        l.d(findViewById, "findViewById(R.id.text)");
        this.f14319b = (TextView) findViewById;
        this.f14320c = (TextView) findViewById(C4334R.C4336id.profit);
        this.f14321d = (TextView) findViewById(C4334R.C4336id.subTitle);
        this.f14322e = (ShineView) findViewById(C4334R.C4336id.goldShine);
        addView(getNoteView());
    }

    private final C8311g getGoldBackground() {
        return (C8311g) this.f14326i.getValue();
    }

    private final TextView getNoteView() {
        return (TextView) this.f14328k.getValue();
    }

    /* renamed from: a */
    public final int m34800a(String str) {
        TextView textView = new TextView(getContext());
        textView.setText(Html.fromHtml(str));
        textView.setMaxLines(1);
        textView.setTextSize(2, 14);
        textView.measure(View.MeasureSpec.makeMeasureSpec(99999, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(0, 0));
        return textView.getMeasuredHeight();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        Object systemService = getContext().getSystemService("window");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        ((WindowManager) systemService).getDefaultDisplay().getRealMetrics(displayMetrics);
        double d = displayMetrics.widthPixels;
        TextView textView = this.f14319b;
        if (textView != null) {
            textView.setMaxWidth((int) (d * 0.6d));
        } else {
            l.l("textView");
            throw null;
        }
    }

    public final void setButton(C17280b c17280b) {
        TextView textView;
        l.e(c17280b, "button");
        this.f14323f = c17280b;
        Integer num = c17280b.f48483e;
        if (num != null) {
            this.f14327j.setBackgroundResource(num.intValue());
        }
        int i = -2;
        if (this.f14324g) {
            TextView textView2 = this.f14319b;
            if (textView2 == null) {
                l.l("textView");
                throw null;
            }
            if (textView2.getLayoutParams().height == -2) {
                TextView textView3 = this.f14319b;
                if (textView3 == null) {
                    l.l("textView");
                    throw null;
                }
                textView3.getLayoutParams().height = m34800a(c17280b.f48479a);
            }
            TextView textView4 = this.f14319b;
            if (textView4 == null) {
                l.l("textView");
                throw null;
            }
            textView4.setMaxLines(1);
            TextView textView5 = this.f14319b;
            if (textView5 == null) {
                l.l("textView");
                throw null;
            }
            MediaSessionCompat.m43215n1(textView5, 8, 14, 1, 2);
            TextView textView6 = this.f14321d;
            if (textView6 != null && c17280b.f48481c != null) {
                if (textView6.getLayoutParams().width == -2 && c17280b.f48480b != null) {
                    textView6.getLayoutParams().width = textView6.getResources().getDimensionPixelSize(C4334R.dimen.tcx_subscription_button_subtitle_fixed_width);
                }
                textView6.setMaxLines(1);
                MediaSessionCompat.m43215n1(textView6, 5, 12, 1, 2);
            }
            TextView textView7 = this.f14320c;
            if (textView7 != null) {
                ViewGroup.LayoutParams layoutParams = textView7.getLayoutParams();
                if (c17280b.f48481c != null || c17280b.f48480b == null) {
                    i = textView7.getResources().getDimensionPixelSize(C4334R.dimen.tcx_subscription_button_profit_fixed_width);
                }
                layoutParams.width = i;
            }
        } else {
            TextView textView8 = this.f14319b;
            if (textView8 == null) {
                l.l("textView");
                throw null;
            }
            if (textView8.getLayoutParams().height != -2) {
                TextView textView9 = this.f14319b;
                if (textView9 == null) {
                    l.l("textView");
                    throw null;
                }
                textView9.getLayoutParams().height = -2;
            }
            TextView textView10 = this.f14321d;
            if (textView10 != null && textView10.getLayoutParams().width != -2) {
                textView10.getLayoutParams().width = -2;
            }
            TextView textView11 = this.f14320c;
            if (textView11 != null && textView11.getLayoutParams().width != -2) {
                textView11.getLayoutParams().width = -2;
            }
        }
        TextView textView12 = this.f14319b;
        if (textView12 == null) {
            l.l("textView");
            throw null;
        }
        textView12.setText(Html.fromHtml(c17280b.f48479a));
        Integer num2 = c17280b.f48482d;
        if (num2 != null) {
            int intValue = num2.intValue();
            TextView textView13 = this.f14319b;
            if (textView13 == null) {
                l.l("textView");
                throw null;
            }
            textView13.setTextColor(intValue);
            TextView textView14 = this.f14321d;
            if (textView14 != null) {
                textView14.setTextColor(intValue);
            }
        }
        TextView textView15 = this.f14320c;
        if (textView15 != null) {
            textView15.setText(c17280b.f48480b);
        }
        TextView textView16 = this.f14321d;
        if (textView16 != null) {
            textView16.setText(c17280b.f48481c);
        }
        TextView textView17 = this.f14321d;
        if (textView17 != null) {
            String str = c17280b.f48481c;
            C19286f.m13683U(textView17, !(str == null || str.length() == 0));
        }
        if (c17280b.f48484f) {
            this.f14327j.setBackground(getGoldBackground());
        }
        Integer num3 = c17280b.f48485g;
        boolean z = (num3 != null ? num3.intValue() : 0) > 0;
        this.f14325h = z;
        if (z && (textView = this.f14320c) != null) {
            textView.setText(getContext().getString(C4334R.string.PremiumDiscountPercentageOff, c17280b.f48485g));
        }
        TextView noteView = getNoteView();
        String str2 = c17280b.f48486h;
        C19286f.m13683U(noteView, !(str2 == null || str2.length() == 0));
        getNoteView().setText(c17280b.f48486h);
        TextView textView18 = this.f14320c;
        if (textView18 != null) {
            C17280b c17280b2 = this.f14323f;
            C19286f.m13683U(textView18, (c17280b2 != null ? c17280b2.f48480b : null) != null || this.f14325h);
        }
        TextView textView19 = this.f14321d;
        if (textView19 != null) {
            C17280b c17280b3 = this.f14323f;
            String str3 = null;
            if (c17280b3 != null) {
                str3 = c17280b3.f48481c;
            }
            C19286f.m13683U(textView19, str3 != null);
        }
        ShineView shineView = this.f14322e;
        if (shineView == null) {
            return;
        }
        C17280b c17280b4 = this.f14323f;
        C19286f.m13683U(shineView, c17280b4 != null && c17280b4.f48484f);
    }

    public final void setShineLifecycleOwner(AbstractC26992b0 abstractC26992b0) {
        l.e(abstractC26992b0, "lifecycleOwner");
        ShineView shineView = this.f14322e;
        if (shineView != null) {
            shineView.setLifecycleOwner(abstractC26992b0);
        }
    }
}
