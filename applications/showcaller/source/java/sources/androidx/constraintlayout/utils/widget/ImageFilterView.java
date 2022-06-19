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
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.C0523e;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/utils/widget/ImageFilterView.class */
public class ImageFilterView extends AppCompatImageView {

    /* renamed from: f */
    private C0507c f2414f = new C0507c();

    /* renamed from: g */
    private boolean f2415g = true;

    /* renamed from: h */
    private float f2416h = 0.0f;

    /* renamed from: i */
    private float f2417i = 0.0f;

    /* renamed from: j */
    private float f2418j = Float.NaN;

    /* renamed from: k */
    private Path f2419k;

    /* renamed from: l */
    ViewOutlineProvider f2420l;

    /* renamed from: m */
    RectF f2421m;

    /* renamed from: n */
    Drawable[] f2422n;

    /* renamed from: o */
    LayerDrawable f2423o;

    /* renamed from: androidx.constraintlayout.utils.widget.ImageFilterView$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/utils/widget/ImageFilterView$a.class */
    public class C0505a extends ViewOutlineProvider {
        C0505a() {
            ImageFilterView.this = r4;
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            int width = ImageFilterView.this.getWidth();
            int height = ImageFilterView.this.getHeight();
            outline.setRoundRect(0, 0, width, height, (Math.min(width, height) * ImageFilterView.this.f2417i) / 2.0f);
        }
    }

    /* renamed from: androidx.constraintlayout.utils.widget.ImageFilterView$b */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/utils/widget/ImageFilterView$b.class */
    public class C0506b extends ViewOutlineProvider {
        C0506b() {
            ImageFilterView.this = r4;
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, ImageFilterView.this.getWidth(), ImageFilterView.this.getHeight(), ImageFilterView.this.f2418j);
        }
    }

    /* renamed from: androidx.constraintlayout.utils.widget.ImageFilterView$c */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/utils/widget/ImageFilterView$c.class */
    public static class C0507c {

        /* renamed from: a */
        float[] f2426a = new float[20];

        /* renamed from: b */
        ColorMatrix f2427b = new ColorMatrix();

        /* renamed from: c */
        ColorMatrix f2428c = new ColorMatrix();

        /* renamed from: d */
        float f2429d = 1.0f;

        /* renamed from: e */
        float f2430e = 1.0f;

        /* renamed from: f */
        float f2431f = 1.0f;

        /* renamed from: g */
        float f2432g = 1.0f;

        /* renamed from: a */
        private void m33726a(float f) {
            float[] fArr = this.f2426a;
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
        private void m33725b(float f) {
            float f2 = 1.0f - f;
            float f3 = 0.2999f * f2;
            float f4 = 0.587f * f2;
            float f5 = f2 * 0.114f;
            float[] fArr = this.f2426a;
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
        private void m33723d(float f) {
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
            float[] fArr = this.f2426a;
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

        /* renamed from: c */
        public void m33724c(ImageView imageView) {
            boolean z;
            this.f2427b.reset();
            float f = this.f2430e;
            if (f != 1.0f) {
                m33725b(f);
                this.f2427b.set(this.f2426a);
                z = true;
            } else {
                z = false;
            }
            float f2 = this.f2431f;
            if (f2 != 1.0f) {
                this.f2428c.setScale(f2, f2, f2, 1.0f);
                this.f2427b.postConcat(this.f2428c);
                z = true;
            }
            float f3 = this.f2432g;
            if (f3 != 1.0f) {
                m33723d(f3);
                this.f2428c.set(this.f2426a);
                this.f2427b.postConcat(this.f2428c);
                z = true;
            }
            float f4 = this.f2429d;
            if (f4 != 1.0f) {
                m33726a(f4);
                this.f2428c.set(this.f2426a);
                this.f2427b.postConcat(this.f2428c);
                z = true;
            }
            if (z) {
                imageView.setColorFilter(new ColorMatrixColorFilter(this.f2427b));
            } else {
                imageView.clearColorFilter();
            }
        }
    }

    public ImageFilterView(Context context) {
        super(context);
        m33727e(context, null);
    }

    public ImageFilterView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m33727e(context, attributeSet);
    }

    public ImageFilterView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m33727e(context, attributeSet);
    }

    /* renamed from: e */
    private void m33727e(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0523e.ImageFilterView);
            int indexCount = obtainStyledAttributes.getIndexCount();
            Drawable drawable = obtainStyledAttributes.getDrawable(C0523e.ImageFilterView_altSrc);
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0523e.ImageFilterView_crossfade) {
                    this.f2416h = obtainStyledAttributes.getFloat(index, 0.0f);
                } else if (index == C0523e.ImageFilterView_warmth) {
                    setWarmth(obtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == C0523e.ImageFilterView_saturation) {
                    setSaturation(obtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == C0523e.ImageFilterView_contrast) {
                    setContrast(obtainStyledAttributes.getFloat(index, 0.0f));
                } else if (index == C0523e.ImageFilterView_round) {
                    if (Build.VERSION.SDK_INT >= 21) {
                        setRound(obtainStyledAttributes.getDimension(index, 0.0f));
                    }
                } else if (index == C0523e.ImageFilterView_roundPercent) {
                    if (Build.VERSION.SDK_INT >= 21) {
                        setRoundPercent(obtainStyledAttributes.getFloat(index, 0.0f));
                    }
                } else if (index == C0523e.ImageFilterView_overlay) {
                    setOverlay(obtainStyledAttributes.getBoolean(index, this.f2415g));
                }
            }
            obtainStyledAttributes.recycle();
            if (drawable == null) {
                return;
            }
            Drawable[] drawableArr = new Drawable[2];
            this.f2422n = drawableArr;
            drawableArr[0] = getDrawable();
            this.f2422n[1] = drawable;
            LayerDrawable layerDrawable = new LayerDrawable(this.f2422n);
            this.f2423o = layerDrawable;
            layerDrawable.getDrawable(1).setAlpha((int) (this.f2416h * 255.0f));
            super.setImageDrawable(this.f2423o);
        }
    }

    private void setOverlay(boolean z) {
        this.f2415g = z;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        boolean z;
        if (Build.VERSION.SDK_INT >= 21 || this.f2417i == 0.0f || this.f2419k == null) {
            z = false;
        } else {
            z = true;
            canvas.save();
            canvas.clipPath(this.f2419k);
        }
        super.draw(canvas);
        if (z) {
            canvas.restore();
        }
    }

    public float getBrightness() {
        return this.f2414f.f2429d;
    }

    public float getContrast() {
        return this.f2414f.f2431f;
    }

    public float getCrossfade() {
        return this.f2416h;
    }

    public float getRound() {
        return this.f2418j;
    }

    public float getRoundPercent() {
        return this.f2417i;
    }

    public float getSaturation() {
        return this.f2414f.f2430e;
    }

    public float getWarmth() {
        return this.f2414f.f2432g;
    }

    public void setBrightness(float f) {
        C0507c c0507c = this.f2414f;
        c0507c.f2429d = f;
        c0507c.m33724c(this);
    }

    public void setContrast(float f) {
        C0507c c0507c = this.f2414f;
        c0507c.f2431f = f;
        c0507c.m33724c(this);
    }

    public void setCrossfade(float f) {
        this.f2416h = f;
        if (this.f2422n != null) {
            if (!this.f2415g) {
                this.f2423o.getDrawable(0).setAlpha((int) ((1.0f - this.f2416h) * 255.0f));
            }
            this.f2423o.getDrawable(1).setAlpha((int) (this.f2416h * 255.0f));
            super.setImageDrawable(this.f2423o);
        }
    }

    public void setRound(float f) {
        if (Float.isNaN(f)) {
            this.f2418j = f;
            float f2 = this.f2417i;
            this.f2417i = -1.0f;
            setRoundPercent(f2);
            return;
        }
        boolean z = this.f2418j != f;
        this.f2418j = f;
        if (f != 0.0f) {
            if (this.f2419k == null) {
                this.f2419k = new Path();
            }
            if (this.f2421m == null) {
                this.f2421m = new RectF();
            }
            if (Build.VERSION.SDK_INT >= 21) {
                if (this.f2420l == null) {
                    C0506b c0506b = new C0506b();
                    this.f2420l = c0506b;
                    setOutlineProvider(c0506b);
                }
                setClipToOutline(true);
            }
            this.f2421m.set(0.0f, 0.0f, getWidth(), getHeight());
            this.f2419k.reset();
            Path path = this.f2419k;
            RectF rectF = this.f2421m;
            float f3 = this.f2418j;
            path.addRoundRect(rectF, f3, f3, Path.Direction.CW);
        } else if (Build.VERSION.SDK_INT >= 21) {
            setClipToOutline(false);
        }
        if (!z || Build.VERSION.SDK_INT < 21) {
            return;
        }
        invalidateOutline();
    }

    public void setRoundPercent(float f) {
        boolean z = this.f2417i != f;
        this.f2417i = f;
        if (f != 0.0f) {
            if (this.f2419k == null) {
                this.f2419k = new Path();
            }
            if (this.f2421m == null) {
                this.f2421m = new RectF();
            }
            if (Build.VERSION.SDK_INT >= 21) {
                if (this.f2420l == null) {
                    C0505a c0505a = new C0505a();
                    this.f2420l = c0505a;
                    setOutlineProvider(c0505a);
                }
                setClipToOutline(true);
            }
            int width = getWidth();
            int height = getHeight();
            float min = (Math.min(width, height) * this.f2417i) / 2.0f;
            this.f2421m.set(0.0f, 0.0f, width, height);
            this.f2419k.reset();
            this.f2419k.addRoundRect(this.f2421m, min, min, Path.Direction.CW);
        } else if (Build.VERSION.SDK_INT >= 21) {
            setClipToOutline(false);
        }
        if (!z || Build.VERSION.SDK_INT < 21) {
            return;
        }
        invalidateOutline();
    }

    public void setSaturation(float f) {
        C0507c c0507c = this.f2414f;
        c0507c.f2430e = f;
        c0507c.m33724c(this);
    }

    public void setWarmth(float f) {
        C0507c c0507c = this.f2414f;
        c0507c.f2432g = f;
        c0507c.m33724c(this);
    }
}
