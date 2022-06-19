package p078c.p084c.p085a.p096b.p108x;

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
import android.os.Looper;
import android.util.AttributeSet;
import android.util.Log;
import androidx.core.graphics.drawable.AbstractC0616b;
import java.util.BitSet;
import p020b.p041h.p049k.C1592c;
import p078c.p084c.p085a.p096b.C1886b;
import p078c.p084c.p085a.p096b.p099o.C1909a;
import p078c.p084c.p085a.p096b.p102r.C1912a;
import p078c.p084c.p085a.p096b.p107w.C1929a;
import p078c.p084c.p085a.p096b.p108x.C1946m;
import p078c.p084c.p085a.p096b.p108x.C1950n;
import p078c.p084c.p085a.p096b.p108x.C1954o;
/* renamed from: c.c.a.b.x.h */
/* loaded from: classes2-dex2jar.jar:c/c/a/b/x/h.class */
public class C1938h extends Drawable implements AbstractC0616b, AbstractC1962p {

    /* renamed from: d */
    private static final String f6905d = C1938h.class.getSimpleName();

    /* renamed from: e */
    private static final Paint f6906e = new Paint(1);

    /* renamed from: A */
    private boolean f6907A;

    /* renamed from: f */
    private C1941c f6908f;

    /* renamed from: g */
    private final C1954o.AbstractC1961g[] f6909g;

    /* renamed from: h */
    private final C1954o.AbstractC1961g[] f6910h;

    /* renamed from: i */
    private final BitSet f6911i;

    /* renamed from: j */
    private boolean f6912j;

    /* renamed from: k */
    private final Matrix f6913k;

    /* renamed from: l */
    private final Path f6914l;

    /* renamed from: m */
    private final Path f6915m;

    /* renamed from: n */
    private final RectF f6916n;

    /* renamed from: o */
    private final RectF f6917o;

    /* renamed from: p */
    private final Region f6918p;

    /* renamed from: q */
    private final Region f6919q;

    /* renamed from: r */
    private C1946m f6920r;

    /* renamed from: s */
    private final Paint f6921s;

    /* renamed from: t */
    private final Paint f6922t;

    /* renamed from: u */
    private final C1929a f6923u;

    /* renamed from: v */
    private final C1950n.AbstractC1952b f6924v;

    /* renamed from: w */
    private final C1950n f6925w;

    /* renamed from: x */
    private PorterDuffColorFilter f6926x;

    /* renamed from: y */
    private PorterDuffColorFilter f6927y;

    /* renamed from: z */
    private final RectF f6928z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c.c.a.b.x.h$a */
    /* loaded from: classes2-dex2jar.jar:c/c/a/b/x/h$a.class */
    public class C1939a implements C1950n.AbstractC1952b {
        C1939a() {
            C1938h.this = r4;
        }

        @Override // p078c.p084c.p085a.p096b.p108x.C1950n.AbstractC1952b
        /* renamed from: a */
        public void mo28499a(C1954o c1954o, Matrix matrix, int i) {
            C1938h.this.f6911i.set(i, c1954o.m28493e());
            C1938h.this.f6909g[i] = c1954o.m28492f(matrix);
        }

        @Override // p078c.p084c.p085a.p096b.p108x.C1950n.AbstractC1952b
        /* renamed from: b */
        public void mo28498b(C1954o c1954o, Matrix matrix, int i) {
            C1938h.this.f6911i.set(i + 4, c1954o.m28493e());
            C1938h.this.f6910h[i] = c1954o.m28492f(matrix);
        }
    }

    /* renamed from: c.c.a.b.x.h$b */
    /* loaded from: classes2-dex2jar.jar:c/c/a/b/x/h$b.class */
    public class C1940b implements C1946m.AbstractC1949c {

        /* renamed from: a */
        final /* synthetic */ float f6930a;

        C1940b(float f) {
            C1938h.this = r4;
            this.f6930a = f;
        }

        @Override // p078c.p084c.p085a.p096b.p108x.C1946m.AbstractC1949c
        /* renamed from: a */
        public AbstractC1933c mo28514a(AbstractC1933c abstractC1933c) {
            if (!(abstractC1933c instanceof C1944k)) {
                abstractC1933c = new C1932b(this.f6930a, abstractC1933c);
            }
            return abstractC1933c;
        }
    }

    /* renamed from: c.c.a.b.x.h$c */
    /* loaded from: classes2-dex2jar.jar:c/c/a/b/x/h$c.class */
    public static final class C1941c extends Drawable.ConstantState {

        /* renamed from: a */
        public C1946m f6932a;

        /* renamed from: b */
        public C1912a f6933b;

        /* renamed from: c */
        public ColorFilter f6934c;

        /* renamed from: d */
        public ColorStateList f6935d;

        /* renamed from: e */
        public ColorStateList f6936e;

        /* renamed from: f */
        public ColorStateList f6937f;

        /* renamed from: g */
        public ColorStateList f6938g;

        /* renamed from: h */
        public PorterDuff.Mode f6939h;

        /* renamed from: i */
        public Rect f6940i;

        /* renamed from: j */
        public float f6941j;

        /* renamed from: k */
        public float f6942k;

        /* renamed from: l */
        public float f6943l;

        /* renamed from: m */
        public int f6944m;

        /* renamed from: n */
        public float f6945n;

        /* renamed from: o */
        public float f6946o;

        /* renamed from: p */
        public float f6947p;

        /* renamed from: q */
        public int f6948q;

        /* renamed from: r */
        public int f6949r;

        /* renamed from: s */
        public int f6950s;

        /* renamed from: t */
        public int f6951t;

        /* renamed from: u */
        public boolean f6952u;

        /* renamed from: v */
        public Paint.Style f6953v;

        public C1941c(C1941c c1941c) {
            this.f6935d = null;
            this.f6936e = null;
            this.f6937f = null;
            this.f6938g = null;
            this.f6939h = PorterDuff.Mode.SRC_IN;
            this.f6940i = null;
            this.f6941j = 1.0f;
            this.f6942k = 1.0f;
            this.f6944m = 255;
            this.f6945n = 0.0f;
            this.f6946o = 0.0f;
            this.f6947p = 0.0f;
            this.f6948q = 0;
            this.f6949r = 0;
            this.f6950s = 0;
            this.f6951t = 0;
            this.f6952u = false;
            this.f6953v = Paint.Style.FILL_AND_STROKE;
            this.f6932a = c1941c.f6932a;
            this.f6933b = c1941c.f6933b;
            this.f6943l = c1941c.f6943l;
            this.f6934c = c1941c.f6934c;
            this.f6935d = c1941c.f6935d;
            this.f6936e = c1941c.f6936e;
            this.f6939h = c1941c.f6939h;
            this.f6938g = c1941c.f6938g;
            this.f6944m = c1941c.f6944m;
            this.f6941j = c1941c.f6941j;
            this.f6950s = c1941c.f6950s;
            this.f6948q = c1941c.f6948q;
            this.f6952u = c1941c.f6952u;
            this.f6942k = c1941c.f6942k;
            this.f6945n = c1941c.f6945n;
            this.f6946o = c1941c.f6946o;
            this.f6947p = c1941c.f6947p;
            this.f6949r = c1941c.f6949r;
            this.f6951t = c1941c.f6951t;
            this.f6937f = c1941c.f6937f;
            this.f6953v = c1941c.f6953v;
            if (c1941c.f6940i != null) {
                this.f6940i = new Rect(c1941c.f6940i);
            }
        }

        public C1941c(C1946m c1946m, C1912a c1912a) {
            this.f6935d = null;
            this.f6936e = null;
            this.f6937f = null;
            this.f6938g = null;
            this.f6939h = PorterDuff.Mode.SRC_IN;
            this.f6940i = null;
            this.f6941j = 1.0f;
            this.f6942k = 1.0f;
            this.f6944m = 255;
            this.f6945n = 0.0f;
            this.f6946o = 0.0f;
            this.f6947p = 0.0f;
            this.f6948q = 0;
            this.f6949r = 0;
            this.f6950s = 0;
            this.f6951t = 0;
            this.f6952u = false;
            this.f6953v = Paint.Style.FILL_AND_STROKE;
            this.f6932a = c1946m;
            this.f6933b = c1912a;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            C1938h c1938h = new C1938h(this, null);
            c1938h.f6912j = true;
            return c1938h;
        }
    }

    public C1938h() {
        this(new C1946m());
    }

    public C1938h(Context context, AttributeSet attributeSet, int i, int i2) {
        this(C1946m.m28571e(context, attributeSet, i, i2).m28528m());
    }

    private C1938h(C1941c c1941c) {
        this.f6909g = new C1954o.AbstractC1961g[4];
        this.f6910h = new C1954o.AbstractC1961g[4];
        this.f6911i = new BitSet(8);
        this.f6913k = new Matrix();
        this.f6914l = new Path();
        this.f6915m = new Path();
        this.f6916n = new RectF();
        this.f6917o = new RectF();
        this.f6918p = new Region();
        this.f6919q = new Region();
        Paint paint = new Paint(1);
        this.f6921s = paint;
        Paint paint2 = new Paint(1);
        this.f6922t = paint2;
        this.f6923u = new C1929a();
        this.f6925w = Looper.getMainLooper().getThread() == Thread.currentThread() ? C1950n.m28503k() : new C1950n();
        this.f6928z = new RectF();
        this.f6907A = true;
        this.f6908f = c1941c;
        paint2.setStyle(Paint.Style.STROKE);
        paint.setStyle(Paint.Style.FILL);
        Paint paint3 = f6906e;
        paint3.setColor(-1);
        paint3.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
        m28597o0();
        m28599n0(getState());
        this.f6924v = new C1939a();
    }

    /* synthetic */ C1938h(C1941c c1941c, C1939a c1939a) {
        this(c1941c);
    }

    public C1938h(C1946m c1946m) {
        this(new C1941c(c1946m, null));
    }

    /* renamed from: F */
    private float m28646F() {
        if (m28637O()) {
            return this.f6922t.getStrokeWidth() / 2.0f;
        }
        return 0.0f;
    }

    /* renamed from: M */
    private boolean m28639M() {
        boolean z;
        C1941c c1941c = this.f6908f;
        int i = c1941c.f6948q;
        if (i != 1 && c1941c.f6949r > 0) {
            z = true;
            if (i != 2) {
                if (m28629W()) {
                    z = true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    /* renamed from: N */
    private boolean m28638N() {
        Paint.Style style = this.f6908f.f6953v;
        return style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.FILL;
    }

    /* renamed from: O */
    private boolean m28637O() {
        Paint.Style style = this.f6908f.f6953v;
        return (style == Paint.Style.FILL_AND_STROKE || style == Paint.Style.STROKE) && this.f6922t.getStrokeWidth() > 0.0f;
    }

    /* renamed from: Q */
    private void m28635Q() {
        super.invalidateSelf();
    }

    /* renamed from: T */
    private void m28632T(Canvas canvas) {
        if (!m28639M()) {
            return;
        }
        canvas.save();
        m28630V(canvas);
        if (!this.f6907A) {
            m28600n(canvas);
            canvas.restore();
            return;
        }
        int width = (int) (this.f6928z.width() - getBounds().width());
        int height = (int) (this.f6928z.height() - getBounds().height());
        if (width < 0 || height < 0) {
            throw new IllegalStateException("Invalid shadow bounds. Check that the treatments result in a valid path.");
        }
        Bitmap createBitmap = Bitmap.createBitmap(((int) this.f6928z.width()) + (this.f6908f.f6949r * 2) + width, ((int) this.f6928z.height()) + (this.f6908f.f6949r * 2) + height, Bitmap.Config.ARGB_8888);
        Canvas canvas2 = new Canvas(createBitmap);
        float f = (getBounds().left - this.f6908f.f6949r) - width;
        float f2 = (getBounds().top - this.f6908f.f6949r) - height;
        canvas2.translate(-f, -f2);
        m28600n(canvas2);
        canvas.drawBitmap(createBitmap, f, f2, (Paint) null);
        createBitmap.recycle();
        canvas.restore();
    }

    /* renamed from: U */
    private static int m28631U(int i, int i2) {
        return (i * (i2 + (i2 >>> 7))) >>> 8;
    }

    /* renamed from: V */
    private void m28630V(Canvas canvas) {
        int m28651A = m28651A();
        int m28650B = m28650B();
        if (Build.VERSION.SDK_INT < 21 && this.f6907A) {
            Rect clipBounds = canvas.getClipBounds();
            int i = this.f6908f.f6949r;
            clipBounds.inset(-i, -i);
            clipBounds.offset(m28651A, m28650B);
            canvas.clipRect(clipBounds, Region.Op.REPLACE);
        }
        canvas.translate(m28651A, m28650B);
    }

    /* renamed from: f */
    private PorterDuffColorFilter m28616f(Paint paint, boolean z) {
        int color;
        int m28604l;
        if (!z || (m28604l = m28604l((color = paint.getColor()))) == color) {
            return null;
        }
        return new PorterDuffColorFilter(m28604l, PorterDuff.Mode.SRC_IN);
    }

    /* renamed from: g */
    private void m28614g(RectF rectF, Path path) {
        m28612h(rectF, path);
        if (this.f6908f.f6941j != 1.0f) {
            this.f6913k.reset();
            Matrix matrix = this.f6913k;
            float f = this.f6908f.f6941j;
            matrix.setScale(f, f, rectF.width() / 2.0f, rectF.height() / 2.0f);
            path.transform(this.f6913k);
        }
        path.computeBounds(this.f6928z, true);
    }

    /* renamed from: i */
    private void m28610i() {
        C1946m m28551y = m28648D().m28551y(new C1940b(-m28646F()));
        this.f6920r = m28551y;
        this.f6925w.m28510d(m28551y, this.f6908f.f6942k, m28589v(), this.f6915m);
    }

    /* renamed from: j */
    private PorterDuffColorFilter m28608j(ColorStateList colorStateList, PorterDuff.Mode mode, boolean z) {
        int colorForState = colorStateList.getColorForState(getState(), 0);
        int i = colorForState;
        if (z) {
            i = m28604l(colorForState);
        }
        return new PorterDuffColorFilter(i, mode);
    }

    /* renamed from: k */
    private PorterDuffColorFilter m28606k(ColorStateList colorStateList, PorterDuff.Mode mode, Paint paint, boolean z) {
        return (colorStateList == null || mode == null) ? m28616f(paint, z) : m28608j(colorStateList, mode, z);
    }

    /* renamed from: m */
    public static C1938h m28602m(Context context, float f) {
        int m28716c = C1909a.m28716c(context, C1886b.colorSurface, C1938h.class.getSimpleName());
        C1938h c1938h = new C1938h();
        c1938h.m28636P(context);
        c1938h.m28625a0(ColorStateList.valueOf(m28716c));
        c1938h.m28626Z(f);
        return c1938h;
    }

    /* renamed from: n */
    private void m28600n(Canvas canvas) {
        if (this.f6911i.cardinality() > 0) {
            Log.w(f6905d, "Compatibility shadow requested but can't be drawn for all operations in this shape.");
        }
        if (this.f6908f.f6950s != 0) {
            canvas.drawPath(this.f6914l, this.f6923u.m28654c());
        }
        for (int i = 0; i < 4; i++) {
            this.f6909g[i].m28449b(this.f6923u, this.f6908f.f6949r, canvas);
            this.f6910h[i].m28449b(this.f6923u, this.f6908f.f6949r, canvas);
        }
        if (this.f6907A) {
            int m28651A = m28651A();
            int m28650B = m28650B();
            canvas.translate(-m28651A, -m28650B);
            canvas.drawPath(this.f6914l, f6906e);
            canvas.translate(m28651A, m28650B);
        }
    }

    /* renamed from: n0 */
    private boolean m28599n0(int[] iArr) {
        boolean z;
        int color;
        int colorForState;
        int color2;
        int colorForState2;
        if (this.f6908f.f6935d == null || color2 == (colorForState2 = this.f6908f.f6935d.getColorForState(iArr, (color2 = this.f6921s.getColor())))) {
            z = false;
        } else {
            this.f6921s.setColor(colorForState2);
            z = true;
        }
        if (this.f6908f.f6936e != null && color != (colorForState = this.f6908f.f6936e.getColorForState(iArr, (color = this.f6922t.getColor())))) {
            this.f6922t.setColor(colorForState);
            z = true;
        }
        return z;
    }

    /* renamed from: o */
    private void m28598o(Canvas canvas) {
        m28594q(canvas, this.f6921s, this.f6914l, this.f6908f.f6932a, m28590u());
    }

    /* renamed from: o0 */
    private boolean m28597o0() {
        PorterDuffColorFilter porterDuffColorFilter = this.f6926x;
        PorterDuffColorFilter porterDuffColorFilter2 = this.f6927y;
        C1941c c1941c = this.f6908f;
        this.f6926x = m28606k(c1941c.f6938g, c1941c.f6939h, this.f6921s, true);
        C1941c c1941c2 = this.f6908f;
        this.f6927y = m28606k(c1941c2.f6937f, c1941c2.f6939h, this.f6922t, false);
        C1941c c1941c3 = this.f6908f;
        if (c1941c3.f6952u) {
            this.f6923u.m28653d(c1941c3.f6938g.getColorForState(getState(), 0));
        }
        boolean z = true;
        if (C1592c.m29668a(porterDuffColorFilter, this.f6926x)) {
            z = !C1592c.m29668a(porterDuffColorFilter2, this.f6927y);
        }
        return z;
    }

    /* renamed from: p0 */
    private void m28595p0() {
        float m28640L = m28640L();
        this.f6908f.f6949r = (int) Math.ceil(0.75f * m28640L);
        this.f6908f.f6950s = (int) Math.ceil(m28640L * 0.25f);
        m28597o0();
        m28635Q();
    }

    /* renamed from: q */
    private void m28594q(Canvas canvas, Paint paint, Path path, C1946m c1946m, RectF rectF) {
        if (!c1946m.m28555u(rectF)) {
            canvas.drawPath(path, paint);
            return;
        }
        float mo28577a = c1946m.m28556t().mo28577a(rectF) * this.f6908f.f6942k;
        canvas.drawRoundRect(rectF, mo28577a, mo28577a, paint);
    }

    /* renamed from: r */
    private void m28593r(Canvas canvas) {
        m28594q(canvas, this.f6922t, this.f6915m, this.f6920r, m28589v());
    }

    /* renamed from: v */
    private RectF m28589v() {
        this.f6917o.set(m28590u());
        float m28646F = m28646F();
        this.f6917o.inset(m28646F, m28646F);
        return this.f6917o;
    }

    /* renamed from: A */
    public int m28651A() {
        C1941c c1941c = this.f6908f;
        return (int) (c1941c.f6950s * Math.sin(Math.toRadians(c1941c.f6951t)));
    }

    /* renamed from: B */
    public int m28650B() {
        C1941c c1941c = this.f6908f;
        return (int) (c1941c.f6950s * Math.cos(Math.toRadians(c1941c.f6951t)));
    }

    /* renamed from: C */
    public int m28649C() {
        return this.f6908f.f6949r;
    }

    /* renamed from: D */
    public C1946m m28648D() {
        return this.f6908f.f6932a;
    }

    /* renamed from: E */
    public ColorStateList m28647E() {
        return this.f6908f.f6936e;
    }

    /* renamed from: G */
    public float m28645G() {
        return this.f6908f.f6943l;
    }

    /* renamed from: H */
    public ColorStateList m28644H() {
        return this.f6908f.f6938g;
    }

    /* renamed from: I */
    public float m28643I() {
        return this.f6908f.f6932a.m28558r().mo28577a(m28590u());
    }

    /* renamed from: J */
    public float m28642J() {
        return this.f6908f.f6932a.m28556t().mo28577a(m28590u());
    }

    /* renamed from: K */
    public float m28641K() {
        return this.f6908f.f6947p;
    }

    /* renamed from: L */
    public float m28640L() {
        return m28588w() + m28641K();
    }

    /* renamed from: P */
    public void m28636P(Context context) {
        this.f6908f.f6933b = new C1912a(context);
        m28595p0();
    }

    /* renamed from: R */
    public boolean m28634R() {
        C1912a c1912a = this.f6908f.f6933b;
        return c1912a != null && c1912a.m28705d();
    }

    /* renamed from: S */
    public boolean m28633S() {
        return this.f6908f.f6932a.m28555u(m28590u());
    }

    /* renamed from: W */
    public boolean m28629W() {
        int i = Build.VERSION.SDK_INT;
        return i < 21 || (!m28633S() && !this.f6914l.isConvex() && i < 29);
    }

    /* renamed from: X */
    public void m28628X(float f) {
        setShapeAppearanceModel(this.f6908f.f6932a.m28553w(f));
    }

    /* renamed from: Y */
    public void m28627Y(AbstractC1933c abstractC1933c) {
        setShapeAppearanceModel(this.f6908f.f6932a.m28552x(abstractC1933c));
    }

    /* renamed from: Z */
    public void m28626Z(float f) {
        C1941c c1941c = this.f6908f;
        if (c1941c.f6946o != f) {
            c1941c.f6946o = f;
            m28595p0();
        }
    }

    /* renamed from: a0 */
    public void m28625a0(ColorStateList colorStateList) {
        C1941c c1941c = this.f6908f;
        if (c1941c.f6935d != colorStateList) {
            c1941c.f6935d = colorStateList;
            onStateChange(getState());
        }
    }

    /* renamed from: b0 */
    public void m28623b0(float f) {
        C1941c c1941c = this.f6908f;
        if (c1941c.f6942k != f) {
            c1941c.f6942k = f;
            this.f6912j = true;
            invalidateSelf();
        }
    }

    /* renamed from: c0 */
    public void m28621c0(int i, int i2, int i3, int i4) {
        C1941c c1941c = this.f6908f;
        if (c1941c.f6940i == null) {
            c1941c.f6940i = new Rect();
        }
        this.f6908f.f6940i.set(i, i2, i3, i4);
        invalidateSelf();
    }

    /* renamed from: d0 */
    public void m28619d0(Paint.Style style) {
        this.f6908f.f6953v = style;
        m28635Q();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f6921s.setColorFilter(this.f6926x);
        int alpha = this.f6921s.getAlpha();
        this.f6921s.setAlpha(m28631U(alpha, this.f6908f.f6944m));
        this.f6922t.setColorFilter(this.f6927y);
        this.f6922t.setStrokeWidth(this.f6908f.f6943l);
        int alpha2 = this.f6922t.getAlpha();
        this.f6922t.setAlpha(m28631U(alpha2, this.f6908f.f6944m));
        if (this.f6912j) {
            m28610i();
            m28614g(m28590u(), this.f6914l);
            this.f6912j = false;
        }
        m28632T(canvas);
        if (m28638N()) {
            m28598o(canvas);
        }
        if (m28637O()) {
            m28593r(canvas);
        }
        this.f6921s.setAlpha(alpha);
        this.f6922t.setAlpha(alpha2);
    }

    /* renamed from: e0 */
    public void m28617e0(float f) {
        C1941c c1941c = this.f6908f;
        if (c1941c.f6945n != f) {
            c1941c.f6945n = f;
            m28595p0();
        }
    }

    /* renamed from: f0 */
    public void m28615f0(boolean z) {
        this.f6907A = z;
    }

    /* renamed from: g0 */
    public void m28613g0(int i) {
        this.f6923u.m28653d(i);
        this.f6908f.f6952u = false;
        m28635Q();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f6908f;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(21)
    public void getOutline(Outline outline) {
        if (this.f6908f.f6948q == 2) {
            return;
        }
        if (m28633S()) {
            outline.setRoundRect(getBounds(), m28643I() * this.f6908f.f6942k);
            return;
        }
        m28614g(m28590u(), this.f6914l);
        if (!this.f6914l.isConvex() && Build.VERSION.SDK_INT < 29) {
            return;
        }
        try {
            outline.setConvexPath(this.f6914l);
        } catch (IllegalArgumentException e) {
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        Rect rect2 = this.f6908f.f6940i;
        if (rect2 != null) {
            rect.set(rect2);
            return true;
        }
        return super.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        this.f6918p.set(getBounds());
        m28614g(m28590u(), this.f6914l);
        this.f6919q.setPath(this.f6914l, this.f6918p);
        this.f6918p.op(this.f6919q, Region.Op.DIFFERENCE);
        return this.f6918p;
    }

    /* renamed from: h */
    public final void m28612h(RectF rectF, Path path) {
        C1950n c1950n = this.f6925w;
        C1941c c1941c = this.f6908f;
        c1950n.m28509e(c1941c.f6932a, c1941c.f6942k, rectF, this.f6924v, path);
    }

    /* renamed from: h0 */
    public void m28611h0(int i) {
        C1941c c1941c = this.f6908f;
        if (c1941c.f6951t != i) {
            c1941c.f6951t = i;
            m28635Q();
        }
    }

    /* renamed from: i0 */
    public void m28609i0(int i) {
        C1941c c1941c = this.f6908f;
        if (c1941c.f6948q != i) {
            c1941c.f6948q = i;
            m28635Q();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        this.f6912j = true;
        super.invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        ColorStateList colorStateList;
        ColorStateList colorStateList2;
        ColorStateList colorStateList3;
        ColorStateList colorStateList4;
        return super.isStateful() || ((colorStateList = this.f6908f.f6938g) != null && colorStateList.isStateful()) || (((colorStateList2 = this.f6908f.f6937f) != null && colorStateList2.isStateful()) || (((colorStateList3 = this.f6908f.f6936e) != null && colorStateList3.isStateful()) || ((colorStateList4 = this.f6908f.f6935d) != null && colorStateList4.isStateful())));
    }

    /* renamed from: j0 */
    public void m28607j0(float f, int i) {
        m28601m0(f);
        m28603l0(ColorStateList.valueOf(i));
    }

    /* renamed from: k0 */
    public void m28605k0(float f, ColorStateList colorStateList) {
        m28601m0(f);
        m28603l0(colorStateList);
    }

    /* renamed from: l */
    public int m28604l(int i) {
        float m28640L = m28640L();
        float m28585z = m28585z();
        C1912a c1912a = this.f6908f.f6933b;
        int i2 = i;
        if (c1912a != null) {
            i2 = c1912a.m28706c(i, m28640L + m28585z);
        }
        return i2;
    }

    /* renamed from: l0 */
    public void m28603l0(ColorStateList colorStateList) {
        C1941c c1941c = this.f6908f;
        if (c1941c.f6936e != colorStateList) {
            c1941c.f6936e = colorStateList;
            onStateChange(getState());
        }
    }

    /* renamed from: m0 */
    public void m28601m0(float f) {
        this.f6908f.f6943l = f;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        this.f6908f = new C1941c(this.f6908f);
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        this.f6912j = true;
        super.onBoundsChange(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        boolean z = m28599n0(iArr) || m28597o0();
        if (z) {
            invalidateSelf();
        }
        return z;
    }

    /* renamed from: p */
    public void m28596p(Canvas canvas, Paint paint, Path path, RectF rectF) {
        m28594q(canvas, paint, path, this.f6908f.f6932a, rectF);
    }

    /* renamed from: s */
    public float m28592s() {
        return this.f6908f.f6932a.m28566j().mo28577a(m28590u());
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        C1941c c1941c = this.f6908f;
        if (c1941c.f6944m != i) {
            c1941c.f6944m = i;
            m28635Q();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f6908f.f6934c = colorFilter;
        m28635Q();
    }

    @Override // p078c.p084c.p085a.p096b.p108x.AbstractC1962p
    public void setShapeAppearanceModel(C1946m c1946m) {
        this.f6908f.f6932a = c1946m;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0616b
    public void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0616b
    public void setTintList(ColorStateList colorStateList) {
        this.f6908f.f6938g = colorStateList;
        m28597o0();
        m28635Q();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0616b
    public void setTintMode(PorterDuff.Mode mode) {
        C1941c c1941c = this.f6908f;
        if (c1941c.f6939h != mode) {
            c1941c.f6939h = mode;
            m28597o0();
            m28635Q();
        }
    }

    /* renamed from: t */
    public float m28591t() {
        return this.f6908f.f6932a.m28564l().mo28577a(m28590u());
    }

    /* renamed from: u */
    public RectF m28590u() {
        this.f6916n.set(getBounds());
        return this.f6916n;
    }

    /* renamed from: w */
    public float m28588w() {
        return this.f6908f.f6946o;
    }

    /* renamed from: x */
    public ColorStateList m28587x() {
        return this.f6908f.f6935d;
    }

    /* renamed from: y */
    public float m28586y() {
        return this.f6908f.f6942k;
    }

    /* renamed from: z */
    public float m28585z() {
        return this.f6908f.f6945n;
    }
}
