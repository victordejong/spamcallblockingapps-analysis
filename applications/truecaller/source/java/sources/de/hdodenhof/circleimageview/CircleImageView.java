package de.hdodenhof.circleimageview;

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
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.ImageView;
/* loaded from: classes16-dex2jar.jar:de/hdodenhof/circleimageview/CircleImageView.class */
public class CircleImageView extends ImageView {

    /* renamed from: u */
    public static final ImageView.ScaleType f16591u = ImageView.ScaleType.CENTER_CROP;

    /* renamed from: v */
    public static final Bitmap.Config f16592v = Bitmap.Config.ARGB_8888;

    /* renamed from: g */
    public int f16599g;

    /* renamed from: h */
    public int f16600h;

    /* renamed from: i */
    public int f16601i;

    /* renamed from: j */
    public Bitmap f16602j;

    /* renamed from: k */
    public BitmapShader f16603k;

    /* renamed from: l */
    public int f16604l;

    /* renamed from: m */
    public int f16605m;

    /* renamed from: n */
    public float f16606n;

    /* renamed from: o */
    public float f16607o;

    /* renamed from: p */
    public ColorFilter f16608p;

    /* renamed from: r */
    public boolean f16610r;

    /* renamed from: s */
    public boolean f16611s;

    /* renamed from: t */
    public boolean f16612t;

    /* renamed from: a */
    public final RectF f16593a = new RectF();

    /* renamed from: b */
    public final RectF f16594b = new RectF();

    /* renamed from: c */
    public final Matrix f16595c = new Matrix();

    /* renamed from: d */
    public final Paint f16596d = new Paint();

    /* renamed from: e */
    public final Paint f16597e = new Paint();

    /* renamed from: f */
    public final Paint f16598f = new Paint();

    /* renamed from: q */
    public boolean f16609q = true;

    /* renamed from: de.hdodenhof.circleimageview.CircleImageView$b */
    /* loaded from: classes16-dex2jar.jar:de/hdodenhof/circleimageview/CircleImageView$b.class */
    public class C4888b extends ViewOutlineProvider {
        public C4888b(C4887a c4887a) {
            CircleImageView.this = r4;
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            if (CircleImageView.this.f16612t) {
                ViewOutlineProvider.BACKGROUND.getOutline(view, outline);
                return;
            }
            Rect rect = new Rect();
            CircleImageView.this.f16594b.roundOut(rect);
            outline.setRoundRect(rect, rect.width() / 2.0f);
        }
    }

    public CircleImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.f16599g = -16777216;
        this.f16600h = 0;
        this.f16601i = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C4889R.styleable.CircleImageView, 0, 0);
        this.f16600h = obtainStyledAttributes.getDimensionPixelSize(C4889R.styleable.CircleImageView_civ_border_width, 0);
        this.f16599g = obtainStyledAttributes.getColor(C4889R.styleable.CircleImageView_civ_border_color, -16777216);
        this.f16611s = obtainStyledAttributes.getBoolean(C4889R.styleable.CircleImageView_civ_border_overlay, false);
        this.f16601i = obtainStyledAttributes.getColor(C4889R.styleable.CircleImageView_civ_circle_background_color, 0);
        obtainStyledAttributes.recycle();
        super.setScaleType(f16591u);
        setOutlineProvider(new C4888b(null));
        if (this.f16610r) {
            m34272b();
            this.f16610r = false;
        }
    }

    /* renamed from: a */
    public final void m34273a() {
        Bitmap bitmap;
        if (this.f16612t) {
            this.f16602j = null;
        } else {
            Drawable drawable = getDrawable();
            if (drawable == null) {
                bitmap = null;
            } else if (drawable instanceof BitmapDrawable) {
                bitmap = ((BitmapDrawable) drawable).getBitmap();
            } else {
                try {
                    bitmap = drawable instanceof ColorDrawable ? Bitmap.createBitmap(2, 2, f16592v) : Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), f16592v);
                    Canvas canvas = new Canvas(bitmap);
                    drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                    drawable.draw(canvas);
                } catch (Exception e) {
                    e.printStackTrace();
                    bitmap = null;
                }
            }
            this.f16602j = bitmap;
        }
        m34272b();
    }

    /* renamed from: b */
    public final void m34272b() {
        int width;
        int height;
        float f;
        float f2;
        int i;
        if (!this.f16609q) {
            this.f16610r = true;
        } else if (getWidth() == 0 && getHeight() == 0) {
        } else {
            if (this.f16602j == null) {
                invalidate();
                return;
            }
            Bitmap bitmap = this.f16602j;
            Shader.TileMode tileMode = Shader.TileMode.CLAMP;
            this.f16603k = new BitmapShader(bitmap, tileMode, tileMode);
            this.f16596d.setAntiAlias(true);
            this.f16596d.setDither(true);
            this.f16596d.setFilterBitmap(true);
            this.f16596d.setShader(this.f16603k);
            this.f16597e.setStyle(Paint.Style.STROKE);
            this.f16597e.setAntiAlias(true);
            this.f16597e.setColor(this.f16599g);
            this.f16597e.setStrokeWidth(this.f16600h);
            this.f16598f.setStyle(Paint.Style.FILL);
            this.f16598f.setAntiAlias(true);
            this.f16598f.setColor(this.f16601i);
            this.f16605m = this.f16602j.getHeight();
            this.f16604l = this.f16602j.getWidth();
            RectF rectF = this.f16594b;
            int min = Math.min((getWidth() - getPaddingLeft()) - getPaddingRight(), (getHeight() - getPaddingTop()) - getPaddingBottom());
            float paddingLeft = ((width - min) / 2.0f) + getPaddingLeft();
            float paddingTop = ((height - min) / 2.0f) + getPaddingTop();
            float f3 = min;
            rectF.set(new RectF(paddingLeft, paddingTop, paddingLeft + f3, f3 + paddingTop));
            this.f16607o = Math.min((this.f16594b.height() - this.f16600h) / 2.0f, (this.f16594b.width() - this.f16600h) / 2.0f);
            this.f16593a.set(this.f16594b);
            if (!this.f16611s && (i = this.f16600h) > 0) {
                float f4 = i - 1.0f;
                this.f16593a.inset(f4, f4);
            }
            this.f16606n = Math.min(this.f16593a.height() / 2.0f, this.f16593a.width() / 2.0f);
            Paint paint = this.f16596d;
            if (paint != null) {
                paint.setColorFilter(this.f16608p);
            }
            this.f16595c.set(null);
            float f5 = 0.0f;
            if (this.f16593a.height() * this.f16604l > this.f16593a.width() * this.f16605m) {
                f = this.f16593a.height() / this.f16605m;
                f2 = 0.0f;
                f5 = (this.f16593a.width() - (this.f16604l * f)) * 0.5f;
            } else {
                f = this.f16593a.width() / this.f16604l;
                f2 = (this.f16593a.height() - (this.f16605m * f)) * 0.5f;
            }
            this.f16595c.setScale(f, f);
            RectF rectF2 = this.f16593a;
            this.f16595c.postTranslate(((int) (f5 + 0.5f)) + rectF2.left, ((int) (f2 + 0.5f)) + rectF2.top);
            this.f16603k.setLocalMatrix(this.f16595c);
            invalidate();
        }
    }

    public int getBorderColor() {
        return this.f16599g;
    }

    public int getBorderWidth() {
        return this.f16600h;
    }

    public int getCircleBackgroundColor() {
        return this.f16601i;
    }

    @Override // android.widget.ImageView
    public ColorFilter getColorFilter() {
        return this.f16608p;
    }

    @Override // android.widget.ImageView
    public ImageView.ScaleType getScaleType() {
        return f16591u;
    }

    @Override // android.widget.ImageView, android.view.View
    public void onDraw(Canvas canvas) {
        if (this.f16612t) {
            super.onDraw(canvas);
        } else if (this.f16602j == null) {
        } else {
            if (this.f16601i != 0) {
                canvas.drawCircle(this.f16593a.centerX(), this.f16593a.centerY(), this.f16606n, this.f16598f);
            }
            canvas.drawCircle(this.f16593a.centerX(), this.f16593a.centerY(), this.f16606n, this.f16596d);
            if (this.f16600h <= 0) {
                return;
            }
            canvas.drawCircle(this.f16594b.centerX(), this.f16594b.centerY(), this.f16607o, this.f16597e);
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        m34272b();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0071  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r8) {
        /*
            r7 = this;
            r0 = r7
            boolean r0 = r0.f16612t
            if (r0 == 0) goto Ld
            r0 = r7
            r1 = r8
            boolean r0 = super.onTouchEvent(r1)
            return r0
        Ld:
            r0 = r8
            float r0 = r0.getX()
            r9 = r0
            r0 = r8
            float r0 = r0.getY()
            r10 = r0
            r0 = r7
            android.graphics.RectF r0 = r0.f16594b
            boolean r0 = r0.isEmpty()
            r11 = r0
            r0 = 0
            r12 = r0
            r0 = r11
            if (r0 == 0) goto L2b
            goto L5f
        L2b:
            r0 = r9
            r1 = r7
            android.graphics.RectF r1 = r1.f16594b
            float r1 = r1.centerX()
            float r0 = r0 - r1
            double r0 = (double) r0
            r1 = 4611686018427387904(0x4000000000000000, double:2.0)
            double r0 = java.lang.Math.pow(r0, r1)
            r13 = r0
            r0 = r10
            r1 = r7
            android.graphics.RectF r1 = r1.f16594b
            float r1 = r1.centerY()
            float r0 = r0 - r1
            double r0 = (double) r0
            r1 = 4611686018427387904(0x4000000000000000, double:2.0)
            double r0 = java.lang.Math.pow(r0, r1)
            r1 = r13
            double r0 = r0 + r1
            r1 = r7
            float r1 = r1.f16607o
            double r1 = (double) r1
            r2 = 4611686018427387904(0x4000000000000000, double:2.0)
            double r1 = java.lang.Math.pow(r1, r2)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 > 0) goto L65
        L5f:
            r0 = 1
            r15 = r0
            goto L68
        L65:
            r0 = 0
            r15 = r0
        L68:
            r0 = r12
            r11 = r0
            r0 = r15
            if (r0 == 0) goto L80
            r0 = r12
            r11 = r0
            r0 = r7
            r1 = r8
            boolean r0 = super.onTouchEvent(r1)
            if (r0 == 0) goto L80
            r0 = 1
            r11 = r0
        L80:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: de.hdodenhof.circleimageview.CircleImageView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.widget.ImageView
    public void setAdjustViewBounds(boolean z) {
        if (!z) {
            return;
        }
        throw new IllegalArgumentException("adjustViewBounds not supported.");
    }

    public void setBorderColor(int i) {
        if (i == this.f16599g) {
            return;
        }
        this.f16599g = i;
        this.f16597e.setColor(i);
        invalidate();
    }

    public void setBorderOverlay(boolean z) {
        if (z == this.f16611s) {
            return;
        }
        this.f16611s = z;
        m34272b();
    }

    public void setBorderWidth(int i) {
        if (i == this.f16600h) {
            return;
        }
        this.f16600h = i;
        m34272b();
    }

    public void setCircleBackgroundColor(int i) {
        if (i == this.f16601i) {
            return;
        }
        this.f16601i = i;
        this.f16598f.setColor(i);
        invalidate();
    }

    public void setCircleBackgroundColorResource(int i) {
        setCircleBackgroundColor(getContext().getResources().getColor(i));
    }

    @Override // android.widget.ImageView
    public void setColorFilter(ColorFilter colorFilter) {
        if (colorFilter == this.f16608p) {
            return;
        }
        this.f16608p = colorFilter;
        Paint paint = this.f16596d;
        if (paint != null) {
            paint.setColorFilter(colorFilter);
        }
        invalidate();
    }

    public void setDisableCircularTransformation(boolean z) {
        if (this.f16612t == z) {
            return;
        }
        this.f16612t = z;
        m34273a();
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        super.setImageBitmap(bitmap);
        m34273a();
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        super.setImageDrawable(drawable);
        m34273a();
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        super.setImageResource(i);
        m34273a();
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        m34273a();
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        super.setPadding(i, i2, i3, i4);
        m34272b();
    }

    @Override // android.view.View
    public void setPaddingRelative(int i, int i2, int i3, int i4) {
        super.setPaddingRelative(i, i2, i3, i4);
        m34272b();
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        if (scaleType == f16591u) {
            return;
        }
        throw new IllegalArgumentException(String.format("ScaleType %s not supported.", scaleType));
    }
}
