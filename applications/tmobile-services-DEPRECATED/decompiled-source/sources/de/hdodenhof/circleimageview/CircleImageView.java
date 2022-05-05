package de.hdodenhof.circleimageview;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.ImageView;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.DrawableRes;
import androidx.annotation.RequiresApi;
/* loaded from: classes-dex2jar.jar:de/hdodenhof/circleimageview/CircleImageView.class */
public class CircleImageView extends ImageView {

    /* renamed from: f */
    private final RectF f14954f;

    /* renamed from: g */
    private final RectF f14955g;

    /* renamed from: h */
    private final Matrix f14956h;

    /* renamed from: i */
    private final Paint f14957i;

    /* renamed from: j */
    private final Paint f14958j;

    /* renamed from: k */
    private final Paint f14959k;

    /* renamed from: l */
    private int f14960l;

    /* renamed from: m */
    private int f14961m;

    /* renamed from: n */
    private int f14962n;

    /* renamed from: o */
    private Bitmap f14963o;

    /* renamed from: p */
    private BitmapShader f14964p;

    /* renamed from: q */
    private int f14965q;

    /* renamed from: r */
    private int f14966r;

    /* renamed from: s */
    private float f14967s;

    /* renamed from: t */
    private float f14968t;

    /* renamed from: u */
    private ColorFilter f14969u;

    /* renamed from: v */
    private boolean f14970v;

    /* renamed from: w */
    private boolean f14971w;

    /* renamed from: x */
    private boolean f14972x;

    /* renamed from: y */
    private boolean f14973y;

    /* renamed from: z */
    private static final ImageView.ScaleType f14953z = ImageView.ScaleType.CENTER_CROP;

    /* renamed from: A */
    private static final Bitmap.Config f14952A = Bitmap.Config.ARGB_8888;

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi
    /* loaded from: classes-dex2jar.jar:de/hdodenhof/circleimageview/CircleImageView$OutlineProvider.class */
    public class OutlineProvider extends ViewOutlineProvider {
        private OutlineProvider() {
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            if (CircleImageView.this.f14973y) {
                ViewOutlineProvider.BACKGROUND.getOutline(view, outline);
                return;
            }
            Rect rect = new Rect();
            CircleImageView.this.f14955g.roundOut(rect);
            outline.setRoundRect(rect, rect.width() / 2.0f);
        }
    }

    public CircleImageView(Context context) {
        super(context);
        this.f14954f = new RectF();
        this.f14955g = new RectF();
        this.f14956h = new Matrix();
        this.f14957i = new Paint();
        this.f14958j = new Paint();
        this.f14959k = new Paint();
        this.f14960l = -16777216;
        this.f14961m = 0;
        this.f14962n = 0;
        m4623g();
    }

    public CircleImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CircleImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f14954f = new RectF();
        this.f14955g = new RectF();
        this.f14956h = new Matrix();
        this.f14957i = new Paint();
        this.f14958j = new Paint();
        this.f14959k = new Paint();
        this.f14960l = -16777216;
        this.f14961m = 0;
        this.f14962n = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C2101R.styleable.CircleImageView, i, 0);
        this.f14961m = obtainStyledAttributes.getDimensionPixelSize(C2101R.styleable.CircleImageView_civ_border_width, 0);
        this.f14960l = obtainStyledAttributes.getColor(C2101R.styleable.CircleImageView_civ_border_color, -16777216);
        this.f14972x = obtainStyledAttributes.getBoolean(C2101R.styleable.CircleImageView_civ_border_overlay, false);
        this.f14962n = obtainStyledAttributes.getColor(C2101R.styleable.CircleImageView_civ_circle_background_color, 0);
        obtainStyledAttributes.recycle();
        m4623g();
    }

    /* renamed from: c */
    private void m4627c() {
        Paint paint = this.f14957i;
        if (paint != null) {
            paint.setColorFilter(this.f14969u);
        }
    }

    /* renamed from: d */
    private RectF m4626d() {
        int width;
        int height;
        int min = Math.min((getWidth() - getPaddingLeft()) - getPaddingRight(), (getHeight() - getPaddingTop()) - getPaddingBottom());
        float paddingLeft = getPaddingLeft() + ((width - min) / 2.0f);
        float paddingTop = getPaddingTop() + ((height - min) / 2.0f);
        float f = min;
        return new RectF(paddingLeft, paddingTop, paddingLeft + f, f + paddingTop);
    }

    /* renamed from: e */
    private Bitmap m4625e(Drawable drawable) {
        if (drawable == null) {
            return null;
        }
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        try {
            Bitmap createBitmap = drawable instanceof ColorDrawable ? Bitmap.createBitmap(2, 2, f14952A) : Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), f14952A);
            Canvas canvas = new Canvas(createBitmap);
            drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            drawable.draw(canvas);
            return createBitmap;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /* renamed from: f */
    private boolean m4624f(float f, float f2) {
        boolean z = true;
        if (this.f14955g.isEmpty()) {
            return true;
        }
        if (Math.pow(f - this.f14955g.centerX(), 2.0d) + Math.pow(f2 - this.f14955g.centerY(), 2.0d) > Math.pow(this.f14968t, 2.0d)) {
            z = false;
        }
        return z;
    }

    /* renamed from: g */
    private void m4623g() {
        super.setScaleType(f14953z);
        this.f14970v = true;
        if (Build.VERSION.SDK_INT >= 21) {
            setOutlineProvider(new OutlineProvider());
        }
        if (this.f14971w) {
            m4621i();
            this.f14971w = false;
        }
    }

    /* renamed from: h */
    private void m4622h() {
        if (this.f14973y) {
            this.f14963o = null;
        } else {
            this.f14963o = m4625e(getDrawable());
        }
        m4621i();
    }

    /* renamed from: i */
    private void m4621i() {
        int i;
        if (!this.f14970v) {
            this.f14971w = true;
        } else if (getWidth() != 0 || getHeight() != 0) {
            if (this.f14963o == null) {
                invalidate();
                return;
            }
            Bitmap bitmap = this.f14963o;
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            this.f14964p = new BitmapShader(bitmap, tileMode, tileMode);
            this.f14957i.setAntiAlias(true);
            this.f14957i.setDither(true);
            this.f14957i.setFilterBitmap(true);
            this.f14957i.setShader(this.f14964p);
            this.f14958j.setStyle(Paint.Style.STROKE);
            this.f14958j.setAntiAlias(true);
            this.f14958j.setColor(this.f14960l);
            this.f14958j.setStrokeWidth(this.f14961m);
            this.f14959k.setStyle(Paint.Style.FILL);
            this.f14959k.setAntiAlias(true);
            this.f14959k.setColor(this.f14962n);
            this.f14966r = this.f14963o.getHeight();
            this.f14965q = this.f14963o.getWidth();
            this.f14955g.set(m4626d());
            this.f14968t = Math.min((this.f14955g.height() - this.f14961m) / 2.0f, (this.f14955g.width() - this.f14961m) / 2.0f);
            this.f14954f.set(this.f14955g);
            if (!this.f14972x && (i = this.f14961m) > 0) {
                this.f14954f.inset(i - 1.0f, i - 1.0f);
            }
            this.f14967s = Math.min(this.f14954f.height() / 2.0f, this.f14954f.width() / 2.0f);
            m4627c();
            m4620j();
            invalidate();
        }
    }

    /* renamed from: j */
    private void m4620j() {
        float f;
        float f2;
        this.f14956h.set(null);
        float f3 = 0.0f;
        if (this.f14965q * this.f14954f.height() > this.f14954f.width() * this.f14966r) {
            f = this.f14954f.height() / this.f14966r;
            f3 = (this.f14954f.width() - (this.f14965q * f)) * 0.5f;
            f2 = 0.0f;
        } else {
            f = this.f14954f.width() / this.f14965q;
            f2 = (this.f14954f.height() - (this.f14966r * f)) * 0.5f;
        }
        this.f14956h.setScale(f, f);
        RectF rectF = this.f14954f;
        this.f14956h.postTranslate(((int) (f3 + 0.5f)) + rectF.left, ((int) (f2 + 0.5f)) + rectF.top);
        this.f14964p.setLocalMatrix(this.f14956h);
    }

    public int getBorderColor() {
        return this.f14960l;
    }

    public int getBorderWidth() {
        return this.f14961m;
    }

    public int getCircleBackgroundColor() {
        return this.f14962n;
    }

    @Override // android.widget.ImageView
    public ColorFilter getColorFilter() {
        return this.f14969u;
    }

    @Override // android.widget.ImageView
    public ImageView.ScaleType getScaleType() {
        return f14953z;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.f14973y) {
            super.onDraw(canvas);
        } else if (this.f14963o != null) {
            if (this.f14962n != 0) {
                canvas.drawCircle(this.f14954f.centerX(), this.f14954f.centerY(), this.f14967s, this.f14959k);
            }
            canvas.drawCircle(this.f14954f.centerX(), this.f14954f.centerY(), this.f14967s, this.f14957i);
            if (this.f14961m > 0) {
                canvas.drawCircle(this.f14955g.centerX(), this.f14955g.centerY(), this.f14968t, this.f14958j);
            }
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        m4621i();
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.f14973y) {
            return super.onTouchEvent(motionEvent);
        }
        return m4624f(motionEvent.getX(), motionEvent.getY()) && super.onTouchEvent(motionEvent);
    }

    @Override // android.widget.ImageView
    public void setAdjustViewBounds(boolean z) {
        if (z) {
            throw new IllegalArgumentException("adjustViewBounds not supported.");
        }
    }

    public void setBorderColor(@ColorInt int i) {
        if (i != this.f14960l) {
            this.f14960l = i;
            this.f14958j.setColor(i);
            invalidate();
        }
    }

    public void setBorderOverlay(boolean z) {
        if (z != this.f14972x) {
            this.f14972x = z;
            m4621i();
        }
    }

    public void setBorderWidth(int i) {
        if (i != this.f14961m) {
            this.f14961m = i;
            m4621i();
        }
    }

    public void setCircleBackgroundColor(@ColorInt int i) {
        if (i != this.f14962n) {
            this.f14962n = i;
            this.f14959k.setColor(i);
            invalidate();
        }
    }

    public void setCircleBackgroundColorResource(@ColorRes int i) {
        setCircleBackgroundColor(getContext().getResources().getColor(i));
    }

    @Override // android.widget.ImageView
    public void setColorFilter(ColorFilter colorFilter) {
        if (colorFilter != this.f14969u) {
            this.f14969u = colorFilter;
            m4627c();
            invalidate();
        }
    }

    public void setDisableCircularTransformation(boolean z) {
        if (this.f14973y != z) {
            this.f14973y = z;
            m4622h();
        }
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        m4622h();
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        m4622h();
    }

    @Override // android.widget.ImageView
    public void setImageResource(@DrawableRes int i) {
        super.setImageResource(i);
        m4622h();
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        m4622h();
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(i, i2, i3, i4);
        m4621i();
    }

    @Override // android.view.View
    public void setPaddingRelative(int i, int i2, int i3, int i4) {
        super.setPaddingRelative(i, i2, i3, i4);
        m4621i();
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        if (scaleType != f14953z) {
            throw new IllegalArgumentException(String.format("ScaleType %s not supported.", scaleType));
        }
    }
}
