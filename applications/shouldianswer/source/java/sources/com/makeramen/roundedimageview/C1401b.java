package com.makeramen.roundedimageview;

import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.Log;
import android.widget.ImageView;
import com.google.android.flexbox.FlexItem;
import java.util.HashSet;
/* renamed from: com.makeramen.roundedimageview.b */
/* loaded from: classes-dex2jar.jar:com/makeramen/roundedimageview/b.class */
public class C1401b extends Drawable {

    /* renamed from: d */
    private final Bitmap f3872d;

    /* renamed from: f */
    private final int f3874f;

    /* renamed from: g */
    private final int f3875g;

    /* renamed from: a */
    private final RectF f3869a = new RectF();

    /* renamed from: b */
    private final RectF f3870b = new RectF();

    /* renamed from: c */
    private final RectF f3871c = new RectF();

    /* renamed from: h */
    private final RectF f3876h = new RectF();

    /* renamed from: j */
    private final Matrix f3878j = new Matrix();

    /* renamed from: k */
    private final RectF f3879k = new RectF();

    /* renamed from: l */
    private Shader.TileMode f3880l = Shader.TileMode.CLAMP;

    /* renamed from: m */
    private Shader.TileMode f3881m = Shader.TileMode.CLAMP;

    /* renamed from: n */
    private boolean f3882n = true;

    /* renamed from: o */
    private float f3883o = FlexItem.FLEX_GROW_DEFAULT;

    /* renamed from: p */
    private final boolean[] f3884p = {true, true, true, true};

    /* renamed from: q */
    private boolean f3885q = false;

    /* renamed from: r */
    private float f3886r = FlexItem.FLEX_GROW_DEFAULT;

    /* renamed from: s */
    private ColorStateList f3887s = ColorStateList.valueOf(-16777216);

    /* renamed from: t */
    private ImageView.ScaleType f3888t = ImageView.ScaleType.FIT_CENTER;

    /* renamed from: e */
    private final Paint f3873e = new Paint();

    /* renamed from: i */
    private final Paint f3877i = new Paint();

    /* renamed from: com.makeramen.roundedimageview.b$1 */
    /* loaded from: classes-dex2jar.jar:com/makeramen/roundedimageview/b$1.class */
    public static /* synthetic */ class C14021 {

        /* renamed from: a */
        static final /* synthetic */ int[] f3889a = new int[ImageView.ScaleType.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            try {
                f3889a[ImageView.ScaleType.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3889a[ImageView.ScaleType.CENTER_CROP.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f3889a[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f3889a[ImageView.ScaleType.FIT_CENTER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f3889a[ImageView.ScaleType.FIT_END.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f3889a[ImageView.ScaleType.FIT_START.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f3889a[ImageView.ScaleType.FIT_XY.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    public C1401b(Bitmap bitmap) {
        this.f3872d = bitmap;
        this.f3874f = bitmap.getWidth();
        this.f3875g = bitmap.getHeight();
        this.f3871c.set(FlexItem.FLEX_GROW_DEFAULT, FlexItem.FLEX_GROW_DEFAULT, this.f3874f, this.f3875g);
        this.f3873e.setStyle(Paint.Style.FILL);
        this.f3873e.setAntiAlias(true);
        this.f3877i.setStyle(Paint.Style.STROKE);
        this.f3877i.setAntiAlias(true);
        this.f3877i.setColor(this.f3887s.getColorForState(getState(), -16777216));
        this.f3877i.setStrokeWidth(this.f3886r);
    }

    /* renamed from: a */
    public static Drawable m3753a(Drawable drawable) {
        C1401b c1401b = drawable;
        if (drawable != null) {
            if (drawable instanceof C1401b) {
                return drawable;
            }
            if (drawable instanceof LayerDrawable) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                int numberOfLayers = layerDrawable.getNumberOfLayers();
                for (int i = 0; i < numberOfLayers; i++) {
                    layerDrawable.setDrawableByLayerId(layerDrawable.getId(i), m3753a(layerDrawable.getDrawable(i)));
                }
                return layerDrawable;
            }
            Bitmap m3747b = m3747b(drawable);
            c1401b = drawable;
            if (m3747b != null) {
                c1401b = new C1401b(m3747b);
            }
        }
        return c1401b;
    }

    /* renamed from: a */
    public static C1401b m3756a(Bitmap bitmap) {
        if (bitmap != null) {
            return new C1401b(bitmap);
        }
        return null;
    }

    /* renamed from: a */
    private void m3760a() {
        float f;
        float f2;
        int i = C14021.f3889a[this.f3888t.ordinal()];
        if (i == 1) {
            this.f3876h.set(this.f3869a);
            RectF rectF = this.f3876h;
            float f3 = this.f3886r;
            rectF.inset(f3 / 2.0f, f3 / 2.0f);
            this.f3878j.reset();
            this.f3878j.setTranslate((int) (((this.f3876h.width() - this.f3874f) * 0.5f) + 0.5f), (int) (((this.f3876h.height() - this.f3875g) * 0.5f) + 0.5f));
        } else if (i == 2) {
            this.f3876h.set(this.f3869a);
            RectF rectF2 = this.f3876h;
            float f4 = this.f3886r;
            rectF2.inset(f4 / 2.0f, f4 / 2.0f);
            this.f3878j.reset();
            float f5 = 0.0f;
            if (this.f3874f * this.f3876h.height() > this.f3876h.width() * this.f3875g) {
                f = this.f3876h.height() / this.f3875g;
                f2 = 0.0f;
                f5 = (this.f3876h.width() - (this.f3874f * f)) * 0.5f;
            } else {
                f = this.f3876h.width() / this.f3874f;
                f2 = (this.f3876h.height() - (this.f3875g * f)) * 0.5f;
            }
            this.f3878j.setScale(f, f);
            float f6 = this.f3886r;
            this.f3878j.postTranslate(((int) (f5 + 0.5f)) + (f6 / 2.0f), ((int) (f2 + 0.5f)) + (f6 / 2.0f));
        } else if (i == 3) {
            this.f3878j.reset();
            float min = (((float) this.f3874f) > this.f3869a.width() || ((float) this.f3875g) > this.f3869a.height()) ? Math.min(this.f3869a.width() / this.f3874f, this.f3869a.height() / this.f3875g) : 1.0f;
            float width = (int) (((this.f3869a.width() - (this.f3874f * min)) * 0.5f) + 0.5f);
            float height = (int) (((this.f3869a.height() - (this.f3875g * min)) * 0.5f) + 0.5f);
            this.f3878j.setScale(min, min);
            this.f3878j.postTranslate(width, height);
            this.f3876h.set(this.f3871c);
            this.f3878j.mapRect(this.f3876h);
            RectF rectF3 = this.f3876h;
            float f7 = this.f3886r;
            rectF3.inset(f7 / 2.0f, f7 / 2.0f);
            this.f3878j.setRectToRect(this.f3871c, this.f3876h, Matrix.ScaleToFit.FILL);
        } else if (i == 5) {
            this.f3876h.set(this.f3871c);
            this.f3878j.setRectToRect(this.f3871c, this.f3869a, Matrix.ScaleToFit.END);
            this.f3878j.mapRect(this.f3876h);
            RectF rectF4 = this.f3876h;
            float f8 = this.f3886r;
            rectF4.inset(f8 / 2.0f, f8 / 2.0f);
            this.f3878j.setRectToRect(this.f3871c, this.f3876h, Matrix.ScaleToFit.FILL);
        } else if (i == 6) {
            this.f3876h.set(this.f3871c);
            this.f3878j.setRectToRect(this.f3871c, this.f3869a, Matrix.ScaleToFit.START);
            this.f3878j.mapRect(this.f3876h);
            RectF rectF5 = this.f3876h;
            float f9 = this.f3886r;
            rectF5.inset(f9 / 2.0f, f9 / 2.0f);
            this.f3878j.setRectToRect(this.f3871c, this.f3876h, Matrix.ScaleToFit.FILL);
        } else if (i != 7) {
            this.f3876h.set(this.f3871c);
            this.f3878j.setRectToRect(this.f3871c, this.f3869a, Matrix.ScaleToFit.CENTER);
            this.f3878j.mapRect(this.f3876h);
            RectF rectF6 = this.f3876h;
            float f10 = this.f3886r;
            rectF6.inset(f10 / 2.0f, f10 / 2.0f);
            this.f3878j.setRectToRect(this.f3871c, this.f3876h, Matrix.ScaleToFit.FILL);
        } else {
            this.f3876h.set(this.f3869a);
            RectF rectF7 = this.f3876h;
            float f11 = this.f3886r;
            rectF7.inset(f11 / 2.0f, f11 / 2.0f);
            this.f3878j.reset();
            this.f3878j.setRectToRect(this.f3871c, this.f3876h, Matrix.ScaleToFit.FILL);
        }
        this.f3870b.set(this.f3876h);
    }

    /* renamed from: a */
    private void m3755a(Canvas canvas) {
        if (!m3746b(this.f3884p) && this.f3883o != FlexItem.FLEX_GROW_DEFAULT) {
            float f = this.f3870b.left;
            float f2 = this.f3870b.top;
            float width = this.f3870b.width() + f;
            float height = this.f3870b.height() + f2;
            float f3 = this.f3883o;
            if (!this.f3884p[0]) {
                this.f3879k.set(f, f2, f + f3, f2 + f3);
                canvas.drawRect(this.f3879k, this.f3873e);
            }
            if (!this.f3884p[1]) {
                this.f3879k.set(width - f3, f2, width, f3);
                canvas.drawRect(this.f3879k, this.f3873e);
            }
            if (!this.f3884p[2]) {
                this.f3879k.set(width - f3, height - f3, width, height);
                canvas.drawRect(this.f3879k, this.f3873e);
            }
            if (this.f3884p[3]) {
                return;
            }
            this.f3879k.set(f, height - f3, f3 + f, height);
            canvas.drawRect(this.f3879k, this.f3873e);
        }
    }

    /* renamed from: a */
    private static boolean m3750a(boolean[] zArr) {
        for (boolean z : zArr) {
            if (z) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public static Bitmap m3747b(Drawable drawable) {
        Bitmap bitmap;
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        }
        try {
            Bitmap createBitmap = Bitmap.createBitmap(Math.max(drawable.getIntrinsicWidth(), 2), Math.max(drawable.getIntrinsicHeight(), 2), Bitmap.Config.ARGB_8888);
            Canvas canvas = new Canvas(createBitmap);
            drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            drawable.draw(canvas);
            bitmap = createBitmap;
        } catch (Exception e) {
            e.printStackTrace();
            Log.w("RoundedDrawable", "Failed to create bitmap from drawable!");
            bitmap = null;
        }
        return bitmap;
    }

    /* renamed from: b */
    private void m3749b(Canvas canvas) {
        if (!m3746b(this.f3884p) && this.f3883o != FlexItem.FLEX_GROW_DEFAULT) {
            float f = this.f3870b.left;
            float f2 = this.f3870b.top;
            float width = f + this.f3870b.width();
            float height = f2 + this.f3870b.height();
            float f3 = this.f3883o;
            float f4 = this.f3886r / 2.0f;
            if (!this.f3884p[0]) {
                canvas.drawLine(f - f4, f2, f + f3, f2, this.f3877i);
                canvas.drawLine(f, f2 - f4, f, f2 + f3, this.f3877i);
            }
            if (!this.f3884p[1]) {
                canvas.drawLine((width - f3) - f4, f2, width, f2, this.f3877i);
                canvas.drawLine(width, f2 - f4, width, f2 + f3, this.f3877i);
            }
            if (!this.f3884p[2]) {
                canvas.drawLine((width - f3) - f4, height, width + f4, height, this.f3877i);
                canvas.drawLine(width, height - f3, width, height, this.f3877i);
            }
            if (this.f3884p[3]) {
                return;
            }
            canvas.drawLine(f - f4, height, f + f3, height, this.f3877i);
            canvas.drawLine(f, height - f3, f, height, this.f3877i);
        }
    }

    /* renamed from: b */
    private static boolean m3746b(boolean[] zArr) {
        for (boolean z : zArr) {
            if (z) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: a */
    public C1401b m3759a(float f) {
        this.f3886r = f;
        this.f3877i.setStrokeWidth(this.f3886r);
        return this;
    }

    /* renamed from: a */
    public C1401b m3758a(float f, float f2, float f3, float f4) {
        HashSet hashSet = new HashSet(4);
        hashSet.add(Float.valueOf(f));
        hashSet.add(Float.valueOf(f2));
        hashSet.add(Float.valueOf(f3));
        hashSet.add(Float.valueOf(f4));
        hashSet.remove(Float.valueOf((float) FlexItem.FLEX_GROW_DEFAULT));
        if (hashSet.size() <= 1) {
            if (!hashSet.isEmpty()) {
                float floatValue = ((Float) hashSet.iterator().next()).floatValue();
                if (Float.isInfinite(floatValue) || Float.isNaN(floatValue) || floatValue < FlexItem.FLEX_GROW_DEFAULT) {
                    throw new IllegalArgumentException("Invalid radius value: " + floatValue);
                }
                this.f3883o = floatValue;
            } else {
                this.f3883o = FlexItem.FLEX_GROW_DEFAULT;
            }
            this.f3884p[0] = f > FlexItem.FLEX_GROW_DEFAULT;
            this.f3884p[1] = f2 > FlexItem.FLEX_GROW_DEFAULT;
            this.f3884p[2] = f3 > FlexItem.FLEX_GROW_DEFAULT;
            boolean[] zArr = this.f3884p;
            boolean z = false;
            if (f4 > FlexItem.FLEX_GROW_DEFAULT) {
                z = true;
            }
            zArr[3] = z;
            return this;
        }
        throw new IllegalArgumentException("Multiple nonzero corner radii not yet supported.");
    }

    /* renamed from: a */
    public C1401b m3757a(ColorStateList colorStateList) {
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(0);
        }
        this.f3887s = colorStateList;
        this.f3877i.setColor(this.f3887s.getColorForState(getState(), -16777216));
        return this;
    }

    /* renamed from: a */
    public C1401b m3754a(Shader.TileMode tileMode) {
        if (this.f3880l != tileMode) {
            this.f3880l = tileMode;
            this.f3882n = true;
            invalidateSelf();
        }
        return this;
    }

    /* renamed from: a */
    public C1401b m3752a(ImageView.ScaleType scaleType) {
        ImageView.ScaleType scaleType2 = scaleType;
        if (scaleType == null) {
            scaleType2 = ImageView.ScaleType.FIT_CENTER;
        }
        if (this.f3888t != scaleType2) {
            this.f3888t = scaleType2;
            m3760a();
        }
        return this;
    }

    /* renamed from: a */
    public C1401b m3751a(boolean z) {
        this.f3885q = z;
        return this;
    }

    /* renamed from: b */
    public C1401b m3748b(Shader.TileMode tileMode) {
        if (this.f3881m != tileMode) {
            this.f3881m = tileMode;
            this.f3882n = true;
            invalidateSelf();
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (this.f3882n) {
            BitmapShader bitmapShader = new BitmapShader(this.f3872d, this.f3880l, this.f3881m);
            if (this.f3880l == Shader.TileMode.CLAMP && this.f3881m == Shader.TileMode.CLAMP) {
                bitmapShader.setLocalMatrix(this.f3878j);
            }
            this.f3873e.setShader(bitmapShader);
            this.f3882n = false;
        }
        if (this.f3885q) {
            if (this.f3886r <= FlexItem.FLEX_GROW_DEFAULT) {
                canvas.drawOval(this.f3870b, this.f3873e);
                return;
            }
            canvas.drawOval(this.f3870b, this.f3873e);
            canvas.drawOval(this.f3876h, this.f3877i);
        } else if (!m3750a(this.f3884p)) {
            canvas.drawRect(this.f3870b, this.f3873e);
            if (this.f3886r <= FlexItem.FLEX_GROW_DEFAULT) {
                return;
            }
            canvas.drawRect(this.f3876h, this.f3877i);
        } else {
            float f = this.f3883o;
            if (this.f3886r <= FlexItem.FLEX_GROW_DEFAULT) {
                canvas.drawRoundRect(this.f3870b, f, f, this.f3873e);
                m3755a(canvas);
                return;
            }
            canvas.drawRoundRect(this.f3870b, f, f, this.f3873e);
            canvas.drawRoundRect(this.f3876h, f, f, this.f3877i);
            m3755a(canvas);
            m3749b(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f3873e.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        return this.f3873e.getColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f3875g;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f3874f;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return this.f3887s.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f3869a.set(rect);
        m3760a();
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        int colorForState = this.f3887s.getColorForState(iArr, 0);
        if (this.f3877i.getColor() != colorForState) {
            this.f3877i.setColor(colorForState);
            return true;
        }
        return super.onStateChange(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f3873e.setAlpha(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f3873e.setColorFilter(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        this.f3873e.setDither(z);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        this.f3873e.setFilterBitmap(z);
        invalidateSelf();
    }
}
