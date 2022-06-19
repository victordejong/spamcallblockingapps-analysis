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
import androidx.constraintlayout.widget.C0687e;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/utils/widget/ImageFilterButton.class */
public class ImageFilterButton extends AppCompatImageButton {

    /* renamed from: a */
    ViewOutlineProvider f2848a;

    /* renamed from: b */
    RectF f2849b;

    /* renamed from: c */
    Drawable[] f2850c;

    /* renamed from: d */
    LayerDrawable f2851d;

    /* renamed from: i */
    private Path f2856i;

    /* renamed from: e */
    private ImageFilterView.C0670a f2852e = new ImageFilterView.C0670a();

    /* renamed from: f */
    private float f2853f = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: g */
    private float f2854g = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: h */
    private float f2855h = Float.NaN;

    /* renamed from: j */
    private boolean f2857j = true;

    public ImageFilterButton(Context context) {
        super(context);
        m44776a((AttributeSet) null);
    }

    public ImageFilterButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m44776a(attributeSet);
    }

    public ImageFilterButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m44776a(attributeSet);
    }

    /* renamed from: a */
    private void m44776a(AttributeSet attributeSet) {
        setPadding(0, 0, 0, 0);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0687e.C0689b.ImageFilterView);
            int indexCount = obtainStyledAttributes.getIndexCount();
            Drawable drawable = obtainStyledAttributes.getDrawable(C0687e.C0689b.ImageFilterView_altSrc);
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0687e.C0689b.ImageFilterView_crossfade) {
                    this.f2853f = obtainStyledAttributes.getFloat(index, BitmapDescriptorFactory.HUE_RED);
                } else if (index == C0687e.C0689b.ImageFilterView_warmth) {
                    setWarmth(obtainStyledAttributes.getFloat(index, BitmapDescriptorFactory.HUE_RED));
                } else if (index == C0687e.C0689b.ImageFilterView_saturation) {
                    setSaturation(obtainStyledAttributes.getFloat(index, BitmapDescriptorFactory.HUE_RED));
                } else if (index == C0687e.C0689b.ImageFilterView_contrast) {
                    setContrast(obtainStyledAttributes.getFloat(index, BitmapDescriptorFactory.HUE_RED));
                } else if (index == C0687e.C0689b.ImageFilterView_round) {
                    if (Build.VERSION.SDK_INT >= 21) {
                        setRound(obtainStyledAttributes.getDimension(index, BitmapDescriptorFactory.HUE_RED));
                    }
                } else if (index == C0687e.C0689b.ImageFilterView_roundPercent) {
                    if (Build.VERSION.SDK_INT >= 21) {
                        setRoundPercent(obtainStyledAttributes.getFloat(index, BitmapDescriptorFactory.HUE_RED));
                    }
                } else if (index == C0687e.C0689b.ImageFilterView_overlay) {
                    this.f2857j = obtainStyledAttributes.getBoolean(index, this.f2857j);
                }
            }
            obtainStyledAttributes.recycle();
            if (drawable == null) {
                return;
            }
            Drawable[] drawableArr = new Drawable[2];
            this.f2850c = drawableArr;
            drawableArr[0] = getDrawable();
            this.f2850c[1] = drawable;
            LayerDrawable layerDrawable = new LayerDrawable(this.f2850c);
            this.f2851d = layerDrawable;
            layerDrawable.getDrawable(1).setAlpha((int) (this.f2853f * 255.0f));
            super.setImageDrawable(this.f2851d);
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        boolean z;
        if (Build.VERSION.SDK_INT >= 21 || this.f2855h == BitmapDescriptorFactory.HUE_RED || this.f2856i == null) {
            z = false;
        } else {
            z = true;
            canvas.save();
            canvas.clipPath(this.f2856i);
        }
        super.draw(canvas);
        if (z) {
            canvas.restore();
        }
    }

    public void setBrightness(float f) {
        this.f2852e.f2875d = f;
        this.f2852e.m44769a(this);
    }

    public void setContrast(float f) {
        this.f2852e.f2877f = f;
        this.f2852e.m44769a(this);
    }

    public void setCrossfade(float f) {
        this.f2853f = f;
        if (this.f2850c != null) {
            if (!this.f2857j) {
                this.f2851d.getDrawable(0).setAlpha((int) ((1.0f - this.f2853f) * 255.0f));
            }
            this.f2851d.getDrawable(1).setAlpha((int) (this.f2853f * 255.0f));
            super.setImageDrawable(this.f2851d);
        }
    }

    public void setRound(float f) {
        if (Float.isNaN(f)) {
            this.f2855h = f;
            float f2 = this.f2854g;
            this.f2854g = -1.0f;
            setRoundPercent(f2);
            return;
        }
        boolean z = this.f2855h != f;
        this.f2855h = f;
        if (f != BitmapDescriptorFactory.HUE_RED) {
            if (this.f2856i == null) {
                this.f2856i = new Path();
            }
            if (this.f2849b == null) {
                this.f2849b = new RectF();
            }
            if (Build.VERSION.SDK_INT >= 21) {
                if (this.f2848a == null) {
                    ViewOutlineProvider viewOutlineProvider = new ViewOutlineProvider() { // from class: androidx.constraintlayout.utils.widget.ImageFilterButton.2
                        @Override // android.view.ViewOutlineProvider
                        public final void getOutline(View view, Outline outline) {
                            outline.setRoundRect(0, 0, ImageFilterButton.this.getWidth(), ImageFilterButton.this.getHeight(), ImageFilterButton.this.f2855h);
                        }
                    };
                    this.f2848a = viewOutlineProvider;
                    setOutlineProvider(viewOutlineProvider);
                }
                setClipToOutline(true);
            }
            this.f2849b.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight());
            this.f2856i.reset();
            Path path = this.f2856i;
            RectF rectF = this.f2849b;
            float f3 = this.f2855h;
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
        boolean z = this.f2854g != f;
        this.f2854g = f;
        if (f != BitmapDescriptorFactory.HUE_RED) {
            if (this.f2856i == null) {
                this.f2856i = new Path();
            }
            if (this.f2849b == null) {
                this.f2849b = new RectF();
            }
            if (Build.VERSION.SDK_INT >= 21) {
                if (this.f2848a == null) {
                    ViewOutlineProvider viewOutlineProvider = new ViewOutlineProvider() { // from class: androidx.constraintlayout.utils.widget.ImageFilterButton.1
                        @Override // android.view.ViewOutlineProvider
                        public final void getOutline(View view, Outline outline) {
                            int width = ImageFilterButton.this.getWidth();
                            int height = ImageFilterButton.this.getHeight();
                            outline.setRoundRect(0, 0, width, height, (Math.min(width, height) * ImageFilterButton.this.f2854g) / 2.0f);
                        }
                    };
                    this.f2848a = viewOutlineProvider;
                    setOutlineProvider(viewOutlineProvider);
                }
                setClipToOutline(true);
            }
            int width = getWidth();
            int height = getHeight();
            float min = (Math.min(width, height) * this.f2854g) / 2.0f;
            this.f2849b.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, width, height);
            this.f2856i.reset();
            this.f2856i.addRoundRect(this.f2849b, min, min, Path.Direction.CW);
        } else if (Build.VERSION.SDK_INT >= 21) {
            setClipToOutline(false);
        }
        if (!z || Build.VERSION.SDK_INT < 21) {
            return;
        }
        invalidateOutline();
    }

    public void setSaturation(float f) {
        this.f2852e.f2876e = f;
        this.f2852e.m44769a(this);
    }

    public void setWarmth(float f) {
        this.f2852e.f2878g = f;
        this.f2852e.m44769a(this);
    }
}
