package com.google.android.material.p159q;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.Canvas;
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
import android.util.AttributeSet;
import androidx.core.graphics.drawable.AbstractC0536b;
import androidx.core.p025g.C0521c;
import com.google.android.material.C4492a;
import com.google.android.material.p149g.C4680a;
import com.google.android.material.p152j.C4709a;
import com.google.android.material.p158p.C4728a;
import com.google.android.material.p159q.C4743k;
import com.google.android.material.p159q.C4747l;
import com.google.android.material.p159q.C4750m;
/* renamed from: com.google.android.material.q.g */
/* loaded from: classes-dex2jar.jar:com/google/android/material/q/g.class */
public class C4736g extends Drawable implements AbstractC0536b, AbstractC4758n {

    /* renamed from: a */
    private static final Paint f20464a = new Paint(1);

    /* renamed from: b */
    private C4739a f20465b;

    /* renamed from: c */
    private final C4750m.AbstractC4757f[] f20466c;

    /* renamed from: d */
    private final C4750m.AbstractC4757f[] f20467d;

    /* renamed from: e */
    private boolean f20468e;

    /* renamed from: f */
    private final Matrix f20469f;

    /* renamed from: g */
    private final Path f20470g;

    /* renamed from: h */
    private final Path f20471h;

    /* renamed from: i */
    private final RectF f20472i;

    /* renamed from: j */
    private final RectF f20473j;

    /* renamed from: k */
    private final Region f20474k;

    /* renamed from: l */
    private final Region f20475l;

    /* renamed from: m */
    private C4743k f20476m;

    /* renamed from: n */
    private final Paint f20477n;

    /* renamed from: o */
    private final Paint f20478o;

    /* renamed from: p */
    private final C4728a f20479p;

    /* renamed from: q */
    private final C4747l.AbstractC4748a f20480q;

    /* renamed from: r */
    private final C4747l f20481r;

    /* renamed from: s */
    private PorterDuffColorFilter f20482s;

    /* renamed from: t */
    private PorterDuffColorFilter f20483t;

    /* renamed from: u */
    private Rect f20484u;

    /* renamed from: v */
    private final RectF f20485v;

    /* renamed from: com.google.android.material.q.g$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/q/g$a.class */
    public static final class C4739a extends Drawable.ConstantState {

        /* renamed from: a */
        public C4743k f20489a;

        /* renamed from: b */
        public C4709a f20490b;

        /* renamed from: c */
        public ColorFilter f20491c;

        /* renamed from: d */
        public ColorStateList f20492d;

        /* renamed from: e */
        public ColorStateList f20493e;

        /* renamed from: f */
        public ColorStateList f20494f;

        /* renamed from: g */
        public ColorStateList f20495g;

        /* renamed from: h */
        public PorterDuff.Mode f20496h;

        /* renamed from: i */
        public Rect f20497i;

        /* renamed from: j */
        public float f20498j;

        /* renamed from: k */
        public float f20499k;

        /* renamed from: l */
        public float f20500l;

        /* renamed from: m */
        public int f20501m;

        /* renamed from: n */
        public float f20502n;

        /* renamed from: o */
        public float f20503o;

        /* renamed from: p */
        public float f20504p;

        /* renamed from: q */
        public int f20505q;

        /* renamed from: r */
        public int f20506r;

        /* renamed from: s */
        public int f20507s;

        /* renamed from: t */
        public int f20508t;

        /* renamed from: u */
        public boolean f20509u;

        /* renamed from: v */
        public Paint.Style f20510v;

        public C4739a(C4739a c4739a) {
            this.f20492d = null;
            this.f20493e = null;
            this.f20494f = null;
            this.f20495g = null;
            this.f20496h = PorterDuff.Mode.SRC_IN;
            this.f20497i = null;
            this.f20498j = 1.0f;
            this.f20499k = 1.0f;
            this.f20501m = 255;
            this.f20502n = 0.0f;
            this.f20503o = 0.0f;
            this.f20504p = 0.0f;
            this.f20505q = 0;
            this.f20506r = 0;
            this.f20507s = 0;
            this.f20508t = 0;
            this.f20509u = false;
            this.f20510v = Paint.Style.FILL_AND_STROKE;
            this.f20489a = c4739a.f20489a;
            this.f20490b = c4739a.f20490b;
            this.f20500l = c4739a.f20500l;
            this.f20491c = c4739a.f20491c;
            this.f20492d = c4739a.f20492d;
            this.f20493e = c4739a.f20493e;
            this.f20496h = c4739a.f20496h;
            this.f20495g = c4739a.f20495g;
            this.f20501m = c4739a.f20501m;
            this.f20498j = c4739a.f20498j;
            this.f20507s = c4739a.f20507s;
            this.f20505q = c4739a.f20505q;
            this.f20509u = c4739a.f20509u;
            this.f20499k = c4739a.f20499k;
            this.f20502n = c4739a.f20502n;
            this.f20503o = c4739a.f20503o;
            this.f20504p = c4739a.f20504p;
            this.f20506r = c4739a.f20506r;
            this.f20508t = c4739a.f20508t;
            this.f20494f = c4739a.f20494f;
            this.f20510v = c4739a.f20510v;
            if (c4739a.f20497i != null) {
                this.f20497i = new Rect(c4739a.f20497i);
            }
        }

        public C4739a(C4743k c4743k, C4709a c4709a) {
            this.f20492d = null;
            this.f20493e = null;
            this.f20494f = null;
            this.f20495g = null;
            this.f20496h = PorterDuff.Mode.SRC_IN;
            this.f20497i = null;
            this.f20498j = 1.0f;
            this.f20499k = 1.0f;
            this.f20501m = 255;
            this.f20502n = 0.0f;
            this.f20503o = 0.0f;
            this.f20504p = 0.0f;
            this.f20505q = 0;
            this.f20506r = 0;
            this.f20507s = 0;
            this.f20508t = 0;
            this.f20509u = false;
            this.f20510v = Paint.Style.FILL_AND_STROKE;
            this.f20489a = c4743k;
            this.f20490b = c4709a;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            C4736g c4736g = new C4736g(this);
            c4736g.f20468e = true;
            return c4736g;
        }
    }

    public C4736g() {
        this(new C4743k());
    }

    public C4736g(Context context, AttributeSet attributeSet, int i, int i2) {
        this(C4743k.m2673a(context, attributeSet, i, i2).m2654a());
    }

    private C4736g(C4739a c4739a) {
        this.f20466c = new C4750m.AbstractC4757f[4];
        this.f20467d = new C4750m.AbstractC4757f[4];
        this.f20469f = new Matrix();
        this.f20470g = new Path();
        this.f20471h = new Path();
        this.f20472i = new RectF();
        this.f20473j = new RectF();
        this.f20474k = new Region();
        this.f20475l = new Region();
        this.f20477n = new Paint(1);
        this.f20478o = new Paint(1);
        this.f20479p = new C4728a();
        this.f20481r = new C4747l();
        this.f20485v = new RectF();
        this.f20465b = c4739a;
        this.f20478o.setStyle(Paint.Style.STROKE);
        this.f20477n.setStyle(Paint.Style.FILL);
        f20464a.setColor(-1);
        f20464a.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        m2694h();
        m2711a(getState());
        this.f20480q = new C4747l.AbstractC4748a() { // from class: com.google.android.material.q.g.1
            @Override // com.google.android.material.p159q.C4747l.AbstractC4748a
            /* renamed from: a */
            public void mo2610a(C4750m c4750m, Matrix matrix, int i) {
                C4736g.this.f20466c[i] = c4750m.m2603a(matrix);
            }

            @Override // com.google.android.material.p159q.C4747l.AbstractC4748a
            /* renamed from: b */
            public void mo2609b(C4750m c4750m, Matrix matrix, int i) {
                C4736g.this.f20467d[i] = c4750m.m2603a(matrix);
            }
        };
    }

    public C4736g(C4743k c4743k) {
        this(new C4739a(c4743k, null));
    }

    /* renamed from: a */
    private int m2725a(int i) {
        float m2734U = m2734U();
        float m2737R = m2737R();
        int i2 = i;
        if (this.f20465b.f20490b != null) {
            i2 = this.f20465b.f20490b.m2805a(i, m2734U + m2737R);
        }
        return i2;
    }

    /* renamed from: a */
    private static int m2724a(int i, int i2) {
        return (((i2 >>> 7) + i2) * i) >>> 8;
    }

    /* renamed from: a */
    private PorterDuffColorFilter m2720a(ColorStateList colorStateList, PorterDuff.Mode mode, Paint paint, boolean z) {
        return (colorStateList == null || mode == null) ? m2715a(paint, z) : m2719a(colorStateList, mode, z);
    }

    /* renamed from: a */
    private PorterDuffColorFilter m2719a(ColorStateList colorStateList, PorterDuff.Mode mode, boolean z) {
        int colorForState = colorStateList.getColorForState(getState(), 0);
        int i = colorForState;
        if (z) {
            i = m2725a(colorForState);
        }
        return new PorterDuffColorFilter(i, mode);
    }

    /* renamed from: a */
    private PorterDuffColorFilter m2715a(Paint paint, boolean z) {
        int color;
        int m2725a;
        return (!z || (m2725a = m2725a((color = paint.getColor()))) == color) ? null : new PorterDuffColorFilter(m2725a, PorterDuff.Mode.SRC_IN);
    }

    /* renamed from: a */
    public static C4736g m2721a(Context context, float f) {
        int m2921a = C4680a.m2921a(context, C4492a.C4494b.colorSurface, C4736g.class.getSimpleName());
        C4736g c4736g = new C4736g();
        c4736g.m2722a(context);
        c4736g.m2697f(ColorStateList.valueOf(m2921a));
        c4736g.m2687r(f);
        return c4736g;
    }

    /* renamed from: a */
    private void m2728a() {
        float m2734U = m2734U();
        this.f20465b.f20506r = (int) Math.ceil(0.75f * m2734U);
        this.f20465b.f20507s = (int) Math.ceil(m2734U * 0.25f);
        m2694h();
        m2703c();
    }

    /* renamed from: a */
    private void m2718a(Canvas canvas) {
        m2716a(canvas, this.f20477n, this.f20470g, this.f20465b.f20489a, m2740O());
    }

    /* renamed from: a */
    private void m2716a(Canvas canvas, Paint paint, Path path, C4743k c4743k, RectF rectF) {
        if (!c4743k.m2669a(rectF)) {
            canvas.drawPath(path, paint);
            return;
        }
        float mo2680a = c4743k.m2662g().mo2680a(rectF);
        canvas.drawRoundRect(rectF, mo2680a, mo2680a, paint);
    }

    /* renamed from: a */
    private boolean m2711a(int[] iArr) {
        boolean z = false;
        if (this.f20465b.f20492d != null) {
            int color = this.f20477n.getColor();
            int colorForState = this.f20465b.f20492d.getColorForState(iArr, color);
            z = false;
            if (color != colorForState) {
                this.f20477n.setColor(colorForState);
                z = true;
            }
        }
        boolean z2 = z;
        if (this.f20465b.f20493e != null) {
            int color2 = this.f20478o.getColor();
            int colorForState2 = this.f20465b.f20493e.getColorForState(iArr, color2);
            z2 = z;
            if (color2 != colorForState2) {
                this.f20478o.setColor(colorForState2);
                z2 = true;
            }
        }
        return z2;
    }

    /* renamed from: b */
    private void m2706b(Canvas canvas) {
        m2716a(canvas, this.f20478o, this.f20471h, this.f20476m, m2692j());
    }

    /* renamed from: b */
    private void m2705b(RectF rectF, Path path) {
        m2714a(rectF, path);
        if (this.f20465b.f20498j != 1.0f) {
            this.f20469f.reset();
            this.f20469f.setScale(this.f20465b.f20498j, this.f20465b.f20498j, rectF.width() / 2.0f, rectF.height() / 2.0f);
            path.transform(this.f20469f);
        }
        path.computeBounds(this.f20485v, true);
    }

    /* renamed from: b */
    private boolean m2707b() {
        return Build.VERSION.SDK_INT < 21 || (!m2708ac() && !this.f20470g.isConvex());
    }

    /* renamed from: c */
    private void m2703c() {
        super.invalidateSelf();
    }

    /* renamed from: c */
    private void m2702c(Canvas canvas) {
        int m2732W = m2732W();
        int m2731X = m2731X();
        if (Build.VERSION.SDK_INT < 21) {
            Rect clipBounds = canvas.getClipBounds();
            clipBounds.inset(-this.f20465b.f20506r, -this.f20465b.f20506r);
            clipBounds.offset(m2732W, m2731X);
            canvas.clipRect(clipBounds, Region.Op.REPLACE);
        }
        canvas.translate(m2732W, m2731X);
    }

    /* renamed from: d */
    private void m2700d(Canvas canvas) {
        if (this.f20465b.f20507s != 0) {
            canvas.drawPath(this.f20470g, this.f20479p.m2755a());
        }
        for (int i = 0; i < 4; i++) {
            this.f20466c[i].m2561a(this.f20479p, this.f20465b.f20506r, canvas);
            this.f20467d[i].m2561a(this.f20479p, this.f20465b.f20506r, canvas);
        }
        int m2732W = m2732W();
        int m2731X = m2731X();
        canvas.translate(-m2732W, -m2731X);
        canvas.drawPath(this.f20470g, f20464a);
        canvas.translate(m2732W, m2731X);
    }

    /* renamed from: d */
    private boolean m2701d() {
        boolean z;
        if (this.f20465b.f20505q != 1 && this.f20465b.f20506r > 0) {
            z = true;
            if (this.f20465b.f20505q != 2) {
                if (m2707b()) {
                    z = true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    /* renamed from: e */
    private boolean m2699e() {
        return this.f20465b.f20510v == Paint.Style.FILL_AND_STROKE || this.f20465b.f20510v == Paint.Style.FILL;
    }

    /* renamed from: f */
    private boolean m2698f() {
        return (this.f20465b.f20510v == Paint.Style.FILL_AND_STROKE || this.f20465b.f20510v == Paint.Style.STROKE) && this.f20478o.getStrokeWidth() > 0.0f;
    }

    /* renamed from: g */
    private void m2696g() {
        final float f = -m2693i();
        this.f20476m = m2743L().m2668a(new C4743k.AbstractC4746b() { // from class: com.google.android.material.q.g.2
            @Override // com.google.android.material.p159q.C4743k.AbstractC4746b
            /* renamed from: a */
            public AbstractC4732c mo2623a(AbstractC4732c abstractC4732c) {
                if (!(abstractC4732c instanceof C4741i)) {
                    abstractC4732c = new C4731b(f, abstractC4732c);
                }
                return abstractC4732c;
            }
        });
        this.f20481r.m2618a(this.f20476m, this.f20465b.f20499k, m2692j(), this.f20471h);
    }

    /* renamed from: h */
    private boolean m2694h() {
        boolean z = false;
        PorterDuffColorFilter porterDuffColorFilter = this.f20482s;
        PorterDuffColorFilter porterDuffColorFilter2 = this.f20483t;
        this.f20482s = m2720a(this.f20465b.f20495g, this.f20465b.f20496h, this.f20477n, true);
        this.f20483t = m2720a(this.f20465b.f20494f, this.f20465b.f20496h, this.f20478o, false);
        if (this.f20465b.f20509u) {
            this.f20479p.m2754a(this.f20465b.f20495g.getColorForState(getState(), 0));
        }
        if (!C0521c.m20648a(porterDuffColorFilter, this.f20482s) || !C0521c.m20648a(porterDuffColorFilter2, this.f20483t)) {
            z = true;
        }
        return z;
    }

    /* renamed from: i */
    private float m2693i() {
        return m2698f() ? this.f20478o.getStrokeWidth() / 2.0f : 0.0f;
    }

    /* renamed from: j */
    private RectF m2692j() {
        RectF m2740O = m2740O();
        float m2693i = m2693i();
        this.f20473j.set(m2740O.left + m2693i, m2740O.top + m2693i, m2740O.right - m2693i, m2740O.bottom - m2693i);
        return this.f20473j;
    }

    /* renamed from: C */
    public void m2745C(int i) {
        if (this.f20465b.f20508t != i) {
            this.f20465b.f20508t = i;
            m2703c();
        }
    }

    /* renamed from: D */
    public void m2744D(int i) {
        this.f20479p.m2754a(i);
        this.f20465b.f20509u = false;
        m2703c();
    }

    /* renamed from: L */
    public C4743k m2743L() {
        return this.f20465b.f20489a;
    }

    /* renamed from: M */
    public ColorStateList m2742M() {
        return this.f20465b.f20492d;
    }

    /* renamed from: N */
    public ColorStateList m2741N() {
        return this.f20465b.f20495g;
    }

    /* renamed from: O */
    public RectF m2740O() {
        Rect bounds = getBounds();
        this.f20472i.set(bounds.left, bounds.top, bounds.right, bounds.bottom);
        return this.f20472i;
    }

    /* renamed from: P */
    public boolean m2739P() {
        return this.f20465b.f20490b != null && this.f20465b.f20490b.m2808a();
    }

    /* renamed from: Q */
    public float m2738Q() {
        return this.f20465b.f20499k;
    }

    /* renamed from: R */
    public float m2737R() {
        return this.f20465b.f20502n;
    }

    /* renamed from: S */
    public float m2736S() {
        return this.f20465b.f20503o;
    }

    /* renamed from: T */
    public float m2735T() {
        return this.f20465b.f20504p;
    }

    /* renamed from: U */
    public float m2734U() {
        return m2736S() + m2735T();
    }

    /* renamed from: V */
    public int m2733V() {
        return this.f20465b.f20506r;
    }

    /* renamed from: W */
    public int m2732W() {
        return (int) (this.f20465b.f20507s * Math.sin(Math.toRadians(this.f20465b.f20508t)));
    }

    /* renamed from: X */
    public int m2731X() {
        return (int) (this.f20465b.f20507s * Math.cos(Math.toRadians(this.f20465b.f20508t)));
    }

    /* renamed from: Y */
    public float m2730Y() {
        return this.f20465b.f20489a.m2663f().mo2680a(m2740O());
    }

    /* renamed from: Z */
    public float m2729Z() {
        return this.f20465b.f20489a.m2662g().mo2680a(m2740O());
    }

    /* renamed from: a */
    public void m2727a(float f, int i) {
        m2691n(f);
        m2695g(ColorStateList.valueOf(i));
    }

    /* renamed from: a */
    public void m2726a(float f, ColorStateList colorStateList) {
        m2691n(f);
        m2695g(colorStateList);
    }

    /* renamed from: a */
    public void m2723a(int i, int i2, int i3, int i4) {
        if (this.f20465b.f20497i == null) {
            this.f20465b.f20497i = new Rect();
        }
        this.f20465b.f20497i.set(i, i2, i3, i4);
        this.f20484u = this.f20465b.f20497i;
        invalidateSelf();
    }

    /* renamed from: a */
    public void m2722a(Context context) {
        this.f20465b.f20490b = new C4709a(context);
        m2728a();
    }

    /* renamed from: a */
    public void m2717a(Canvas canvas, Paint paint, Path path, RectF rectF) {
        m2716a(canvas, paint, path, this.f20465b.f20489a, rectF);
    }

    /* renamed from: a */
    public final void m2714a(RectF rectF, Path path) {
        this.f20481r.m2617a(this.f20465b.f20489a, this.f20465b.f20499k, rectF, this.f20480q, path);
    }

    /* renamed from: aa */
    public float m2710aa() {
        return this.f20465b.f20489a.m2660i().mo2680a(m2740O());
    }

    /* renamed from: ab */
    public float m2709ab() {
        return this.f20465b.f20489a.m2661h().mo2680a(m2740O());
    }

    /* renamed from: ac */
    public boolean m2708ac() {
        return this.f20465b.f20489a.m2669a(m2740O());
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f20477n.setColorFilter(this.f20482s);
        int alpha = this.f20477n.getAlpha();
        this.f20477n.setAlpha(m2724a(alpha, this.f20465b.f20501m));
        this.f20478o.setColorFilter(this.f20483t);
        this.f20478o.setStrokeWidth(this.f20465b.f20500l);
        int alpha2 = this.f20478o.getAlpha();
        this.f20478o.setAlpha(m2724a(alpha2, this.f20465b.f20501m));
        if (this.f20468e) {
            m2696g();
            m2705b(m2740O(), this.f20470g);
            this.f20468e = false;
        }
        if (m2701d()) {
            canvas.save();
            m2702c(canvas);
            int width = (int) (this.f20485v.width() - getBounds().width());
            int height = (int) (this.f20485v.height() - getBounds().height());
            Bitmap createBitmap = Bitmap.createBitmap(((int) this.f20485v.width()) + (this.f20465b.f20506r * 2) + width, ((int) this.f20485v.height()) + (this.f20465b.f20506r * 2) + height, Bitmap.Config.ARGB_8888);
            Canvas canvas2 = new Canvas(createBitmap);
            float f = (getBounds().left - this.f20465b.f20506r) - width;
            float f2 = (getBounds().top - this.f20465b.f20506r) - height;
            canvas2.translate(-f, -f2);
            m2700d(canvas2);
            canvas.drawBitmap(createBitmap, f, f2, (Paint) null);
            createBitmap.recycle();
            canvas.restore();
        }
        if (m2699e()) {
            m2718a(canvas);
        }
        if (m2698f()) {
            m2706b(canvas);
        }
        this.f20477n.setAlpha(alpha);
        this.f20478o.setAlpha(alpha2);
    }

    /* renamed from: f */
    public void m2697f(ColorStateList colorStateList) {
        if (this.f20465b.f20492d != colorStateList) {
            this.f20465b.f20492d = colorStateList;
            onStateChange(getState());
        }
    }

    /* renamed from: g */
    public void m2695g(ColorStateList colorStateList) {
        if (this.f20465b.f20493e != colorStateList) {
            this.f20465b.f20493e = colorStateList;
            onStateChange(getState());
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f20465b;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(Outline outline) {
        if (this.f20465b.f20505q == 2) {
            return;
        }
        if (m2708ac()) {
            outline.setRoundRect(getBounds(), m2730Y());
            return;
        }
        m2705b(m2740O(), this.f20470g);
        if (!this.f20470g.isConvex()) {
            return;
        }
        outline.setConvexPath(this.f20470g);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        boolean padding;
        if (this.f20484u != null) {
            rect.set(this.f20484u);
            padding = true;
        } else {
            padding = super.getPadding(rect);
        }
        return padding;
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        this.f20474k.set(getBounds());
        m2705b(m2740O(), this.f20470g);
        this.f20475l.setPath(this.f20470g, this.f20474k);
        this.f20474k.op(this.f20475l, Region.Op.DIFFERENCE);
        return this.f20474k;
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        this.f20468e = true;
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return super.isStateful() || (this.f20465b.f20495g != null && this.f20465b.f20495g.isStateful()) || ((this.f20465b.f20494f != null && this.f20465b.f20494f.isStateful()) || ((this.f20465b.f20493e != null && this.f20465b.f20493e.isStateful()) || (this.f20465b.f20492d != null && this.f20465b.f20492d.isStateful())));
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        this.f20465b = new C4739a(this.f20465b);
        return this;
    }

    /* renamed from: n */
    public void m2691n(float f) {
        this.f20465b.f20500l = f;
        invalidateSelf();
    }

    /* renamed from: o */
    public void m2690o(float f) {
        setShapeAppearanceModel(this.f20465b.f20489a.m2677a(f));
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        this.f20468e = true;
        super.onBoundsChange(rect);
    }

    @Override // android.graphics.drawable.Drawable, com.google.android.material.internal.C4697g.AbstractC4699a
    public boolean onStateChange(int[] iArr) {
        boolean z = m2711a(iArr) || m2694h();
        if (z) {
            invalidateSelf();
        }
        return z;
    }

    /* renamed from: p */
    public void m2689p(float f) {
        if (this.f20465b.f20499k != f) {
            this.f20465b.f20499k = f;
            this.f20468e = true;
            invalidateSelf();
        }
    }

    /* renamed from: q */
    public void m2688q(float f) {
        if (this.f20465b.f20502n != f) {
            this.f20465b.f20502n = f;
            m2728a();
        }
    }

    /* renamed from: r */
    public void m2687r(float f) {
        if (this.f20465b.f20503o != f) {
            this.f20465b.f20503o = f;
            m2728a();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.f20465b.f20501m != i) {
            this.f20465b.f20501m = i;
            m2703c();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f20465b.f20491c = colorFilter;
        m2703c();
    }

    @Override // com.google.android.material.p159q.AbstractC4758n
    public void setShapeAppearanceModel(C4743k c4743k) {
        this.f20465b.f20489a = c4743k;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0536b
    public void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0536b
    public void setTintList(ColorStateList colorStateList) {
        this.f20465b.f20495g = colorStateList;
        m2694h();
        m2703c();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0536b
    public void setTintMode(PorterDuff.Mode mode) {
        if (this.f20465b.f20496h != mode) {
            this.f20465b.f20496h = mode;
            m2694h();
            m2703c();
        }
    }
}
