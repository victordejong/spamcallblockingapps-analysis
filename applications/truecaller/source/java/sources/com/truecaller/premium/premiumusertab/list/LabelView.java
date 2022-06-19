package com.truecaller.premium.premiumusertab.list;

import android.content.Context;
import android.content.res.ColorStateList;
import android.util.AttributeSet;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.premium.p173ui.countdown.CountDownTextView;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import p1727n3.p1807k.p1809b.C26467a;
import p1727n3.p1807k.p1821i.C26614s;
import p193e.p194a.p1011l.p1013c.p1014a.C16723q;
import p193e.p194a.p1011l.p1013c.p1014a.C16767x;
import p193e.p194a.p1011l.p1013c.p1014a.C16770x2;
import p193e.p194a.p1011l.p1033v2.p1034f.AbstractC17259b;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p916i5.p917e.C15322a;
import s1.g;
import s1.s;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J!\u0010\u000b\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u000f\u001a\u00020\u00042\b\u0010\u000e\u001a\u0004\u0018\u00010\r¢\u0006\u0004\b\u000f\u0010\u0010J!\u0010\u0014\u001a\u00020\u00042\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00040\u0011¢\u0006\u0004\b\u0014\u0010\u0015J\r\u0010\u0016\u001a\u00020\u0004¢\u0006\u0004\b\u0016\u0010\u0017R%\u0010\u001e\u001a\n \u0019*\u0004\u0018\u00010\u00180\u00188B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001dR%\u0010#\u001a\n \u0019*\u0004\u0018\u00010\u001f0\u001f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010\u001b\u001a\u0004\b!\u0010\"R%\u0010(\u001a\n \u0019*\u0004\u0018\u00010$0$8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b%\u0010\u001b\u001a\u0004\b&\u0010'¨\u0006)"}, d2 = {"Lcom/truecaller/premium/premiumusertab/list/LabelView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Le/a/l/c/a/q;", "label", "Ls1/s;", "setLabel", "(Le/a/l/c/a/q;)V", "Le/a/l/c/a/x;", "countDownTextSpec", "", "timeInFuture", "g1", "(Le/a/l/c/a/x;Ljava/lang/Long;)V", "Le/a/l/c/a/x2;", "offerEndLabel", "setOfferEndLabelText", "(Le/a/l/c/a/x2;)V", "Lkotlin/Function1;", "Le/a/l/v2/f/b;", "onCountDownTimerStateListener", "setOnCountDownTimerStateListener", "(Ls1/z/b/l;)V", "f1", "()V", "Landroid/widget/TextView;", "kotlin.jvm.PlatformType", "u", "Ls1/g;", "getTextView", "()Landroid/widget/TextView;", "textView", "Lcom/truecaller/premium/ui/countdown/CountDownTextView;", "v", "getTimerView", "()Lcom/truecaller/premium/ui/countdown/CountDownTextView;", "timerView", "Landroid/widget/ImageView;", "t", "getIconView", "()Landroid/widget/ImageView;", "iconView", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes12-dex2jar.jar:com/truecaller/premium/premiumusertab/list/LabelView.class */
public final class LabelView extends ConstraintLayout {

    /* renamed from: t */
    public final g f14250t = C19286f.m13660s(this, 2131364203);

    /* renamed from: u */
    public final g f14251u = C19286f.m13660s(this, 2131366265);

    /* renamed from: v */
    public final g f14252v = C19286f.m13660s(this, 2131366455);

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LabelView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        ViewGroup.inflate(context, C2752R.layout.layout_tcx_premium_user_tab_label_view, this);
        setPadding(C19291g.m13603O(16), 0, C19291g.m13603O(16), 0);
        setOutlineProvider(null);
        if (isInEditMode()) {
            setLabel(new C16723q(C2752R.C2753drawable.ic_premium_user_tab_label_lock, "premium required", 2130970017));
        }
    }

    private final ImageView getIconView() {
        return (ImageView) this.f14250t.getValue();
    }

    private final TextView getTextView() {
        return (TextView) this.f14251u.getValue();
    }

    private final CountDownTextView getTimerView() {
        return (CountDownTextView) this.f14252v.getValue();
    }

    /* renamed from: f1 */
    public final void m34817f1() {
        getTimerView().f14285z = 0L;
    }

    /* renamed from: g1 */
    public final void m34816g1(C16767x c16767x, Long l) {
        CountDownTextView timerView = getTimerView();
        l.d(timerView, "timerView");
        C19286f.m13683U(timerView, c16767x != null);
        ImageView iconView = getIconView();
        l.d(iconView, "iconView");
        CountDownTextView timerView2 = getTimerView();
        l.d(timerView2, "timerView");
        C19286f.m13683U(iconView, !C19286f.m13663p(timerView2));
        if (c16767x != null) {
            getTimerView().setTimerTextColor(c16767x.f46997a);
            CountDownTextView timerView3 = getTimerView();
            ColorStateList valueOf = ColorStateList.valueOf(c16767x.f46998b);
            AtomicInteger atomicInteger = C26614s.f74505a;
            timerView3.setBackgroundTintList(valueOf);
        }
        if (l != null) {
            getTimerView().m34808h1(l.longValue());
        }
    }

    public final void setLabel(C16723q c16723q) {
        l.e(c16723q, "label");
        CountDownTextView timerView = getTimerView();
        l.d(timerView, "timerView");
        C19286f.m13689O(timerView);
        ImageView iconView = getIconView();
        iconView.setImageResource(c16723q.f46892a);
        Context context = iconView.getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        iconView.setColorFilter(C15322a.m18927a(context, c16723q.f46894c));
        TextView textView = getTextView();
        l.d(textView, "textView");
        textView.setText(c16723q.f46893b);
        TextView textView2 = getTextView();
        Context context2 = getContext();
        l.d(context2, AnalyticsConstants.CONTEXT);
        textView2.setTextColor(C15322a.m18927a(context2, c16723q.f46894c));
        Context context3 = getContext();
        Object obj = C26467a.f74235a;
        setBackground(C26467a.C26470c.m1789b(context3, C2752R.C2753drawable.background_tcx_premium_user_tab_label));
    }

    public final void setOfferEndLabelText(C16770x2 c16770x2) {
        if (c16770x2 != null) {
            TextView textView = getTextView();
            l.d(textView, "textView");
            textView.setText(c16770x2.f46999a);
            getTextView().setTextColor(c16770x2.f47000b);
        }
    }

    public final void setOnCountDownTimerStateListener(s1.z.b.l<? super AbstractC17259b, s> lVar) {
        l.e(lVar, "onCountDownTimerStateListener");
        getTimerView().setOnCountDownTimerStateListener(lVar);
    }
}
