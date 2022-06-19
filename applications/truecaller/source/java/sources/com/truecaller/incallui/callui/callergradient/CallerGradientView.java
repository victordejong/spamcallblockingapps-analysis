package com.truecaller.incallui.callui.callergradient;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Shader;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.mopub.mobileads.VastIconXmlManager;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p717f.p718a.AbstractC13648m;
import p193e.p194a.p717f.p718a.p727t.AbstractC13657a;
import p193e.p194a.p717f.p718a.p727t.AbstractC13658b;
import p193e.p194a.p717f.p718a.p727t.AbstractC13672k;
import p193e.p194a.p717f.p718a.p727t.C13659c;
import p193e.p194a.p717f.p718a.p727t.C13667f;
import p193e.p194a.p717f.p718a.p727t.C13668g;
import p193e.p194a.p717f.p718a.p727t.C13669h;
import p193e.p194a.p717f.p718a.p727t.C13670i;
import p193e.p194a.p947k.p948a.p964k.p965z.AbstractC15868b;
import q3.a.x2.i1;
import s1.g;
import s1.s;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n��\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\f\b\u0007\u0018��2\u00020\u00012\u00020\u0002J\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\b\u001a\u00020\u0005H\u0014¢\u0006\u0004\b\b\u0010\tJ\u0019\u0010\f\u001a\u00020\u00052\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0014¢\u0006\u0004\b\f\u0010\rJ)\u0010\u0012\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0014\u0010\tJ\u0015\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00160\u0015H\u0016¢\u0006\u0004\b\u0017\u0010\u0018J/\u0010\u001e\u001a\u00020\u00052\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u00192\u0006\u0010\u001c\u001a\u00020\u00192\u0006\u0010\u001d\u001a\u00020\u0019H\u0014¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\u0005H\u0014¢\u0006\u0004\b \u0010\tJ\u001d\u0010#\u001a\u00020\u00052\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00050!H\u0002¢\u0006\u0004\b#\u0010$J\u000f\u0010\u001b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001b\u0010\tJ/\u0010)\u001a\u00020\u00052\u0006\u0010%\u001a\u00020\u000e2\u0006\u0010&\u001a\u00020\u000e2\u0006\u0010(\u001a\u00020'2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b)\u0010*R\"\u00101\u001a\u00020+8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b)\u0010,\u001a\u0004\b-\u0010.\"\u0004\b/\u00100R\u001d\u00107\u001a\u0002028B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b3\u00104\u001a\u0004\b5\u00106R\u0018\u0010;\u001a\u0004\u0018\u0001088\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u0010:R$\u0010\u000f\u001a\u00020\u000e2\u0006\u0010<\u001a\u00020\u000e8B@BX\u0082\u000e¢\u0006\f\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R\u0018\u0010C\u001a\u0004\u0018\u00010\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010B¨\u0006D"}, d2 = {"Lcom/truecaller/incallui/callui/callergradient/CallerGradientView;", "Landroid/view/View;", "Le/a/f/a/t/b;", "Lcom/truecaller/incallui/callui/callergradient/GradientColors;", RemoteMessageConst.Notification.COLOR, "Ls1/s;", "setGradientColor", "(Lcom/truecaller/incallui/callui/callergradient/GradientColors;)V", "onAttachedToWindow", "()V", "Landroid/graphics/Canvas;", "canvas", "onDraw", "(Landroid/graphics/Canvas;)V", "", "heightRatio", "", VastIconXmlManager.DURATION, "a", "(Lcom/truecaller/incallui/callui/callergradient/GradientColors;FJ)V", C22021b.f61237c, "Lq3/a/x2/i1;", "Le/a/k/a/k/z/b;", "getVideoPlayingState", "()Lq3/a/x2/i1;", "", "w", "h", "oldw", "oldh", "onSizeChanged", "(IIII)V", "onDetachedFromWindow", "Lkotlin/Function0;", "action", "g", "(Ls1/z/b/a;)V", "toY", "toHeightRatio", "", "applyStartDelay", "f", "(FFZJ)V", "Le/a/f/a/t/a;", "Le/a/f/a/t/a;", "getPresenter", "()Le/a/f/a/t/a;", "setPresenter", "(Le/a/f/a/t/a;)V", "presenter", "Landroid/graphics/Paint;", AbstractC2405c.f7629a, "Ls1/g;", "getGradientPaint", "()Landroid/graphics/Paint;", "gradientPaint", "Landroid/animation/AnimatorSet;", "e", "Landroid/animation/AnimatorSet;", "animatorSet", "value", "getHeightRatio", "()F", "setHeightRatio", "(F)V", "d", "Lcom/truecaller/incallui/callui/callergradient/GradientColors;", "colorGradient", "incallui_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes10-dex2jar.jar:com/truecaller/incallui/callui/callergradient/CallerGradientView.class */
public final class CallerGradientView extends AbstractC13672k implements AbstractC13658b {

    /* renamed from: c */
    public final g f12413c = C25225a.m3978P1(C13669h.f39629b);

    /* renamed from: d */
    public GradientColors f12414d;

    /* renamed from: e */
    public AnimatorSet f12415e;
    @Inject

    /* renamed from: f */
    public AbstractC13657a f12416f;

    /* renamed from: com.truecaller.incallui.callui.callergradient.CallerGradientView$a */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/incallui/callui/callergradient/CallerGradientView$a.class */
    public static final class C4022a extends m implements a<s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4022a() {
            super(0);
            CallerGradientView.this = r4;
        }

        public Object invoke() {
            CallerGradientView callerGradientView = CallerGradientView.this;
            callerGradientView.m35298f(-callerGradientView.getHeight(), CallerGradientView.this.getHeightRatio(), true, 300L);
            return s.a;
        }
    }

    /* renamed from: com.truecaller.incallui.callui.callergradient.CallerGradientView$b */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/incallui/callui/callergradient/CallerGradientView$b.class */
    public static final class ViewTreeObserver$OnPreDrawListenerC4023b implements ViewTreeObserver.OnPreDrawListener {

        /* renamed from: b */
        public final /* synthetic */ a f12419b;

        public ViewTreeObserver$OnPreDrawListenerC4023b(a aVar) {
            CallerGradientView.this = r4;
            this.f12419b = aVar;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            CallerGradientView.this.getViewTreeObserver().removeOnPreDrawListener(this);
            this.f12419b.invoke();
            return true;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CallerGradientView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        setGradientColor(GradientColors.IDENTIFIED);
        if (isInEditMode()) {
            return;
        }
        m35297g(new C13670i(this));
    }

    private final Paint getGradientPaint() {
        return (Paint) this.f12413c.getValue();
    }

    public final float getHeightRatio() {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        return ((ConstraintLayout.C0111a) layoutParams).f611O;
    }

    private final void setGradientColor(GradientColors gradientColors) {
        this.f12414d = gradientColors;
        m35296h();
    }

    public final void setHeightRatio(float f) {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
        ConstraintLayout.C0111a c0111a = (ConstraintLayout.C0111a) layoutParams;
        c0111a.f611O = f;
        setLayoutParams(c0111a);
    }

    @Override // p193e.p194a.p717f.p718a.p727t.AbstractC13658b
    /* renamed from: a */
    public void mo21349a(GradientColors gradientColors, float f, long j) {
        setGradientColor(gradientColors);
        if (getTranslationY() == (-((float) getHeight()))) {
            setHeightRatio(f);
        }
        m35298f(0.0f, f, false, j);
    }

    @Override // p193e.p194a.p717f.p718a.p727t.AbstractC13658b
    /* renamed from: b */
    public void mo21348b() {
        m35297g(new C4022a());
    }

    /* renamed from: f */
    public final void m35298f(float f, float f2, boolean z, long j) {
        AnimatorSet animatorSet = this.f12415e;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        this.f12415e = null;
        AnimatorSet animatorSet2 = new AnimatorSet();
        animatorSet2.setDuration(j);
        animatorSet2.setStartDelay((z ? 500 : null) == 1 ? 1L : 0L);
        ValueAnimator ofFloat = ValueAnimator.ofFloat(getTranslationY(), f);
        ofFloat.addUpdateListener(new C13668g(this));
        l.d(ofFloat, "ValueAnimator.ofFloat(tr…          }\n            }");
        ValueAnimator ofFloat2 = ValueAnimator.ofFloat(getHeightRatio(), f2);
        ofFloat2.addUpdateListener(new C13667f(this));
        l.d(ofFloat2, "ValueAnimator.ofFloat(he…          }\n            }");
        animatorSet2.playTogether(ofFloat, ofFloat2);
        this.f12415e = animatorSet2;
        animatorSet2.start();
    }

    /* renamed from: g */
    public final void m35297g(a<s> aVar) {
        if (getHeight() > 0) {
            aVar.invoke();
        } else {
            getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver$OnPreDrawListenerC4023b(aVar));
        }
    }

    public final AbstractC13657a getPresenter() {
        AbstractC13657a abstractC13657a = this.f12416f;
        if (abstractC13657a != null) {
            return abstractC13657a;
        }
        l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p717f.p718a.p727t.AbstractC13658b
    public i1<AbstractC15868b> getVideoPlayingState() {
        Context context = getContext();
        Context context2 = context;
        if (!(context instanceof AbstractC13648m)) {
            context2 = null;
        }
        AbstractC13648m abstractC13648m = (AbstractC13648m) context2;
        if (abstractC13648m == null) {
            Context context3 = getContext();
            Objects.requireNonNull(context3, "null cannot be cast to non-null type android.view.ContextThemeWrapper");
            Context baseContext = ((ContextThemeWrapper) context3).getBaseContext();
            Objects.requireNonNull(baseContext, "null cannot be cast to non-null type com.truecaller.incallui.callui.InCallUIMvp.View");
            abstractC13648m = (AbstractC13648m) baseContext;
        }
        return abstractC13648m.mo21387Z8();
    }

    /* renamed from: h */
    public final void m35296h() {
        GradientColors gradientColors;
        if (getWidth() <= 0 || getHeight() <= 0 || (gradientColors = this.f12414d) == null) {
            return;
        }
        float height = getHeight();
        Context context = getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        getGradientPaint().setShader(new LinearGradient(getWidth() / 2.0f, 0.0f, getWidth() / 2.0f, height, C17891a1.C17902k.m15645S0(gradientColors, context), gradientColors.getPosition(), Shader.TileMode.CLAMP));
    }

    @Override // android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (isInEditMode()) {
            return;
        }
        AbstractC13657a abstractC13657a = this.f12416f;
        if (abstractC13657a != null) {
            ((C13659c) abstractC13657a).mo9029Y0(this);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        if (isInEditMode()) {
            return;
        }
        AnimatorSet animatorSet = this.f12415e;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        this.f12415e = null;
        AbstractC13657a abstractC13657a = this.f12416f;
        if (abstractC13657a == null) {
            l.l("presenter");
            throw null;
        }
        ((AbstractC20574a) abstractC13657a).mo9806c();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (canvas != null) {
            canvas.drawPaint(getGradientPaint());
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        m35296h();
    }

    public final void setPresenter(AbstractC13657a abstractC13657a) {
        l.e(abstractC13657a, "<set-?>");
        this.f12416f = abstractC13657a;
    }
}
