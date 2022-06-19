package com.truecaller.premium.p173ui;

import android.content.Context;
import android.os.Handler;
import android.text.Layout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.TrueApp;
import com.truecaller.premium.PremiumLaunchContext;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.p1011l.AbstractC16613a2;
import p193e.p194a.p1011l.p1025p2.AbstractC17197v0;
import p193e.p194a.p1011l.p1025p2.C17030a1;
import p193e.p194a.p1011l.p1033v2.AbstractC17252a;
import p193e.p194a.p1011l.p1033v2.AbstractC17257e;
import p193e.p194a.p1011l.p1033v2.C17256d;
import p193e.p194a.p1011l.p1033v2.RunnableC17255c;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p682e.C13334y;
import s1.f0.r;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018��2\u00020\u00012\u00020\u0002J\u000f\u0010\u0004\u001a\u00020\u0003H\u0014¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0006\u001a\u00020\u0003H\u0014¢\u0006\u0004\b\u0006\u0010\u0005J\u0017\u0010\t\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ3\u0010\u000f\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\r\u001a\u0004\u0018\u00010\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J!\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u00112\b\u0010\u0013\u001a\u0004\u0018\u00010\u000bH\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0013\u0010\u0017\u001a\u00020\u0003*\u00020\u0016H\u0002¢\u0006\u0004\b\u0017\u0010\u0018R\u0016\u0010\u001b\u001a\u00020\u00168\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR\"\u0010#\u001a\u00020\u001c8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 \"\u0004\b!\u0010\"R\u0018\u0010'\u001a\u0004\u0018\u00010$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b%\u0010&R\"\u0010/\u001a\u00020(8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b)\u0010*\u001a\u0004\b+\u0010,\"\u0004\b-\u0010.R$\u00106\u001a\u0004\u0018\u0001008\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\t\u00101\u001a\u0004\b2\u00103\"\u0004\b4\u00105¨\u00067"}, d2 = {"Lcom/truecaller/premium/ui/PremiumNavDrawerItemView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Le/a/l/v2/a;", "Ls1/s;", "onAttachedToWindow", "()V", "onDetachedFromWindow", "", "showError", "w", "(Z)V", "", "title", "chipText", "subTitle", "q", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V", "Lcom/truecaller/premium/PremiumLaunchContext;", "launchContext", "premiumPage", "U", "(Lcom/truecaller/premium/PremiumLaunchContext;Ljava/lang/String;)V", "", "f1", "(I)V", "v", "I", "inflatedLayout", "Le/a/l/v2/d;", "t", "Le/a/l/v2/d;", "getViewPresenter", "()Le/a/l/v2/d;", "setViewPresenter", "(Le/a/l/v2/d;)V", "viewPresenter", "Ljava/lang/Runnable;", "x", "Ljava/lang/Runnable;", "delayedClickEvent", "Le/a/l/a2;", "u", "Le/a/l/a2;", "getPremiumScreenNavigator", "()Le/a/l/a2;", "setPremiumScreenNavigator", "(Le/a/l/a2;)V", "premiumScreenNavigator", "Le/a/l/v2/e;", "Le/a/l/v2/e;", "getListener", "()Le/a/l/v2/e;", "setListener", "(Le/a/l/v2/e;)V", "listener", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.premium.ui.PremiumNavDrawerItemView */
/* loaded from: classes12-dex2jar.jar:com/truecaller/premium/ui/PremiumNavDrawerItemView.class */
public final class PremiumNavDrawerItemView extends ConstraintLayout implements AbstractC17252a {
    @Inject

    /* renamed from: t */
    public C17256d f14261t;
    @Inject

    /* renamed from: u */
    public AbstractC16613a2 f14262u;

    /* renamed from: v */
    public int f14263v;

    /* renamed from: w */
    public AbstractC17257e f14264w;

    /* renamed from: x */
    public Runnable f14265x;

    /* renamed from: com.truecaller.premium.ui.PremiumNavDrawerItemView$a */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/premium/ui/PremiumNavDrawerItemView$a.class */
    public static final class ViewTreeObserver$OnGlobalLayoutListenerC4355a implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a */
        public final /* synthetic */ TextView f14266a;

        public ViewTreeObserver$OnGlobalLayoutListenerC4355a(TextView textView) {
            this.f14266a = textView;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            this.f14266a.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            Layout layout = this.f14266a.getLayout();
            if (layout == null || layout.getLineCount() <= 0 || this.f14266a.getLayout().getEllipsisCount(layout.getLineCount() - 1) <= 0) {
                return;
            }
            this.f14266a.setEllipsize(TextUtils.TruncateAt.MARQUEE);
            this.f14266a.setMarqueeRepeatLimit(1);
            this.f14266a.setSelected(true);
        }
    }

    /* renamed from: com.truecaller.premium.ui.PremiumNavDrawerItemView$b */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/premium/ui/PremiumNavDrawerItemView$b.class */
    public static final class View$OnClickListenerC4356b implements View.OnClickListener {

        /* renamed from: com.truecaller.premium.ui.PremiumNavDrawerItemView$b$a */
        /* loaded from: classes12-dex2jar.jar:com/truecaller/premium/ui/PremiumNavDrawerItemView$b$a.class */
        public static final class C4357a extends m implements a<s> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C4357a() {
                super(0);
                View$OnClickListenerC4356b.this = r4;
            }

            public Object invoke() {
                PremiumNavDrawerItemView.this.getViewPresenter().m16322Hj();
                return s.a;
            }
        }

        public View$OnClickListenerC4356b() {
            PremiumNavDrawerItemView.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC17257e listener = PremiumNavDrawerItemView.this.getListener();
            if (listener != null) {
                ((C13334y) listener).f38746a.f15628m.m42976e(false);
            }
            PremiumNavDrawerItemView premiumNavDrawerItemView = PremiumNavDrawerItemView.this;
            Handler handler = premiumNavDrawerItemView.getHandler();
            l.d(handler, "handler");
            RunnableC17255c runnableC17255c = new RunnableC17255c(premiumNavDrawerItemView, new C4357a());
            premiumNavDrawerItemView.f14265x = runnableC17255c;
            handler.postDelayed(runnableC17255c, 200L);
        }
    }

    /* renamed from: com.truecaller.premium.ui.PremiumNavDrawerItemView$c */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/premium/ui/PremiumNavDrawerItemView$c.class */
    public static final class View$OnClickListenerC4358c implements View.OnClickListener {

        /* renamed from: com.truecaller.premium.ui.PremiumNavDrawerItemView$c$a */
        /* loaded from: classes12-dex2jar.jar:com/truecaller/premium/ui/PremiumNavDrawerItemView$c$a.class */
        public static final class C4359a extends m implements a<s> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C4359a() {
                super(0);
                View$OnClickListenerC4358c.this = r4;
            }

            public Object invoke() {
                PremiumNavDrawerItemView.this.getViewPresenter().m16322Hj();
                return s.a;
            }
        }

        public View$OnClickListenerC4358c() {
            PremiumNavDrawerItemView.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC17257e listener = PremiumNavDrawerItemView.this.getListener();
            if (listener != null) {
                ((C13334y) listener).f38746a.f15628m.m42976e(false);
            }
            PremiumNavDrawerItemView premiumNavDrawerItemView = PremiumNavDrawerItemView.this;
            Handler handler = premiumNavDrawerItemView.getHandler();
            l.d(handler, "handler");
            RunnableC17255c runnableC17255c = new RunnableC17255c(premiumNavDrawerItemView, new C4359a());
            premiumNavDrawerItemView.f14265x = runnableC17255c;
            handler.postDelayed(runnableC17255c, 200L);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PremiumNavDrawerItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        setOptimizationLevel(0);
        TrueApp m36032b0 = TrueApp.m36032b0();
        Objects.requireNonNull(m36032b0, "null cannot be cast to non-null type com.truecaller.GraphHolder");
        AbstractC15539j2 mo10154s = m36032b0.mo10154s();
        Objects.requireNonNull(mo10154s);
        C25225a.m3846s(mo10154s, AbstractC15539j2.class);
        C17030a1 mo12199t3 = mo10154s.mo12199t3();
        Objects.requireNonNull(mo12199t3, "Cannot return null from a non-@Nullable component method");
        AbstractC17197v0 mo11643f = mo10154s.mo11643f();
        Objects.requireNonNull(mo11643f, "Cannot return null from a non-@Nullable component method");
        AbstractC19223c0 mo12349i = mo10154s.mo12349i();
        Objects.requireNonNull(mo12349i, "Cannot return null from a non-@Nullable component method");
        AbstractC19462a mo12776C4 = mo10154s.mo12776C4();
        Objects.requireNonNull(mo12776C4, "Cannot return null from a non-@Nullable component method");
        AbstractC8541a mo12420d = mo10154s.mo12420d();
        Objects.requireNonNull(mo12420d, "Cannot return null from a non-@Nullable component method");
        this.f14261t = new C17256d(mo12199t3, mo11643f, mo12349i, mo12776C4, mo12420d);
        AbstractC16613a2 mo12777C3 = mo10154s.mo12777C3();
        Objects.requireNonNull(mo12777C3, "Cannot return null from a non-@Nullable component method");
        this.f14262u = mo12777C3;
    }

    @Override // p193e.p194a.p1011l.p1033v2.AbstractC17252a
    /* renamed from: U */
    public void mo16328U(PremiumLaunchContext premiumLaunchContext, String str) {
        l.e(premiumLaunchContext, "launchContext");
        Context context = getContext();
        AbstractC16613a2 abstractC16613a2 = this.f14262u;
        if (abstractC16613a2 == null) {
            l.l("premiumScreenNavigator");
            throw null;
        }
        Context context2 = getContext();
        l.d(context2, AnalyticsConstants.CONTEXT);
        context.startActivity(C10480a.m26059J(abstractC16613a2, context2, premiumLaunchContext, str, null, 8, null));
    }

    /* renamed from: f1 */
    public final void m34811f1(int i) {
        Integer valueOf = Integer.valueOf(i);
        if (!(valueOf.intValue() != this.f14263v)) {
            valueOf = null;
        }
        if (valueOf != null) {
            int intValue = valueOf.intValue();
            removeAllViews();
            Context context = getContext();
            l.d(context, AnalyticsConstants.CONTEXT);
            LayoutInflater.from(C17422k.m16113E(context, true)).inflate(intValue, (ViewGroup) this, true);
            this.f14263v = intValue;
        }
    }

    public final AbstractC17257e getListener() {
        return this.f14264w;
    }

    public final AbstractC16613a2 getPremiumScreenNavigator() {
        AbstractC16613a2 abstractC16613a2 = this.f14262u;
        if (abstractC16613a2 != null) {
            return abstractC16613a2;
        }
        l.l("premiumScreenNavigator");
        throw null;
    }

    public final C17256d getViewPresenter() {
        C17256d c17256d = this.f14261t;
        if (c17256d != null) {
            return c17256d;
        }
        l.l("viewPresenter");
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        C17256d c17256d = this.f14261t;
        if (c17256d == null) {
            l.l("viewPresenter");
            throw null;
        }
        Objects.requireNonNull(c17256d);
        l.e(this, "presenterView");
        c17256d.f57683a = this;
        c17256d.m16321Ij();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        C17256d c17256d = this.f14261t;
        if (c17256d == null) {
            l.l("viewPresenter");
            throw null;
        }
        c17256d.f57683a = null;
        Runnable runnable = this.f14265x;
        if (runnable == null) {
            return;
        }
        getHandler().removeCallbacks(runnable);
    }

    @Override // p193e.p194a.p1011l.p1033v2.AbstractC17252a
    /* renamed from: q */
    public void mo16327q(String str, String str2, String str3, boolean z) {
        l.e(str, "title");
        m34811f1(C2752R.layout.layout_tcx_nav_drawer_premium_item);
        View findViewById = findViewById(2131366469);
        l.d(findViewById, "findViewById<TextView>(R.id.title)");
        ((TextView) findViewById).setText(str);
        TextView textView = (TextView) findViewById(C2752R.C2754id.titleChip);
        textView.setText(str2);
        C19286f.m13683U(textView, str2 != null && !r.p(str2));
        TextView textView2 = (TextView) findViewById(2131366099);
        textView2.setText(str3);
        C19286f.m13683U(textView2, str3 != null && !r.p(str3));
        textView2.setEllipsize(TextUtils.TruncateAt.END);
        if (C19286f.m13663p(textView2)) {
            textView2.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver$OnGlobalLayoutListenerC4355a(textView2));
        }
        View findViewById2 = findViewById(2131363526);
        l.d(findViewById2, "findViewById<ImageView>(R.id.error)");
        C19286f.m13683U(findViewById2, z);
        setOnClickListener(new View$OnClickListenerC4356b());
    }

    public final void setListener(AbstractC17257e abstractC17257e) {
        this.f14264w = abstractC17257e;
    }

    public final void setPremiumScreenNavigator(AbstractC16613a2 abstractC16613a2) {
        l.e(abstractC16613a2, "<set-?>");
        this.f14262u = abstractC16613a2;
    }

    public final void setViewPresenter(C17256d c17256d) {
        l.e(c17256d, "<set-?>");
        this.f14261t = c17256d;
    }

    @Override // p193e.p194a.p1011l.p1033v2.AbstractC17252a
    /* renamed from: w */
    public void mo16326w(boolean z) {
        m34811f1(C2752R.layout.layout_tcx_nav_drawer_free_user_item);
        View findViewById = findViewById(2131363526);
        l.d(findViewById, "findViewById<ImageView>(R.id.error)");
        C19286f.m13683U(findViewById, z);
        setOnClickListener(new View$OnClickListenerC4358c());
    }
}
