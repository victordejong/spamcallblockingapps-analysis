package p078c.p084c.p085a.p096b.p109y;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import com.google.android.material.internal.C8197i;
import com.google.android.material.internal.C8203l;
import p020b.p041h.p042e.C1522a;
import p078c.p084c.p085a.p096b.C1886b;
import p078c.p084c.p085a.p096b.C1888d;
import p078c.p084c.p085a.p096b.C1895k;
import p078c.p084c.p085a.p096b.C1896l;
import p078c.p084c.p085a.p096b.p097m.C1897a;
import p078c.p084c.p085a.p096b.p099o.C1909a;
import p078c.p084c.p085a.p096b.p105u.C1919c;
import p078c.p084c.p085a.p096b.p105u.C1920d;
import p078c.p084c.p085a.p096b.p108x.C1936f;
import p078c.p084c.p085a.p096b.p108x.C1937g;
import p078c.p084c.p085a.p096b.p108x.C1938h;
import p078c.p084c.p085a.p096b.p108x.C1943j;
/* renamed from: c.c.a.b.y.a */
/* loaded from: classes2-dex2jar.jar:c/c/a/b/y/a.class */
public class C1963a extends C1938h implements C8197i.AbstractC8199b {

    /* renamed from: B */
    private static final int f7028B = C1895k.Widget_MaterialComponents_Tooltip;

    /* renamed from: C */
    private static final int f7029C = C1886b.tooltipStyle;

    /* renamed from: D */
    private CharSequence f7030D;

    /* renamed from: E */
    private final Context f7031E;

    /* renamed from: G */
    private final C8197i f7033G;

    /* renamed from: J */
    private int f7036J;

    /* renamed from: K */
    private int f7037K;

    /* renamed from: L */
    private int f7038L;

    /* renamed from: M */
    private int f7039M;

    /* renamed from: N */
    private int f7040N;

    /* renamed from: O */
    private int f7041O;

    /* renamed from: F */
    private final Paint.FontMetrics f7032F = new Paint.FontMetrics();

    /* renamed from: H */
    private final View.OnLayoutChangeListener f7034H = new View$OnLayoutChangeListenerC1964a();

    /* renamed from: I */
    private final Rect f7035I = new Rect();

    /* renamed from: P */
    private float f7042P = 1.0f;

    /* renamed from: Q */
    private float f7043Q = 1.0f;

    /* renamed from: R */
    private final float f7044R = 0.5f;

    /* renamed from: S */
    private float f7045S = 0.5f;

    /* renamed from: T */
    private float f7046T = 1.0f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c.c.a.b.y.a$a */
    /* loaded from: classes2-dex2jar.jar:c/c/a/b/y/a$a.class */
    public class View$OnLayoutChangeListenerC1964a implements View.OnLayoutChangeListener {
        View$OnLayoutChangeListenerC1964a() {
            C1963a.this = r4;
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            C1963a.this.m28444E0(view);
        }
    }

    private C1963a(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        C8197i c8197i = new C8197i(this);
        this.f7033G = c8197i;
        this.f7031E = context;
        c8197i.m4482e().density = context.getResources().getDisplayMetrics().density;
        c8197i.m4482e().setTextAlign(Paint.Align.CENTER);
    }

    /* renamed from: E0 */
    public void m28444E0(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        this.f7041O = iArr[0];
        view.getWindowVisibleDisplayFrame(this.f7035I);
    }

    /* renamed from: r0 */
    private float m28442r0() {
        float f;
        int i;
        if (((this.f7035I.right - getBounds().right) - this.f7041O) - this.f7039M < 0) {
            i = ((this.f7035I.right - getBounds().right) - this.f7041O) - this.f7039M;
        } else if (((this.f7035I.left - getBounds().left) - this.f7041O) + this.f7039M <= 0) {
            f = 0.0f;
            return f;
        } else {
            i = ((this.f7035I.left - getBounds().left) - this.f7041O) + this.f7039M;
        }
        f = i;
        return f;
    }

    /* renamed from: s0 */
    private float m28441s0() {
        this.f7033G.m4482e().getFontMetrics(this.f7032F);
        Paint.FontMetrics fontMetrics = this.f7032F;
        return (fontMetrics.descent + fontMetrics.ascent) / 2.0f;
    }

    /* renamed from: t0 */
    private float m28440t0(Rect rect) {
        return rect.centerY() - m28441s0();
    }

    /* renamed from: u0 */
    public static C1963a m28439u0(Context context, AttributeSet attributeSet, int i, int i2) {
        C1963a c1963a = new C1963a(context, attributeSet, i, i2);
        c1963a.m28434z0(attributeSet, i, i2);
        return c1963a;
    }

    /* renamed from: v0 */
    private C1936f m28438v0() {
        float f = -m28442r0();
        float width = ((float) (getBounds().width() - (this.f7040N * Math.sqrt(2.0d)))) / 2.0f;
        return new C1943j(new C1937g(this.f7040N), Math.min(Math.max(f, -width), width));
    }

    /* renamed from: x0 */
    private void m28436x0(Canvas canvas) {
        if (this.f7030D == null) {
            return;
        }
        Rect bounds = getBounds();
        int m28440t0 = (int) m28440t0(bounds);
        if (this.f7033G.m4483d() != null) {
            this.f7033G.m4482e().drawableState = getState();
            this.f7033G.m4477j(this.f7031E);
            this.f7033G.m4482e().setAlpha((int) (this.f7046T * 255.0f));
        }
        CharSequence charSequence = this.f7030D;
        canvas.drawText(charSequence, 0, charSequence.length(), bounds.centerX(), m28440t0, this.f7033G.m4482e());
    }

    /* renamed from: y0 */
    private float m28435y0() {
        CharSequence charSequence = this.f7030D;
        if (charSequence == null) {
            return 0.0f;
        }
        return this.f7033G.m4481f(charSequence.toString());
    }

    /* renamed from: z0 */
    private void m28434z0(AttributeSet attributeSet, int i, int i2) {
        TypedArray m4462h = C8203l.m4462h(this.f7031E, attributeSet, C1896l.Tooltip, i, i2, new int[0]);
        this.f7040N = this.f7031E.getResources().getDimensionPixelSize(C1888d.mtrl_tooltip_arrowSize);
        setShapeAppearanceModel(m28648D().m28554v().m28522s(m28438v0()).m28528m());
        m28446C0(m4462h.getText(C1896l.Tooltip_android_text));
        m28445D0(C1919c.m28681f(this.f7031E, m4462h, C1896l.Tooltip_android_textAppearance));
        m28625a0(ColorStateList.valueOf(m4462h.getColor(C1896l.Tooltip_backgroundTint, C1909a.m28713f(C1522a.m29848d(C1909a.m28716c(this.f7031E, 16842801, C1963a.class.getCanonicalName()), 229), C1522a.m29848d(C1909a.m28716c(this.f7031E, C1886b.colorOnBackground, C1963a.class.getCanonicalName()), 153)))));
        m28603l0(ColorStateList.valueOf(C1909a.m28716c(this.f7031E, C1886b.colorSurface, C1963a.class.getCanonicalName())));
        this.f7036J = m4462h.getDimensionPixelSize(C1896l.Tooltip_android_padding, 0);
        this.f7037K = m4462h.getDimensionPixelSize(C1896l.Tooltip_android_minWidth, 0);
        this.f7038L = m4462h.getDimensionPixelSize(C1896l.Tooltip_android_minHeight, 0);
        this.f7039M = m4462h.getDimensionPixelSize(C1896l.Tooltip_android_layout_margin, 0);
        m4462h.recycle();
    }

    /* renamed from: A0 */
    public void m28448A0(View view) {
        if (view == null) {
            return;
        }
        m28444E0(view);
        view.addOnLayoutChangeListener(this.f7034H);
    }

    /* renamed from: B0 */
    public void m28447B0(float f) {
        this.f7045S = 1.2f;
        this.f7042P = f;
        this.f7043Q = f;
        this.f7046T = C1897a.m28751b(0.0f, 1.0f, 0.19f, 1.0f, f);
        invalidateSelf();
    }

    /* renamed from: C0 */
    public void m28446C0(CharSequence charSequence) {
        if (!TextUtils.equals(this.f7030D, charSequence)) {
            this.f7030D = charSequence;
            this.f7033G.m4478i(true);
            invalidateSelf();
        }
    }

    /* renamed from: D0 */
    public void m28445D0(C1920d c1920d) {
        this.f7033G.m4479h(c1920d, this.f7031E);
    }

    @Override // com.google.android.material.internal.C8197i.AbstractC8199b
    /* renamed from: a */
    public void mo4474a() {
        invalidateSelf();
    }

    @Override // p078c.p084c.p085a.p096b.p108x.C1938h, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        canvas.save();
        canvas.scale(this.f7042P, this.f7043Q, getBounds().left + (getBounds().width() * 0.5f), getBounds().top + (getBounds().height() * this.f7045S));
        canvas.translate(m28442r0(), (float) (-((this.f7040N * Math.sqrt(2.0d)) - this.f7040N)));
        super.draw(canvas);
        m28436x0(canvas);
        canvas.restore();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return (int) Math.max(this.f7033G.m4482e().getTextSize(), this.f7038L);
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return (int) Math.max((this.f7036J * 2) + m28435y0(), this.f7037K);
    }

    @Override // p078c.p084c.p085a.p096b.p108x.C1938h, android.graphics.drawable.Drawable
    public void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        setShapeAppearanceModel(m28648D().m28554v().m28522s(m28438v0()).m28528m());
    }

    @Override // p078c.p084c.p085a.p096b.p108x.C1938h, android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        return super.onStateChange(iArr);
    }

    /* renamed from: w0 */
    public void m28437w0(View view) {
        if (view == null) {
            return;
        }
        view.removeOnLayoutChangeListener(this.f7034H);
    }
}
