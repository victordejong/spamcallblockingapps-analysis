package p029c4;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Looper;
import android.util.Log;
import java.util.BitSet;
import java.util.Objects;
import p019b4.C0728a;
import p029c4.C0830j;
import p029c4.C0834l;
import p087f0.C2694a;
import p098g0.AbstractC2790b;
import p124i4.C3102d;
import p230s3.C4285a;
/* renamed from: c4.f */
/* loaded from: classes-dex2jar.jar:c4/f.class */
public class C0822f extends Drawable implements AbstractC2790b, AbstractC0841m {

    /* renamed from: x */
    public static final String f3008x = C0822f.class.getSimpleName();

    /* renamed from: y */
    public static final Paint f3009y;

    /* renamed from: a */
    public C0824b f3010a;

    /* renamed from: b */
    public final C0834l.AbstractC0840f[] f3011b;

    /* renamed from: c */
    public final C0834l.AbstractC0840f[] f3012c;

    /* renamed from: d */
    public final BitSet f3013d;

    /* renamed from: e */
    public boolean f3014e;

    /* renamed from: f */
    public final Matrix f3015f;

    /* renamed from: g */
    public final Path f3016g;

    /* renamed from: h */
    public final Path f3017h;

    /* renamed from: i */
    public final RectF f3018i;

    /* renamed from: j */
    public final RectF f3019j;

    /* renamed from: k */
    public final Region f3020k;

    /* renamed from: l */
    public final Region f3021l;

    /* renamed from: m */
    public C0827i f3022m;

    /* renamed from: n */
    public final Paint f3023n;

    /* renamed from: o */
    public final Paint f3024o;

    /* renamed from: p */
    public final C0728a f3025p;

    /* renamed from: q */
    public final C0830j.AbstractC0832b f3026q;

    /* renamed from: r */
    public final C0830j f3027r;

    /* renamed from: s */
    public PorterDuffColorFilter f3028s;

    /* renamed from: t */
    public PorterDuffColorFilter f3029t;

    /* renamed from: u */
    public int f3030u;

    /* renamed from: v */
    public final RectF f3031v;

    /* renamed from: w */
    public boolean f3032w;

    /* renamed from: c4.f$a */
    /* loaded from: classes-dex2jar.jar:c4/f$a.class */
    public class C0823a implements C0830j.AbstractC0832b {
        public C0823a() {
            C0822f.this = r4;
        }
    }

    /* renamed from: c4.f$b */
    /* loaded from: classes-dex2jar.jar:c4/f$b.class */
    public static final class C0824b extends Drawable.ConstantState {

        /* renamed from: a */
        public C0827i f3034a;

        /* renamed from: b */
        public C4285a f3035b;

        /* renamed from: c */
        public ColorFilter f3036c;

        /* renamed from: d */
        public ColorStateList f3037d;

        /* renamed from: e */
        public ColorStateList f3038e;

        /* renamed from: f */
        public ColorStateList f3039f;

        /* renamed from: g */
        public ColorStateList f3040g;

        /* renamed from: h */
        public PorterDuff.Mode f3041h;

        /* renamed from: i */
        public Rect f3042i;

        /* renamed from: j */
        public float f3043j;

        /* renamed from: k */
        public float f3044k;

        /* renamed from: l */
        public float f3045l;

        /* renamed from: m */
        public int f3046m;

        /* renamed from: n */
        public float f3047n;

        /* renamed from: o */
        public float f3048o;

        /* renamed from: p */
        public float f3049p;

        /* renamed from: q */
        public int f3050q;

        /* renamed from: r */
        public int f3051r;

        /* renamed from: s */
        public int f3052s;

        /* renamed from: t */
        public int f3053t;

        /* renamed from: u */
        public boolean f3054u;

        /* renamed from: v */
        public Paint.Style f3055v;

        public C0824b(C0824b c0824b) {
            this.f3037d = null;
            this.f3038e = null;
            this.f3039f = null;
            this.f3040g = null;
            this.f3041h = PorterDuff.Mode.SRC_IN;
            this.f3042i = null;
            this.f3043j = 1.0f;
            this.f3044k = 1.0f;
            this.f3046m = 255;
            this.f3047n = 0.0f;
            this.f3048o = 0.0f;
            this.f3049p = 0.0f;
            this.f3050q = 0;
            this.f3051r = 0;
            this.f3052s = 0;
            this.f3053t = 0;
            this.f3054u = false;
            this.f3055v = Paint.Style.FILL_AND_STROKE;
            this.f3034a = c0824b.f3034a;
            this.f3035b = c0824b.f3035b;
            this.f3045l = c0824b.f3045l;
            this.f3036c = c0824b.f3036c;
            this.f3037d = c0824b.f3037d;
            this.f3038e = c0824b.f3038e;
            this.f3041h = c0824b.f3041h;
            this.f3040g = c0824b.f3040g;
            this.f3046m = c0824b.f3046m;
            this.f3043j = c0824b.f3043j;
            this.f3052s = c0824b.f3052s;
            this.f3050q = c0824b.f3050q;
            this.f3054u = c0824b.f3054u;
            this.f3044k = c0824b.f3044k;
            this.f3047n = c0824b.f3047n;
            this.f3048o = c0824b.f3048o;
            this.f3049p = c0824b.f3049p;
            this.f3051r = c0824b.f3051r;
            this.f3053t = c0824b.f3053t;
            this.f3039f = c0824b.f3039f;
            this.f3055v = c0824b.f3055v;
            if (c0824b.f3042i != null) {
                this.f3042i = new Rect(c0824b.f3042i);
            }
        }

        public C0824b(C0827i c0827i, C4285a c4285a) {
            this.f3037d = null;
            this.f3038e = null;
            this.f3039f = null;
            this.f3040g = null;
            this.f3041h = PorterDuff.Mode.SRC_IN;
            this.f3042i = null;
            this.f3043j = 1.0f;
            this.f3044k = 1.0f;
            this.f3046m = 255;
            this.f3047n = 0.0f;
            this.f3048o = 0.0f;
            this.f3049p = 0.0f;
            this.f3050q = 0;
            this.f3051r = 0;
            this.f3052s = 0;
            this.f3053t = 0;
            this.f3054u = false;
            this.f3055v = Paint.Style.FILL_AND_STROKE;
            this.f3034a = c0827i;
            this.f3035b = null;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            C0822f c0822f = new C0822f(this);
            c0822f.f3014e = true;
            return c0822f;
        }
    }

    static {
        Paint paint = new Paint(1);
        f3009y = paint;
        paint.setColor(-1);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    }

    public C0822f() {
        this(new C0827i());
    }

    public C0822f(C0824b c0824b) {
        this.f3011b = new C0834l.AbstractC0840f[4];
        this.f3012c = new C0834l.AbstractC0840f[4];
        this.f3013d = new BitSet(8);
        this.f3015f = new Matrix();
        this.f3016g = new Path();
        this.f3017h = new Path();
        this.f3018i = new RectF();
        this.f3019j = new RectF();
        this.f3020k = new Region();
        this.f3021l = new Region();
        Paint paint = new Paint(1);
        this.f3023n = paint;
        Paint paint2 = new Paint(1);
        this.f3024o = paint2;
        this.f3025p = new C0728a();
        this.f3027r = Looper.getMainLooper().getThread() == Thread.currentThread() ? C0830j.C0831a.f3094a : new C0830j();
        this.f3031v = new RectF();
        this.f3032w = true;
        this.f3010a = c0824b;
        paint2.setStyle(Paint.Style.STROKE);
        paint.setStyle(Paint.Style.FILL);
        m7308w();
        m7309v(getState());
        this.f3026q = new C0823a();
    }

    public C0822f(C0827i c0827i) {
        this(new C0824b(c0827i, null));
    }

    /* renamed from: b */
    public final void m7328b(RectF rectF, Path path) {
        m7327c(rectF, path);
        if (this.f3010a.f3043j != 1.0f) {
            this.f3015f.reset();
            Matrix matrix = this.f3015f;
            float f = this.f3010a.f3043j;
            matrix.setScale(f, f, rectF.width() / 2.0f, rectF.height() / 2.0f);
            path.transform(this.f3015f);
        }
        path.computeBounds(this.f3031v, true);
    }

    /* renamed from: c */
    public final void m7327c(RectF rectF, Path path) {
        C0830j c0830j = this.f3027r;
        C0824b c0824b = this.f3010a;
        c0830j.m7292b(c0824b.f3034a, c0824b.f3044k, rectF, this.f3026q, path);
    }

    /* renamed from: d */
    public final PorterDuffColorFilter m7326d(ColorStateList colorStateList, PorterDuff.Mode mode, Paint paint, boolean z) {
        PorterDuffColorFilter porterDuffColorFilter;
        if (colorStateList == null || mode == null) {
            if (z) {
                int color = paint.getColor();
                int m7325e = m7325e(color);
                this.f3030u = m7325e;
                if (m7325e != color) {
                    porterDuffColorFilter = new PorterDuffColorFilter(m7325e, PorterDuff.Mode.SRC_IN);
                }
            }
            porterDuffColorFilter = null;
        } else {
            int colorForState = colorStateList.getColorForState(getState(), 0);
            int i = colorForState;
            if (z) {
                i = m7325e(colorForState);
            }
            this.f3030u = i;
            porterDuffColorFilter = new PorterDuffColorFilter(i, mode);
        }
        return porterDuffColorFilter;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x01cd, code lost:
        if ((!r0.f3034a.m7301e(m7322i()) && !r7.f3016g.isConvex() && android.os.Build.VERSION.SDK_INT < 29) != false) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x02ef, code lost:
        if (r0 == android.graphics.Paint.Style.FILL) goto L49;
     */
    /* JADX WARN: Removed duplicated region for block: B:37:0x01e1  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x02e6  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x02fa  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0316  */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void draw(android.graphics.Canvas r8) {
        /*
            Method dump skipped, instructions count: 824
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p029c4.C0822f.draw(android.graphics.Canvas):void");
    }

    /* renamed from: e */
    public int m7325e(int i) {
        C0824b c0824b = this.f3010a;
        float f = c0824b.f3048o + c0824b.f3049p + c0824b.f3047n;
        C4285a c4285a = c0824b.f3035b;
        int i2 = i;
        if (c4285a != null) {
            i2 = i;
            if (c4285a.f13449a) {
                i2 = i;
                if (C2694a.m3254e(i, 255) == c4285a.f13452d) {
                    float f2 = c4285a.f13453e;
                    float min = (f2 <= 0.0f || f <= 0.0f) ? 0.0f : Math.min(((((float) Math.log1p(f / f2)) * 4.5f) + 2.0f) / 100.0f, 1.0f);
                    int alpha = Color.alpha(i);
                    int m2650B = C3102d.m2650B(C2694a.m3254e(i, 255), c4285a.f13450b, min);
                    int i3 = m2650B;
                    if (min > 0.0f) {
                        int i4 = c4285a.f13451c;
                        i3 = m2650B;
                        if (i4 != 0) {
                            i3 = C2694a.m3257b(C2694a.m3254e(i4, C4285a.f13448f), m2650B);
                        }
                    }
                    i2 = C2694a.m3254e(i3, alpha);
                }
            }
        }
        return i2;
    }

    /* renamed from: f */
    public final void m7324f(Canvas canvas) {
        if (this.f3013d.cardinality() > 0) {
            Log.w(f3008x, "Compatibility shadow requested but can't be drawn for all operations in this shape.");
        }
        if (this.f3010a.f3052s != 0) {
            canvas.drawPath(this.f3016g, this.f3025p.f2780a);
        }
        for (int i = 0; i < 4; i++) {
            C0834l.AbstractC0840f abstractC0840f = this.f3011b[i];
            C0728a c0728a = this.f3025p;
            int i2 = this.f3010a.f3051r;
            Matrix matrix = C0834l.AbstractC0840f.f3119a;
            abstractC0840f.mo7283a(matrix, c0728a, i2, canvas);
            this.f3012c[i].mo7283a(matrix, this.f3025p, this.f3010a.f3051r, canvas);
        }
        if (this.f3032w) {
            int m7321j = m7321j();
            int m7320k = m7320k();
            canvas.translate(-m7321j, -m7320k);
            canvas.drawPath(this.f3016g, f3009y);
            canvas.translate(m7321j, m7320k);
        }
    }

    /* renamed from: g */
    public final void m7323g(Canvas canvas, Paint paint, Path path, C0827i c0827i, RectF rectF) {
        if (!c0827i.m7301e(rectF)) {
            canvas.drawPath(path, paint);
            return;
        }
        float mo7306a = c0827i.f3063f.mo7306a(rectF) * this.f3010a.f3044k;
        canvas.drawRoundRect(rectF, mo7306a, mo7306a, paint);
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f3010a;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(Outline outline) {
        C0824b c0824b = this.f3010a;
        if (c0824b.f3050q == 2) {
            return;
        }
        if (c0824b.f3034a.m7301e(m7322i())) {
            outline.setRoundRect(getBounds(), m7318m() * this.f3010a.f3044k);
            return;
        }
        m7328b(m7322i(), this.f3016g);
        if (!this.f3016g.isConvex() && Build.VERSION.SDK_INT < 29) {
            return;
        }
        try {
            outline.setConvexPath(this.f3016g);
        } catch (IllegalArgumentException e) {
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        Rect rect2 = this.f3010a.f3042i;
        if (rect2 != null) {
            rect.set(rect2);
            return true;
        }
        return super.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        this.f3020k.set(getBounds());
        m7328b(m7322i(), this.f3016g);
        this.f3021l.setPath(this.f3016g, this.f3020k);
        this.f3020k.op(this.f3021l, Region.Op.DIFFERENCE);
        return this.f3020k;
    }

    /* renamed from: h */
    public void mo3186h(Canvas canvas) {
        Paint paint = this.f3024o;
        Path path = this.f3017h;
        C0827i c0827i = this.f3022m;
        this.f3019j.set(m7322i());
        float m7319l = m7319l();
        this.f3019j.inset(m7319l, m7319l);
        m7323g(canvas, paint, path, c0827i, this.f3019j);
    }

    /* renamed from: i */
    public RectF m7322i() {
        this.f3018i.set(getBounds());
        return this.f3018i;
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        this.f3014e = true;
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        ColorStateList colorStateList3;
        ColorStateList colorStateList4;
        return super.isStateful() || ((colorStateList = this.f3010a.f3040g) != null && colorStateList.isStateful()) || (((colorStateList2 = this.f3010a.f3039f) != null && colorStateList2.isStateful()) || (((colorStateList3 = this.f3010a.f3038e) != null && colorStateList3.isStateful()) || ((colorStateList4 = this.f3010a.f3037d) != null && colorStateList4.isStateful())));
    }

    /* renamed from: j */
    public int m7321j() {
        C0824b c0824b = this.f3010a;
        return (int) (Math.sin(Math.toRadians(c0824b.f3053t)) * c0824b.f3052s);
    }

    /* renamed from: k */
    public int m7320k() {
        C0824b c0824b = this.f3010a;
        return (int) (Math.cos(Math.toRadians(c0824b.f3053t)) * c0824b.f3052s);
    }

    /* renamed from: l */
    public final float m7319l() {
        if (m7317n()) {
            return this.f3024o.getStrokeWidth() / 2.0f;
        }
        return 0.0f;
    }

    /* renamed from: m */
    public float m7318m() {
        return this.f3010a.f3034a.f3062e.mo7306a(m7322i());
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        this.f3010a = new C0824b(this.f3010a);
        return this;
    }

    /* renamed from: n */
    public final boolean m7317n() {
        Paint.Style style = this.f3010a.f3055v;
        return (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.STROKE) && this.f3024o.getStrokeWidth() > 0.0f;
    }

    /* renamed from: o */
    public void m7316o(Context context) {
        this.f3010a.f3035b = new C4285a(context);
        m7307x();
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        this.f3014e = true;
        super.onBoundsChange(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        boolean z = m7309v(iArr) || m7308w();
        if (z) {
            invalidateSelf();
        }
        return z;
    }

    /* renamed from: p */
    public void m7315p(float f) {
        C0824b c0824b = this.f3010a;
        if (c0824b.f3048o != f) {
            c0824b.f3048o = f;
            m7307x();
        }
    }

    /* renamed from: q */
    public void m7314q(ColorStateList colorStateList) {
        C0824b c0824b = this.f3010a;
        if (c0824b.f3037d != colorStateList) {
            c0824b.f3037d = colorStateList;
            onStateChange(getState());
        }
    }

    /* renamed from: r */
    public void m7313r(float f) {
        C0824b c0824b = this.f3010a;
        if (c0824b.f3044k != f) {
            c0824b.f3044k = f;
            this.f3014e = true;
            invalidateSelf();
        }
    }

    /* renamed from: s */
    public void m7312s(float f, int i) {
        this.f3010a.f3045l = f;
        invalidateSelf();
        m7310u(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        C0824b c0824b = this.f3010a;
        if (c0824b.f3046m != i) {
            c0824b.f3046m = i;
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f3010a.f3036c = colorFilter;
        super.invalidateSelf();
    }

    @Override // p029c4.AbstractC0841m
    public void setShapeAppearanceModel(C0827i c0827i) {
        this.f3010a.f3034a = c0827i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(ColorStateList colorStateList) {
        this.f3010a.f3040g = colorStateList;
        m7308w();
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(PorterDuff.Mode mode) {
        C0824b c0824b = this.f3010a;
        if (c0824b.f3041h != mode) {
            c0824b.f3041h = mode;
            m7308w();
            super.invalidateSelf();
        }
    }

    /* renamed from: t */
    public void m7311t(float f, ColorStateList colorStateList) {
        this.f3010a.f3045l = f;
        invalidateSelf();
        m7310u(colorStateList);
    }

    /* renamed from: u */
    public void m7310u(ColorStateList colorStateList) {
        C0824b c0824b = this.f3010a;
        if (c0824b.f3038e != colorStateList) {
            c0824b.f3038e = colorStateList;
            onStateChange(getState());
        }
    }

    /* renamed from: v */
    public final boolean m7309v(int[] iArr) {
        boolean z;
        int color;
        int colorForState;
        int color2;
        int colorForState2;
        if (this.f3010a.f3037d == null || color2 == (colorForState2 = this.f3010a.f3037d.getColorForState(iArr, (color2 = this.f3023n.getColor())))) {
            z = false;
        } else {
            this.f3023n.setColor(colorForState2);
            z = true;
        }
        if (this.f3010a.f3038e != null && color != (colorForState = this.f3010a.f3038e.getColorForState(iArr, (color = this.f3024o.getColor())))) {
            this.f3024o.setColor(colorForState);
            z = true;
        }
        return z;
    }

    /* renamed from: w */
    public final boolean m7308w() {
        PorterDuffColorFilter porterDuffColorFilter = this.f3028s;
        PorterDuffColorFilter porterDuffColorFilter2 = this.f3029t;
        C0824b c0824b = this.f3010a;
        this.f3028s = m7326d(c0824b.f3040g, c0824b.f3041h, this.f3023n, true);
        C0824b c0824b2 = this.f3010a;
        this.f3029t = m7326d(c0824b2.f3039f, c0824b2.f3041h, this.f3024o, false);
        C0824b c0824b3 = this.f3010a;
        if (c0824b3.f3054u) {
            this.f3025p.m7429a(c0824b3.f3040g.getColorForState(getState(), 0));
        }
        boolean z = true;
        if (Objects.equals(porterDuffColorFilter, this.f3028s)) {
            z = !Objects.equals(porterDuffColorFilter2, this.f3029t);
        }
        return z;
    }

    /* renamed from: x */
    public final void m7307x() {
        C0824b c0824b = this.f3010a;
        float f = c0824b.f3048o + c0824b.f3049p;
        c0824b.f3051r = (int) Math.ceil(0.75f * f);
        this.f3010a.f3052s = (int) Math.ceil(f * 0.25f);
        m7308w();
        super.invalidateSelf();
    }
}
