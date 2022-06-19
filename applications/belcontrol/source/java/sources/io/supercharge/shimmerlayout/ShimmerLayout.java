package io.supercharge.shimmerlayout;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ComposeShader;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Shader;
import android.os.Build;
import android.util.AttributeSet;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
/* loaded from: classes3-dex2jar.jar:io/supercharge/shimmerlayout/ShimmerLayout.class */
public class ShimmerLayout extends FrameLayout {

    /* renamed from: a */
    public int f6782a;

    /* renamed from: b */
    public Rect f6783b;

    /* renamed from: c */
    public Paint f6784c;

    /* renamed from: d */
    public ValueAnimator f6785d;

    /* renamed from: f */
    public Bitmap f6786f;

    /* renamed from: g */
    public Bitmap f6787g;

    /* renamed from: h */
    public Canvas f6788h;

    /* renamed from: j */
    public boolean f6789j;

    /* renamed from: k */
    public boolean f6790k;

    /* renamed from: l */
    public boolean f6791l;

    /* renamed from: m */
    public int f6792m;

    /* renamed from: n */
    public int f6793n;

    /* renamed from: o */
    public int f6794o;

    /* renamed from: p */
    public float f6795p;

    /* renamed from: q */
    public float f6796q;

    /* renamed from: r */
    public ViewTreeObserver.OnPreDrawListener f6797r;

    /* renamed from: io.supercharge.shimmerlayout.ShimmerLayout$a */
    /* loaded from: classes3-dex2jar.jar:io/supercharge/shimmerlayout/ShimmerLayout$a.class */
    public class ViewTreeObserver$OnPreDrawListenerC1447a implements ViewTreeObserver.OnPreDrawListener {
        public ViewTreeObserver$OnPreDrawListenerC1447a() {
            ShimmerLayout.this = r4;
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            ShimmerLayout.this.getViewTreeObserver().removeOnPreDrawListener(this);
            ShimmerLayout.this.m1544n();
            return true;
        }
    }

    /* renamed from: io.supercharge.shimmerlayout.ShimmerLayout$b */
    /* loaded from: classes3-dex2jar.jar:io/supercharge/shimmerlayout/ShimmerLayout$b.class */
    public class C1448b implements ValueAnimator.AnimatorUpdateListener {

        /* renamed from: a */
        public final /* synthetic */ int f6799a;

        /* renamed from: b */
        public final /* synthetic */ int f6800b;

        public C1448b(int i, int i2) {
            ShimmerLayout.this = r4;
            this.f6799a = i;
            this.f6800b = i2;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            ShimmerLayout.this.f6782a = this.f6799a + ((Integer) valueAnimator.getAnimatedValue()).intValue();
            if (ShimmerLayout.this.f6782a + this.f6800b >= 0) {
                ShimmerLayout.this.invalidate();
            }
        }
    }

    public ShimmerLayout(Context context) {
        this(context, null);
    }

    public ShimmerLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    /* JADX WARN: Finally extract failed */
    public ShimmerLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        setWillNotDraw(false);
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, gj1.ShimmerLayout, 0, 0);
        try {
            this.f6794o = obtainStyledAttributes.getInteger(gj1.ShimmerLayout_shimmer_angle, 20);
            this.f6792m = obtainStyledAttributes.getInteger(gj1.ShimmerLayout_shimmer_animation_duration, 1500);
            this.f6793n = obtainStyledAttributes.getColor(gj1.ShimmerLayout_shimmer_color, m1549i(fj1.shimmer_color));
            this.f6791l = obtainStyledAttributes.getBoolean(gj1.ShimmerLayout_shimmer_auto_start, false);
            this.f6795p = obtainStyledAttributes.getFloat(gj1.ShimmerLayout_shimmer_mask_width, 0.5f);
            this.f6796q = obtainStyledAttributes.getFloat(gj1.ShimmerLayout_shimmer_gradient_center_color_width, 0.1f);
            this.f6789j = obtainStyledAttributes.getBoolean(gj1.ShimmerLayout_shimmer_reverse_animation, false);
            obtainStyledAttributes.recycle();
            setMaskWidth(this.f6795p);
            setGradientCenterColorWidth(this.f6796q);
            setShimmerAngle(this.f6794o);
            if (!this.f6791l || getVisibility() != 0) {
                return;
            }
            m1544n();
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }

    private float[] getGradientColorDistribution() {
        float f = this.f6796q;
        return new float[]{0.0f, 0.5f - (f / 2.0f), (f / 2.0f) + 0.5f, 1.0f};
    }

    private Bitmap getMaskBitmap() {
        if (this.f6787g == null) {
            this.f6787g = m1553e(this.f6783b.width(), getHeight());
        }
        return this.f6787g;
    }

    private Animator getShimmerAnimation() {
        ValueAnimator valueAnimator = this.f6785d;
        if (valueAnimator != null) {
            return valueAnimator;
        }
        if (this.f6783b == null) {
            this.f6783b = m1555c();
        }
        int width = getWidth();
        int i = getWidth() > this.f6783b.width() ? -width : -this.f6783b.width();
        int width2 = this.f6783b.width();
        int i2 = width - i;
        ValueAnimator ofInt = this.f6789j ? ValueAnimator.ofInt(i2, 0) : ValueAnimator.ofInt(0, i2);
        this.f6785d = ofInt;
        ofInt.setDuration(this.f6792m);
        this.f6785d.setRepeatCount(-1);
        this.f6785d.addUpdateListener(new C1448b(i, width2));
        return this.f6785d;
    }

    /* renamed from: c */
    public final Rect m1555c() {
        return new Rect(0, 0, m1554d(), getHeight());
    }

    /* renamed from: d */
    public final int m1554d() {
        return (int) ((((getWidth() / 2) * this.f6795p) / Math.cos(Math.toRadians(Math.abs(this.f6794o)))) + (getHeight() * Math.tan(Math.toRadians(Math.abs(this.f6794o)))));
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        if (!this.f6790k || getWidth() <= 0 || getHeight() <= 0) {
            super.dispatchDraw(canvas);
        } else {
            m1551g(canvas);
        }
    }

    /* renamed from: e */
    public final Bitmap m1553e(int i, int i2) {
        try {
            return Bitmap.createBitmap(i, i2, Bitmap.Config.ALPHA_8);
        } catch (OutOfMemoryError e) {
            System.gc();
            return null;
        }
    }

    /* renamed from: f */
    public final void m1552f() {
        if (this.f6784c != null) {
            return;
        }
        int m1548j = m1548j(this.f6793n);
        float width = (getWidth() / 2) * this.f6795p;
        float height = this.f6794o >= 0 ? getHeight() : 0.0f;
        float cos = (float) Math.cos(Math.toRadians(this.f6794o));
        float sin = (float) Math.sin(Math.toRadians(this.f6794o));
        int i = this.f6793n;
        LinearGradient linearGradient = new LinearGradient(0.0f, height, cos * width, height + (sin * width), new int[]{m1548j, i, i, m1548j}, getGradientColorDistribution(), Shader.TileMode.CLAMP);
        Bitmap bitmap = this.f6786f;
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        ComposeShader composeShader = new ComposeShader(linearGradient, new BitmapShader(bitmap, tileMode, tileMode), PorterDuff.Mode.DST_IN);
        Paint paint = new Paint();
        this.f6784c = paint;
        paint.setAntiAlias(true);
        this.f6784c.setDither(true);
        this.f6784c.setFilterBitmap(true);
        this.f6784c.setShader(composeShader);
    }

    /* renamed from: g */
    public final void m1551g(Canvas canvas) {
        super.dispatchDraw(canvas);
        Bitmap maskBitmap = getMaskBitmap();
        this.f6786f = maskBitmap;
        if (maskBitmap == null) {
            return;
        }
        if (this.f6788h == null) {
            this.f6788h = new Canvas(this.f6786f);
        }
        this.f6788h.drawColor(0, PorterDuff.Mode.CLEAR);
        this.f6788h.save();
        this.f6788h.translate(-this.f6782a, 0.0f);
        super.dispatchDraw(this.f6788h);
        this.f6788h.restore();
        m1550h(canvas);
        this.f6786f = null;
    }

    /* renamed from: h */
    public final void m1550h(Canvas canvas) {
        m1552f();
        canvas.save();
        canvas.translate(this.f6782a, 0.0f);
        Rect rect = this.f6783b;
        canvas.drawRect(rect.left, 0.0f, rect.width(), this.f6783b.height(), this.f6784c);
        canvas.restore();
    }

    /* renamed from: i */
    public final int m1549i(int i) {
        return Build.VERSION.SDK_INT >= 23 ? getContext().getColor(i) : getResources().getColor(i);
    }

    /* renamed from: j */
    public final int m1548j(int i) {
        return Color.argb(0, Color.red(i), Color.green(i), Color.blue(i));
    }

    /* renamed from: k */
    public final void m1547k() {
        this.f6788h = null;
        Bitmap bitmap = this.f6787g;
        if (bitmap != null) {
            bitmap.recycle();
            this.f6787g = null;
        }
    }

    /* renamed from: l */
    public final void m1546l() {
        if (this.f6790k) {
            m1545m();
            m1544n();
        }
    }

    /* renamed from: m */
    public final void m1545m() {
        ValueAnimator valueAnimator = this.f6785d;
        if (valueAnimator != null) {
            valueAnimator.end();
            this.f6785d.removeAllUpdateListeners();
        }
        this.f6785d = null;
        this.f6784c = null;
        this.f6790k = false;
        m1547k();
    }

    /* renamed from: n */
    public void m1544n() {
        if (this.f6790k) {
            return;
        }
        if (getWidth() == 0) {
            this.f6797r = new ViewTreeObserver$OnPreDrawListenerC1447a();
            getViewTreeObserver().addOnPreDrawListener(this.f6797r);
            return;
        }
        getShimmerAnimation().start();
        this.f6790k = true;
    }

    /* renamed from: o */
    public void m1543o() {
        if (this.f6797r != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.f6797r);
        }
        m1545m();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        m1545m();
        super.onDetachedFromWindow();
    }

    public void setAnimationReversed(boolean z) {
        this.f6789j = z;
        m1546l();
    }

    public void setGradientCenterColorWidth(float f) {
        if (f <= 0.0f || 1.0f <= f) {
            throw new IllegalArgumentException(String.format("gradientCenterColorWidth value must be higher than %d and less than %d", (byte) 0, (byte) 1));
        }
        this.f6796q = f;
        m1546l();
    }

    public void setMaskWidth(float f) {
        if (f <= 0.0f || 1.0f < f) {
            throw new IllegalArgumentException(String.format("maskWidth value must be higher than %d and less or equal to %d", (byte) 0, (byte) 1));
        }
        this.f6795p = f;
        m1546l();
    }

    public void setShimmerAngle(int i) {
        if (i < -45 || 45 < i) {
            throw new IllegalArgumentException(String.format("shimmerAngle value must be between %d and %d", (byte) -45, (byte) 45));
        }
        this.f6794o = i;
        m1546l();
    }

    public void setShimmerAnimationDuration(int i) {
        this.f6792m = i;
        m1546l();
    }

    public void setShimmerColor(int i) {
        this.f6793n = i;
        m1546l();
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (i != 0) {
            m1543o();
        } else if (!this.f6791l) {
        } else {
            m1544n();
        }
    }
}
