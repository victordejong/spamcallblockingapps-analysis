package com.makeramen.roundedimageview;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.ColorFilter;
import android.graphics.Shader;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.ImageView;
import com.google.android.flexbox.FlexItem;
import com.makeramen.roundedimageview.C1399a;
/* loaded from: classes-dex2jar.jar:com/makeramen/roundedimageview/RoundedImageView.class */
public class RoundedImageView extends ImageView {

    /* renamed from: d */
    private final float[] f3853d;

    /* renamed from: e */
    private Drawable f3854e;

    /* renamed from: f */
    private ColorStateList f3855f;

    /* renamed from: g */
    private float f3856g;

    /* renamed from: h */
    private ColorFilter f3857h;

    /* renamed from: i */
    private boolean f3858i;

    /* renamed from: j */
    private Drawable f3859j;

    /* renamed from: k */
    private boolean f3860k;

    /* renamed from: l */
    private boolean f3861l;

    /* renamed from: m */
    private boolean f3862m;

    /* renamed from: n */
    private int f3863n;

    /* renamed from: o */
    private int f3864o;

    /* renamed from: p */
    private ImageView.ScaleType f3865p;

    /* renamed from: q */
    private Shader.TileMode f3866q;

    /* renamed from: r */
    private Shader.TileMode f3867r;

    /* renamed from: b */
    static final /* synthetic */ boolean f3851b = !RoundedImageView.class.desiredAssertionStatus();

    /* renamed from: a */
    public static final Shader.TileMode f3850a = Shader.TileMode.CLAMP;

    /* renamed from: c */
    private static final ImageView.ScaleType[] f3852c = {ImageView.ScaleType.MATRIX, ImageView.ScaleType.FIT_XY, ImageView.ScaleType.FIT_START, ImageView.ScaleType.FIT_CENTER, ImageView.ScaleType.FIT_END, ImageView.ScaleType.CENTER, ImageView.ScaleType.CENTER_CROP, ImageView.ScaleType.CENTER_INSIDE};

    /* renamed from: com.makeramen.roundedimageview.RoundedImageView$1 */
    /* loaded from: classes-dex2jar.jar:com/makeramen/roundedimageview/RoundedImageView$1.class */
    public static /* synthetic */ class C13981 {

        /* renamed from: a */
        static final /* synthetic */ int[] f3868a = new int[ImageView.ScaleType.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            try {
                f3868a[ImageView.ScaleType.CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3868a[ImageView.ScaleType.CENTER_CROP.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f3868a[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f3868a[ImageView.ScaleType.FIT_CENTER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f3868a[ImageView.ScaleType.FIT_START.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f3868a[ImageView.ScaleType.FIT_END.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f3868a[ImageView.ScaleType.FIT_XY.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    public RoundedImageView(Context context) {
        super(context);
        this.f3853d = new float[]{FlexItem.FLEX_GROW_DEFAULT, FlexItem.FLEX_GROW_DEFAULT, FlexItem.FLEX_GROW_DEFAULT, FlexItem.FLEX_GROW_DEFAULT};
        this.f3855f = ColorStateList.valueOf(-16777216);
        this.f3856g = FlexItem.FLEX_GROW_DEFAULT;
        this.f3857h = null;
        this.f3858i = false;
        this.f3860k = false;
        this.f3861l = false;
        this.f3862m = false;
        Shader.TileMode tileMode = f3850a;
        this.f3866q = tileMode;
        this.f3867r = tileMode;
    }

    public RoundedImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RoundedImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f3853d = new float[]{FlexItem.FLEX_GROW_DEFAULT, FlexItem.FLEX_GROW_DEFAULT, FlexItem.FLEX_GROW_DEFAULT, FlexItem.FLEX_GROW_DEFAULT};
        this.f3855f = ColorStateList.valueOf(-16777216);
        this.f3856g = FlexItem.FLEX_GROW_DEFAULT;
        this.f3857h = null;
        this.f3858i = false;
        this.f3860k = false;
        this.f3861l = false;
        this.f3862m = false;
        Shader.TileMode tileMode = f3850a;
        this.f3866q = tileMode;
        this.f3867r = tileMode;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1399a.C1400a.RoundedImageView, i, 0);
        int i2 = obtainStyledAttributes.getInt(C1399a.C1400a.RoundedImageView_android_scaleType, -1);
        if (i2 >= 0) {
            setScaleType(f3852c[i2]);
        } else {
            setScaleType(ImageView.ScaleType.FIT_CENTER);
        }
        float dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(C1399a.C1400a.RoundedImageView_riv_corner_radius, -1);
        this.f3853d[0] = obtainStyledAttributes.getDimensionPixelSize(C1399a.C1400a.RoundedImageView_riv_corner_radius_top_left, -1);
        this.f3853d[1] = obtainStyledAttributes.getDimensionPixelSize(C1399a.C1400a.RoundedImageView_riv_corner_radius_top_right, -1);
        this.f3853d[2] = obtainStyledAttributes.getDimensionPixelSize(C1399a.C1400a.RoundedImageView_riv_corner_radius_bottom_right, -1);
        this.f3853d[3] = obtainStyledAttributes.getDimensionPixelSize(C1399a.C1400a.RoundedImageView_riv_corner_radius_bottom_left, -1);
        int length = this.f3853d.length;
        boolean z = false;
        for (int i3 = 0; i3 < length; i3++) {
            float[] fArr = this.f3853d;
            if (fArr[i3] < FlexItem.FLEX_GROW_DEFAULT) {
                fArr[i3] = 0.0f;
            } else {
                z = true;
            }
        }
        if (!z) {
            float f = dimensionPixelSize < FlexItem.FLEX_GROW_DEFAULT ? 0.0f : dimensionPixelSize;
            int length2 = this.f3853d.length;
            for (int i4 = 0; i4 < length2; i4++) {
                this.f3853d[i4] = f;
            }
        }
        this.f3856g = obtainStyledAttributes.getDimensionPixelSize(C1399a.C1400a.RoundedImageView_riv_border_width, -1);
        if (this.f3856g < FlexItem.FLEX_GROW_DEFAULT) {
            this.f3856g = FlexItem.FLEX_GROW_DEFAULT;
        }
        this.f3855f = obtainStyledAttributes.getColorStateList(C1399a.C1400a.RoundedImageView_riv_border_color);
        if (this.f3855f == null) {
            this.f3855f = ColorStateList.valueOf(-16777216);
        }
        this.f3862m = obtainStyledAttributes.getBoolean(C1399a.C1400a.RoundedImageView_riv_mutate_background, false);
        this.f3861l = obtainStyledAttributes.getBoolean(C1399a.C1400a.RoundedImageView_riv_oval, false);
        int i5 = obtainStyledAttributes.getInt(C1399a.C1400a.RoundedImageView_riv_tile_mode, -2);
        if (i5 != -2) {
            setTileModeX(m3766a(i5));
            setTileModeY(m3766a(i5));
        }
        int i6 = obtainStyledAttributes.getInt(C1399a.C1400a.RoundedImageView_riv_tile_mode_x, -2);
        if (i6 != -2) {
            setTileModeX(m3766a(i6));
        }
        int i7 = obtainStyledAttributes.getInt(C1399a.C1400a.RoundedImageView_riv_tile_mode_y, -2);
        if (i7 != -2) {
            setTileModeY(m3766a(i7));
        }
        m3762c();
        m3764a(true);
        if (this.f3862m) {
            super.setBackgroundDrawable(this.f3854e);
        }
        obtainStyledAttributes.recycle();
    }

    /* renamed from: a */
    private static Shader.TileMode m3766a(int i) {
        if (i != 0) {
            if (i == 1) {
                return Shader.TileMode.REPEAT;
            }
            if (i == 2) {
                return Shader.TileMode.MIRROR;
            }
            return null;
        }
        return Shader.TileMode.CLAMP;
    }

    /* renamed from: a */
    private Drawable m3768a() {
        Resources resources = getResources();
        if (resources == null) {
            return null;
        }
        int i = this.f3863n;
        Drawable drawable = null;
        if (i != 0) {
            try {
                drawable = resources.getDrawable(i);
            } catch (Exception e) {
                Log.w("RoundedImageView", "Unable to find resource: " + this.f3863n, e);
                this.f3863n = 0;
                drawable = null;
            }
        }
        return C1401b.m3753a(drawable);
    }

    /* renamed from: a */
    private void m3765a(Drawable drawable, ImageView.ScaleType scaleType) {
        if (drawable == null) {
            return;
        }
        if (drawable instanceof C1401b) {
            C1401b c1401b = (C1401b) drawable;
            c1401b.m3752a(scaleType).m3759a(this.f3856g).m3757a(this.f3855f).m3751a(this.f3861l).m3754a(this.f3866q).m3748b(this.f3867r);
            float[] fArr = this.f3853d;
            if (fArr != null) {
                c1401b.m3758a(fArr[0], fArr[1], fArr[2], fArr[3]);
            }
            m3761d();
        } else if (drawable instanceof LayerDrawable) {
            LayerDrawable layerDrawable = (LayerDrawable) drawable;
            int numberOfLayers = layerDrawable.getNumberOfLayers();
            for (int i = 0; i < numberOfLayers; i++) {
                m3765a(layerDrawable.getDrawable(i), scaleType);
            }
        }
    }

    /* renamed from: a */
    private void m3764a(boolean z) {
        if (this.f3862m) {
            if (z) {
                this.f3854e = C1401b.m3753a(this.f3854e);
            }
            m3765a(this.f3854e, ImageView.ScaleType.FIT_XY);
        }
    }

    /* renamed from: b */
    private Drawable m3763b() {
        Resources resources = getResources();
        if (resources == null) {
            return null;
        }
        int i = this.f3864o;
        Drawable drawable = null;
        if (i != 0) {
            try {
                drawable = resources.getDrawable(i);
            } catch (Exception e) {
                Log.w("RoundedImageView", "Unable to find resource: " + this.f3864o, e);
                this.f3864o = 0;
                drawable = null;
            }
        }
        return C1401b.m3753a(drawable);
    }

    /* renamed from: c */
    private void m3762c() {
        m3765a(this.f3859j, this.f3865p);
    }

    /* renamed from: d */
    private void m3761d() {
        Drawable drawable = this.f3859j;
        if (drawable == null || !this.f3858i) {
            return;
        }
        this.f3859j = drawable.mutate();
        if (!this.f3860k) {
            return;
        }
        this.f3859j.setColorFilter(this.f3857h);
    }

    /* renamed from: a */
    public void m3767a(float f, float f2, float f3, float f4) {
        float[] fArr = this.f3853d;
        if (fArr[0] == f && fArr[1] == f2 && fArr[2] == f4 && fArr[3] == f3) {
            return;
        }
        float[] fArr2 = this.f3853d;
        fArr2[0] = f;
        fArr2[1] = f2;
        fArr2[3] = f3;
        fArr2[2] = f4;
        m3762c();
        m3764a(false);
        invalidate();
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        invalidate();
    }

    public int getBorderColor() {
        return this.f3855f.getDefaultColor();
    }

    public ColorStateList getBorderColors() {
        return this.f3855f;
    }

    public float getBorderWidth() {
        return this.f3856g;
    }

    public float getCornerRadius() {
        return getMaxCornerRadius();
    }

    public float getMaxCornerRadius() {
        float f = 0.0f;
        for (float f2 : this.f3853d) {
            f = Math.max(f2, f);
        }
        return f;
    }

    @Override // android.widget.ImageView
    public ImageView.ScaleType getScaleType() {
        return this.f3865p;
    }

    public Shader.TileMode getTileModeX() {
        return this.f3866q;
    }

    public Shader.TileMode getTileModeY() {
        return this.f3867r;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        this.f3854e = new ColorDrawable(i);
        setBackgroundDrawable(this.f3854e);
    }

    @Override // android.view.View
    @Deprecated
    public void setBackgroundDrawable(Drawable drawable) {
        this.f3854e = drawable;
        m3764a(true);
        super.setBackgroundDrawable(this.f3854e);
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        if (this.f3864o != i) {
            this.f3864o = i;
            this.f3854e = m3763b();
            setBackgroundDrawable(this.f3854e);
        }
    }

    public void setBorderColor(int i) {
        setBorderColor(ColorStateList.valueOf(i));
    }

    public void setBorderColor(ColorStateList colorStateList) {
        if (this.f3855f.equals(colorStateList)) {
            return;
        }
        if (colorStateList == null) {
            colorStateList = ColorStateList.valueOf(-16777216);
        }
        this.f3855f = colorStateList;
        m3762c();
        m3764a(false);
        if (this.f3856g <= FlexItem.FLEX_GROW_DEFAULT) {
            return;
        }
        invalidate();
    }

    public void setBorderWidth(float f) {
        if (this.f3856g == f) {
            return;
        }
        this.f3856g = f;
        m3762c();
        m3764a(false);
        invalidate();
    }

    public void setBorderWidth(int i) {
        setBorderWidth(getResources().getDimension(i));
    }

    @Override // android.widget.ImageView
    public void setColorFilter(ColorFilter colorFilter) {
        if (this.f3857h != colorFilter) {
            this.f3857h = colorFilter;
            this.f3860k = true;
            this.f3858i = true;
            m3761d();
            invalidate();
        }
    }

    public void setCornerRadius(float f) {
        m3767a(f, f, f, f);
    }

    public void setCornerRadiusDimen(int i) {
        float dimension = getResources().getDimension(i);
        m3767a(dimension, dimension, dimension, dimension);
    }

    @Override // android.widget.ImageView
    public void setImageBitmap(Bitmap bitmap) {
        this.f3863n = 0;
        this.f3859j = C1401b.m3756a(bitmap);
        m3762c();
        super.setImageDrawable(this.f3859j);
    }

    @Override // android.widget.ImageView
    public void setImageDrawable(Drawable drawable) {
        this.f3863n = 0;
        this.f3859j = C1401b.m3753a(drawable);
        m3762c();
        super.setImageDrawable(this.f3859j);
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        if (this.f3863n != i) {
            this.f3863n = i;
            this.f3859j = m3768a();
            m3762c();
            super.setImageDrawable(this.f3859j);
        }
    }

    @Override // android.widget.ImageView
    public void setImageURI(Uri uri) {
        super.setImageURI(uri);
        setImageDrawable(getDrawable());
    }

    public void setOval(boolean z) {
        this.f3861l = z;
        m3762c();
        m3764a(false);
        invalidate();
    }

    @Override // android.widget.ImageView
    public void setScaleType(ImageView.ScaleType scaleType) {
        if (f3851b || scaleType != null) {
            if (this.f3865p == scaleType) {
                return;
            }
            this.f3865p = scaleType;
            switch (C13981.f3868a[scaleType.ordinal()]) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 6:
                case 7:
                    super.setScaleType(ImageView.ScaleType.FIT_XY);
                    break;
                default:
                    super.setScaleType(scaleType);
                    break;
            }
            m3762c();
            m3764a(false);
            invalidate();
            return;
        }
        throw new AssertionError();
    }

    public void setTileModeX(Shader.TileMode tileMode) {
        if (this.f3866q == tileMode) {
            return;
        }
        this.f3866q = tileMode;
        m3762c();
        m3764a(false);
        invalidate();
    }

    public void setTileModeY(Shader.TileMode tileMode) {
        if (this.f3867r == tileMode) {
            return;
        }
        this.f3867r = tileMode;
        m3762c();
        m3764a(false);
        invalidate();
    }
}
