package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Outline;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewOutlineProvider;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.constraintlayout.utils.widget.ImageFilterView;
import androidx.constraintlayout.widget.C0523e;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/utils/widget/ImageFilterButton.class */
public class ImageFilterButton extends AppCompatImageButton {

    /* renamed from: j */
    private Path f2406j;

    /* renamed from: k */
    ViewOutlineProvider f2407k;

    /* renamed from: l */
    RectF f2408l;

    /* renamed from: m */
    Drawable[] f2409m;

    /* renamed from: n */
    LayerDrawable f2410n;

    /* renamed from: f */
    private ImageFilterView.C0507c f2402f = new ImageFilterView.C0507c();

    /* renamed from: g */
    private float f2403g = 0.0f;

    /* renamed from: h */
    private float f2404h = 0.0f;

    /* renamed from: i */
    private float f2405i = Float.NaN;

    /* renamed from: o */
    private boolean f2411o = true;

    /* renamed from: androidx.constraintlayout.utils.widget.ImageFilterButton$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/utils/widget/ImageFilterButton$a.class */
    public class C0503a extends ViewOutlineProvider {
        C0503a() {
            ImageFilterButton.this = r4;
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            int width = ImageFilterButton.this.getWidth();
            int height = ImageFilterButton.this.getHeight();
            outline.setRoundRect(0, 0, width, height, (Math.min(width, height) * ImageFilterButton.this.f2404h) / 2.0f);
        }
    }

    /* renamed from: androidx.constraintlayout.utils.widget.ImageFilterButton$b */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/utils/widget/ImageFilterButton$b.class */
    public class C0504b extends ViewOutlineProvider {
        C0504b() {
            ImageFilterButton.this = r4;
        }

        @Override // android.view.ViewOutlineProvider
        public void getOutline(View view, Outline outline) {
            outline.setRoundRect(0, 0, ImageFilterButton.this.getWidth(), ImageFilterButton.this.getHeight(), ImageFilterButton.this.f2405i);
        }
    }

    public ImageFilterButton(Context context) {
        super(context);
        m33730c(context, null);
    }

    public ImageFilterButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m33730c(context, attributeSet);
    }

    public ImageFilterButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m33730c(context, attributeSet);
    }

    /* renamed from: c */
    private void m33730c(Context context, AttributeSet attributeSet) {
        setPadding(0, 0, 0, 0);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0523e.ImageFilterView);
            int indexCount = obtainStyledAttributes.getIndexCount();
            Drawable drawable = obtainStyledAttributes.getDrawable(C0523e.ImageFilterView_altSrc);
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0523e.ImageFilterView_crossfade) {
                    this.f2403g = obtainStyledAttributes.getFloat(index, 0.0f);
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
                    setOverlay(obtainStyledAttributes.getBoolean(index, this.f2411o));
                }
            }
            obtainStyledAttributes.recycle();
            if (drawable == null) {
                return;
            }
            Drawable[] drawableArr = new Drawable[2];
            this.f2409m = drawableArr;
            drawableArr[0] = getDrawable();
            this.f2409m[1] = drawable;
            LayerDrawable layerDrawable = new LayerDrawable(this.f2409m);
            this.f2410n = layerDrawable;
            layerDrawable.getDrawable(1).setAlpha((int) (this.f2403g * 255.0f));
            super.setImageDrawable(this.f2410n);
        }
    }

    private void setOverlay(boolean z) {
        this.f2411o = z;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        boolean z;
        if (Build.VERSION.SDK_INT >= 21 || this.f2405i == 0.0f || this.f2406j == null) {
            z = false;
        } else {
            z = true;
            canvas.save();
            canvas.clipPath(this.f2406j);
        }
        super.draw(canvas);
        if (z) {
            canvas.restore();
        }
    }

    public float getContrast() {
        return this.f2402f.f2431f;
    }

    public float getCrossfade() {
        return this.f2403g;
    }

    public float getRound() {
        return this.f2405i;
    }

    public float getRoundPercent() {
        return this.f2404h;
    }

    public float getSaturation() {
        return this.f2402f.f2430e;
    }

    public float getWarmth() {
        return this.f2402f.f2432g;
    }

    public void setBrightness(float f) {
        ImageFilterView.C0507c c0507c = this.f2402f;
        c0507c.f2429d = f;
        c0507c.m33724c(this);
    }

    public void setContrast(float f) {
        ImageFilterView.C0507c c0507c = this.f2402f;
        c0507c.f2431f = f;
        c0507c.m33724c(this);
    }

    public void setCrossfade(float f) {
        this.f2403g = f;
        if (this.f2409m != null) {
            if (!this.f2411o) {
                this.f2410n.getDrawable(0).setAlpha((int) ((1.0f - this.f2403g) * 255.0f));
            }
            this.f2410n.getDrawable(1).setAlpha((int) (this.f2403g * 255.0f));
            super.setImageDrawable(this.f2410n);
        }
    }

    public void setRound(float f) {
        if (Float.isNaN(f)) {
            this.f2405i = f;
            float f2 = this.f2404h;
            this.f2404h = -1.0f;
            setRoundPercent(f2);
            return;
        }
        boolean z = this.f2405i != f;
        this.f2405i = f;
        if (f != 0.0f) {
            if (this.f2406j == null) {
                this.f2406j = new Path();
            }
            if (this.f2408l == null) {
                this.f2408l = new RectF();
            }
            if (Build.VERSION.SDK_INT >= 21) {
                if (this.f2407k == null) {
                    C0504b c0504b = new C0504b();
                    this.f2407k = c0504b;
                    setOutlineProvider(c0504b);
                }
                setClipToOutline(true);
            }
            this.f2408l.set(0.0f, 0.0f, getWidth(), getHeight());
            this.f2406j.reset();
            Path path = this.f2406j;
            RectF rectF = this.f2408l;
            float f3 = this.f2405i;
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
        boolean z = this.f2404h != f;
        this.f2404h = f;
        if (f != 0.0f) {
            if (this.f2406j == null) {
                this.f2406j = new Path();
            }
            if (this.f2408l == null) {
                this.f2408l = new RectF();
            }
            if (Build.VERSION.SDK_INT >= 21) {
                if (this.f2407k == null) {
                    C0503a c0503a = new C0503a();
                    this.f2407k = c0503a;
                    setOutlineProvider(c0503a);
                }
                setClipToOutline(true);
            }
            int width = getWidth();
            int height = getHeight();
            float min = (Math.min(width, height) * this.f2404h) / 2.0f;
            this.f2408l.set(0.0f, 0.0f, width, height);
            this.f2406j.reset();
            this.f2406j.addRoundRect(this.f2408l, min, min, Path.Direction.CW);
        } else if (Build.VERSION.SDK_INT >= 21) {
            setClipToOutline(false);
        }
        if (!z || Build.VERSION.SDK_INT < 21) {
            return;
        }
        invalidateOutline();
    }

    public void setSaturation(float f) {
        ImageFilterView.C0507c c0507c = this.f2402f;
        c0507c.f2430e = f;
        c0507c.m33724c(this);
    }

    public void setWarmth(float f) {
        ImageFilterView.C0507c c0507c = this.f2402f;
        c0507c.f2432g = f;
        c0507c.m33724c(this);
    }
}
