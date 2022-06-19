package com.truecaller.messaging.mediaviewer;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.p070ui.PlayerControlView;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import java.util.Objects;
import kotlin.Metadata;
import n3.p.a.c;
import p1727n3.p1855p.p1856a.C26899e;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1451f.p1452a.ComponentCallbacks2C22222c;
import p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22364k;
import p193e.p1577m.p1578a.p1596c.AbstractC24760q0;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p195a.p242j.AbstractC6430n;
import p193e.p194a.p195a.p242j.AbstractC6431o;
import p193e.p194a.p195a.p242j.C6415b;
import p193e.p194a.p195a.p242j.C6417c;
import p193e.p194a.p195a.p242j.C6418d;
import p193e.p194a.p195a.p242j.C6419e;
import p193e.p194a.p195a.p242j.C6420f;
import p193e.p194a.p195a.p242j.C6429m;
import p193e.p194a.p372b0.p430q.C8605o;
import p193e.p194a.p437c.p578p.C10480a;
import s1.d0.d;
import s1.d0.e;
import s1.g;
import s1.i;
import s1.k;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��À\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\"\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018��2\u00020\u0001J\u0019\u0010\u0005\u001a\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\n\u0010\u000bJ'\u0010\u0011\u001a\u00020\u00102\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000f\u001a\u00020\u000eH\u0014¢\u0006\u0004\b\u0011\u0010\u0012J7\u0010\u0019\u001a\u00020\t2\u0006\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u0018\u001a\u00020\u0014H\u0014¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001d\u001a\u00020\u00102\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010 \u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020\u001bH\u0016¢\u0006\u0004\b \u0010\u001eJ\u0017\u0010#\u001a\u00020\t2\b\u0010\"\u001a\u0004\u0018\u00010!¢\u0006\u0004\b#\u0010$J\u0017\u0010&\u001a\u00020\t2\b\u0010\"\u001a\u0004\u0018\u00010%¢\u0006\u0004\b&\u0010'J\u0017\u0010)\u001a\u00020\t2\b\u0010\"\u001a\u0004\u0018\u00010(¢\u0006\u0004\b)\u0010*J\r\u0010+\u001a\u00020\t¢\u0006\u0004\b+\u0010,J\u0017\u0010/\u001a\u00020\t2\b\u0010.\u001a\u0004\u0018\u00010-¢\u0006\u0004\b/\u00100J\u0015\u00102\u001a\u00020\t2\u0006\u00101\u001a\u00020\u0010¢\u0006\u0004\b2\u00103J\r\u00104\u001a\u00020\u000e¢\u0006\u0004\b4\u00105J%\u0010;\u001a\u00020\t2\u0006\u00107\u001a\u0002062\u0006\u00109\u001a\u0002082\u0006\u0010:\u001a\u00020\u000e¢\u0006\u0004\b;\u0010<J9\u0010C\u001a\u00020\t2\u0006\u00107\u001a\u0002062\b\u0010>\u001a\u0004\u0018\u00010=2\b\u0010?\u001a\u0004\u0018\u0001082\u0006\u0010A\u001a\u00020@2\u0006\u0010B\u001a\u00020@¢\u0006\u0004\bC\u0010DJ;\u0010J\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00030I2\u0006\u0010E\u001a\u00020\u00032\u0006\u0010F\u001a\u00020\u00032\u0006\u0010G\u001a\u00020\u00032\u0006\u0010H\u001a\u00020\u0003H\u0002¢\u0006\u0004\bJ\u0010KJ\u0017\u0010M\u001a\u00020\t2\u0006\u0010L\u001a\u00020\u0003H\u0002¢\u0006\u0004\bM\u0010NJ\u0017\u0010P\u001a\u00020\t2\u0006\u0010O\u001a\u00020\u0003H\u0002¢\u0006\u0004\bP\u0010NJ\u0017\u0010Q\u001a\u00020\t2\u0006\u0010F\u001a\u00020\u0003H\u0002¢\u0006\u0004\bQ\u0010NJ3\u0010W\u001a\u00020V2\u0012\u0010S\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\t0R2\u0006\u0010T\u001a\u00020\u00032\u0006\u0010U\u001a\u00020\u0003H\u0002¢\u0006\u0004\bW\u0010XJ#\u0010Y\u001a\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u00042\b\b\u0002\u0010F\u001a\u00020\u0003H\u0002¢\u0006\u0004\bY\u0010ZJ#\u0010[\u001a\f\u0012\u0004\u0012\u00020\u00030\u0002j\u0002`\u00042\b\b\u0002\u0010F\u001a\u00020\u0003H\u0002¢\u0006\u0004\b[\u0010ZJ\u000f\u0010]\u001a\u00020\\H\u0002¢\u0006\u0004\b]\u0010^J\u000f\u0010_\u001a\u00020\tH\u0002¢\u0006\u0004\b_\u0010,J\u0017\u0010`\u001a\u00020\\2\u0006\u00107\u001a\u000206H\u0002¢\u0006\u0004\b`\u0010aR\u0016\u0010d\u001a\u00020\u00148\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bb\u0010cR\u0016\u0010h\u001a\u00020e8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bf\u0010gR\u0018\u0010j\u001a\u0004\u0018\u00010V8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bY\u0010iR\u0016\u0010l\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b]\u0010kR\u0016\u0010n\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bm\u0010kR\u0018\u0010q\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bo\u0010pR\u0018\u0010s\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bQ\u0010rR\u0016\u0010u\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bt\u0010kR\u0016\u0010x\u001a\u00020\u00038B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\bv\u0010wR\u0016\u0010{\u001a\u00020\\8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\by\u0010zR\u0016\u0010|\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010kR\u0018\u0010}\u001a\u0004\u0018\u00010V8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b[\u0010iR\u0016\u0010\u007f\u001a\u00020\u00148\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b~\u0010cR \u0010\u0082\u0001\u001a\u00020\u000e8B@\u0002X\u0082\u0084\u0002¢\u0006\u000e\n\u0005\b_\u0010\u0080\u0001\u001a\u0005\b\u0081\u0001\u00105R\u0017\u0010\u0083\u0001\u001a\u00020\u00038\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bP\u0010kR\u0019\u0010\u0084\u0001\u001a\u0004\u0018\u00010V8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010iR\u0017\u0010\u0085\u0001\u001a\u00020\u00148\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010cR\u0018\u0010\u0087\u0001\u001a\u00020\\8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0086\u0001\u0010zR\u001b\u0010\u008a\u0001\u001a\u0005\u0018\u00010\u0088\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bC\u0010\u0089\u0001R\u001a\u0010\u008e\u0001\u001a\u00030\u008b\u00018\u0002@\u0002X\u0082\u0004¢\u0006\b\n\u0006\b\u008c\u0001\u0010\u008d\u0001R\u0018\u0010\u0090\u0001\u001a\u00020\u00038B@\u0002X\u0082\u0004¢\u0006\u0007\u001a\u0005\b\u008f\u0001\u0010wR\u001a\u0010\u0092\u0001\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bW\u0010\u0091\u0001R\u0018\u0010\u0094\u0001\u001a\u00020\u00038B@\u0002X\u0082\u0004¢\u0006\u0007\u001a\u0005\b\u0093\u0001\u0010wR\u001a\u0010\u0096\u0001\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b`\u0010\u0095\u0001R\u0018\u0010\u0098\u0001\u001a\u00020\\8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0097\u0001\u0010zR\u001b\u0010\u0099\u0001\u001a\u0005\u0018\u00010\u0088\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b;\u0010\u0089\u0001¨\u0006\u009a\u0001"}, d2 = {"Lcom/truecaller/messaging/mediaviewer/InteractiveMediaView;", "Landroid/widget/FrameLayout;", "Ls1/d0/e;", "", "Lcom/truecaller/messaging/mediaviewer/FloatRange;", "getScaleLimits", "()Ls1/d0/e;", "Landroid/graphics/Canvas;", "canvas", "Ls1/s;", "dispatchDraw", "(Landroid/graphics/Canvas;)V", "Landroid/view/View;", "child", "", "drawingTime", "", "drawChild", "(Landroid/graphics/Canvas;Landroid/view/View;J)Z", AnalyticsConstants.CHANGED, "", "left", "top", "right", "bottom", "onLayout", "(ZIIII)V", "Landroid/view/MotionEvent;", "ev", "onInterceptTouchEvent", "(Landroid/view/MotionEvent;)Z", "event", "onTouchEvent", "Le/a/a/j/o;", "listener", "setOnOverScrollListener", "(Le/a/a/j/o;)V", "Le/a/a/j/n;", "setOnImageSwipeListener", "(Le/a/a/j/n;)V", "Le/m/a/c/q0$b;", "setPlayerEventListener", "(Le/m/a/c/q0$b;)V", "o", "()V", "Lcom/google/android/exoplayer2/ui/PlayerControlView;", ViewAction.VIEW, "setPlayerControlView", "(Lcom/google/android/exoplayer2/ui/PlayerControlView;)V", "playWhenReady", "setPlayWhenReady", "(Z)V", "getPlaybackPosition", "()J", "Lcom/truecaller/messaging/mediaviewer/MediaPosition;", "position", "Landroid/net/Uri;", "uri", "entityId", "m", "(Lcom/truecaller/messaging/mediaviewer/MediaPosition;Landroid/net/Uri;J)V", "Landroid/graphics/drawable/Drawable;", RemoteMessageConst.Notification.ICON, "avatarUri", "", "title", "subtitle", "l", "(Lcom/truecaller/messaging/mediaviewer/MediaPosition;Landroid/graphics/drawable/Drawable;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V", "scaleFactor", "newScale", "focusX", "focusY", "Ls1/k;", "k", "(FFFF)Ls1/k;", "newOffsetX", "d", "(F)V", "newOffsetY", "e", "g", "Lkotlin/Function1;", "setter", "fromValue", "toValue", "Landroid/animation/Animator;", "f", "(Ls1/z/b/l;FF)Landroid/animation/Animator;", "i", "(F)Ls1/d0/e;", "j", "Le/a/a/j/f;", AbstractC2405c.f7629a, "()Le/a/a/j/f;", "n", "h", "(Lcom/truecaller/messaging/mediaviewer/MediaPosition;)Le/a/a/j/f;", "q", "I", "scrollAxis", "Landroid/view/ScaleGestureDetector;", "v", "Landroid/view/ScaleGestureDetector;", "scaleDetector", "Landroid/animation/Animator;", "offsetXAnimator", "F", "scale", C22021b.f61237c, "offsetY", "r", "Lcom/google/android/exoplayer2/ui/PlayerControlView;", "playerControlView", "Le/a/a/j/n;", "mediaSwipeListener", "a", "offsetX", "getDrawableHeight", "()F", "drawableHeight", "u", "Le/a/a/j/f;", "nextMediaHolder", "lastFocusX", "offsetYAnimator", "p", "swipeThreshold", "Ls1/g;", "getShortAnimationTime", "shortAnimationTime", "lastFocusY", "scaleAnimator", "mediaSpacing", "t", "currentMediaHolder", "Ln3/p/a/c;", "Ln3/p/a/c;", "offsetXFlingAnimation", "Landroid/view/GestureDetector;", "w", "Landroid/view/GestureDetector;", "gestureDetector", "getDrawableWidth", "drawableWidth", "Le/a/a/j/o;", "overScrollListener", "getDrawableScale", "drawableScale", "Le/m/a/c/q0$b;", "playerEventListener", "s", "previousMediaHolder", "offsetYFlingAnimation", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/mediaviewer/InteractiveMediaView.class */
public final class InteractiveMediaView extends FrameLayout {

    /* renamed from: a */
    public float f13549a;

    /* renamed from: b */
    public float f13550b;

    /* renamed from: d */
    public float f13552d;

    /* renamed from: e */
    public float f13553e;

    /* renamed from: f */
    public AbstractC6431o f13554f;

    /* renamed from: g */
    public AbstractC6430n f13555g;

    /* renamed from: h */
    public AbstractC24760q0.AbstractC24762b f13556h;

    /* renamed from: i */
    public Animator f13557i;

    /* renamed from: j */
    public Animator f13558j;

    /* renamed from: k */
    public Animator f13559k;

    /* renamed from: l */
    public c f13560l;

    /* renamed from: m */
    public c f13561m;

    /* renamed from: n */
    public final g f13562n;

    /* renamed from: o */
    public final int f13563o;

    /* renamed from: p */
    public final int f13564p;

    /* renamed from: r */
    public PlayerControlView f13566r;

    /* renamed from: v */
    public final ScaleGestureDetector f13570v;

    /* renamed from: w */
    public final GestureDetector f13571w;

    /* renamed from: c */
    public float f13551c = 1.0f;

    /* renamed from: q */
    public int f13565q = -1;

    /* renamed from: s */
    public C6420f f13567s = m34969c();

    /* renamed from: t */
    public C6420f f13568t = m34969c();

    /* renamed from: u */
    public C6420f f13569u = m34969c();

    /* renamed from: com.truecaller.messaging.mediaviewer.InteractiveMediaView$a */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/mediaviewer/InteractiveMediaView$a.class */
    public static final class C4225a extends m implements l<Float, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4225a() {
            super(1);
            InteractiveMediaView.this = r4;
        }

        /* renamed from: d */
        public Object m34956d(Object obj) {
            InteractiveMediaView.this.f13549a = ((Number) obj).floatValue();
            return s.a;
        }
    }

    /* renamed from: com.truecaller.messaging.mediaviewer.InteractiveMediaView$b */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/mediaviewer/InteractiveMediaView$b.class */
    public static final class C4226b extends m implements l<Float, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4226b() {
            super(1);
            InteractiveMediaView.this = r4;
        }

        /* renamed from: d */
        public Object m34955d(Object obj) {
            InteractiveMediaView.this.f13550b = ((Number) obj).floatValue();
            return s.a;
        }
    }

    /* renamed from: com.truecaller.messaging.mediaviewer.InteractiveMediaView$c */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/mediaviewer/InteractiveMediaView$c.class */
    public static final class C4227c implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: b */
        public final /* synthetic */ l f13575b;

        public C4227c(l lVar) {
            InteractiveMediaView.this = r4;
            this.f13575b = lVar;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public final void onAnimationUpdate(ValueAnimator valueAnimator) {
            l lVar = this.f13575b;
            s1.z.c.l.d(valueAnimator, "it");
            Object animatedValue = valueAnimator.getAnimatedValue();
            Objects.requireNonNull(animatedValue, "null cannot be cast to non-null type kotlin.Float");
            lVar.d((Float) animatedValue);
            InteractiveMediaView.this.invalidate();
        }
    }

    /* renamed from: com.truecaller.messaging.mediaviewer.InteractiveMediaView$d */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/messaging/mediaviewer/InteractiveMediaView$d.class */
    public static final class C4228d extends m implements l<Float, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4228d() {
            super(1);
            InteractiveMediaView.this = r4;
        }

        /* renamed from: d */
        public Object m34954d(Object obj) {
            InteractiveMediaView.this.f13551c = ((Number) obj).floatValue();
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InteractiveMediaView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        this.f13562n = C25225a.m3978P1(new C6419e(context));
        this.f13563o = C8605o.m28238b(context, 24.0f);
        this.f13564p = C8605o.m28238b(context, 120.0f);
        this.f13570v = new ScaleGestureDetector(context, new C6418d(this));
        this.f13571w = new GestureDetector(context, new C6415b(this));
    }

    /* renamed from: a */
    public static final c m34971a(InteractiveMediaView interactiveMediaView, float f, e eVar, float f2, l lVar) {
        Objects.requireNonNull(interactiveMediaView);
        c cVar = new c(new C26899e());
        cVar.f75169b = f;
        cVar.f75170c = true;
        cVar.f75168a = f2 / interactiveMediaView.f13551c;
        d dVar = (d) eVar;
        cVar.f75175h = Math.min(((Number) dVar.getStart()).floatValue(), f);
        cVar.f75174g = Math.max(((Number) dVar.c()).floatValue(), f);
        cVar.k(1.5f);
        cVar.m1239b(new C6417c(interactiveMediaView, f, f2, eVar, lVar));
        cVar.m1232i();
        return cVar;
    }

    private final float getDrawableHeight() {
        Integer drawableHeight = this.f13568t.getDrawableHeight();
        return drawableHeight != null ? drawableHeight.intValue() : 1;
    }

    private final float getDrawableScale() {
        return Math.min(Math.max(getWidth(), 1) / getDrawableWidth(), Math.max(getHeight(), 1) / getDrawableHeight());
    }

    private final float getDrawableWidth() {
        Integer drawableWidth = this.f13568t.getDrawableWidth();
        return drawableWidth != null ? drawableWidth.intValue() : 1;
    }

    public final e<Float> getScaleLimits() {
        return new d(1.0f, Math.max(4.0f / getDrawableScale(), 1.0f));
    }

    private final long getShortAnimationTime() {
        return ((Number) this.f13562n.getValue()).longValue();
    }

    /* renamed from: c */
    public final C6420f m34969c() {
        Context context = getContext();
        s1.z.c.l.d(context, AnalyticsConstants.CONTEXT);
        C6420f c6420f = new C6420f(context, null, 0, 6);
        addView(c6420f);
        ViewGroup.LayoutParams layoutParams = c6420f.getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = -1;
        return c6420f;
    }

    /* renamed from: d */
    public final void m34968d(float f) {
        c cVar = this.f13560l;
        if (cVar != null) {
            cVar.m1238c();
        }
        Animator animator = this.f13557i;
        if (animator != null) {
            animator.cancel();
        }
        this.f13557i = m34966f(new C4225a(), this.f13549a, f);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x012f A[LOOP:0: B:47:0x0125->B:49:0x012f, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0159  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void dispatchDraw(android.graphics.Canvas r6) {
        /*
            Method dump skipped, instructions count: 445
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.messaging.mediaviewer.InteractiveMediaView.dispatchDraw(android.graphics.Canvas):void");
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j) {
        s1.z.c.l.e(canvas, "canvas");
        s1.z.c.l.e(view, "child");
        if (this.f13551c == 1.0f || !(!s1.z.c.l.a(view, this.f13568t))) {
            canvas.save();
            if (s1.z.c.l.a(view, this.f13567s)) {
                canvas.translate((-getWidth()) - this.f13563o, 0.0f);
            } else if (s1.z.c.l.a(view, this.f13569u)) {
                canvas.translate(getWidth() + this.f13563o, 0.0f);
            }
            boolean drawChild = super.drawChild(canvas, view, j);
            canvas.restore();
            return drawChild;
        }
        return false;
    }

    /* renamed from: e */
    public final void m34967e(float f) {
        c cVar = this.f13561m;
        if (cVar != null) {
            cVar.m1238c();
        }
        Animator animator = this.f13558j;
        if (animator != null) {
            animator.cancel();
        }
        this.f13558j = m34966f(new C4226b(), this.f13550b, f);
    }

    /* renamed from: f */
    public final Animator m34966f(l<? super Float, s> lVar, float f, float f2) {
        ValueAnimator ofFloat = ValueAnimator.ofFloat(f, f2);
        ofFloat.setDuration(getShortAnimationTime());
        ofFloat.addUpdateListener(new C4227c(lVar));
        ofFloat.start();
        s1.z.c.l.d(ofFloat, "ValueAnimator.ofFloat(fr…        start()\n        }");
        return ofFloat;
    }

    /* renamed from: g */
    public final void m34965g(float f) {
        Animator animator = this.f13559k;
        if (animator != null) {
            animator.cancel();
        }
        this.f13559k = m34966f(new C4228d(), this.f13551c, f);
    }

    public final long getPlaybackPosition() {
        return this.f13568t.getPlaybackPosition();
    }

    /* renamed from: h */
    public final C6420f m34964h(MediaPosition mediaPosition) {
        C6420f c6420f;
        int ordinal = mediaPosition.ordinal();
        if (ordinal == 0) {
            c6420f = this.f13567s;
        } else if (ordinal == 1) {
            c6420f = this.f13568t;
        } else if (ordinal != 2) {
            throw new i();
        } else {
            c6420f = this.f13569u;
        }
        return c6420f;
    }

    /* renamed from: i */
    public final e<Float> m34963i(float f) {
        float width = (getWidth() - (getDrawableWidth() * getDrawableScale())) / 2;
        return new d(width, (getWidth() - (getWidth() / f)) - width);
    }

    /* renamed from: j */
    public final e<Float> m34962j(float f) {
        float height = (getHeight() - (getDrawableHeight() * getDrawableScale())) / 2;
        return new d(height, (getHeight() - (getHeight() / f)) - height);
    }

    /* renamed from: k */
    public final k<Float, Float> m34961k(float f, float f2, float f3, float f4) {
        float f5 = 1 - f;
        return new k<>(Float.valueOf(((-f3) * f5) / f2), Float.valueOf(((-f4) * f5) / f2));
    }

    /* renamed from: l */
    public final void m34960l(MediaPosition mediaPosition, Drawable drawable, Uri uri, String str, String str2) {
        s1.z.c.l.e(mediaPosition, "position");
        s1.z.c.l.e(str, "title");
        s1.z.c.l.e(str2, "subtitle");
        C6420f m34964h = m34964h(mediaPosition);
        Objects.requireNonNull(m34964h);
        s1.z.c.l.e(str, "title");
        s1.z.c.l.e(str2, "subtitle");
        m34964h.m31287d();
        if (uri == null) {
            m34964h.f21349e.setImageDrawable(drawable);
        } else {
            s1.z.c.l.d(ComponentCallbacks2C22222c.m8445f(m34964h.f21349e).mo8409p(uri).mo8102f().mo8086v(drawable).m8427O(m34964h.f21349e), "Glide.with(fileImageView…     .into(fileImageView)");
        }
        m34964h.f21350f.setText(str);
        m34964h.f21351g.setText(str2);
        m34964h.f21348d.setVisibility(0);
    }

    /* renamed from: m */
    public final void m34959m(MediaPosition mediaPosition, Uri uri, long j) {
        s1.z.c.l.e(mediaPosition, "position");
        s1.z.c.l.e(uri, "uri");
        C6420f m34964h = m34964h(mediaPosition);
        Objects.requireNonNull(m34964h);
        s1.z.c.l.e(uri, "uri");
        m34964h.m31287d();
        m34964h.f21345a.setVisibility(0);
        m34964h.f21345a.setTransitionName(MediaViewerActivity.m34952qa(j));
        ComponentCallbacks2C22222c.m8445f(m34964h).mo8409p(uri).mo8113A(true).mo8099i(AbstractC22364k.f62125b).m8429M(new C6429m(m34964h.f21345a));
    }

    /* renamed from: n */
    public final void m34958n() {
        PlayerControlView playerControlView = this.f13566r;
        if (playerControlView != null) {
            this.f13568t.setPlayerControlView(playerControlView);
        }
        AbstractC24760q0.AbstractC24762b abstractC24762b = this.f13556h;
        if (abstractC24762b != null) {
            this.f13567s.m31288c(abstractC24762b);
            this.f13569u.m31288c(abstractC24762b);
            C6420f c6420f = this.f13568t;
            Objects.requireNonNull(c6420f);
            s1.z.c.l.e(abstractC24762b, "listener");
            SimpleExoPlayer simpleExoPlayer = c6420f.f21353i;
            if (simpleExoPlayer != null) {
                simpleExoPlayer.addListener(abstractC24762b);
            }
            c6420f.f21354j.add(abstractC24762b);
        }
    }

    /* renamed from: o */
    public final void m34957o() {
        m34968d(C10480a.m25976d(0.0f, m34963i(1.0f)));
        m34967e(C10480a.m25976d(0.0f, m34962j(1.0f)));
        m34965g(1.0f);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        s1.z.c.l.e(motionEvent, "ev");
        return true;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        Animator animator = this.f13557i;
        if (animator == null || !animator.isRunning()) {
            Animator animator2 = this.f13558j;
            if (animator2 != null && animator2.isRunning()) {
                return;
            }
            float m25976d = C10480a.m25976d(this.f13551c, getScaleLimits());
            this.f13551c = m25976d;
            this.f13549a = C10480a.m25976d(this.f13549a, m34963i(m25976d));
            this.f13550b = C10480a.m25976d(this.f13550b, m34962j(this.f13551c));
        }
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        Animator animator;
        Animator animator2;
        s1.z.c.l.e(motionEvent, "event");
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f13565q = -1;
            c cVar = this.f13560l;
            if (cVar != null) {
                cVar.m1238c();
            }
            c cVar2 = this.f13561m;
            if (cVar2 != null) {
                cVar2.m1238c();
            }
        } else if (action == 1) {
            Animator animator3 = this.f13557i;
            if ((animator3 == null || !animator3.isRunning()) && (((animator = this.f13558j) == null || !animator.isRunning()) && ((animator2 = this.f13559k) == null || !animator2.isRunning()))) {
                if (this.f13551c == 1.0f) {
                    if (this.f13549a > this.f13564p && this.f13569u.m31290a()) {
                        this.f13549a -= getWidth();
                        this.f13568t.setPlayWhenReady(false);
                        C6420f c6420f = this.f13567s;
                        this.f13567s = this.f13568t;
                        this.f13568t = this.f13569u;
                        this.f13569u = c6420f;
                        c6420f.m31287d();
                        m34958n();
                        AbstractC6430n abstractC6430n = this.f13555g;
                        if (abstractC6430n != null) {
                            abstractC6430n.mo31242pf();
                        }
                    } else if (this.f13549a < (-this.f13564p) && this.f13567s.m31290a()) {
                        this.f13549a += getWidth();
                        this.f13568t.setPlayWhenReady(false);
                        C6420f c6420f2 = this.f13569u;
                        this.f13569u = this.f13568t;
                        this.f13568t = this.f13567s;
                        this.f13567s = c6420f2;
                        c6420f2.m31287d();
                        m34958n();
                        AbstractC6430n abstractC6430n2 = this.f13555g;
                        if (abstractC6430n2 != null) {
                            abstractC6430n2.mo31243fa();
                        }
                    }
                }
                float m25976d = C10480a.m25976d(this.f13551c, getScaleLimits());
                k<Float, Float> m34961k = m34961k(m25976d / this.f13551c, m25976d, this.f13552d, this.f13553e);
                float floatValue = ((Number) m34961k.a).floatValue();
                float floatValue2 = ((Number) m34961k.b).floatValue();
                float m25976d2 = C10480a.m25976d(this.f13549a + floatValue, m34963i(m25976d));
                float m25976d3 = C10480a.m25976d(this.f13550b + floatValue2, m34962j(m25976d));
                if (m25976d2 != this.f13549a) {
                    m34968d(m25976d2);
                }
                if (m25976d3 != this.f13550b) {
                    m34967e(m25976d3);
                }
                if (m25976d != this.f13551c) {
                    m34965g(m25976d);
                }
            }
            AbstractC6431o abstractC6431o = this.f13554f;
            if (abstractC6431o != null) {
                abstractC6431o.mo31241a();
            }
        }
        this.f13570v.onTouchEvent(motionEvent);
        if (this.f13570v.isInProgress()) {
            return true;
        }
        this.f13571w.onTouchEvent(motionEvent);
        return true;
    }

    public final void setOnImageSwipeListener(AbstractC6430n abstractC6430n) {
        this.f13555g = abstractC6430n;
    }

    public final void setOnOverScrollListener(AbstractC6431o abstractC6431o) {
        this.f13554f = abstractC6431o;
    }

    public final void setPlayWhenReady(boolean z) {
        this.f13568t.setPlayWhenReady(z);
    }

    public final void setPlayerControlView(PlayerControlView playerControlView) {
        this.f13566r = playerControlView;
        if (playerControlView != null) {
            this.f13568t.setPlayerControlView(playerControlView);
        }
    }

    public final void setPlayerEventListener(AbstractC24760q0.AbstractC24762b abstractC24762b) {
        AbstractC24760q0.AbstractC24762b abstractC24762b2 = this.f13556h;
        if (abstractC24762b2 != null) {
            this.f13567s.m31288c(abstractC24762b2);
            this.f13568t.m31288c(abstractC24762b2);
            this.f13569u.m31288c(abstractC24762b2);
        }
        this.f13556h = abstractC24762b;
        if (abstractC24762b != null) {
            C6420f c6420f = this.f13568t;
            Objects.requireNonNull(c6420f);
            s1.z.c.l.e(abstractC24762b, "listener");
            SimpleExoPlayer simpleExoPlayer = c6420f.f21353i;
            if (simpleExoPlayer != null) {
                simpleExoPlayer.addListener(abstractC24762b);
            }
            c6420f.f21354j.add(abstractC24762b);
        }
    }
}
