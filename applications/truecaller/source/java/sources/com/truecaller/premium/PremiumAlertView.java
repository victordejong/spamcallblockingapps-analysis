package com.truecaller.premium;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import kotlin.Metadata;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.g;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\b\u0018��2\u00020\u0001J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006R*\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR%\u0010\u0015\u001a\n \u0010*\u0004\u0018\u00010\u000f0\u000f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R%\u0010\u001a\u001a\n \u0010*\u0004\u0018\u00010\u00160\u00168B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0012\u001a\u0004\b\u0018\u0010\u0019R%\u0010\u001d\u001a\n \u0010*\u0004\u0018\u00010\u00160\u00168B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001b\u0010\u0012\u001a\u0004\b\u001c\u0010\u0019R%\u0010 \u001a\n \u0010*\u0004\u0018\u00010\u00160\u00168B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\u0012\u001a\u0004\b\u001f\u0010\u0019R%\u0010#\u001a\n \u0010*\u0004\u0018\u00010\u00160\u00168B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\u0012\u001a\u0004\b\"\u0010\u0019R%\u0010'\u001a\n \u0010*\u0004\u0018\u00010\u00010\u00018B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b$\u0010\u0012\u001a\u0004\b%\u0010&R%\u0010*\u001a\n \u0010*\u0004\u0018\u00010\u00160\u00168B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b(\u0010\u0012\u001a\u0004\b)\u0010\u0019R\u0016\u0010.\u001a\u00020+8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010-R*\u00102\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b/\u0010\t\u001a\u0004\b0\u0010\u000b\"\u0004\b1\u0010\r¨\u00063"}, d2 = {"Lcom/truecaller/premium/PremiumAlertView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Le/a/l/b0;", "alert", "Ls1/s;", "setAlert", "(Le/a/l/b0;)V", "Lkotlin/Function0;", "C", "Ls1/z/b/a;", "getNegativeListener", "()Ls1/z/b/a;", "setNegativeListener", "(Ls1/z/b/a;)V", "negativeListener", "Landroid/widget/ImageView;", "kotlin.jvm.PlatformType", "t", "Ls1/g;", "getIconView", "()Landroid/widget/ImageView;", "iconView", "Landroid/widget/TextView;", "z", "getActionNegativeView", "()Landroid/widget/TextView;", "actionNegativeView", "x", "getPromoView", "promoView", "u", "getTitleView", "titleView", "v", "getDescriptionView", "descriptionView", "w", "getMainContainerView", "()Landroidx/constraintlayout/widget/ConstraintLayout;", "mainContainerView", "y", "getActionPositiveView", "actionPositiveView", "Le/a/p5/h0;", "A", "Le/a/p5/h0;", "resourceProvider", "B", "getPositiveListener", "setPositiveListener", "positiveListener", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes12-dex2jar.jar:com/truecaller/premium/PremiumAlertView.class */
public final class PremiumAlertView extends ConstraintLayout {

    /* renamed from: A */
    public final AbstractC19233h0 f14195A;

    /* renamed from: B */
    public a<s> f14196B;

    /* renamed from: C */
    public a<s> f14197C;

    /* renamed from: t */
    public final g f14198t = C19286f.m13660s(this, 2131364203);

    /* renamed from: u */
    public final g f14199u = C19286f.m13660s(this, 2131366469);

    /* renamed from: v */
    public final g f14200v = C19286f.m13660s(this, 2131363279);

    /* renamed from: w */
    public final g f14201w = C19286f.m13660s(this, 2131364707);

    /* renamed from: x */
    public final g f14202x = C19286f.m13660s(this, C2752R.C2754id.promo);

    /* renamed from: y */
    public final g f14203y = C19286f.m13660s(this, C2752R.C2754id.actionPositive);

    /* renamed from: z */
    public final g f14204z = C19286f.m13660s(this, C2752R.C2754id.actionNegative);

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PremiumAlertView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f14195A = new C19235i0(context);
        View.inflate(context, C2752R.layout.view_tcx_premium_alert, this);
        getActionPositiveView().setOnClickListener(new t0(0, this));
        getActionNegativeView().setOnClickListener(new t0(1, this));
        setClickable(true);
    }

    private final TextView getActionNegativeView() {
        return (TextView) this.f14204z.getValue();
    }

    private final TextView getActionPositiveView() {
        return (TextView) this.f14203y.getValue();
    }

    private final TextView getDescriptionView() {
        return (TextView) this.f14200v.getValue();
    }

    private final ImageView getIconView() {
        return (ImageView) this.f14198t.getValue();
    }

    private final ConstraintLayout getMainContainerView() {
        return (ConstraintLayout) this.f14201w.getValue();
    }

    private final TextView getPromoView() {
        return (TextView) this.f14202x.getValue();
    }

    private final TextView getTitleView() {
        return (TextView) this.f14199u.getValue();
    }

    public final a<s> getNegativeListener() {
        return this.f14197C;
    }

    public final a<s> getPositiveListener() {
        return this.f14196B;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x016b, code lost:
        if (r0.length() == 0) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void setAlert(p193e.p194a.p1011l.C16624b0 r7) {
        /*
            Method dump skipped, instructions count: 378
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.premium.PremiumAlertView.setAlert(e.a.l.b0):void");
    }

    public final void setNegativeListener(a<s> aVar) {
        this.f14197C = aVar;
    }

    public final void setPositiveListener(a<s> aVar) {
        this.f14196B = aVar;
    }
}
