package com.truecaller.common.p156ui.avatar;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.LinearInterpolator;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import com.google.android.gms.ads.RequestConfiguration;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.mopub.common.Constants;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.p156ui.C3700R;
import e.f.a.r.k.d;
import kotlin.Metadata;
import p193e.p1451f.p1452a.p1476r.p1477k.AbstractC22598k;
import p193e.p1451f.p1452a.p1476r.p1478l.AbstractC22604d;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1406z3.C21853e;
import p193e.p194a.p372b0.p373a.p376b.AbstractC8247c;
import p193e.p194a.p372b0.p373a.p376b.AbstractC8248d;
import p193e.p194a.p372b0.p373a.p376b.C8249e;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0016\u0018��2\u00020\u00012\u00020\u0002B'\b\u0007\u0012\u0006\u0010k\u001a\u00020j\u0012\n\b\u0002\u0010m\u001a\u0004\u0018\u00010l\u0012\b\b\u0002\u0010n\u001a\u00020\u0013¢\u0006\u0004\bo\u0010pJ\u000f\u0010\u0004\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\t¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\rH\u0014¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\rH\u0014¢\u0006\u0004\b\u0012\u0010\u0011J\u0017\u0010\u0015\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0013H\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u001f\u0010\u0019\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u0013H\u0014¢\u0006\u0004\b\u0019\u0010\u001aJ/\u0010\u001f\u001a\u00020\r2\u0006\u0010\u001b\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u00132\u0006\u0010\u001d\u001a\u00020\u00132\u0006\u0010\u001e\u001a\u00020\u0013H\u0014¢\u0006\u0004\b\u001f\u0010 J\u0019\u0010#\u001a\u00020\r2\b\u0010\"\u001a\u0004\u0018\u00010!H\u0015¢\u0006\u0004\b#\u0010$J\u0017\u0010'\u001a\u00020\r2\u0006\u0010&\u001a\u00020%H\u0016¢\u0006\u0004\b'\u0010(J\u000f\u0010)\u001a\u00020\rH\u0016¢\u0006\u0004\b)\u0010\u0011J\u0017\u0010,\u001a\u00020\r2\u0006\u0010+\u001a\u00020*H\u0016¢\u0006\u0004\b,\u0010-J\u000f\u0010.\u001a\u00020*H\u0016¢\u0006\u0004\b.\u0010/J\u000f\u00100\u001a\u00020*H\u0016¢\u0006\u0004\b0\u0010/J\u000f\u00101\u001a\u00020\rH\u0016¢\u0006\u0004\b1\u0010\u0011R\u001d\u00107\u001a\u0002028B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b3\u00104\u001a\u0004\b5\u00106R\u001d\u0010:\u001a\u0002028B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b8\u00104\u001a\u0004\b9\u00106R\u001d\u0010=\u001a\u0002028B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b;\u00104\u001a\u0004\b<\u00106R$\u0010C\u001a\u0010\u0012\u0004\u0012\u00020?\u0012\u0004\u0012\u00020@\u0018\u00010>8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u0010BR\u0016\u0010F\u001a\u00020D8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u0010'R\u0016\u0010I\u001a\u00020*8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bG\u0010HR\u0016\u0010K\u001a\u00020D8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010'R\u0016\u0010M\u001a\u00020D8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010'R\u0016\u0010O\u001a\u00020D8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bN\u0010'R\u0016\u0010Q\u001a\u00020*8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bP\u0010HR\u0016\u0010R\u001a\u00020D8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010'R%\u0010X\u001a\n T*\u0004\u0018\u00010S0S8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bU\u00104\u001a\u0004\bV\u0010WR\u0016\u0010Z\u001a\u00020D8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bY\u0010'R\u0016\u0010\\\u001a\u00020D8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b[\u0010'R\u001d\u0010_\u001a\u0002028B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b]\u00104\u001a\u0004\b^\u00106R\u001d\u0010b\u001a\u0002028B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b`\u00104\u001a\u0004\ba\u00106R\u0016\u0010d\u001a\u00020D8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bc\u0010'R\u0018\u0010\f\u001a\u0004\u0018\u00010\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\be\u0010fR\u001d\u0010i\u001a\u0002028B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\bg\u00104\u001a\u0004\bh\u00106¨\u0006q"}, d2 = {"Lcom/truecaller/common/ui/avatar/AvatarXView;", "Landroidx/appcompat/widget/AppCompatImageView;", "Le/a/b0/a/b/d;", "Landroid/graphics/RectF;", "getAvatarBgBounds", "()Landroid/graphics/RectF;", "Landroid/graphics/Rect;", "getPhotoBounds", "()Landroid/graphics/Rect;", "Le/a/b0/a/b/c;", "getPresenter", "()Le/a/b0/a/b/c;", "presenter", "Ls1/s;", "setPresenter", "(Le/a/b0/a/b/c;)V", "onAttachedToWindow", "()V", "onDetachedFromWindow", "", RemoteMessageConst.Notification.VISIBILITY, "onWindowVisibilityChanged", "(I)V", "widthMeasureSpec", "heightMesureSpec", "onMeasure", "(II)V", "w", "h", "oldw", "oldh", "onSizeChanged", "(IIII)V", "Landroid/graphics/Canvas;", "canvas", "onDraw", "(Landroid/graphics/Canvas;)V", "Landroid/net/Uri;", "uri", "F", "(Landroid/net/Uri;)V", RequestConfiguration.MAX_AD_CONTENT_RATING_G, "", "isLoading", "E", "(Z)V", "getActivated", "()Z", "getWindowVisible", "a", "Landroid/graphics/Paint;", "o", "Ls1/g;", "getTextPaint", "()Landroid/graphics/Paint;", "textPaint", "m", "getBadgeRingPaint", "badgeRingPaint", "n", "getBadgeBackgroundPaint", "badgeBackgroundPaint", "Le/f/a/r/k/d;", "Landroid/widget/ImageView;", "Landroid/graphics/drawable/Drawable;", "u", "Le/f/a/r/k/d;", "customTarget", "", "j", "badgeIconSize", "d", "Z", "isInvertVerifiedRingColor", "e", "backgroundSize", "g", "ringSize", "i", "badgeSize", "s", "loadingReverse", "badgeBackgroundSize", "Landroid/animation/ValueAnimator;", "kotlin.jvm.PlatformType", "t", "getLoadingAnimator", "()Landroid/animation/ValueAnimator;", "loadingAnimator", "q", "loadingStartAngle", "f", "iconAndLetterSize", "p", "getAvatarBorderPaint", "avatarBorderPaint", "l", "getBadgePaint", "badgePaint", "r", "loadingSweepAngle", AbstractC2405c.f7629a, "Le/a/b0/a/b/c;", "k", "getBackgroundPaint", "backgroundPaint", "Landroid/content/Context;", AnalyticsConstants.CONTEXT, "Landroid/util/AttributeSet;", "attrs", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "common-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.common.ui.avatar.AvatarXView */
/* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/avatar/AvatarXView.class */
public class AvatarXView extends AppCompatImageView implements AbstractC8248d {

    /* renamed from: c */
    public AbstractC8247c f11116c;

    /* renamed from: d */
    public final boolean f11117d;

    /* renamed from: e */
    public float f11118e;

    /* renamed from: f */
    public float f11119f;

    /* renamed from: g */
    public float f11120g;

    /* renamed from: h */
    public float f11121h;

    /* renamed from: i */
    public float f11122i;

    /* renamed from: j */
    public float f11123j;

    /* renamed from: k */
    public final g f11124k;

    /* renamed from: l */
    public final g f11125l;

    /* renamed from: m */
    public final g f11126m;

    /* renamed from: n */
    public final g f11127n;

    /* renamed from: o */
    public final g f11128o;

    /* renamed from: p */
    public final g f11129p;

    /* renamed from: q */
    public float f11130q;

    /* renamed from: r */
    public float f11131r;

    /* renamed from: s */
    public boolean f11132s;

    /* renamed from: t */
    public final g f11133t;

    /* renamed from: u */
    public d<ImageView, Drawable> f11134u;

    /* renamed from: com.truecaller.common.ui.avatar.AvatarXView$a */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/common/ui/avatar/AvatarXView$a.class */
    public static final class C3706a extends m implements a<Paint> {

        /* renamed from: c */
        public static final C3706a f11135c = new C3706a(0);

        /* renamed from: d */
        public static final C3706a f11136d = new C3706a(1);

        /* renamed from: e */
        public static final C3706a f11137e = new C3706a(2);

        /* renamed from: f */
        public static final C3706a f11138f = new C3706a(3);

        /* renamed from: g */
        public static final C3706a f11139g = new C3706a(4);

        /* renamed from: h */
        public static final C3706a f11140h = new C3706a(5);

        /* renamed from: b */
        public final /* synthetic */ int f11141b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3706a(int i) {
            super(0);
            this.f11141b = i;
        }

        public final Object invoke() {
            int i = this.f11141b;
            if (i == 0) {
                Paint paint = new Paint();
                paint.setAntiAlias(true);
                paint.setStyle(Paint.Style.STROKE);
                return paint;
            } else if (i == 1) {
                Paint paint2 = new Paint();
                paint2.setAntiAlias(true);
                paint2.setStyle(Paint.Style.FILL);
                return paint2;
            } else if (i == 2) {
                Paint paint3 = new Paint();
                paint3.setAntiAlias(true);
                paint3.setStyle(Paint.Style.FILL);
                return paint3;
            } else if (i == 3) {
                Paint paint4 = new Paint();
                paint4.setAntiAlias(true);
                paint4.setStyle(Paint.Style.FILL);
                return paint4;
            } else if (i == 4) {
                Paint paint5 = new Paint();
                paint5.setAntiAlias(true);
                paint5.setStyle(Paint.Style.STROKE);
                return paint5;
            } else if (i != 5) {
                throw null;
            } else {
                Paint paint6 = new Paint();
                paint6.setAntiAlias(true);
                paint6.setTextAlign(Paint.Align.CENTER);
                return paint6;
            }
        }
    }

    /* renamed from: com.truecaller.common.ui.avatar.AvatarXView$b */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/avatar/AvatarXView$b.class */
    public static final class C3707b extends d<ImageView, Drawable> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3707b(View view) {
            super(view);
            AvatarXView.this = r4;
        }

        /* renamed from: a */
        public void m35700a(Drawable drawable) {
            AbstractC8247c abstractC8247c = AvatarXView.this.f11116c;
            if (abstractC8247c != null) {
                abstractC8247c.mo28720Xj(null);
            }
        }

        /* renamed from: e */
        public void m35699e(Object obj, AbstractC22604d abstractC22604d) {
            Drawable drawable = (Drawable) obj;
            l.e(drawable, Constants.VAST_RESOURCE);
            AbstractC8247c abstractC8247c = AvatarXView.this.f11116c;
            if (abstractC8247c != null) {
                abstractC8247c.mo28720Xj(drawable);
            }
        }

        /* renamed from: i */
        public void m35698i(Drawable drawable) {
            AbstractC8247c abstractC8247c = AvatarXView.this.f11116c;
            if (abstractC8247c != null) {
                abstractC8247c.mo28720Xj(null);
            }
        }
    }

    /* renamed from: com.truecaller.common.ui.avatar.AvatarXView$c */
    /* loaded from: classes7-dex2jar.jar:com/truecaller/common/ui/avatar/AvatarXView$c.class */
    public static final class C3708c extends m implements a<ValueAnimator> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C3708c() {
            super(0);
            AvatarXView.this = r4;
        }

        public Object invoke() {
            ValueAnimator ofInt = ValueAnimator.ofInt(0, 60);
            ofInt.setDuration(1000L);
            ofInt.setRepeatCount(-1);
            ofInt.setInterpolator(new LinearInterpolator());
            ofInt.addUpdateListener(new C8249e(this));
            return ofInt;
        }
    }

    public AvatarXView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AvatarXView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        l.e(context, AnalyticsConstants.CONTEXT);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C3700R.styleable.AvatarXView);
        l.d(obtainStyledAttributes, "context.obtainStyledAttr… R.styleable.AvatarXView)");
        this.f11117d = obtainStyledAttributes.getBoolean(C3700R.styleable.AvatarXView_invertVerifiedRingColor, false);
        obtainStyledAttributes.recycle();
        this.f11124k = C25225a.m3978P1(C3706a.f11136d);
        this.f11125l = C25225a.m3978P1(C3706a.f11138f);
        this.f11126m = C25225a.m3978P1(C3706a.f11139g);
        this.f11127n = C25225a.m3978P1(C3706a.f11137e);
        this.f11128o = C25225a.m3978P1(C3706a.f11140h);
        this.f11129p = C25225a.m3978P1(C3706a.f11135c);
        this.f11133t = C25225a.m3978P1(new C3708c());
    }

    private final RectF getAvatarBgBounds() {
        float f = 2;
        float width = (getWidth() - this.f11118e) / f;
        float width2 = (getWidth() + this.f11118e) / f;
        return new RectF(width, width, width2, width2);
    }

    private final Paint getAvatarBorderPaint() {
        return (Paint) this.f11129p.getValue();
    }

    private final Paint getBackgroundPaint() {
        return (Paint) this.f11124k.getValue();
    }

    private final Paint getBadgeBackgroundPaint() {
        return (Paint) this.f11127n.getValue();
    }

    private final Paint getBadgePaint() {
        return (Paint) this.f11125l.getValue();
    }

    private final Paint getBadgeRingPaint() {
        return (Paint) this.f11126m.getValue();
    }

    private final ValueAnimator getLoadingAnimator() {
        return (ValueAnimator) this.f11133t.getValue();
    }

    private final Rect getPhotoBounds() {
        int width = ((int) (getWidth() - this.f11118e)) / 2;
        int width2 = ((int) (getWidth() + this.f11118e)) / 2;
        return new Rect(width, width, width2, width2);
    }

    private final Paint getTextPaint() {
        return (Paint) this.f11128o.getValue();
    }

    @Override // p193e.p194a.p372b0.p373a.p376b.AbstractC8248d
    /* renamed from: E */
    public void mo28718E(boolean z) {
        if (z) {
            ValueAnimator loadingAnimator = getLoadingAnimator();
            l.d(loadingAnimator, "loadingAnimator");
            if (!loadingAnimator.isStarted()) {
                getLoadingAnimator().start();
                return;
            }
        }
        if (!z) {
            ValueAnimator loadingAnimator2 = getLoadingAnimator();
            l.d(loadingAnimator2, "loadingAnimator");
            if (!loadingAnimator2.isStarted()) {
                return;
            }
            getLoadingAnimator().end();
        }
    }

    @Override // p193e.p194a.p372b0.p373a.p376b.AbstractC8248d
    /* renamed from: F */
    public void mo28717F(Uri uri) {
        C3707b c3707b;
        l.e(uri, "uri");
        C3707b c3707b2 = this.f11134u;
        if (c3707b2 != null) {
            c3707b = c3707b2;
        } else {
            C3707b c3707b3 = new C3707b(this);
            Context context = getContext();
            l.d(context, AnalyticsConstants.CONTEXT);
            C21853e m15664K1 = C17891a1.C17902k.m15664K1(context.getApplicationContext());
            l.d(m15664K1, "GlideApp.with(context.applicationContext)");
            C17891a1.C17902k.m15653O0(m15664K1, uri, -1).m8429M(c3707b3);
            c3707b = c3707b3;
        }
        this.f11134u = c3707b;
    }

    @Override // p193e.p194a.p372b0.p373a.p376b.AbstractC8248d
    /* renamed from: G */
    public void mo28716G() {
        AbstractC22598k<?> abstractC22598k = this.f11134u;
        if (abstractC22598k != null) {
            Context context = getContext();
            l.d(context, AnalyticsConstants.CONTEXT);
            C17891a1.C17902k.m15664K1(context.getApplicationContext()).m8411n(abstractC22598k);
        }
        this.f11134u = null;
    }

    @Override // p193e.p194a.p372b0.p373a.p376b.AbstractC8248d
    /* renamed from: a */
    public void mo28715a() {
        invalidate();
    }

    @Override // p193e.p194a.p372b0.p373a.p376b.AbstractC8248d
    public boolean getActivated() {
        return isActivated();
    }

    public final AbstractC8247c getPresenter() {
        return this.f11116c;
    }

    @Override // p193e.p194a.p372b0.p373a.p376b.AbstractC8248d
    public boolean getWindowVisible() {
        return getWindowVisibility() == 0;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        AbstractC8247c abstractC8247c = this.f11116c;
        if (abstractC8247c != null) {
            abstractC8247c.mo9029Y0(this);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        AbstractC8247c abstractC8247c = this.f11116c;
        if (abstractC8247c != null) {
            abstractC8247c.mo9806c();
        }
        mo28716G();
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        Rect rect;
        RectF rectF;
        RectF rectF2;
        Drawable mo28734Jj;
        Shader mo28733Kj;
        Integer mo28730Nj;
        String mo28731Mj;
        Integer mo28728Pj;
        Drawable mo28732Lj;
        Integer mo28736Hj;
        Drawable mo28729Oj;
        super.onDraw(canvas);
        if (canvas != null) {
            AbstractC8247c abstractC8247c = this.f11116c;
            if (abstractC8247c == null || (mo28729Oj = abstractC8247c.mo28729Oj()) == null) {
                rect = null;
            } else {
                rect = getPhotoBounds();
                int i = rect.left;
                int i2 = rect.right;
                mo28729Oj.setBounds(i, i, i2, i2);
                mo28729Oj.draw(canvas);
            }
            AbstractC8247c abstractC8247c2 = this.f11116c;
            if (abstractC8247c2 == null || (mo28736Hj = abstractC8247c2.mo28736Hj()) == null) {
                rectF = null;
            } else {
                getBackgroundPaint().setColor(mo28736Hj.intValue());
                rectF = getAvatarBgBounds();
                float f = rectF.left;
                float f2 = rectF.right;
                canvas.drawOval(f, f, f2, f2, getBackgroundPaint());
            }
            AbstractC8247c abstractC8247c3 = this.f11116c;
            if (abstractC8247c3 != null && (mo28732Lj = abstractC8247c3.mo28732Lj()) != null) {
                int width = ((int) (getWidth() - this.f11119f)) / 2;
                int width2 = ((int) (getWidth() + this.f11119f)) / 2;
                mo28732Lj.setBounds(width, width, width2, width2);
                mo28732Lj.draw(canvas);
            }
            AbstractC8247c abstractC8247c4 = this.f11116c;
            if (abstractC8247c4 != null && (mo28731Mj = abstractC8247c4.mo28731Mj()) != null) {
                getTextPaint().setTextSize(this.f11119f);
                Paint textPaint = getTextPaint();
                AbstractC8247c abstractC8247c5 = this.f11116c;
                textPaint.setColor((abstractC8247c5 == null || (mo28728Pj = abstractC8247c5.mo28728Pj()) == null) ? 0 : mo28728Pj.intValue());
                canvas.drawText(mo28731Mj, getWidth() / 2.0f, (getWidth() / 2.0f) - ((getTextPaint().ascent() + getTextPaint().descent()) / 2.0f), getTextPaint());
            }
            AbstractC8247c abstractC8247c6 = this.f11116c;
            if (abstractC8247c6 != null && (mo28730Nj = abstractC8247c6.mo28730Nj()) != null) {
                int intValue = mo28730Nj.intValue();
                getBadgeRingPaint().setStrokeWidth(this.f11120g);
                getBadgeRingPaint().setColor(intValue);
                getBadgeRingPaint().setShader(null);
                float f3 = this.f11120g;
                float width3 = getWidth() - this.f11120g;
                canvas.drawArc(f3, f3, width3, width3, this.f11130q, this.f11131r, false, getBadgeRingPaint());
            }
            getBadgeRingPaint().setStrokeWidth(this.f11120g);
            Paint badgeRingPaint = getBadgeRingPaint();
            AbstractC8247c abstractC8247c7 = this.f11116c;
            badgeRingPaint.setShader(abstractC8247c7 != null ? abstractC8247c7.mo28727Qj(getWidth(), this.f11117d) : null);
            AbstractC8247c abstractC8247c8 = this.f11116c;
            float width4 = (abstractC8247c8 == null || !abstractC8247c8.mo28719Yj()) ? this.f11121h : getWidth();
            float f4 = this.f11120g;
            float f5 = width4 - f4;
            RectF rectF3 = rect != null ? new RectF(rect) : rectF;
            if (rectF3 != null) {
                rectF2 = new RectF(rectF3);
                float f6 = -this.f11120g;
                rectF2.inset(f6, f6);
            } else {
                rectF2 = new RectF(f4, f4, f5, f5);
            }
            if (getBadgeRingPaint().getShader() != null) {
                canvas.drawOval(rectF2.left, rectF2.top, rectF2.right, rectF2.bottom, getBadgeRingPaint());
            }
            float f7 = 2;
            float f8 = this.f11120g * f7;
            float width5 = getWidth() - (this.f11120g * f7);
            if (rect != null) {
                rectF = new RectF(rect);
            }
            if (rectF == null) {
                rectF = new RectF(f8, f8, width5, width5);
            }
            AbstractC8247c abstractC8247c9 = this.f11116c;
            if (abstractC8247c9 != null && (mo28733Kj = abstractC8247c9.mo28733Kj(this.f11120g)) != null) {
                getAvatarBorderPaint().setShader(mo28733Kj);
                getAvatarBorderPaint().setStrokeWidth(this.f11120g);
                canvas.drawOval(rectF.left, rectF.top, rectF.right, rectF.bottom, getAvatarBorderPaint());
            }
            AbstractC8247c abstractC8247c10 = this.f11116c;
            if (abstractC8247c10 == null || (mo28734Jj = abstractC8247c10.mo28734Jj()) == null) {
                return;
            }
            Paint badgeBackgroundPaint = getBadgeBackgroundPaint();
            AbstractC8247c abstractC8247c11 = this.f11116c;
            int i3 = 0;
            if (abstractC8247c11 != null) {
                Integer mo28735Ij = abstractC8247c11.mo28735Ij();
                i3 = 0;
                if (mo28735Ij != null) {
                    i3 = mo28735Ij.intValue();
                }
            }
            badgeBackgroundPaint.setColor(i3);
            float f9 = this.f11121h;
            canvas.drawOval(0.0f, 0.0f, f9, f9, getBadgeBackgroundPaint());
            Paint badgePaint = getBadgePaint();
            AbstractC8247c abstractC8247c12 = this.f11116c;
            Shader shader = null;
            if (abstractC8247c12 != null) {
                shader = abstractC8247c12.mo28726Rj(this.f11122i, this.f11117d);
            }
            badgePaint.setShader(shader);
            float f10 = this.f11121h;
            float f11 = this.f11122i;
            float f12 = (f10 - f11) / f7;
            float f13 = (f10 + f11) / f7;
            if (getBadgePaint().getShader() != null) {
                canvas.drawOval(f12, f12, f13, f13, getBadgePaint());
            }
            float f14 = this.f11121h;
            float f15 = this.f11123j;
            int i4 = ((int) (f14 - f15)) / 2;
            int i5 = ((int) (f14 + f15)) / 2;
            mo28734Jj.setBounds(i4, i4, i5, i5);
            mo28734Jj.draw(canvas);
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public void onMeasure(int i, int i2) {
        boolean z = i < i2;
        if (z) {
            super.onMeasure(i, i);
        } else if (z) {
        } else {
            super.onMeasure(i2, i2);
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        float dimension = getResources().getDimension(C3700R.dimen.avatar_tcx_line_width);
        float dimension2 = (i * dimension) / getResources().getDimension(C3700R.dimen.avatar_tcx_default_width);
        this.f11120g = 1 * dimension2;
        this.f11118e = 39 * dimension2;
        this.f11121h = 14 * dimension2;
        float f = 12 * dimension2;
        this.f11122i = f;
        this.f11123j = f;
        this.f11119f = dimension2 * 20;
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        AbstractC8247c abstractC8247c = this.f11116c;
        if (abstractC8247c != null) {
            abstractC8247c.mo28725Sj(i == 0);
        }
    }

    public final void setPresenter(AbstractC8247c abstractC8247c) {
        this.f11116c = abstractC8247c;
        if (abstractC8247c != null) {
            abstractC8247c.mo9029Y0(this);
        }
    }
}
