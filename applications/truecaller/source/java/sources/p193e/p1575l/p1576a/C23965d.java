package p193e.p1575l.p1576a;

import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.text.DynamicLayout;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewManager;
import android.view.ViewOutlineProvider;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.view.animation.AccelerateDecelerateInterpolator;
import com.tenor.android.core.constant.StringConstant;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1789g0.C26232y;
import p1727n3.p1807k.p1821i.C26614s;
import p193e.p1575l.p1576a.C23960b;
/* renamed from: e.l.a.d */
/* loaded from: classes2-dex2jar.jar:e/l/a/d.class */
public class C23965d extends View {

    /* renamed from: A0 */
    public static final /* synthetic */ int f66369A0 = 0;

    /* renamed from: A */
    public CharSequence f66370A;

    /* renamed from: B */
    public StaticLayout f66371B;

    /* renamed from: C */
    public boolean f66372C;

    /* renamed from: D */
    public boolean f66373D;

    /* renamed from: E */
    public boolean f66374E;

    /* renamed from: J */
    public boolean f66375J;

    /* renamed from: K */
    public boolean f66376K;

    /* renamed from: L */
    public boolean f66377L;

    /* renamed from: M */
    public SpannableStringBuilder f66378M;

    /* renamed from: N */
    public DynamicLayout f66379N;

    /* renamed from: O */
    public TextPaint f66380O;

    /* renamed from: P */
    public Paint f66381P;

    /* renamed from: Q */
    public Rect f66382Q;

    /* renamed from: R */
    public Rect f66383R;

    /* renamed from: S */
    public Path f66384S;

    /* renamed from: T */
    public float f66385T;

    /* renamed from: U */
    public int f66386U;

    /* renamed from: V */
    public int[] f66387V;

    /* renamed from: W */
    public int f66388W;

    /* renamed from: d */
    public final int f66392d;

    /* renamed from: e */
    public final int f66393e;

    /* renamed from: f */
    public final int f66394f;

    /* renamed from: g */
    public final int f66395g;

    /* renamed from: g0 */
    public float f66396g0;

    /* renamed from: h */
    public final int f66397h;

    /* renamed from: h0 */
    public int f66398h0;

    /* renamed from: i */
    public final int f66399i;

    /* renamed from: i0 */
    public float f66400i0;

    /* renamed from: j */
    public final int f66401j;

    /* renamed from: j0 */
    public int f66402j0;

    /* renamed from: k */
    public final int f66403k;

    /* renamed from: k0 */
    public int f66404k0;

    /* renamed from: l */
    public final int f66405l;

    /* renamed from: l0 */
    public int f66406l0;

    /* renamed from: m */
    public final int f66407m;

    /* renamed from: m0 */
    public float f66408m0;

    /* renamed from: n */
    public final int f66409n;

    /* renamed from: n0 */
    public float f66410n0;

    /* renamed from: o */
    public final ViewGroup f66411o;

    /* renamed from: o0 */
    public int f66412o0;

    /* renamed from: p */
    public final ViewManager f66413p;

    /* renamed from: p0 */
    public int f66414p0;

    /* renamed from: q */
    public final C23964c f66415q;

    /* renamed from: q0 */
    public Bitmap f66416q0;

    /* renamed from: r */
    public final Rect f66417r;

    /* renamed from: r0 */
    public C23978l f66418r0;

    /* renamed from: s */
    public final TextPaint f66419s;

    /* renamed from: s0 */
    public ViewOutlineProvider f66420s0;

    /* renamed from: t */
    public final TextPaint f66421t;

    /* renamed from: u */
    public final Paint f66423u;

    /* renamed from: u0 */
    public final ValueAnimator f66424u0;

    /* renamed from: v */
    public final Paint f66425v;

    /* renamed from: v0 */
    public final ValueAnimator f66426v0;

    /* renamed from: w */
    public final Paint f66427w;

    /* renamed from: w0 */
    public final ValueAnimator f66428w0;

    /* renamed from: x */
    public final Paint f66429x;

    /* renamed from: x0 */
    public final ValueAnimator f66430x0;

    /* renamed from: y */
    public CharSequence f66431y;

    /* renamed from: y0 */
    public ValueAnimator[] f66432y0;

    /* renamed from: z */
    public StaticLayout f66433z;

    /* renamed from: z0 */
    public final ViewTreeObserver.OnGlobalLayoutListener f66434z0;

    /* renamed from: a */
    public boolean f66389a = false;

    /* renamed from: b */
    public boolean f66390b = false;

    /* renamed from: c */
    public boolean f66391c = true;

    /* renamed from: t0 */
    public final C23960b.AbstractC23963c f66422t0 = new C23968c();

    /* renamed from: e.l.a.d$a */
    /* loaded from: classes2-dex2jar.jar:e/l/a/d$a.class */
    public class View$OnClickListenerC23966a implements View.OnClickListener {
        public View$OnClickListenerC23966a() {
            C23965d.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            C23965d c23965d = C23965d.this;
            if (c23965d.f66418r0 == null || c23965d.f66387V == null || !c23965d.f66391c) {
                return;
            }
            int centerX = c23965d.f66417r.centerX();
            int centerY = C23965d.this.f66417r.centerY();
            C23965d c23965d2 = C23965d.this;
            double m5642c = c23965d.m5642c(centerX, centerY, (int) c23965d2.f66408m0, (int) c23965d2.f66410n0);
            C23965d c23965d3 = C23965d.this;
            boolean z = m5642c <= ((double) c23965d3.f66400i0);
            int[] iArr = c23965d3.f66387V;
            double m5642c2 = c23965d3.m5642c(iArr[0], iArr[1], (int) c23965d3.f66408m0, (int) c23965d3.f66410n0);
            C23965d c23965d4 = C23965d.this;
            boolean z2 = m5642c2 <= ((double) c23965d4.f66385T);
            if (z) {
                c23965d4.f66391c = false;
                Objects.requireNonNull(c23965d4.f66418r0);
                c23965d4.m5643b(true);
            } else if (z2) {
                Objects.requireNonNull(c23965d4.f66418r0);
            } else if (!c23965d4.f66376K) {
            } else {
                c23965d4.f66391c = false;
                Objects.requireNonNull(c23965d4.f66418r0);
                c23965d4.m5643b(false);
            }
        }
    }

    /* renamed from: e.l.a.d$b */
    /* loaded from: classes2-dex2jar.jar:e/l/a/d$b.class */
    public class View$OnLongClickListenerC23967b implements View.OnLongClickListener {
        public View$OnLongClickListenerC23967b() {
            C23965d.this = r4;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            C23965d c23965d = C23965d.this;
            if (c23965d.f66418r0 != null && c23965d.f66417r.contains((int) c23965d.f66408m0, (int) c23965d.f66410n0)) {
                C23965d c23965d2 = C23965d.this;
                Objects.requireNonNull(c23965d2.f66418r0);
                c23965d2.m5643b(true);
                return true;
            }
            return false;
        }
    }

    /* renamed from: e.l.a.d$c */
    /* loaded from: classes2-dex2jar.jar:e/l/a/d$c.class */
    public class C23968c implements C23960b.AbstractC23963c {
        public C23968c() {
            C23965d.this = r4;
        }

        @Override // p193e.p1575l.p1576a.C23960b.AbstractC23963c
        /* renamed from: a */
        public void mo5636a(float f) {
            C23965d c23965d;
            C23965d c23965d2 = C23965d.this;
            float f2 = c23965d2.f66386U * f;
            boolean z = f2 > c23965d2.f66385T;
            if (!z) {
                c23965d2.m5644a();
            }
            C23965d c23965d3 = C23965d.this;
            float f3 = c23965d3.f66415q.f66351c * 255.0f;
            c23965d3.f66385T = f2;
            float f4 = 1.5f * f;
            c23965d3.f66388W = (int) Math.min(f3, f4 * f3);
            C23965d.this.f66384S.reset();
            C23965d c23965d4 = C23965d.this;
            Path path = c23965d4.f66384S;
            int[] iArr = c23965d4.f66387V;
            path.addCircle(iArr[0], iArr[1], c23965d4.f66385T, Path.Direction.CW);
            C23965d.this.f66402j0 = (int) Math.min(255.0f, f4 * 255.0f);
            if (z) {
                C23965d.this.f66400i0 = Math.min(1.0f, f4) * c23965d.f66393e;
            } else {
                C23965d c23965d5 = C23965d.this;
                c23965d5.f66400i0 = c23965d5.f66393e * f;
                c23965d5.f66396g0 *= f;
            }
            C23965d c23965d6 = C23965d.this;
            Objects.requireNonNull(c23965d6);
            c23965d6.f66404k0 = (int) ((f < 0.7f ? 0.0f : (f - 0.7f) / 0.3f) * 255.0f);
            if (z) {
                C23965d.this.m5644a();
            }
            C23965d c23965d7 = C23965d.this;
            c23965d7.m5641d(c23965d7.f66382Q);
        }
    }

    /* renamed from: e.l.a.d$d */
    /* loaded from: classes2-dex2jar.jar:e/l/a/d$d.class */
    public class C23969d implements C23960b.AbstractC23962b {
        public C23969d() {
            C23965d.this = r4;
        }

        @Override // p193e.p1575l.p1576a.C23960b.AbstractC23962b
        /* renamed from: a */
        public void mo5637a() {
            C23965d.this.f66426v0.start();
            C23965d.this.f66391c = true;
        }
    }

    /* renamed from: e.l.a.d$e */
    /* loaded from: classes2-dex2jar.jar:e/l/a/d$e.class */
    public class C23970e implements C23960b.AbstractC23963c {
        public C23970e() {
            C23965d.this = r4;
        }

        @Override // p193e.p1575l.p1576a.C23960b.AbstractC23963c
        /* renamed from: a */
        public void mo5636a(float f) {
            C23965d.this.f66422t0.mo5636a(f);
        }
    }

    /* renamed from: e.l.a.d$f */
    /* loaded from: classes2-dex2jar.jar:e/l/a/d$f.class */
    public class C23971f implements C23960b.AbstractC23963c {
        public C23971f() {
            C23965d.this = r4;
        }

        @Override // p193e.p1575l.p1576a.C23960b.AbstractC23963c
        /* renamed from: a */
        public void mo5636a(float f) {
            Objects.requireNonNull(C23965d.this);
            int i = (f > 0.5f ? 1 : (f == 0.5f ? 0 : -1));
            float f2 = i < 0 ? 0.0f : (f - 0.5f) / 0.5f;
            C23965d c23965d = C23965d.this;
            float f3 = c23965d.f66393e;
            c23965d.f66396g0 = (f2 + 1.0f) * f3;
            c23965d.f66398h0 = (int) ((1.0f - f2) * 255.0f);
            c23965d.f66400i0 = ((i < 0 ? f / 0.5f : (1.0f - f) / 0.5f) * c23965d.f66394f) + f3;
            float f4 = c23965d.f66385T;
            float f5 = c23965d.f66386U;
            if (f4 != f5) {
                c23965d.f66385T = f5;
            }
            c23965d.m5644a();
            C23965d c23965d2 = C23965d.this;
            c23965d2.m5641d(c23965d2.f66382Q);
        }
    }

    /* renamed from: e.l.a.d$g */
    /* loaded from: classes2-dex2jar.jar:e/l/a/d$g.class */
    public class C23972g implements C23960b.AbstractC23962b {
        public C23972g() {
            C23965d.this = r4;
        }

        @Override // p193e.p1575l.p1576a.C23960b.AbstractC23962b
        /* renamed from: a */
        public void mo5637a() {
            C23965d c23965d = C23965d.this;
            int i = C23965d.f66369A0;
            c23965d.m5638g(true);
            ViewManager viewManager = c23965d.f66413p;
            if (viewManager != null) {
                try {
                    viewManager.removeView(c23965d);
                } catch (Exception e) {
                }
            }
        }
    }

    /* renamed from: e.l.a.d$h */
    /* loaded from: classes2-dex2jar.jar:e/l/a/d$h.class */
    public class C23973h implements C23960b.AbstractC23963c {
        public C23973h() {
            C23965d.this = r4;
        }

        @Override // p193e.p1575l.p1576a.C23960b.AbstractC23963c
        /* renamed from: a */
        public void mo5636a(float f) {
            C23965d.this.f66422t0.mo5636a(f);
        }
    }

    /* renamed from: e.l.a.d$i */
    /* loaded from: classes2-dex2jar.jar:e/l/a/d$i.class */
    public class C23974i implements C23960b.AbstractC23962b {
        public C23974i() {
            C23965d.this = r4;
        }

        @Override // p193e.p1575l.p1576a.C23960b.AbstractC23962b
        /* renamed from: a */
        public void mo5637a() {
            C23965d c23965d = C23965d.this;
            int i = C23965d.f66369A0;
            c23965d.m5638g(true);
            ViewManager viewManager = c23965d.f66413p;
            if (viewManager != null) {
                try {
                    viewManager.removeView(c23965d);
                } catch (Exception e) {
                }
            }
        }
    }

    /* renamed from: e.l.a.d$j */
    /* loaded from: classes2-dex2jar.jar:e/l/a/d$j.class */
    public class C23975j implements C23960b.AbstractC23963c {
        public C23975j() {
            C23965d.this = r4;
        }

        @Override // p193e.p1575l.p1576a.C23960b.AbstractC23963c
        /* renamed from: a */
        public void mo5636a(float f) {
            float min = Math.min(1.0f, 2.0f * f);
            C23965d c23965d = C23965d.this;
            c23965d.f66385T = ((0.2f * min) + 1.0f) * c23965d.f66386U;
            float f2 = 1.0f - min;
            c23965d.f66388W = (int) (c23965d.f66415q.f66351c * f2 * 255.0f);
            c23965d.f66384S.reset();
            C23965d c23965d2 = C23965d.this;
            Path path = c23965d2.f66384S;
            int[] iArr = c23965d2.f66387V;
            path.addCircle(iArr[0], iArr[1], c23965d2.f66385T, Path.Direction.CW);
            C23965d c23965d3 = C23965d.this;
            float f3 = 1.0f - f;
            int i = c23965d3.f66393e;
            c23965d3.f66400i0 = i * f3;
            c23965d3.f66402j0 = (int) (f3 * 255.0f);
            c23965d3.f66396g0 = (f + 1.0f) * i;
            c23965d3.f66398h0 = (int) (f3 * c23965d3.f66398h0);
            c23965d3.f66404k0 = (int) (f2 * 255.0f);
            c23965d3.m5644a();
            C23965d c23965d4 = C23965d.this;
            c23965d4.m5641d(c23965d4.f66382Q);
        }
    }

    /* renamed from: e.l.a.d$k */
    /* loaded from: classes2-dex2jar.jar:e/l/a/d$k.class */
    public class ViewTreeObserver$OnGlobalLayoutListenerC23976k implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a */
        public final /* synthetic */ C23964c f66445a;

        /* renamed from: b */
        public final /* synthetic */ ViewGroup f66446b;

        /* renamed from: c */
        public final /* synthetic */ Context f66447c;

        /* renamed from: d */
        public final /* synthetic */ boolean f66448d;

        /* renamed from: e */
        public final /* synthetic */ boolean f66449e;

        /* renamed from: f */
        public final /* synthetic */ boolean f66450f;

        /* renamed from: e.l.a.d$k$a */
        /* loaded from: classes2-dex2jar.jar:e/l/a/d$k$a.class */
        public class RunnableC23977a implements Runnable {
            public RunnableC23977a() {
                ViewTreeObserver$OnGlobalLayoutListenerC23976k.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                int[] iArr = new int[2];
                ViewTreeObserver$OnGlobalLayoutListenerC23976k viewTreeObserver$OnGlobalLayoutListenerC23976k = ViewTreeObserver$OnGlobalLayoutListenerC23976k.this;
                Rect rect = C23965d.this.f66417r;
                Rect rect2 = viewTreeObserver$OnGlobalLayoutListenerC23976k.f66445a.f66353e;
                if (rect2 != null) {
                    rect.set(rect2);
                    C23965d.this.getLocationOnScreen(iArr);
                    C23965d.this.f66417r.offset(-iArr[0], -iArr[1]);
                    ViewTreeObserver$OnGlobalLayoutListenerC23976k viewTreeObserver$OnGlobalLayoutListenerC23976k2 = ViewTreeObserver$OnGlobalLayoutListenerC23976k.this;
                    if (viewTreeObserver$OnGlobalLayoutListenerC23976k2.f66446b != null) {
                        WindowManager windowManager = (WindowManager) viewTreeObserver$OnGlobalLayoutListenerC23976k2.f66447c.getSystemService("window");
                        DisplayMetrics displayMetrics = new DisplayMetrics();
                        windowManager.getDefaultDisplay().getMetrics(displayMetrics);
                        Rect rect3 = new Rect();
                        ViewTreeObserver$OnGlobalLayoutListenerC23976k.this.f66446b.getWindowVisibleDisplayFrame(rect3);
                        int[] iArr2 = new int[2];
                        ViewTreeObserver$OnGlobalLayoutListenerC23976k.this.f66446b.getLocationInWindow(iArr2);
                        ViewTreeObserver$OnGlobalLayoutListenerC23976k viewTreeObserver$OnGlobalLayoutListenerC23976k3 = ViewTreeObserver$OnGlobalLayoutListenerC23976k.this;
                        if (viewTreeObserver$OnGlobalLayoutListenerC23976k3.f66448d) {
                            rect3.top = iArr2[1];
                        }
                        if (viewTreeObserver$OnGlobalLayoutListenerC23976k3.f66449e) {
                            rect3.bottom = viewTreeObserver$OnGlobalLayoutListenerC23976k3.f66446b.getHeight() + iArr2[1];
                        }
                        ViewTreeObserver$OnGlobalLayoutListenerC23976k viewTreeObserver$OnGlobalLayoutListenerC23976k4 = ViewTreeObserver$OnGlobalLayoutListenerC23976k.this;
                        if (viewTreeObserver$OnGlobalLayoutListenerC23976k4.f66450f) {
                            C23965d.this.f66412o0 = Math.max(0, rect3.top);
                            C23965d.this.f66414p0 = Math.min(rect3.bottom, displayMetrics.heightPixels);
                        } else {
                            C23965d c23965d = C23965d.this;
                            c23965d.f66412o0 = rect3.top;
                            c23965d.f66414p0 = rect3.bottom;
                        }
                    }
                    C23965d c23965d2 = C23965d.this;
                    Drawable drawable = c23965d2.f66415q.f66354f;
                    if (!c23965d2.f66374E || drawable == null) {
                        c23965d2.f66416q0 = null;
                    } else if (c23965d2.f66416q0 == null) {
                        c23965d2.f66416q0 = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
                        Canvas canvas = new Canvas(c23965d2.f66416q0);
                        drawable.setColorFilter(new PorterDuffColorFilter(c23965d2.f66423u.getColor(), PorterDuff.Mode.SRC_ATOP));
                        drawable.draw(canvas);
                        drawable.setColorFilter(null);
                    }
                    C23965d.this.requestFocus();
                    C23965d c23965d3 = C23965d.this;
                    c23965d3.f66383R = c23965d3.getTextBounds();
                    int[] outerCircleCenterPoint = c23965d3.getOuterCircleCenterPoint();
                    c23965d3.f66387V = outerCircleCenterPoint;
                    int i = outerCircleCenterPoint[0];
                    int i2 = outerCircleCenterPoint[1];
                    Rect rect4 = c23965d3.f66383R;
                    Rect rect5 = c23965d3.f66417r;
                    int centerX = rect5.centerX();
                    int centerY = rect5.centerY();
                    int i3 = (int) (c23965d3.f66393e * 1.1f);
                    Rect rect6 = new Rect(centerX, centerY, centerX, centerY);
                    int i4 = -i3;
                    rect6.inset(i4, i4);
                    c23965d3.f66386U = Math.max(c23965d3.m5639f(i, i2, rect4), c23965d3.m5639f(i, i2, rect6)) + c23965d3.f66403k;
                    C23965d c23965d4 = C23965d.this;
                    if (c23965d4.f66377L) {
                        return;
                    }
                    c23965d4.f66391c = false;
                    c23965d4.f66424u0.start();
                    c23965d4.f66377L = true;
                    return;
                }
                throw new IllegalStateException("Requesting bounds that are not set! Make sure your target is ready");
            }
        }

        public ViewTreeObserver$OnGlobalLayoutListenerC23976k(C23964c c23964c, ViewGroup viewGroup, Context context, boolean z, boolean z2, boolean z3) {
            C23965d.this = r4;
            this.f66445a = c23964c;
            this.f66446b = viewGroup;
            this.f66447c = context;
            this.f66448d = z;
            this.f66449e = z2;
            this.f66450f = z3;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            C23965d c23965d = C23965d.this;
            if (c23965d.f66390b) {
                return;
            }
            int min = Math.min(c23965d.getWidth(), c23965d.f66399i) - (c23965d.f66395g * 2);
            if (min > 0) {
                c23965d.f66433z = new StaticLayout(c23965d.f66431y, c23965d.f66419s, min, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
                if (c23965d.f66370A != null) {
                    c23965d.f66371B = new StaticLayout(c23965d.f66370A, c23965d.f66421t, min, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
                } else {
                    c23965d.f66371B = null;
                }
            }
            C23964c c23964c = this.f66445a;
            RunnableC23977a runnableC23977a = new RunnableC23977a();
            C23981g c23981g = (C23981g) c23964c;
            View view = c23981g.f66456u;
            RunnableC23980f runnableC23980f = new RunnableC23980f(c23981g, runnableC23977a);
            AtomicInteger atomicInteger = C26614s.f74505a;
            if (view.isLaidOut() && view.getWidth() > 0 && view.getHeight() > 0) {
                runnableC23980f.run();
                return;
            }
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            viewTreeObserver.addOnGlobalLayoutListener(new ViewTreeObserver$OnGlobalLayoutListenerC23982h(viewTreeObserver, view, runnableC23980f));
        }
    }

    /* renamed from: e.l.a.d$l */
    /* loaded from: classes2-dex2jar.jar:e/l/a/d$l.class */
    public static class C23978l {
        /* renamed from: a */
        public void mo5635a(C23965d c23965d, boolean z) {
        }
    }

    public C23965d(Context context, ViewManager viewManager, ViewGroup viewGroup, C23964c c23964c, C23978l c23978l) {
        super(context);
        C23960b c23960b = new C23960b(false);
        c23960b.f66346a.setDuration(250L);
        c23960b.f66346a.setStartDelay(250L);
        c23960b.f66346a.setInterpolator(new AccelerateDecelerateInterpolator());
        c23960b.f66346a.addUpdateListener(new C23959a(c23960b, new C23970e()));
        c23960b.f66347b = new C23969d();
        ValueAnimator m5647a = c23960b.m5647a();
        this.f66424u0 = m5647a;
        C23960b c23960b2 = new C23960b(false);
        c23960b2.f66346a.setDuration(1000L);
        c23960b2.f66346a.setRepeatCount(-1);
        c23960b2.f66346a.setInterpolator(new AccelerateDecelerateInterpolator());
        c23960b2.f66346a.addUpdateListener(new C23959a(c23960b2, new C23971f()));
        ValueAnimator m5647a2 = c23960b2.m5647a();
        this.f66426v0 = m5647a2;
        C23960b c23960b3 = new C23960b(true);
        c23960b3.f66346a.setDuration(250L);
        c23960b3.f66346a.setInterpolator(new AccelerateDecelerateInterpolator());
        c23960b3.f66346a.addUpdateListener(new C23959a(c23960b3, new C23973h()));
        c23960b3.f66347b = new C23972g();
        ValueAnimator m5647a3 = c23960b3.m5647a();
        this.f66428w0 = m5647a3;
        C23960b c23960b4 = new C23960b(false);
        c23960b4.f66346a.setDuration(250L);
        c23960b4.f66346a.setInterpolator(new AccelerateDecelerateInterpolator());
        c23960b4.f66346a.addUpdateListener(new C23959a(c23960b4, new C23975j()));
        c23960b4.f66347b = new C23974i();
        ValueAnimator m5647a4 = c23960b4.m5647a();
        this.f66430x0 = m5647a4;
        this.f66432y0 = new ValueAnimator[]{m5647a, m5647a2, m5647a4, m5647a3};
        if (c23964c != null) {
            this.f66415q = c23964c;
            this.f66413p = viewManager;
            this.f66411o = viewGroup;
            this.f66418r0 = c23978l != null ? c23978l : new C23978l();
            this.f66431y = c23964c.f66349a;
            this.f66370A = c23964c.f66350b;
            this.f66392d = C26232y.m2432O(context, 20);
            this.f66403k = C26232y.m2432O(context, 40);
            int m2432O = C26232y.m2432O(context, c23964c.f66352d);
            this.f66393e = m2432O;
            this.f66395g = C26232y.m2432O(context, 40);
            this.f66397h = C26232y.m2432O(context, 8);
            this.f66399i = C26232y.m2432O(context, 360);
            this.f66401j = C26232y.m2432O(context, 20);
            this.f66405l = C26232y.m2432O(context, 88);
            int m2432O2 = C26232y.m2432O(context, 8);
            this.f66407m = m2432O2;
            int m2432O3 = C26232y.m2432O(context, 1);
            this.f66409n = m2432O3;
            this.f66394f = (int) (m2432O * 0.1f);
            this.f66384S = new Path();
            this.f66417r = new Rect();
            this.f66382Q = new Rect();
            TextPaint textPaint = new TextPaint();
            this.f66419s = textPaint;
            textPaint.setTextSize(c23964c.m5645b(context, c23964c.f66362n, -1));
            textPaint.setTypeface(Typeface.create("sans-serif-medium", 0));
            textPaint.setAntiAlias(true);
            TextPaint textPaint2 = new TextPaint();
            this.f66421t = textPaint2;
            textPaint2.setTextSize(c23964c.m5645b(context, c23964c.f66363o, -1));
            textPaint2.setTypeface(Typeface.create(Typeface.SANS_SERIF, 0));
            textPaint2.setAntiAlias(true);
            textPaint2.setAlpha(137);
            Paint paint = new Paint();
            this.f66423u = paint;
            paint.setAntiAlias(true);
            paint.setAlpha((int) (c23964c.f66351c * 255.0f));
            Paint paint2 = new Paint();
            this.f66425v = paint2;
            paint2.setAntiAlias(true);
            paint2.setAlpha(50);
            paint2.setStyle(Paint.Style.STROKE);
            paint2.setStrokeWidth(m2432O3);
            paint2.setColor(-16777216);
            Paint paint3 = new Paint();
            this.f66427w = paint3;
            paint3.setAntiAlias(true);
            Paint paint4 = new Paint();
            this.f66429x = paint4;
            paint4.setAntiAlias(true);
            boolean z = c23964c.f66367s;
            this.f66374E = !z && c23964c.f66366r;
            boolean z2 = c23964c.f66364p;
            this.f66375J = z2;
            this.f66376K = c23964c.f66365q;
            if (z2 && !z) {
                C23979e c23979e = new C23979e(this);
                this.f66420s0 = c23979e;
                setOutlineProvider(c23979e);
                setElevation(m2432O2);
            }
            setLayerType(2, null);
            Resources.Theme theme = context.getTheme();
            this.f66372C = C26232y.m2390Y1(context, "isLightTheme") == 0;
            Integer m5646a = c23964c.m5646a(context, null, c23964c.f66357i);
            if (m5646a != null) {
                paint.setColor(m5646a.intValue());
            } else if (theme != null) {
                paint.setColor(C26232y.m2390Y1(context, "colorPrimary"));
            } else {
                paint.setColor(-1);
            }
            Integer m5646a2 = c23964c.m5646a(context, null, c23964c.f66358j);
            if (m5646a2 != null) {
                paint3.setColor(m5646a2.intValue());
            } else {
                paint3.setColor(this.f66372C ? -16777216 : -1);
            }
            if (c23964c.f66367s) {
                paint3.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.CLEAR));
            }
            paint4.setColor(paint3.getColor());
            Integer m5646a3 = c23964c.m5646a(context, null, c23964c.f66359k);
            if (m5646a3 != null) {
                int intValue = m5646a3.intValue();
                this.f66406l0 = (intValue & 16777215) | (((int) ((intValue >>> 24) * 0.3f)) << 24);
            } else {
                this.f66406l0 = -1;
            }
            Integer m5646a4 = c23964c.m5646a(context, null, c23964c.f66360l);
            if (m5646a4 != null) {
                textPaint.setColor(m5646a4.intValue());
            } else {
                textPaint.setColor(this.f66372C ? -16777216 : -1);
            }
            Integer m5646a5 = c23964c.m5646a(context, null, c23964c.f66361m);
            if (m5646a5 != null) {
                textPaint2.setColor(m5646a5.intValue());
            } else {
                textPaint2.setColor(textPaint.getColor());
            }
            Typeface typeface = c23964c.f66355g;
            if (typeface != null) {
                textPaint.setTypeface(typeface);
            }
            Typeface typeface2 = c23964c.f66356h;
            if (typeface2 != null) {
                textPaint2.setTypeface(typeface2);
            }
            int i = ((Activity) context).getWindow().getAttributes().flags;
            ViewTreeObserver$OnGlobalLayoutListenerC23976k viewTreeObserver$OnGlobalLayoutListenerC23976k = new ViewTreeObserver$OnGlobalLayoutListenerC23976k(c23964c, viewGroup, context, (67108864 & i) != 0, (134217728 & i) != 0, (i & 512) != 0);
            this.f66434z0 = viewTreeObserver$OnGlobalLayoutListenerC23976k;
            getViewTreeObserver().addOnGlobalLayoutListener(viewTreeObserver$OnGlobalLayoutListenerC23976k);
            setFocusableInTouchMode(true);
            setClickable(true);
            setOnClickListener(new View$OnClickListenerC23966a());
            setOnLongClickListener(new View$OnLongClickListenerC23967b());
            return;
        }
        throw new IllegalArgumentException("Target cannot be null");
    }

    /* renamed from: a */
    public void m5644a() {
        int[] iArr = this.f66387V;
        if (iArr == null) {
            return;
        }
        this.f66382Q.left = (int) Math.max(0.0f, iArr[0] - this.f66385T);
        this.f66382Q.top = (int) Math.min(0.0f, this.f66387V[1] - this.f66385T);
        this.f66382Q.right = (int) Math.min(getWidth(), this.f66387V[0] + this.f66385T + this.f66403k);
        this.f66382Q.bottom = (int) Math.min(getHeight(), this.f66387V[1] + this.f66385T + this.f66403k);
    }

    /* renamed from: b */
    public void m5643b(boolean z) {
        this.f66390b = true;
        this.f66426v0.cancel();
        this.f66424u0.cancel();
        if (this.f66377L && this.f66387V != null) {
            if (z) {
                this.f66430x0.start();
                return;
            } else {
                this.f66428w0.start();
                return;
            }
        }
        m5638g(z);
        ViewManager viewManager = this.f66413p;
        if (viewManager == null) {
            return;
        }
        try {
            viewManager.removeView(this);
        } catch (Exception e) {
        }
    }

    /* renamed from: c */
    public double m5642c(int i, int i2, int i3, int i4) {
        return Math.sqrt(Math.pow(i4 - i2, 2.0d) + Math.pow(i3 - i, 2.0d));
    }

    /* renamed from: d */
    public void m5641d(Rect rect) {
        invalidate(rect);
        if (this.f66420s0 != null) {
            invalidateOutline();
        }
    }

    /* renamed from: e */
    public boolean m5640e() {
        return !this.f66389a && this.f66377L;
    }

    /* renamed from: f */
    public int m5639f(int i, int i2, Rect rect) {
        return (int) Math.max(m5642c(i, i2, rect.left, rect.top), Math.max(m5642c(i, i2, rect.right, rect.top), Math.max(m5642c(i, i2, rect.left, rect.bottom), m5642c(i, i2, rect.right, rect.bottom))));
    }

    /* renamed from: g */
    public void m5638g(boolean z) {
        ValueAnimator[] valueAnimatorArr;
        if (this.f66389a) {
            return;
        }
        this.f66390b = false;
        this.f66389a = true;
        for (ValueAnimator valueAnimator : this.f66432y0) {
            valueAnimator.cancel();
            valueAnimator.removeAllUpdateListeners();
        }
        getViewTreeObserver().removeOnGlobalLayoutListener(this.f66434z0);
        this.f66377L = false;
        C23978l c23978l = this.f66418r0;
        if (c23978l == null) {
            return;
        }
        c23978l.mo5635a(this, z);
    }

    public int[] getOuterCircleCenterPoint() {
        int i;
        int centerY = this.f66417r.centerY();
        int i2 = this.f66414p0;
        if (i2 <= 0 ? centerY < this.f66405l || centerY > getHeight() - this.f66405l : centerY < (i = this.f66405l) || centerY > i2 - i) {
            return new int[]{this.f66417r.centerX(), this.f66417r.centerY()};
        }
        int max = (Math.max(this.f66417r.width(), this.f66417r.height()) / 2) + this.f66392d;
        int totalTextHeight = getTotalTextHeight();
        boolean z = ((this.f66417r.centerY() - this.f66393e) - this.f66392d) - totalTextHeight > 0;
        int min = Math.min(this.f66383R.left, this.f66417r.left - max);
        int max2 = Math.max(this.f66383R.right, this.f66417r.right + max);
        StaticLayout staticLayout = this.f66433z;
        int height = staticLayout == null ? 0 : staticLayout.getHeight();
        return new int[]{(min + max2) / 2, z ? (((this.f66417r.centerY() - this.f66393e) - this.f66392d) - totalTextHeight) + height : this.f66417r.centerY() + this.f66393e + this.f66392d + height};
    }

    public Rect getTextBounds() {
        int totalTextHeight = getTotalTextHeight();
        int totalTextWidth = getTotalTextWidth();
        int centerY = ((this.f66417r.centerY() - this.f66393e) - this.f66392d) - totalTextHeight;
        if (centerY <= this.f66412o0) {
            centerY = this.f66417r.centerY() + this.f66393e + this.f66392d;
        }
        int max = Math.max(this.f66395g, (this.f66417r.centerX() - ((getWidth() / 2) - this.f66417r.centerX() < 0 ? -this.f66401j : this.f66401j)) - totalTextWidth);
        return new Rect(max, centerY, Math.min(getWidth() - this.f66395g, totalTextWidth + max), totalTextHeight + centerY);
    }

    public int getTotalTextHeight() {
        StaticLayout staticLayout = this.f66433z;
        if (staticLayout == null) {
            return 0;
        }
        if (this.f66371B == null) {
            return staticLayout.getHeight() + this.f66397h;
        }
        return this.f66371B.getHeight() + staticLayout.getHeight() + this.f66397h;
    }

    public int getTotalTextWidth() {
        StaticLayout staticLayout = this.f66433z;
        if (staticLayout == null) {
            return 0;
        }
        return this.f66371B == null ? staticLayout.getWidth() : Math.max(staticLayout.getWidth(), this.f66371B.getWidth());
    }

    @Override // android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m5638g(false);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        StaticLayout staticLayout;
        if (this.f66389a || this.f66387V == null) {
            return;
        }
        int i = this.f66412o0;
        if (i > 0 && this.f66414p0 > 0) {
            canvas.clipRect(0, i, getWidth(), this.f66414p0);
        }
        int i2 = this.f66406l0;
        if (i2 != -1) {
            canvas.drawColor(i2);
        }
        this.f66423u.setAlpha(this.f66388W);
        if (this.f66375J && this.f66420s0 == null) {
            int save = canvas.save();
            canvas.clipPath(this.f66384S, Region.Op.DIFFERENCE);
            float f = this.f66388W * 0.2f;
            this.f66425v.setStyle(Paint.Style.FILL_AND_STROKE);
            this.f66425v.setAlpha((int) f);
            int[] iArr = this.f66387V;
            canvas.drawCircle(iArr[0], iArr[1] + this.f66407m, this.f66385T, this.f66425v);
            this.f66425v.setStyle(Paint.Style.STROKE);
            for (int i3 = 6; i3 > 0; i3--) {
                this.f66425v.setAlpha((int) ((i3 / 7.0f) * f));
                int[] iArr2 = this.f66387V;
                canvas.drawCircle(iArr2[0], iArr2[1] + this.f66407m, this.f66385T + ((7 - i3) * this.f66409n), this.f66425v);
            }
            canvas.restoreToCount(save);
        }
        int[] iArr3 = this.f66387V;
        canvas.drawCircle(iArr3[0], iArr3[1], this.f66385T, this.f66423u);
        this.f66427w.setAlpha(this.f66402j0);
        int i4 = this.f66398h0;
        if (i4 > 0) {
            this.f66429x.setAlpha(i4);
            canvas.drawCircle(this.f66417r.centerX(), this.f66417r.centerY(), this.f66396g0, this.f66429x);
        }
        canvas.drawCircle(this.f66417r.centerX(), this.f66417r.centerY(), this.f66400i0, this.f66427w);
        int save2 = canvas.save();
        Rect rect = this.f66383R;
        canvas.translate(rect.left, rect.top);
        this.f66419s.setAlpha(this.f66404k0);
        StaticLayout staticLayout2 = this.f66433z;
        if (staticLayout2 != null) {
            staticLayout2.draw(canvas);
        }
        if (this.f66371B != null && (staticLayout = this.f66433z) != null) {
            canvas.translate(0.0f, staticLayout.getHeight() + this.f66397h);
            this.f66421t.setAlpha((int) (this.f66415q.f66368t * this.f66404k0));
            this.f66371B.draw(canvas);
        }
        canvas.restoreToCount(save2);
        int save3 = canvas.save();
        if (this.f66416q0 != null) {
            canvas.translate(this.f66417r.centerX() - (this.f66416q0.getWidth() / 2), this.f66417r.centerY() - (this.f66416q0.getHeight() / 2));
            canvas.drawBitmap(this.f66416q0, 0.0f, 0.0f, this.f66427w);
        } else if (this.f66415q.f66354f != null) {
            canvas.translate(this.f66417r.centerX() - (this.f66415q.f66354f.getBounds().width() / 2), this.f66417r.centerY() - (this.f66415q.f66354f.getBounds().height() / 2));
            this.f66415q.f66354f.setAlpha(this.f66427w.getAlpha());
            this.f66415q.f66354f.draw(canvas);
        }
        canvas.restoreToCount(save3);
        if (!this.f66373D) {
            return;
        }
        if (this.f66381P == null) {
            Paint paint = new Paint();
            this.f66381P = paint;
            paint.setARGB(255, 255, 0, 0);
            this.f66381P.setStyle(Paint.Style.STROKE);
            this.f66381P.setStrokeWidth(C26232y.m2432O(getContext(), 1));
        }
        if (this.f66380O == null) {
            TextPaint textPaint = new TextPaint();
            this.f66380O = textPaint;
            textPaint.setColor(-65536);
            this.f66380O.setTextSize((int) TypedValue.applyDimension(2, 16, getContext().getResources().getDisplayMetrics()));
        }
        this.f66381P.setStyle(Paint.Style.STROKE);
        canvas.drawRect(this.f66383R, this.f66381P);
        canvas.drawRect(this.f66417r, this.f66381P);
        int[] iArr4 = this.f66387V;
        canvas.drawCircle(iArr4[0], iArr4[1], 10.0f, this.f66381P);
        int[] iArr5 = this.f66387V;
        canvas.drawCircle(iArr5[0], iArr5[1], this.f66386U - this.f66403k, this.f66381P);
        canvas.drawCircle(this.f66417r.centerX(), this.f66417r.centerY(), this.f66393e + this.f66392d, this.f66381P);
        this.f66381P.setStyle(Paint.Style.FILL);
        String str = "Text bounds: " + this.f66383R.toShortString() + "\nTarget bounds: " + this.f66417r.toShortString() + "\nCenter: " + this.f66387V[0] + StringConstant.SPACE + this.f66387V[1] + "\nView size: " + getWidth() + StringConstant.SPACE + getHeight() + "\nTarget bounds: " + this.f66417r.toShortString();
        SpannableStringBuilder spannableStringBuilder = this.f66378M;
        if (spannableStringBuilder == null) {
            this.f66378M = new SpannableStringBuilder(str);
        } else {
            spannableStringBuilder.clear();
            this.f66378M.append((CharSequence) str);
        }
        if (this.f66379N == null) {
            this.f66379N = new DynamicLayout(str, this.f66380O, getWidth(), Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
        }
        int save4 = canvas.save();
        this.f66381P.setARGB(220, 0, 0, 0);
        canvas.translate(0.0f, this.f66412o0);
        canvas.drawRect(0.0f, 0.0f, this.f66379N.getWidth(), this.f66379N.getHeight(), this.f66381P);
        this.f66381P.setARGB(255, 255, 0, 0);
        this.f66379N.draw(canvas);
        canvas.restoreToCount(save4);
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (!m5640e() || !this.f66376K || i != 4) {
            return false;
        }
        keyEvent.startTracking();
        return true;
    }

    @Override // android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyUp(int i, KeyEvent keyEvent) {
        if (!m5640e() || !this.f66391c || !this.f66376K || i != 4 || !keyEvent.isTracking() || keyEvent.isCanceled()) {
            return false;
        }
        this.f66391c = false;
        C23978l c23978l = this.f66418r0;
        if (c23978l == null) {
            m5643b(false);
            return true;
        }
        Objects.requireNonNull(c23978l);
        m5643b(false);
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.f66408m0 = motionEvent.getX();
        this.f66410n0 = motionEvent.getY();
        return super.onTouchEvent(motionEvent);
    }

    public void setDrawDebug(boolean z) {
        if (this.f66373D != z) {
            this.f66373D = z;
            postInvalidate();
        }
    }
}
