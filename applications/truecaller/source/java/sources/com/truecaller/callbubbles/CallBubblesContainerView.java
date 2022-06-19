package com.truecaller.callbubbles;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.Chronometer;
import android.widget.FrameLayout;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import n3.p.a.c;
import n3.p.a.f;
import p1727n3.p1807k.p1809b.p1811d.C26488h;
import p1727n3.p1807k.p1821i.C26614s;
import p1727n3.p1855p.p1856a.AbstractC26892b;
import p1727n3.p1855p.p1856a.C26900g;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p749f3.C13906b;
import p193e.p194a.p749f3.C13908d;
import p193e.p194a.p749f3.C13909e;
import p193e.p194a.p749f3.C13910f;
import p193e.p194a.p749f3.C13911g;
import p193e.p194a.p749f3.C13912h;
import p193e.p194a.p749f3.C13913i;
import p193e.p194a.p749f3.C13915k;
import p193e.p194a.p749f3.C13917m;
import p193e.p194a.p749f3.View$OnAttachStateChangeListenerC13916l;
import p193e.p194a.p749f3.View$OnTouchListenerC13905a;
import p193e.p194a.p749f3.View$OnTouchListenerC13914j;
import p193e.p194a.p749f3.ViewTreeObserver$OnPreDrawListenerC13918n;
import s1.g;
import s1.s;
import s1.u.i;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u009c\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\b��\u0018��2\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H��¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0004J\u0019\u0010\b\u001a\u00020\u00022\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014¢\u0006\u0004\b\b\u0010\tJ/\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\n2\u0006\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\nH\u0014¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0011\u0010\u0004J\r\u0010\u0012\u001a\u00020\u0002¢\u0006\u0004\b\u0012\u0010\u0004J\r\u0010\u0013\u001a\u00020\u0002¢\u0006\u0004\b\u0013\u0010\u0004J\u0015\u0010\u0016\u001a\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0014¢\u0006\u0004\b\u0016\u0010\u0017J\u0015\u0010\u001a\u001a\u00020\u00022\u0006\u0010\u0019\u001a\u00020\u0018¢\u0006\u0004\b\u001a\u0010\u001bJ\u0019\u0010\u001d\u001a\u00020\u00022\n\b\u0001\u0010\u001c\u001a\u0004\u0018\u00010\n¢\u0006\u0004\b\u001d\u0010\u001eJ!\u0010!\u001a\u00020\u00022\b\b\u0001\u0010\u001f\u001a\u00020\n2\b\b\u0001\u0010 \u001a\u00020\n¢\u0006\u0004\b!\u0010\"J\u001b\u0010%\u001a\u00020\u00022\f\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00020#¢\u0006\u0004\b%\u0010&J\r\u0010'\u001a\u00020\u0002¢\u0006\u0004\b'\u0010\u0004J\u000f\u0010(\u001a\u00020\u0002H\u0002¢\u0006\u0004\b(\u0010\u0004J\u001f\u0010,\u001a\u00020\u00022\u0006\u0010*\u001a\u00020)2\u0006\u0010+\u001a\u00020)H\u0002¢\u0006\u0004\b,\u0010-JO\u00106\u001a\u00020\u00022\u0006\u0010/\u001a\u00020.2\u0006\u00100\u001a\u00020)2\u0006\u00101\u001a\u00020)2\u0006\u00102\u001a\u00020)2\u0006\u00103\u001a\u00020)2\b\u00104\u001a\u0004\u0018\u00010)2\f\u00105\u001a\b\u0012\u0004\u0012\u00020)0#H\u0002¢\u0006\u0004\b6\u00107J\u000f\u00108\u001a\u00020\u0002H\u0002¢\u0006\u0004\b8\u0010\u0004J\u000f\u00109\u001a\u00020\u0002H\u0002¢\u0006\u0004\b9\u0010\u0004R\u0016\u0010=\u001a\u00020:8B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b;\u0010<R\u001d\u0010C\u001a\u00020>8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b?\u0010@\u001a\u0004\bA\u0010BR\u001d\u0010H\u001a\u00020D8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bE\u0010@\u001a\u0004\bF\u0010GR\u001d\u0010M\u001a\u00020I8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bJ\u0010@\u001a\u0004\bK\u0010LR\u0016\u0010Q\u001a\u00020N8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010PR\u001e\u0010S\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010RR \u0010W\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030U0T8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b8\u0010VR\u0016\u0010[\u001a\u00020X8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bY\u0010ZR\u001d\u0010^\u001a\u00020)8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b(\u0010@\u001a\u0004\b\\\u0010]R\u001d\u0010c\u001a\u00020_8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b`\u0010@\u001a\u0004\ba\u0010bR\u001d\u0010h\u001a\u00020d8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\be\u0010@\u001a\u0004\bf\u0010gR\u001d\u0010j\u001a\u00020)8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b'\u0010@\u001a\u0004\bi\u0010]R\u001d\u0010o\u001a\u00020k8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bl\u0010@\u001a\u0004\bm\u0010nR\u0016\u0010r\u001a\u00020\n8B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\bp\u0010q¨\u0006s"}, d2 = {"Lcom/truecaller/callbubbles/CallBubblesContainerView;", "Landroid/widget/FrameLayout;", "Ls1/s;", "o", "()V", "onAttachedToWindow", "Landroid/content/res/Configuration;", "newConfig", "onConfigurationChanged", "(Landroid/content/res/Configuration;)V", "", "w", "h", "oldw", "oldh", "onSizeChanged", "(IIII)V", "onDetachedFromWindow", "q", "n", "Lcom/truecaller/common/ui/avatar/AvatarXConfig;", DTBMetricsConfiguration.CONFIG_DIR, "setAvatarXConfig", "(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V", "", "base", "s", "(J)V", "text", "setStateText", "(Ljava/lang/Integer;)V", "textColor", "backgroundColor", "p", "(II)V", "Lkotlin/Function0;", "listener", "setIconClickListener", "(Ls1/z/b/a;)V", "l", "j", "", "xVelocity", "yVelocity", "m", "(FF)V", "Ln3/p/a/b$n;", "property", "startValue", "startVelocity", "min", "max", "minVelocityToCancel", "getSpringFinalPosition", "r", "(Ln3/p/a/b$n;FFFFLjava/lang/Float;Ls1/z/b/a;)V", "k", "t", "Landroid/view/WindowManager;", "getWindowManager", "()Landroid/view/WindowManager;", "windowManager", "Lcom/truecaller/common/ui/avatar/AvatarXView;", "a", "Ls1/g;", "getAvatarXView", "()Lcom/truecaller/common/ui/avatar/AvatarXView;", "avatarXView", "Landroid/view/ViewGroup;", AbstractC2405c.f7629a, "getBubbleView", "()Landroid/view/ViewGroup;", "bubbleView", "Landroid/widget/Chronometer;", "d", "getChronometer", "()Landroid/widget/Chronometer;", "chronometer", "", "g", "Z", "dispatchTouchEvents", "Ls1/z/b/a;", "bubbleIconClickListener", "", "Ln3/p/a/b;", "Ljava/util/List;", "animations", "Le/a/f3/b;", "i", "Le/a/f3/b;", "bubblePositionInRatio", "getShadowPadding", "()F", "shadowPadding", "Le/a/f3/a;", "f", "getBubbleIconTouchListener", "()Le/a/f3/a;", "bubbleIconTouchListener", "Landroid/view/View;", "e", "getBubbleIconTouchAreaView", "()Landroid/view/View;", "bubbleIconTouchAreaView", "getMinXVelocityToCancel", "minXVelocityToCancel", "Le/a/b0/a/b/a;", C22021b.f61237c, "getAvatarXPresenter", "()Le/a/b0/a/b/a;", "avatarXPresenter", "getWindowType", "()I", "windowType", "callbubbles_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes6-dex2jar.jar:com/truecaller/callbubbles/CallBubblesContainerView.class */
public final class CallBubblesContainerView extends FrameLayout {

    /* renamed from: m */
    public static final /* synthetic */ int f10548m = 0;

    /* renamed from: b */
    public final g f10550b;

    /* renamed from: e */
    public final g f10553e;

    /* renamed from: f */
    public final g f10554f;

    /* renamed from: h */
    public a<s> f10556h;

    /* renamed from: j */
    public final g f10558j;

    /* renamed from: a */
    public final g f10549a = C25225a.m3978P1(new C13909e(this));

    /* renamed from: c */
    public final g f10551c = C25225a.m3978P1(new C13912h(this));

    /* renamed from: d */
    public final g f10552d = C25225a.m3978P1(new C13913i(this));

    /* renamed from: g */
    public boolean f10555g = true;

    /* renamed from: i */
    public C13906b f10557i = new C13906b(0.0f, 0.0f);

    /* renamed from: k */
    public final List<AbstractC26892b<?>> f10559k = new ArrayList();

    /* renamed from: l */
    public final g f10560l = C25225a.m3978P1(new C27622u2(0, this));

    /* renamed from: com.truecaller.callbubbles.CallBubblesContainerView$b */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/callbubbles/CallBubblesContainerView$b.class */
    public static final class C3586b extends m implements a<s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3586b() {
            super(0);
            CallBubblesContainerView.this = r4;
        }

        public Object invoke() {
            CallBubblesContainerView.m35794h(CallBubblesContainerView.this);
            CallBubblesContainerView.this.m35782t();
            CallBubblesContainerView.this.m35792j();
            return s.a;
        }
    }

    /* renamed from: com.truecaller.callbubbles.CallBubblesContainerView$c */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/callbubbles/CallBubblesContainerView$c.class */
    public static final class C3587c extends m implements a<s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3587c() {
            super(0);
            CallBubblesContainerView.this = r4;
        }

        public Object invoke() {
            CallBubblesContainerView.m35801a(CallBubblesContainerView.this);
            return s.a;
        }
    }

    /* renamed from: com.truecaller.callbubbles.CallBubblesContainerView$d */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/callbubbles/CallBubblesContainerView$d.class */
    public static final class C3588d implements AbstractC26892b.AbstractC26896m {

        /* renamed from: a */
        public final /* synthetic */ Float f10563a;

        public C3588d(Float f) {
            this.f10563a = f;
        }

        @Override // p1727n3.p1855p.p1856a.AbstractC26892b.AbstractC26896m
        /* renamed from: a */
        public final void mo1229a(AbstractC26892b<AbstractC26892b<?>> abstractC26892b, float f, float f2) {
            if (this.f10563a == null || Math.abs(f2) > this.f10563a.floatValue()) {
                return;
            }
            abstractC26892b.m1238c();
        }
    }

    /* renamed from: com.truecaller.callbubbles.CallBubblesContainerView$e */
    /* loaded from: classes6-dex2jar.jar:com/truecaller/callbubbles/CallBubblesContainerView$e.class */
    public static final class C3589e implements AbstractC26892b.AbstractC26895l {

        /* renamed from: b */
        public final /* synthetic */ AbstractC26892b.AbstractC26897n f10565b;

        /* renamed from: c */
        public final /* synthetic */ a f10566c;

        public C3589e(AbstractC26892b.AbstractC26897n abstractC26897n, a aVar) {
            CallBubblesContainerView.this = r4;
            this.f10565b = abstractC26897n;
            this.f10566c = aVar;
        }

        @Override // p1727n3.p1855p.p1856a.AbstractC26892b.AbstractC26895l
        /* renamed from: a */
        public final void mo1230a(AbstractC26892b<AbstractC26892b<?>> abstractC26892b, boolean z, float f, float f2) {
            CallBubblesContainerView.m35793i(CallBubblesContainerView.this, this.f10565b, f2, ((Number) this.f10566c.invoke()).floatValue());
            CallBubblesContainerView.this.f10559k.remove(abstractC26892b);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CallBubblesContainerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f10550b = C25225a.m3978P1(new C13908d(context));
        this.f10553e = C25225a.m3978P1(new C13910f(context));
        this.f10554f = C25225a.m3978P1(new C13911g(context));
        this.f10558j = C25225a.m3978P1(new C27622u2(1, context));
    }

    /* renamed from: a */
    public static final void m35801a(CallBubblesContainerView callBubblesContainerView) {
        float f = callBubblesContainerView.f10557i.f40299a;
        float width = callBubblesContainerView.getWidth();
        float f2 = callBubblesContainerView.f10557i.f40300b;
        float height = callBubblesContainerView.getHeight();
        Float valueOf = Float.valueOf(f * width);
        Float valueOf2 = Float.valueOf(f2 * height);
        float floatValue = valueOf != null ? valueOf.floatValue() : callBubblesContainerView.getBubbleView().getX();
        float floatValue2 = valueOf2 != null ? valueOf2.floatValue() : callBubblesContainerView.getBubbleView().getY();
        callBubblesContainerView.getBubbleView().setX(floatValue);
        callBubblesContainerView.getBubbleView().setY(floatValue2);
        callBubblesContainerView.m35782t();
        String str = "Position is updated. x: " + floatValue + ", y: " + floatValue2 + " InRatio: " + callBubblesContainerView.f10557i;
        callBubblesContainerView.m35789m(0.0f, 0.0f);
    }

    /* renamed from: b */
    public static final void m35800b(CallBubblesContainerView callBubblesContainerView, float f, float f2) {
        ViewGroup bubbleView = callBubblesContainerView.getBubbleView();
        bubbleView.setX(bubbleView.getX() + f);
        ViewGroup bubbleView2 = callBubblesContainerView.getBubbleView();
        bubbleView2.setY(bubbleView2.getY() + f2);
    }

    public final C8243a getAvatarXPresenter() {
        return (C8243a) this.f10550b.getValue();
    }

    public final AvatarXView getAvatarXView() {
        return (AvatarXView) this.f10549a.getValue();
    }

    private final View getBubbleIconTouchAreaView() {
        return (View) this.f10553e.getValue();
    }

    public final View$OnTouchListenerC13905a getBubbleIconTouchListener() {
        return (View$OnTouchListenerC13905a) this.f10554f.getValue();
    }

    public final ViewGroup getBubbleView() {
        return (ViewGroup) this.f10551c.getValue();
    }

    private final Chronometer getChronometer() {
        return (Chronometer) this.f10552d.getValue();
    }

    private final float getMinXVelocityToCancel() {
        return ((Number) this.f10560l.getValue()).floatValue();
    }

    public final float getShadowPadding() {
        return ((Number) this.f10558j.getValue()).floatValue();
    }

    private final WindowManager getWindowManager() {
        Context context = getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        return C19291g.m13529n0(context);
    }

    private final int getWindowType() {
        return Build.VERSION.SDK_INT >= 26 ? 2038 : 2010;
    }

    /* renamed from: h */
    public static final void m35794h(CallBubblesContainerView callBubblesContainerView) {
        Objects.requireNonNull(callBubblesContainerView);
        AtomicInteger atomicInteger = C26614s.f74505a;
        float shadowPadding = callBubblesContainerView.getLayoutDirection() != 1 ? 0.0f - callBubblesContainerView.getShadowPadding() : (callBubblesContainerView.getWidth() - callBubblesContainerView.getBubbleView().getWidth()) + callBubblesContainerView.getShadowPadding();
        float dimension = callBubblesContainerView.getResources().getDimension(C3590R.dimen.call_bubbles_bubble_initial_top_margin);
        callBubblesContainerView.getBubbleView().setX(shadowPadding);
        callBubblesContainerView.getBubbleView().setY(dimension);
    }

    /* renamed from: i */
    public static final void m35793i(CallBubblesContainerView callBubblesContainerView, AbstractC26892b.AbstractC26897n abstractC26897n, float f, float f2) {
        Objects.requireNonNull(callBubblesContainerView);
        C26900g c26900g = new C26900g();
        c26900g.f75195i = f2;
        c26900g.m1226a(0.75f);
        c26900g.m1225b(500.0f);
        AbstractC26892b<?> fVar = new f<>(callBubblesContainerView.getBubbleView(), abstractC26897n);
        ((f) fVar).v = c26900g;
        fVar.f75168a = f;
        C13917m c13917m = new C13917m(callBubblesContainerView);
        if (!fVar.f75178k.contains(c13917m)) {
            fVar.f75178k.add(c13917m);
        }
        List<AbstractC26892b<?>> list = callBubblesContainerView.f10559k;
        l.d(fVar, "this");
        list.add(fVar);
        fVar.i();
    }

    /* renamed from: j */
    public final void m35792j() {
        if (!isAttachedToWindow() || !getBubbleIconTouchAreaView().isAttachedToWindow()) {
            return;
        }
        this.f10555g = true;
        ViewGroup.LayoutParams layoutParams = getBubbleIconTouchAreaView().getLayoutParams();
        Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type android.view.WindowManager.LayoutParams");
        WindowManager.LayoutParams layoutParams2 = (WindowManager.LayoutParams) layoutParams;
        layoutParams2.width = getAvatarXView().getWidth();
        layoutParams2.height = getAvatarXView().getHeight();
        layoutParams2.x = (int) (getAvatarXView().getX() + getBubbleView().getX());
        layoutParams2.y = (int) (getAvatarXView().getX() + getBubbleView().getY());
        getWindowManager().updateViewLayout(getBubbleIconTouchAreaView(), layoutParams2);
    }

    /* renamed from: k */
    public final void m35791k() {
        for (AbstractC26892b abstractC26892b : i.S0(this.f10559k)) {
            abstractC26892b.m1238c();
        }
        this.f10559k.clear();
    }

    /* renamed from: l */
    public final void m35790l() {
        m35791k();
        WindowManager windowManager = getWindowManager();
        windowManager.removeView(this);
        windowManager.removeView(getBubbleIconTouchAreaView());
    }

    /* renamed from: m */
    public final void m35789m(float f, float f2) {
        this.f10555g = false;
        float f3 = -getBubbleView().getWidth();
        float width = getWidth();
        float f4 = -getBubbleView().getHeight();
        float height = getHeight();
        float max = Math.max(f3, Math.min(getBubbleView().getX(), width));
        float max2 = Math.max(f4, Math.min(getBubbleView().getY(), height));
        AbstractC26892b.AbstractC26897n abstractC26897n = AbstractC26892b.f75165s;
        l.d(abstractC26897n, "DynamicAnimation.X");
        m35784r(abstractC26897n, max, f, f3, width, Float.valueOf(getMinXVelocityToCancel()), new a(0, this));
        AbstractC26892b.AbstractC26897n abstractC26897n2 = AbstractC26892b.f75166t;
        l.d(abstractC26897n2, "DynamicAnimation.Y");
        m35784r(abstractC26897n2, max2, f2, f4, height, null, new a(1, this));
    }

    /* renamed from: n */
    public final void m35788n() {
        C19286f.m13689O(this);
        C19286f.m13689O(getBubbleIconTouchAreaView());
    }

    /* renamed from: o */
    public final void m35787o() {
        C19286f.m13689O(this);
        C19286f.m13689O(getBubbleIconTouchAreaView());
        WindowManager windowManager = getWindowManager();
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-1, -1, getWindowType(), 24, -3);
        layoutParams.dimAmount = 0.0f;
        if (MediaSessionCompat.m43297I0() || Build.VERSION.SDK_INT >= 31) {
            layoutParams.alpha = 0.8f;
        }
        windowManager.addView(this, layoutParams);
        View bubbleIconTouchAreaView = getBubbleIconTouchAreaView();
        WindowManager.LayoutParams layoutParams2 = new WindowManager.LayoutParams(-2, -2, getWindowType(), 8, -3);
        layoutParams2.gravity = 8388659;
        layoutParams2.dimAmount = 0.0f;
        windowManager.addView(bubbleIconTouchAreaView, layoutParams2);
        getBubbleIconTouchAreaView().addOnAttachStateChangeListener(new View$OnAttachStateChangeListenerC13916l(this));
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        getAvatarXView().getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver$OnPreDrawListenerC13918n(this, new C3586b()));
        getBubbleIconTouchAreaView().setOnTouchListener(new View$OnTouchListenerC13914j(this));
        getBubbleIconTouchListener().f40294a = new C13915k(this);
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        getAvatarXView().getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver$OnPreDrawListenerC13918n(this, new C3587c()));
        m35791k();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        m35791k();
        super.onDetachedFromWindow();
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        m35792j();
    }

    /* renamed from: p */
    public final void m35786p(int i, int i2) {
        Chronometer chronometer = getChronometer();
        Resources resources = getResources();
        ThreadLocal<TypedValue> threadLocal = C26488h.f74265a;
        chronometer.setTextColor(resources.getColor(i, null));
        Drawable background = getChronometer().getBackground();
        Context context = getContext();
        l.d(context, AnalyticsConstants.CONTEXT);
        background.setTint(context.getResources().getColor(i2, null));
    }

    /* renamed from: q */
    public final void m35785q() {
        C19286f.m13684T(this);
        C19286f.m13684T(getBubbleIconTouchAreaView());
    }

    /* renamed from: r */
    public final void m35784r(AbstractC26892b.AbstractC26897n abstractC26897n, float f, float f2, float f3, float f4, Float f5, a<Float> aVar) {
        AbstractC26892b<?> cVar = new c<>(getBubbleView(), abstractC26897n);
        cVar.f75169b = f;
        cVar.f75170c = true;
        cVar.f75168a = f2;
        cVar.f75175h = f3;
        cVar.f75174g = f4;
        cVar.k(2.5f);
        cVar.m1239b(new C3588d(f5));
        C3589e c3589e = new C3589e(abstractC26897n, aVar);
        if (!cVar.f75178k.contains(c3589e)) {
            cVar.f75178k.add(c3589e);
        }
        List<AbstractC26892b<?>> list = this.f10559k;
        l.d(cVar, "this");
        list.add(cVar);
        cVar.m1232i();
    }

    /* renamed from: s */
    public final void m35783s(long j) {
        getChronometer().setBase(j);
        getChronometer().start();
    }

    public final void setAvatarXConfig(AvatarXConfig avatarXConfig) {
        l.e(avatarXConfig, DTBMetricsConfiguration.CONFIG_DIR);
        C8243a.m28739ok(getAvatarXPresenter(), avatarXConfig, false, 2, null);
    }

    public final void setIconClickListener(a<s> aVar) {
        l.e(aVar, "listener");
        this.f10556h = aVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x001f, code lost:
        if (r4 != null) goto L7;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void setStateText(java.lang.Integer r4) {
        /*
            r3 = this;
            r0 = r3
            android.widget.Chronometer r0 = r0.getChronometer()
            r0.stop()
            r0 = r3
            android.widget.Chronometer r0 = r0.getChronometer()
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L25
            r0 = r4
            int r0 = r0.intValue()
            r6 = r0
            r0 = r3
            android.content.res.Resources r0 = r0.getResources()
            r1 = r6
            java.lang.String r0 = r0.getString(r1)
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L25
            goto L29
        L25:
            java.lang.String r0 = ""
            r4 = r0
        L29:
            r0 = r5
            r1 = r4
            r0.setText(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.callbubbles.CallBubblesContainerView.setStateText(java.lang.Integer):void");
    }

    /* renamed from: t */
    public final void m35782t() {
        this.f10557i = new C13906b(getBubbleView().getX() / getWidth(), getBubbleView().getY() / getHeight());
    }
}
