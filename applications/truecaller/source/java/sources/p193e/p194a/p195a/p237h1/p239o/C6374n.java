package p193e.p194a.p195a.p237h1.p239o;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.RectF;
import android.os.Build;
import android.support.p001v4.media.session.MediaSessionCompat;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.ImageView;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import java.util.Objects;
import p1727n3.p1807k.p1812c.C26494b;
import p1727n3.p1807k.p1821i.C26568d0;
import p1727n3.p1807k.p1821i.C26614s;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p195a.p237h1.C6323d;
import p193e.p194a.p195a.p237h1.C6326e;
import p193e.p194a.p195a.p237h1.RunnableC6327f;
import s1.z.c.l;
/* renamed from: e.a.a.h1.o.n */
/* loaded from: classes11-dex2jar.jar:e/a/a/h1/o/n.class */
public final class C6374n implements AbstractC6370k {

    /* renamed from: a */
    public final C6366g f21242a;

    /* renamed from: b */
    public final C6365f f21243b;

    /* renamed from: c */
    public final ImageView f21244c;

    /* renamed from: d */
    public final C6360d f21245d;

    /* renamed from: e */
    public final View f21246e;

    /* renamed from: f */
    public final WindowManager f21247f;

    /* renamed from: g */
    public float f21248g;

    /* renamed from: h */
    public float f21249h;

    /* renamed from: i */
    public boolean f21250i;

    /* renamed from: j */
    public final float f21251j;

    /* renamed from: k */
    public final float f21252k;

    /* renamed from: l */
    public final int f21253l;

    /* renamed from: m */
    public ValueAnimator f21254m;

    /* renamed from: n */
    public final Context f21255n;

    /* renamed from: o */
    public final AbstractC6368i f21256o;

    /* renamed from: e.a.a.h1.o.n$a */
    /* loaded from: classes11-dex2jar.jar:e/a/a/h1/o/n$a.class */
    public static final class View$OnLayoutChangeListenerC6375a implements View.OnLayoutChangeListener {
        public View$OnLayoutChangeListenerC6375a() {
            C6374n.this = r4;
        }

        @Override // android.view.View.OnLayoutChangeListener
        public final void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            C6374n c6374n = C6374n.this;
            C6374n.m31372i(c6374n, c6374n.f21249h);
            C6374n.this.f21246e.setVisibility(8);
        }
    }

    /* renamed from: e.a.a.h1.o.n$b */
    /* loaded from: classes11-dex2jar.jar:e/a/a/h1/o/n$b.class */
    public final class C6376b extends AbstractView$OnTouchListenerC6357b {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6376b() {
            super(r4.f21255n);
            C6374n.this = r4;
        }
    }

    /* renamed from: e.a.a.h1.o.n$c */
    /* loaded from: classes11-dex2jar.jar:e/a/a/h1/o/n$c.class */
    public static final class RunnableC6377c implements Runnable {

        /* renamed from: b */
        public final /* synthetic */ float f21260b;

        public RunnableC6377c(float f) {
            C6374n.this = r4;
            this.f21260b = f;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C6374n.m31372i(C6374n.this, this.f21260b);
            C6374n.this.f21242a.setVisibility(0);
            C6374n.this.f21244c.setVisibility(0);
        }
    }

    /* renamed from: e.a.a.h1.o.n$d */
    /* loaded from: classes11-dex2jar.jar:e/a/a/h1/o/n$d.class */
    public static final class RunnableC6378d implements Runnable {

        /* renamed from: b */
        public final /* synthetic */ String f21262b;

        /* renamed from: c */
        public final /* synthetic */ String f21263c;

        /* renamed from: e.a.a.h1.o.n$d$a */
        /* loaded from: classes11-dex2jar.jar:e/a/a/h1/o/n$d$a.class */
        public static final class RunnableC6379a implements Runnable {
            public RunnableC6379a() {
                RunnableC6378d.this = r4;
            }

            @Override // java.lang.Runnable
            public final void run() {
                C6374n c6374n = C6374n.this;
                C6374n.m31367n(c6374n, c6374n.f21248g, c6374n.f21249h, false, 4);
            }
        }

        public RunnableC6378d(String str, String str2) {
            C6374n.this = r4;
            this.f21262b = str;
            this.f21263c = str2;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C6374n.this.f21243b.m31405b(this.f21262b, this.f21263c);
            C6374n.this.f21243b.post(new RunnableC6379a());
        }
    }

    public C6374n(Context context, AbstractC6368i abstractC6368i) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC6368i, "presenter");
        this.f21255n = context;
        this.f21256o = abstractC6368i;
        C6366g c6366g = new C6366g(context, null, 0, 6);
        this.f21242a = c6366g;
        this.f21243b = new C6365f(context, null, 0, 6);
        ImageView imageView = new ImageView(context);
        this.f21244c = imageView;
        this.f21245d = new C6360d(context, null, 0, 6);
        View view = new View(context);
        this.f21246e = view;
        Object systemService = context.getSystemService("window");
        Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        this.f21247f = (WindowManager) systemService;
        this.f21251j = context.getResources().getDimension(C2752R.dimen.urgent_message_bubble_horizontal_inset);
        this.f21252k = context.getResources().getDimension(C2752R.dimen.urgent_message_bubble_vertical_inset);
        this.f21253l = context.getResources().getDimensionPixelSize(C2752R.dimen.urgent_message_bubble_dismiss_threshold);
        Context context2 = imageView.getContext();
        l.d(context2, AnalyticsConstants.CONTEXT);
        int dimensionPixelSize = context2.getResources().getDimensionPixelSize(C2752R.dimen.urgent_message_bubble_ripple_size);
        imageView.setMinimumWidth(dimensionPixelSize);
        imageView.setMinimumHeight(dimensionPixelSize);
        Context context3 = imageView.getContext();
        l.d(context3, AnalyticsConstants.CONTEXT);
        C6355a c6355a = new C6355a(context3);
        imageView.setImageDrawable(c6355a);
        c6355a.start();
        c6366g.setOnTouchListener(new C6376b());
        view.addOnLayoutChangeListener(new View$OnLayoutChangeListenerC6375a());
    }

    /* renamed from: i */
    public static final void m31372i(C6374n c6374n, float f) {
        RectF m31369l = c6374n.m31369l();
        c6374n.m31368m(c6374n.f21242a.getLayoutDirection() != 1 ? 0.0f : m31369l.width(), Math.min(f, m31369l.height()), false);
    }

    /* renamed from: k */
    public static /* synthetic */ void m31370k(C6374n c6374n, View view, int i, int i2, int i3, boolean z, int i4) {
        if ((i4 & 4) != 0) {
            i2 = -2;
        }
        if ((i4 & 8) != 0) {
            i3 = -2;
        }
        if ((i4 & 16) != 0) {
            z = false;
        }
        c6374n.m31371j(view, i, i2, i3, z);
    }

    /* renamed from: n */
    public static /* synthetic */ void m31367n(C6374n c6374n, float f, float f2, boolean z, int i) {
        if ((i & 4) != 0) {
            z = false;
        }
        c6374n.m31368m(f, f2, z);
    }

    @Override // p193e.p194a.p195a.p237h1.p239o.AbstractC6370k
    /* renamed from: J */
    public void mo31381J() {
        C6366g c6366g = this.f21242a;
        C6323d c6323d = c6366g.f21223c;
        c6323d.f21146c = 0L;
        c6323d.f21144a.removeCallbacks(new RunnableC6327f(new C6326e(c6323d)));
        c6366g.f21222b.setVisibility(4);
    }

    @Override // p193e.p194a.p195a.p237h1.p239o.AbstractC6370k
    /* renamed from: a */
    public void mo31380a(float f) {
        m31370k(this, this.f21245d, 16, -1, -1, false, 16);
        m31370k(this, this.f21244c, 16, 0, 0, false, 28);
        m31370k(this, this.f21243b, Build.VERSION.SDK_INT < 26 ? 2621440 : 0, 0, 0, false, 28);
        m31370k(this, this.f21242a, 0, 0, 0, false, 28);
        m31371j(this.f21246e, 16, -1, -1, true);
        this.f21242a.post(new RunnableC6377c(f));
    }

    @Override // p193e.p194a.p195a.p237h1.p239o.AbstractC6370k
    /* renamed from: b */
    public int mo31379b() {
        Resources resources = this.f21255n.getResources();
        l.d(resources, "context.resources");
        return resources.getDisplayMetrics().heightPixels;
    }

    @Override // p193e.p194a.p195a.p237h1.p239o.AbstractC6370k
    /* renamed from: c */
    public void mo31378c(boolean z) {
        C19286f.m13683U(this.f21242a, z);
    }

    @Override // p193e.p194a.p195a.p237h1.p239o.AbstractC6370k
    /* renamed from: d */
    public void mo31377d() {
        this.f21243b.setVisibility(8);
        this.f21243b.clearAnimation();
    }

    @Override // p193e.p194a.p195a.p237h1.p239o.AbstractC6370k
    /* renamed from: e */
    public void mo31376e(String str, String str2) {
        l.e(str, "title");
        l.e(str2, "subtitle");
        this.f21243b.post(new RunnableC6378d(str, str2));
    }

    @Override // p193e.p194a.p195a.p237h1.p239o.AbstractC6370k
    /* renamed from: f */
    public void mo31375f() {
        this.f21247f.removeView(this.f21245d);
        this.f21247f.removeView(this.f21244c);
        this.f21247f.removeView(this.f21243b);
        this.f21247f.removeView(this.f21242a);
        this.f21247f.removeView(this.f21246e);
    }

    @Override // p193e.p194a.p195a.p237h1.p239o.AbstractC6370k
    /* renamed from: g */
    public void mo31374g(boolean z) {
        C19286f.m13683U(this.f21244c, z);
    }

    @Override // p193e.p194a.p195a.p237h1.p239o.AbstractC6370k
    /* renamed from: h */
    public void mo31373h(int i) {
        this.f21242a.setBadgeCount(i);
    }

    /* renamed from: j */
    public final void m31371j(View view, int i, int i2, int i3, boolean z) {
        if (!z) {
            view.setVisibility(4);
        }
        this.f21247f.addView(view, new WindowManager.LayoutParams(i2, i3, Build.VERSION.SDK_INT >= 26 ? 2038 : 2010, i | 524808, -3));
    }

    /* renamed from: l */
    public final RectF m31369l() {
        C26494b m1665b;
        RectF rectF = new RectF(0.0f, 0.0f, this.f21246e.getWidth(), this.f21246e.getHeight());
        C26568d0 m1572i = C26614s.m1572i(this.f21246e);
        if ((m1572i != null ? m1572i.m1665b(7) : null) != null) {
            rectF.left += m1665b.f74277a;
            rectF.top += m1665b.f74278b;
            rectF.right -= m1665b.f74279c;
            rectF.bottom -= m1665b.f74280d;
        }
        return rectF;
    }

    /* renamed from: m */
    public final void m31368m(float f, float f2, boolean z) {
        C6366g c6366g;
        ImageView imageView;
        RectF m31369l = m31369l();
        float f3 = this.f21251j;
        float f4 = this.f21252k;
        RectF rectF = new RectF(m31369l);
        rectF.inset(f3, f4);
        float f5 = f;
        float f6 = f2;
        if (!z) {
            f5 = MediaSessionCompat.m43181z(f, rectF.left, rectF.right);
            f6 = MediaSessionCompat.m43181z(f2, rectF.top, rectF.bottom);
        }
        float dismissButtonX = this.f21245d.getDismissButtonX();
        float dismissButtonY = this.f21245d.getDismissButtonY();
        double d = f5 - dismissButtonX;
        double d2 = 2;
        boolean z2 = ((float) Math.sqrt((double) (((float) Math.pow(d, d2)) + ((float) Math.pow((double) (f6 - dismissButtonY), d2))))) < ((float) this.f21253l);
        this.f21250i = z2;
        float f7 = f5;
        if (z2) {
            f7 = dismissButtonX;
            f6 = dismissButtonY;
        }
        m31366o(this.f21242a, f7 - (c6366g.getWidth() / 2.0f), f6 - (this.f21242a.getHeight() / 2.0f));
        m31366o(this.f21244c, f7 - (imageView.getWidth() / 2.0f), f6 - (this.f21244c.getHeight() / 2.0f));
        C6365f c6365f = this.f21243b;
        m31366o(c6365f, c6365f.getLayoutDirection() == 1 ? f7 - this.f21243b.getWidth() : f7, f6 - (this.f21243b.getHeight() / 2.0f));
        this.f21248g = f7;
        this.f21249h = f6;
    }

    /* renamed from: o */
    public final void m31366o(View view, float f, float f2) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        Objects.requireNonNull(layoutParams, "null cannot be cast to non-null type android.view.WindowManager.LayoutParams");
        WindowManager.LayoutParams layoutParams2 = (WindowManager.LayoutParams) layoutParams;
        layoutParams2.gravity = 8388659;
        RectF m31369l = m31369l();
        float f3 = m31369l.left;
        if (f < f3) {
            layoutParams2.x = (int) f3;
            view.setTranslationX(f - f3);
        } else if (f > m31369l.right - view.getWidth()) {
            layoutParams2.x = ((int) m31369l.right) - view.getWidth();
            view.setTranslationX(f - (m31369l.right - view.getWidth()));
        } else {
            layoutParams2.x = (int) f;
            view.setTranslationX(0.0f);
        }
        float f4 = m31369l.top;
        if (f2 < f4) {
            layoutParams2.y = (int) f4;
            view.setTranslationY(f2 - f4);
        } else if (f2 > m31369l.bottom - view.getHeight()) {
            layoutParams2.y = ((int) m31369l.bottom) - view.getHeight();
            view.setTranslationY(f2 - (m31369l.bottom - view.getHeight()));
        } else {
            layoutParams2.y = (int) f2;
            view.setTranslationY(0.0f);
        }
        this.f21247f.updateViewLayout(view, layoutParams2);
    }

    @Override // p193e.p194a.p195a.p237h1.p239o.AbstractC6370k
    /* renamed from: t */
    public void mo31365t(long j, long j2) {
        C6366g c6366g = this.f21242a;
        c6366g.f21222b.setVisibility(0);
        c6366g.f21223c.m31444a(j, j2);
    }
}
