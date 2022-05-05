package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Outline;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import android.widget.ImageView;
import androidx.annotation.RequiresApi;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.C0178R;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/utils/widget/ImageFilterView.class */
public class ImageFilterView extends AppCompatImageView {

    /* renamed from: f */
    private ImageMatrix f2448f = new ImageMatrix();

    /* renamed from: g */
    private boolean f2449g = true;

    /* renamed from: h */
    private float f2450h = 0.0f;

    /* renamed from: i */
    private float f2451i = 0.0f;

    /* renamed from: j */
    private float f2452j = Float.NaN;

    /* renamed from: k */
    private Path f2453k;

    /* renamed from: l */
    ViewOutlineProvider f2454l;

    /* renamed from: m */
    RectF f2455m;

    /* renamed from: n */
    Drawable[] f2456n;

    /* renamed from: o */
    LayerDrawable f2457o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/utils/widget/ImageFilterView$ImageMatrix.class */
    public static class ImageMatrix {

        /* renamed from: a */
        float[] f2460a = new float[20];

        /* renamed from: b */
        ColorMatrix f2461b = new ColorMatrix();

        /* renamed from: c */
        ColorMatrix f2462c = new ColorMatrix();

        /* renamed from: d */
        float f2463d = 1.0f;

        /* renamed from: e */
        float f2464e = 1.0f;

        /* renamed from: f */
        float f2465f = 1.0f;

        /* renamed from: g */
        float f2466g = 1.0f;

        /* renamed from: a */
        private void m20083a(float f) {
            float[] fArr = this.f2460a;
            fArr[0] = f;
            fArr[1] = 0.0f;
            fArr[2] = 0.0f;
            fArr[3] = 0.0f;
            fArr[4] = 0.0f;
            fArr[5] = 0.0f;
            fArr[6] = f;
            fArr[7] = 0.0f;
            fArr[8] = 0.0f;
            fArr[9] = 0.0f;
            fArr[10] = 0.0f;
            fArr[11] = 0.0f;
            fArr[12] = f;
            fArr[13] = 0.0f;
            fArr[14] = 0.0f;
            fArr[15] = 0.0f;
            fArr[16] = 0.0f;
            fArr[17] = 0.0f;
            fArr[18] = 1.0f;
            fArr[19] = 0.0f;
        }

        /* renamed from: b */
        private void m20082b(float f) {
            float f2 = 1.0f - f;
            float f3 = 0.2999f * f2;
            float f4 = 0.587f * f2;
            float f5 = f2 * 0.114f;
            float[] fArr = this.f2460a;
            fArr[0] = f3 + f;
            fArr[1] = f4;
            fArr[2] = f5;
            fArr[3] = 0.0f;
            fArr[4] = 0.0f;
            fArr[5] = f3;
            fArr[6] = f4 + f;
            fArr[7] = f5;
            fArr[8] = 0.0f;
            fArr[9] = 0.0f;
            fArr[10] = f3;
            fArr[11] = f4;
            fArr[12] = f5 + f;
            fArr[13] = 0.0f;
            fArr[14] = 0.0f;
            fArr[15] = 0.0f;
            fArr[16] = 0.0f;
            fArr[17] = 0.0f;
            fArr[18] = 1.0f;
            fArr[19] = 0.0f;
        }

        /* renamed from: d */
        private void m20080d(float f) {
            float f2;
            float f3;
            float f4 = f;
            if (f <= 0.0f) {
                f4 = 0.01f;
            }
            float f5 = (5000.0f / f4) / 100.0f;
            if (f5 > 66.0f) {
                double d = f5 - 60.0f;
                f2 = ((float) Math.pow(d, -0.13320475816726685d)) * 329.69873f;
                f3 = ((float) Math.pow(d, 0.07551484555006027d)) * 288.12216f;
            } else {
                f3 = (((float) Math.log(f5)) * 99.4708f) - 161.11957f;
                f2 = 255.0f;
            }
            float log = f5 < 66.0f ? f5 > 19.0f ? (((float) Math.log(f5 - 10.0f)) * 138.51773f) - 305.0448f : 0.0f : 255.0f;
            float min = Math.min(255.0f, Math.max(f2, 0.0f));
            float min2 = Math.min(255.0f, Math.max(f3, 0.0f));
            float min3 = Math.min(255.0f, Math.max(log, 0.0f));
            float log2 = (float) Math.log(50.0f);
            float log3 = (float) Math.log(40.0f);
            float min4 = Math.min(255.0f, Math.max(255.0f, 0.0f));
            float min5 = Math.min(255.0f, Math.max((log2 * 99.4708f) - 161.11957f, 0.0f));
            float f6 = min / min4;
            float f7 = min2 / min5;
            float min6 = min3 / Math.min(255.0f, Math.max((log3 * 138.51773f) - 305.0448f, 0.0f));
            float[] fArr = this.f2460a;
            fArr[0] = f6;
            fArr[1] = 0.0f;
            fArr[2] = 0.0f;
            fArr[3] = 0.0f;
            fArr[4] = 0.0f;
            fArr[5] = 0.0f;
            fArr[6] = f7;
            fArr[7] = 0.0f;
            fArr[8] = 0.0f;
            fArr[9] = 0.0f;
            fArr[10] = 0.0f;
            fArr[11] = 0.0f;
            fArr[12] = min6;
            fArr[13] = 0.0f;
            fArr[14] = 0.0f;
            fArr[15] = 0.0f;
            fArr[16] = 0.0f;
            fArr[17] = 0.0f;
            fArr[18] = 1.0f;
            fArr[19] = 0.0f;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: c */
        public void m20081c(ImageView imageView) {
            this.f2461b.reset();
            float f = this.f2464e;
            boolean z = true;
            if (f != 1.0f) {
                m20082b(f);
                this.f2461b.set(this.f2460a);
                z = true;
            } else {
                z = false;
            }
            float f2 = this.f2465f;
            if (f2 != 1.0f) {
                this.f2462c.setScale(f2, f2, f2, 1.0f);
                this.f2461b.postConcat(this.f2462c);
                z = true;
            }
            float f3 = this.f2466g;
            if (f3 != 1.0f) {
                m20080d(f3);
                this.f2462c.set(this.f2460a);
                this.f2461b.postConcat(this.f2462c);
                z = true;
            }
            float f4 = this.f2463d;
            if (f4 != 1.0f) {
                m20083a(f4);
                this.f2462c.set(this.f2460a);
                this.f2461b.postConcat(this.f2462c);
            }
            if (z) {
                imageView.setColorFilter(new ColorMatrixColorFilter(this.f2461b));
            } else {
                imageView.clearColorFilter();
            }
        }
    }

    public ImageFilterView(Context context) {
        super(context);
        m20084e(context, null);
    }

    public ImageFilterView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m20084e(context, attributeSet);
    }

    public ImageFilterView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m20084e(context, attributeSet);
    }

    /* renamed from: e */
    private void m20084e(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0178R.styleable.ImageFilterView);
            int indexCount = obtainStyledAttributes.getIndexCount();
            Drawable drawable = obtainStyledAttributes.getDrawable(C0178R.styleable.ImageFilterView_altSrc);
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0178R.styleable.ImageFilterView_crossfade) {
                    this.f2450h = obtainStyledAttributes.getFloat(index, 0.0f);
                } else if (index == C0178R.styleable.ImageFilterView_warmth) {
                    setWarmth(obtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == C0178R.styleable.ImageFilterView_saturation) {
                    setSaturation(obtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == C0178R.styleable.ImageFilterView_contrast) {
                    setContrast(obtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == C0178R.styleable.ImageFilterView_round) {
                    if (Build.VERSION.SDK_INT >= 21) {
                        setRound(obtainStyledAttributes.getDimension(index, 0.0f));
                    }
                } else if (index == C0178R.styleable.ImageFilterView_roundPercent) {
                    if (Build.VERSION.SDK_INT >= 21) {
                        setRoundPercent(obtainStyledAttributes.getFloat(index, 0.0f));
                    }
                } else if (index == C0178R.styleable.ImageFilterView_overlay) {
                    setOverlay(obtainStyledAttributes.getBoolean(index, this.f2449g));
                }
            }
            obtainStyledAttributes.recycle();
            if (drawable != null) {
                Drawable[] drawableArr = new Drawable[2];
                this.f2456n = drawableArr;
                drawableArr[0] = getDrawable();
                this.f2456n[1] = drawable;
                LayerDrawable layerDrawable = new LayerDrawable(this.f2456n);
                this.f2457o = layerDrawable;
                layerDrawable.getDrawable(1).setAlpha((int) (this.f2450h * 255.0f));
                super.setImageDrawable(this.f2457o);
            }
        }
    }

    private void setOverlay(boolean z) {
        this.f2449g = z;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        boolean z;
        if (Build.VERSION.SDK_INT >= 21 || this.f2451i == 0.0f || this.f2453k == null) {
            z = false;
        } else {
            z = true;
            canvas.save();
            canvas.clipPath(this.f2453k);
        }
        super.draw(canvas);
        if (z) {
            canvas.restore();
        }
    }

    public float getBrightness() {
        return this.f2448f.f2463d;
    }

    public float getContrast() {
        return this.f2448f.f2465f;
    }

    public float getCrossfade() {
        return this.f2450h;
    }

    public float getRound() {
        return this.f2452j;
    }

    public float getRoundPercent() {
        return this.f2451i;
    }

    public float getSaturation() {
        return this.f2448f.f2464e;
    }

    public float getWarmth() {
        return this.f2448f.f2466g;
    }

    public void setBrightness(float f) {
        ImageMatrix imageMatrix = this.f2448f;
        imageMatrix.f2463d = f;
        imageMatrix.m20081c(this);
    }

    public void setContrast(float f) {
        ImageMatrix imageMatrix = this.f2448f;
        imageMatrix.f2465f = f;
        imageMatrix.m20081c(this);
    }

    public void setCrossfade(float f) {
        this.f2450h = f;
        if (this.f2456n != null) {
            if (!this.f2449g) {
                this.f2457o.getDrawable(0).setAlpha((int) ((1.0f - this.f2450h) * 255.0f));
            }
            this.f2457o.getDrawable(1).setAlpha((int) (this.f2450h * 255.0f));
            super.setImageDrawable(this.f2457o);
        }
    }

    @RequiresApi
    public void setRound(float f) {
        if (Float.isNaN(f)) {
            this.f2452j = f;
            float f2 = this.f2451i;
            this.f2451i = -1.0f;
            setRoundPercent(f2);
            return;
        }
        boolean z = this.f2452j != f;
        this.f2452j = f;
        if (f != 0.0f) {
            if (this.f2453k == null) {
                this.f2453k = new Path();
            }
            if (this.f2455m == null) {
                this.f2455m = new RectF();
            }
            if (Build.VERSION.SDK_INT >= 21) {
                if (this.f2454l == null) {
                    ViewOutlineProvider viewOutlineProvider = new ViewOutlineProvider() { // from class: androidx.constraintlayout.utils.widget.ImageFilterView.2
                        @Override // android.view.ViewOutlineProvider
                        public void getOutline(View view, Outline outline) {
                            outline.setRoundRect(0, 0, ImageFilterView.this.getWidth(), ImageFilterView.this.getHeight(), ImageFilterView.this.f2452j);
                        }
                    };
                    this.f2454l = viewOutlineProvider;
                    setOutlineProvider(viewOutlineProvider);
                }
                setClipToOutline(true);
            }
            this.f2455m.set(0.0f, 0.0f, getWidth(), getHeight());
            this.f2453k.reset();
            Path path = this.f2453k;
            RectF rectF = this.f2455m;
            float f3 = this.f2452j;
            path.addRoundRect(rectF, f3, f3, Path.Direction.CW);
        } else if (Build.VERSION.SDK_INT >= 21) {
            setClipToOutline(false);
        }
        if (z && Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    @RequiresApi
    public void setRoundPercent(float f) {
        boolean z = this.f2451i != f;
        this.f2451i = f;
        if (f != 0.0f) {
            if (this.f2453k == null) {
                this.f2453k = new Path();
            }
            if (this.f2455m == null) {
                this.f2455m = new RectF();
            }
            if (Build.VERSION.SDK_INT >= 21) {
                if (this.f2454l == null) {
                    ViewOutlineProvider viewOutlineProvider = new ViewOutlineProvider() { // from class: androidx.constraintlayout.utils.widget.ImageFilterView.1
                        @Override // android.view.ViewOutlineProvider
                        public void getOutline(View view, Outline outline) {
                            int width = ImageFilterView.this.getWidth();
                            int height = ImageFilterView.this.getHeight();
                            outline.setRoundRect(0, 0, width, height, (Math.min(width, height) * ImageFilterView.this.f2451i) / 2.0f);
                        }
                    };
                    this.f2454l = viewOutlineProvider;
                    setOutlineProvider(viewOutlineProvider);
                }
                setClipToOutline(true);
            }
            int width = getWidth();
            int height = getHeight();
            float min = (Math.min(width, height) * this.f2451i) / 2.0f;
            this.f2455m.set(0.0f, 0.0f, width, height);
            this.f2453k.reset();
            this.f2453k.addRoundRect(this.f2455m, min, min, Path.Direction.CW);
        } else if (Build.VERSION.SDK_INT >= 21) {
            setClipToOutline(false);
        }
        if (z && Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    public void setSaturation(float f) {
        ImageMatrix imageMatrix = this.f2448f;
        imageMatrix.f2464e = f;
        imageMatrix.m20081c(this);
    }

    public void setWarmth(float f) {
        ImageMatrix imageMatrix = this.f2448f;
        imageMatrix.f2466g = f;
        imageMatrix.m20081c(this);
    }
}
