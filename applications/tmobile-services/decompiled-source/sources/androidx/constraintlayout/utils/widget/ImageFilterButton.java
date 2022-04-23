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
import androidx.annotation.RequiresApi;
import androidx.appcompat.widget.AppCompatImageButton;
import androidx.constraintlayout.utils.widget.ImageFilterView;
import androidx.constraintlayout.widget.C0178R;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/utils/widget/ImageFilterButton.class */
public class ImageFilterButton extends AppCompatImageButton {

    /* renamed from: l */
    private Path f2440l;

    /* renamed from: m */
    ViewOutlineProvider f2441m;

    /* renamed from: n */
    RectF f2442n;

    /* renamed from: o */
    Drawable[] f2443o;

    /* renamed from: p */
    LayerDrawable f2444p;

    /* renamed from: h */
    private ImageFilterView.ImageMatrix f2436h = new ImageFilterView.ImageMatrix();

    /* renamed from: i */
    private float f2437i = 0.0f;

    /* renamed from: j */
    private float f2438j = 0.0f;

    /* renamed from: k */
    private float f2439k = Float.NaN;

    /* renamed from: q */
    private boolean f2445q = true;

    public ImageFilterButton(Context context) {
        super(context);
        m20087c(context, null);
    }

    public ImageFilterButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m20087c(context, attributeSet);
    }

    public ImageFilterButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m20087c(context, attributeSet);
    }

    /* renamed from: c */
    private void m20087c(Context context, AttributeSet attributeSet) {
        setPadding(0, 0, 0, 0);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0178R.styleable.ImageFilterView);
            int indexCount = obtainStyledAttributes.getIndexCount();
            Drawable drawable = obtainStyledAttributes.getDrawable(C0178R.styleable.ImageFilterView_altSrc);
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0178R.styleable.ImageFilterView_crossfade) {
                    this.f2437i = obtainStyledAttributes.getFloat(index, 0.0f);
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
                    setOverlay(obtainStyledAttributes.getBoolean(index, this.f2445q));
                }
            }
            obtainStyledAttributes.recycle();
            if (drawable != null) {
                Drawable[] drawableArr = new Drawable[2];
                this.f2443o = drawableArr;
                drawableArr[0] = getDrawable();
                this.f2443o[1] = drawable;
                LayerDrawable layerDrawable = new LayerDrawable(this.f2443o);
                this.f2444p = layerDrawable;
                layerDrawable.getDrawable(1).setAlpha((int) (this.f2437i * 255.0f));
                super.setImageDrawable(this.f2444p);
            }
        }
    }

    private void setOverlay(boolean z) {
        this.f2445q = z;
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        boolean z;
        if (Build.VERSION.SDK_INT >= 21 || this.f2439k == 0.0f || this.f2440l == null) {
            z = false;
        } else {
            z = true;
            canvas.save();
            canvas.clipPath(this.f2440l);
        }
        super.draw(canvas);
        if (z) {
            canvas.restore();
        }
    }

    public float getContrast() {
        return this.f2436h.f2465f;
    }

    public float getCrossfade() {
        return this.f2437i;
    }

    public float getRound() {
        return this.f2439k;
    }

    public float getRoundPercent() {
        return this.f2438j;
    }

    public float getSaturation() {
        return this.f2436h.f2464e;
    }

    public float getWarmth() {
        return this.f2436h.f2466g;
    }

    public void setBrightness(float f) {
        ImageFilterView.ImageMatrix imageMatrix = this.f2436h;
        imageMatrix.f2463d = f;
        imageMatrix.m20081c(this);
    }

    public void setContrast(float f) {
        ImageFilterView.ImageMatrix imageMatrix = this.f2436h;
        imageMatrix.f2465f = f;
        imageMatrix.m20081c(this);
    }

    public void setCrossfade(float f) {
        this.f2437i = f;
        if (this.f2443o != null) {
            if (!this.f2445q) {
                this.f2444p.getDrawable(0).setAlpha((int) ((1.0f - this.f2437i) * 255.0f));
            }
            this.f2444p.getDrawable(1).setAlpha((int) (this.f2437i * 255.0f));
            super.setImageDrawable(this.f2444p);
        }
    }

    @RequiresApi
    public void setRound(float f) {
        if (Float.isNaN(f)) {
            this.f2439k = f;
            float f2 = this.f2438j;
            this.f2438j = -1.0f;
            setRoundPercent(f2);
            return;
        }
        boolean z = this.f2439k != f;
        this.f2439k = f;
        if (f != 0.0f) {
            if (this.f2440l == null) {
                this.f2440l = new Path();
            }
            if (this.f2442n == null) {
                this.f2442n = new RectF();
            }
            if (Build.VERSION.SDK_INT >= 21) {
                if (this.f2441m == null) {
                    ViewOutlineProvider viewOutlineProvider = new ViewOutlineProvider() { // from class: androidx.constraintlayout.utils.widget.ImageFilterButton.2
                        @Override // android.view.ViewOutlineProvider
                        public void getOutline(View view, Outline outline) {
                            outline.setRoundRect(0, 0, ImageFilterButton.this.getWidth(), ImageFilterButton.this.getHeight(), ImageFilterButton.this.f2439k);
                        }
                    };
                    this.f2441m = viewOutlineProvider;
                    setOutlineProvider(viewOutlineProvider);
                }
                setClipToOutline(true);
            }
            this.f2442n.set(0.0f, 0.0f, getWidth(), getHeight());
            this.f2440l.reset();
            Path path = this.f2440l;
            RectF rectF = this.f2442n;
            float f3 = this.f2439k;
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
        boolean z = this.f2438j != f;
        this.f2438j = f;
        if (f != 0.0f) {
            if (this.f2440l == null) {
                this.f2440l = new Path();
            }
            if (this.f2442n == null) {
                this.f2442n = new RectF();
            }
            if (Build.VERSION.SDK_INT >= 21) {
                if (this.f2441m == null) {
                    ViewOutlineProvider viewOutlineProvider = new ViewOutlineProvider() { // from class: androidx.constraintlayout.utils.widget.ImageFilterButton.1
                        @Override // android.view.ViewOutlineProvider
                        public void getOutline(View view, Outline outline) {
                            int width = ImageFilterButton.this.getWidth();
                            int height = ImageFilterButton.this.getHeight();
                            outline.setRoundRect(0, 0, width, height, (Math.min(width, height) * ImageFilterButton.this.f2438j) / 2.0f);
                        }
                    };
                    this.f2441m = viewOutlineProvider;
                    setOutlineProvider(viewOutlineProvider);
                }
                setClipToOutline(true);
            }
            int width = getWidth();
            int height = getHeight();
            float min = (Math.min(width, height) * this.f2438j) / 2.0f;
            this.f2442n.set(0.0f, 0.0f, width, height);
            this.f2440l.reset();
            this.f2440l.addRoundRect(this.f2442n, min, min, Path.Direction.CW);
        } else if (Build.VERSION.SDK_INT >= 21) {
            setClipToOutline(false);
        }
        if (z && Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    public void setSaturation(float f) {
        ImageFilterView.ImageMatrix imageMatrix = this.f2436h;
        imageMatrix.f2464e = f;
        imageMatrix.m20081c(this);
    }

    public void setWarmth(float f) {
        ImageFilterView.ImageMatrix imageMatrix = this.f2436h;
        imageMatrix.f2466g = f;
        imageMatrix.m20081c(this);
    }
}
