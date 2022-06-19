package com.google.android.material.p374k;

import android.content.Context;
import android.content.res.ColorStateList;
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
import android.os.Looper;
import android.util.AttributeSet;
import android.util.Log;
import androidx.core.graphics.drawable.AbstractC0841b;
import androidx.core.p036e.C0827a;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.material.C14376a;
import com.google.android.material.p368e.C14552a;
import com.google.android.material.p371h.C14597b;
import com.google.android.material.p373j.C14661a;
import com.google.android.material.p374k.C14682n;
import com.google.android.material.p374k.C14686o;
import java.util.BitSet;
/* renamed from: com.google.android.material.k.h */
/* loaded from: classes4-dex2jar.jar:com/google/android/material/k/h.class */
public class C14670h extends Drawable implements AbstractC0841b, AbstractC14695q {

    /* renamed from: a */
    private static final String f53473a = "h";

    /* renamed from: b */
    private static final Paint f53474b = new Paint(1);

    /* renamed from: c */
    private final C14686o.AbstractC14693f[] f53475c;

    /* renamed from: d */
    private final C14686o.AbstractC14693f[] f53476d;

    /* renamed from: e */
    private final BitSet f53477e;

    /* renamed from: f */
    private boolean f53478f;

    /* renamed from: g */
    private final Matrix f53479g;

    /* renamed from: h */
    private final Path f53480h;

    /* renamed from: i */
    private final Path f53481i;

    /* renamed from: j */
    private final RectF f53482j;

    /* renamed from: k */
    private final RectF f53483k;

    /* renamed from: l */
    private final Region f53484l;

    /* renamed from: m */
    private final Region f53485m;

    /* renamed from: n */
    private C14678m f53486n;

    /* renamed from: o */
    private final Paint f53487o;

    /* renamed from: p */
    private final Paint f53488p;

    /* renamed from: q */
    private final C14661a f53489q;

    /* renamed from: r */
    private final C14682n.AbstractC14684b f53490r;

    /* renamed from: s */
    private final C14682n f53491s;

    /* renamed from: t */
    public C14673a f53492t;

    /* renamed from: u */
    public boolean f53493u;

    /* renamed from: v */
    private PorterDuffColorFilter f53494v;

    /* renamed from: w */
    private PorterDuffColorFilter f53495w;

    /* renamed from: x */
    private final RectF f53496x;

    /* renamed from: com.google.android.material.k.h$a */
    /* loaded from: classes4-dex2jar.jar:com/google/android/material/k/h$a.class */
    public static final class C14673a extends Drawable.ConstantState {

        /* renamed from: a */
        public C14678m f53500a;

        /* renamed from: b */
        public C14552a f53501b;

        /* renamed from: c */
        public ColorFilter f53502c;

        /* renamed from: d */
        public ColorStateList f53503d;

        /* renamed from: e */
        public ColorStateList f53504e;

        /* renamed from: f */
        public ColorStateList f53505f;

        /* renamed from: g */
        public ColorStateList f53506g;

        /* renamed from: h */
        public PorterDuff.Mode f53507h;

        /* renamed from: i */
        public Rect f53508i;

        /* renamed from: j */
        public float f53509j;

        /* renamed from: k */
        public float f53510k;

        /* renamed from: l */
        public float f53511l;

        /* renamed from: m */
        public int f53512m;

        /* renamed from: n */
        public float f53513n;

        /* renamed from: o */
        public float f53514o;

        /* renamed from: p */
        public float f53515p;

        /* renamed from: q */
        public int f53516q;

        /* renamed from: r */
        public int f53517r;

        /* renamed from: s */
        public int f53518s;

        /* renamed from: t */
        public int f53519t;

        /* renamed from: u */
        public boolean f53520u;

        /* renamed from: v */
        public Paint.Style f53521v;

        public C14673a(C14673a c14673a) {
            this.f53503d = null;
            this.f53504e = null;
            this.f53505f = null;
            this.f53506g = null;
            this.f53507h = PorterDuff.Mode.SRC_IN;
            this.f53508i = null;
            this.f53509j = 1.0f;
            this.f53510k = 1.0f;
            this.f53512m = 255;
            this.f53513n = BitmapDescriptorFactory.HUE_RED;
            this.f53514o = BitmapDescriptorFactory.HUE_RED;
            this.f53515p = BitmapDescriptorFactory.HUE_RED;
            this.f53516q = 0;
            this.f53517r = 0;
            this.f53518s = 0;
            this.f53519t = 0;
            this.f53520u = false;
            this.f53521v = Paint.Style.FILL_AND_STROKE;
            this.f53500a = c14673a.f53500a;
            this.f53501b = c14673a.f53501b;
            this.f53511l = c14673a.f53511l;
            this.f53502c = c14673a.f53502c;
            this.f53503d = c14673a.f53503d;
            this.f53504e = c14673a.f53504e;
            this.f53507h = c14673a.f53507h;
            this.f53506g = c14673a.f53506g;
            this.f53512m = c14673a.f53512m;
            this.f53509j = c14673a.f53509j;
            this.f53518s = c14673a.f53518s;
            this.f53516q = c14673a.f53516q;
            this.f53520u = c14673a.f53520u;
            this.f53510k = c14673a.f53510k;
            this.f53513n = c14673a.f53513n;
            this.f53514o = c14673a.f53514o;
            this.f53515p = c14673a.f53515p;
            this.f53517r = c14673a.f53517r;
            this.f53519t = c14673a.f53519t;
            this.f53505f = c14673a.f53505f;
            this.f53521v = c14673a.f53521v;
            if (c14673a.f53508i != null) {
                this.f53508i = new Rect(c14673a.f53508i);
            }
        }

        public C14673a(C14678m c14678m, C14552a c14552a) {
            this.f53503d = null;
            this.f53504e = null;
            this.f53505f = null;
            this.f53506g = null;
            this.f53507h = PorterDuff.Mode.SRC_IN;
            this.f53508i = null;
            this.f53509j = 1.0f;
            this.f53510k = 1.0f;
            this.f53512m = 255;
            this.f53513n = BitmapDescriptorFactory.HUE_RED;
            this.f53514o = BitmapDescriptorFactory.HUE_RED;
            this.f53515p = BitmapDescriptorFactory.HUE_RED;
            this.f53516q = 0;
            this.f53517r = 0;
            this.f53518s = 0;
            this.f53519t = 0;
            this.f53520u = false;
            this.f53521v = Paint.Style.FILL_AND_STROKE;
            this.f53500a = c14678m;
            this.f53501b = c14552a;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public final Drawable newDrawable() {
            C14670h c14670h = new C14670h(this);
            c14670h.f53478f = true;
            return c14670h;
        }
    }

    public C14670h() {
        this(new C14678m());
    }

    public C14670h(Context context, AttributeSet attributeSet, int i, int i2) {
        this(C14678m.m10426a(context, attributeSet, i, i2).m10421a());
    }

    private C14670h(C14673a c14673a) {
        this.f53475c = new C14686o.AbstractC14693f[4];
        this.f53476d = new C14686o.AbstractC14693f[4];
        this.f53477e = new BitSet(8);
        this.f53479g = new Matrix();
        this.f53480h = new Path();
        this.f53481i = new Path();
        this.f53482j = new RectF();
        this.f53483k = new RectF();
        this.f53484l = new Region();
        this.f53485m = new Region();
        Paint paint = new Paint(1);
        this.f53487o = paint;
        Paint paint2 = new Paint(1);
        this.f53488p = paint2;
        this.f53489q = new C14661a();
        this.f53491s = Looper.getMainLooper().getThread() == Thread.currentThread() ? C14682n.C14683a.f53563a : new C14682n();
        this.f53496x = new RectF();
        this.f53493u = true;
        this.f53492t = c14673a;
        paint2.setStyle(Paint.Style.STROKE);
        paint.setStyle(Paint.Style.FILL);
        Paint paint3 = f53474b;
        paint3.setColor(-1);
        paint3.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        m10444p();
        m10469a(getState());
        this.f53490r = new C14682n.AbstractC14684b() { // from class: com.google.android.material.k.h.1
            @Override // com.google.android.material.p374k.C14682n.AbstractC14684b
            /* renamed from: a */
            public final void mo10397a(C14686o c14686o, Matrix matrix, int i) {
                C14670h.this.f53477e.set(i, c14686o.f53575g);
                C14670h.this.f53475c[i] = c14686o.m10391a(matrix);
            }

            @Override // com.google.android.material.p374k.C14682n.AbstractC14684b
            /* renamed from: b */
            public final void mo10396b(C14686o c14686o, Matrix matrix, int i) {
                C14670h.this.f53477e.set(i + 4, c14686o.f53575g);
                C14670h.this.f53476d[i] = c14686o.m10391a(matrix);
            }
        };
    }

    public C14670h(C14678m c14678m) {
        this(new C14673a(c14678m, null));
    }

    @Deprecated
    public C14670h(C14694p c14694p) {
        this((C14678m) c14694p);
    }

    /* renamed from: a */
    private float m10483a() {
        return this.f53492t.f53514o + this.f53492t.f53515p;
    }

    /* renamed from: a */
    private PorterDuffColorFilter m10477a(ColorStateList colorStateList, PorterDuff.Mode mode, Paint paint, boolean z) {
        return (colorStateList == null || mode == null) ? m10472a(paint, z) : m10476a(colorStateList, mode, z);
    }

    /* renamed from: a */
    private PorterDuffColorFilter m10476a(ColorStateList colorStateList, PorterDuff.Mode mode, boolean z) {
        int colorForState = colorStateList.getColorForState(getState(), 0);
        int i = colorForState;
        if (z) {
            i = m10467b(colorForState);
        }
        return new PorterDuffColorFilter(i, mode);
    }

    /* renamed from: a */
    private PorterDuffColorFilter m10472a(Paint paint, boolean z) {
        int color;
        int m10467b;
        if (!z || (m10467b = m10467b((color = paint.getColor()))) == color) {
            return null;
        }
        return new PorterDuffColorFilter(m10467b, PorterDuff.Mode.SRC_IN);
    }

    /* renamed from: a */
    public static C14670h m10478a(Context context, float f) {
        int m10657a = C14597b.m10657a(context, C14376a.C14378b.colorSurface, C14670h.class.getSimpleName());
        C14670h c14670h = new C14670h();
        c14670h.m10479a(context);
        c14670h.m10456g(ColorStateList.valueOf(m10657a));
        c14670h.m10439r(f);
        return c14670h;
    }

    /* renamed from: a */
    private void m10475a(Canvas canvas) {
        if (this.f53477e.cardinality() > 0) {
            Log.w(f53473a, "Compatibility shadow requested but can't be drawn for all operations in this shape.");
        }
        if (this.f53492t.f53518s != 0) {
            canvas.drawPath(this.f53480h, this.f53489q.f53460a);
        }
        for (int i = 0; i < 4; i++) {
            this.f53475c[i].m10376a(this.f53489q, this.f53492t.f53517r, canvas);
            this.f53476d[i].m10376a(this.f53489q, this.f53492t.f53517r, canvas);
        }
        if (this.f53493u) {
            int m10461d = m10461d();
            int m10452j = m10452j();
            canvas.translate(-m10461d, -m10452j);
            canvas.drawPath(this.f53480h, f53474b);
            canvas.translate(m10461d, m10452j);
        }
    }

    /* renamed from: a */
    private void m10473a(Canvas canvas, Paint paint, Path path, C14678m c14678m, RectF rectF) {
        if (!c14678m.m10423a(rectF)) {
            canvas.drawPath(path, paint);
            return;
        }
        float mo10432a = c14678m.f53532g.mo10432a(rectF) * this.f53492t.f53510k;
        canvas.drawRoundRect(rectF, mo10432a, mo10432a, paint);
    }

    /* renamed from: a */
    private boolean m10469a(int[] iArr) {
        boolean z;
        int color;
        int colorForState;
        int color2;
        int colorForState2;
        if (this.f53492t.f53503d == null || color2 == (colorForState2 = this.f53492t.f53503d.getColorForState(iArr, (color2 = this.f53487o.getColor())))) {
            z = false;
        } else {
            this.f53487o.setColor(colorForState2);
            z = true;
        }
        if (this.f53492t.f53504e != null && color != (colorForState = this.f53492t.f53504e.getColorForState(iArr, (color = this.f53488p.getColor())))) {
            this.f53488p.setColor(colorForState);
            z = true;
        }
        return z;
    }

    /* renamed from: b */
    private static int m10466b(int i, int i2) {
        return (i * (i2 + (i2 >>> 7))) >>> 8;
    }

    /* renamed from: b */
    private void m10468b() {
        float m10483a = m10483a();
        this.f53492t.f53517r = (int) Math.ceil(0.75f * m10483a);
        this.f53492t.f53518s = (int) Math.ceil(m10483a * 0.25f);
        m10444p();
        super.invalidateSelf();
    }

    /* renamed from: b */
    private void m10465b(RectF rectF, Path path) {
        m10471a(rectF, path);
        if (this.f53492t.f53509j != 1.0f) {
            this.f53479g.reset();
            this.f53479g.setScale(this.f53492t.f53509j, this.f53492t.f53509j, rectF.width() / 2.0f, rectF.height() / 2.0f);
            path.transform(this.f53479g);
        }
        path.computeBounds(this.f53496x, true);
    }

    /* renamed from: c */
    private boolean m10463c() {
        return (this.f53492t.f53521v == Paint.Style.FILL_AND_STROKE || this.f53492t.f53521v == Paint.Style.STROKE) && this.f53488p.getStrokeWidth() > BitmapDescriptorFactory.HUE_RED;
    }

    /* renamed from: d */
    private int m10461d() {
        return (int) (this.f53492t.f53518s * Math.sin(Math.toRadians(this.f53492t.f53519t)));
    }

    /* renamed from: p */
    private boolean m10444p() {
        PorterDuffColorFilter porterDuffColorFilter = this.f53494v;
        PorterDuffColorFilter porterDuffColorFilter2 = this.f53495w;
        this.f53494v = m10477a(this.f53492t.f53506g, this.f53492t.f53507h, this.f53487o, true);
        this.f53495w = m10477a(this.f53492t.f53505f, this.f53492t.f53507h, this.f53488p, false);
        if (this.f53492t.f53520u) {
            this.f53489q.m10488a(this.f53492t.f53506g.getColorForState(getState(), 0));
        }
        return !C0827a.m44414a(porterDuffColorFilter, this.f53494v) || !C0827a.m44414a(porterDuffColorFilter2, this.f53495w);
    }

    /* renamed from: q */
    private float m10442q() {
        return m10463c() ? this.f53488p.getStrokeWidth() / 2.0f : BitmapDescriptorFactory.HUE_RED;
    }

    /* renamed from: r */
    private RectF m10440r() {
        this.f53483k.set(m10459e());
        float m10442q = m10442q();
        this.f53483k.inset(m10442q, m10442q);
        return this.f53483k;
    }

    /* renamed from: a */
    public final void m10482a(float f, int i) {
        m10447n(f);
        m10454h(ColorStateList.valueOf(i));
    }

    /* renamed from: a */
    public final void m10481a(float f, ColorStateList colorStateList) {
        m10447n(f);
        m10454h(colorStateList);
    }

    /* renamed from: a */
    public final void m10480a(int i, int i2) {
        if (this.f53492t.f53508i == null) {
            this.f53492t.f53508i = new Rect();
        }
        this.f53492t.f53508i.set(0, i, 0, i2);
        invalidateSelf();
    }

    /* renamed from: a */
    public final void m10479a(Context context) {
        this.f53492t.f53501b = new C14552a(context);
        m10468b();
    }

    /* renamed from: a */
    public final void m10474a(Canvas canvas, Paint paint, Path path, RectF rectF) {
        m10473a(canvas, paint, path, this.f53492t.f53500a, rectF);
    }

    /* renamed from: a */
    public final void m10471a(RectF rectF, Path path) {
        this.f53491s.m10403a(this.f53492t.f53500a, this.f53492t.f53510k, rectF, this.f53490r, path);
    }

    /* renamed from: b */
    public final int m10467b(int i) {
        float m10483a = m10483a();
        float f = this.f53492t.f53513n;
        int i2 = i;
        if (this.f53492t.f53501b != null) {
            i2 = this.f53492t.f53501b.m10779a(i, m10483a + f);
        }
        return i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0154, code lost:
        if ((android.os.Build.VERSION.SDK_INT < 21 || (!m10446o() && !r7.f53480h.isConvex() && android.os.Build.VERSION.SDK_INT < 29)) != false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x02b5, code lost:
        if (r7.f53492t.f53521v == android.graphics.Paint.Style.FILL) goto L46;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0165  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x02a7  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x02c0  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x02df  */
    @Override // android.graphics.drawable.Drawable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void draw(android.graphics.Canvas r8) {
        /*
            Method dump skipped, instructions count: 773
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.p374k.C14670h.draw(android.graphics.Canvas):void");
    }

    /* renamed from: e */
    public final RectF m10459e() {
        this.f53482j.set(getBounds());
        return this.f53482j;
    }

    /* renamed from: f */
    public final void m10458f() {
        if (this.f53492t.f53516q != 2) {
            this.f53492t.f53516q = 2;
            super.invalidateSelf();
        }
    }

    /* renamed from: g */
    public final void m10456g(ColorStateList colorStateList) {
        if (this.f53492t.f53503d != colorStateList) {
            this.f53492t.f53503d = colorStateList;
            onStateChange(getState());
        }
    }

    /* renamed from: g */
    public final boolean m10457g() {
        return this.f53492t.f53501b != null && this.f53492t.f53501b.f53068a;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f53492t;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        if (this.f53492t.f53516q == 2) {
            return;
        }
        if (m10446o()) {
            outline.setRoundRect(getBounds(), m10451k() * this.f53492t.f53510k);
            return;
        }
        m10465b(m10459e(), this.f53480h);
        if (!this.f53480h.isConvex() && Build.VERSION.SDK_INT < 29) {
            return;
        }
        try {
            outline.setConvexPath(this.f53480h);
        } catch (IllegalArgumentException e) {
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        if (this.f53492t.f53508i != null) {
            rect.set(this.f53492t.f53508i);
            return true;
        }
        return super.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        this.f53484l.set(getBounds());
        m10465b(m10459e(), this.f53480h);
        this.f53485m.setPath(this.f53480h, this.f53484l);
        this.f53484l.op(this.f53485m, Region.Op.DIFFERENCE);
        return this.f53484l;
    }

    /* renamed from: h */
    public final void m10455h() {
        super.invalidateSelf();
    }

    /* renamed from: h */
    public final void m10454h(ColorStateList colorStateList) {
        if (this.f53492t.f53504e != colorStateList) {
            this.f53492t.f53504e = colorStateList;
            onStateChange(getState());
        }
    }

    /* renamed from: i */
    public final void m10453i() {
        this.f53489q.m10488a(-12303292);
        this.f53492t.f53520u = false;
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        this.f53478f = true;
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        if (!super.isStateful()) {
            if (this.f53492t.f53506g != null && this.f53492t.f53506g.isStateful()) {
                return true;
            }
            if (this.f53492t.f53505f != null && this.f53492t.f53505f.isStateful()) {
                return true;
            }
            if (this.f53492t.f53504e != null && this.f53492t.f53504e.isStateful()) {
                return true;
            }
            return this.f53492t.f53503d != null && this.f53492t.f53503d.isStateful();
        }
        return true;
    }

    /* renamed from: j */
    public final int m10452j() {
        return (int) (this.f53492t.f53518s * Math.cos(Math.toRadians(this.f53492t.f53519t)));
    }

    /* renamed from: k */
    public final float m10451k() {
        return this.f53492t.f53500a.f53531f.mo10432a(m10459e());
    }

    /* renamed from: l */
    public final float m10450l() {
        return this.f53492t.f53500a.f53532g.mo10432a(m10459e());
    }

    /* renamed from: m */
    public final float m10449m() {
        return this.f53492t.f53500a.f53534i.mo10432a(m10459e());
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        this.f53492t = new C14673a(this.f53492t);
        return this;
    }

    /* renamed from: n */
    public final float m10448n() {
        return this.f53492t.f53500a.f53533h.mo10432a(m10459e());
    }

    /* renamed from: n */
    public final void m10447n(float f) {
        this.f53492t.f53511l = f;
        invalidateSelf();
    }

    /* renamed from: o */
    public final void m10445o(float f) {
        setShapeAppearanceModel(this.f53492t.f53500a.m10429a(f));
    }

    /* renamed from: o */
    public final boolean m10446o() {
        return this.f53492t.f53500a.m10423a(m10459e());
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        this.f53478f = true;
        super.onBoundsChange(rect);
    }

    @Override // android.graphics.drawable.Drawable, com.google.android.material.internal.C14641i.AbstractC14643a
    public boolean onStateChange(int[] iArr) {
        boolean z = m10469a(iArr) || m10444p();
        if (z) {
            invalidateSelf();
        }
        return z;
    }

    /* renamed from: p */
    public final void m10443p(float f) {
        if (this.f53492t.f53510k != f) {
            this.f53492t.f53510k = f;
            this.f53478f = true;
            invalidateSelf();
        }
    }

    /* renamed from: q */
    public final void m10441q(float f) {
        if (this.f53492t.f53513n != f) {
            this.f53492t.f53513n = f;
            m10468b();
        }
    }

    /* renamed from: r */
    public final void m10439r(float f) {
        if (this.f53492t.f53514o != f) {
            this.f53492t.f53514o = f;
            m10468b();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        if (this.f53492t.f53512m != i) {
            this.f53492t.f53512m = i;
            super.invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f53492t.f53502c = colorFilter;
        super.invalidateSelf();
    }

    @Override // com.google.android.material.p374k.AbstractC14695q
    public void setShapeAppearanceModel(C14678m c14678m) {
        this.f53492t.f53500a = c14678m;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0841b
    public void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0841b
    public void setTintList(ColorStateList colorStateList) {
        this.f53492t.f53506g = colorStateList;
        m10444p();
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0841b
    public void setTintMode(PorterDuff.Mode mode) {
        if (this.f53492t.f53507h != mode) {
            this.f53492t.f53507h = mode;
            m10444p();
            super.invalidateSelf();
        }
    }
}
