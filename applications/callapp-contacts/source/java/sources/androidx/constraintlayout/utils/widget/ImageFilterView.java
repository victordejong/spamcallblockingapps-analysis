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
import androidx.constraintlayout.widget.C0687e;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/utils/widget/ImageFilterView.class */
public class ImageFilterView extends AppCompatImageView {

    /* renamed from: a */
    ViewOutlineProvider f2860a;

    /* renamed from: b */
    RectF f2861b;

    /* renamed from: c */
    Drawable[] f2862c;

    /* renamed from: d */
    LayerDrawable f2863d;

    /* renamed from: e */
    private C0670a f2864e = new C0670a();

    /* renamed from: f */
    private boolean f2865f = true;

    /* renamed from: g */
    private float f2866g = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: h */
    private float f2867h = BitmapDescriptorFactory.HUE_RED;

    /* renamed from: i */
    private float f2868i = Float.NaN;

    /* renamed from: j */
    private Path f2869j;

    /* renamed from: androidx.constraintlayout.utils.widget.ImageFilterView$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/utils/widget/ImageFilterView$a.class */
    public static final class C0670a {

        /* renamed from: a */
        float[] f2872a = new float[20];

        /* renamed from: b */
        ColorMatrix f2873b = new ColorMatrix();

        /* renamed from: c */
        ColorMatrix f2874c = new ColorMatrix();

        /* renamed from: d */
        float f2875d = 1.0f;

        /* renamed from: e */
        float f2876e = 1.0f;

        /* renamed from: f */
        float f2877f = 1.0f;

        /* renamed from: g */
        float f2878g = 1.0f;

        /* renamed from: a */
        private void m44770a(float f) {
            float f2 = 1.0f - f;
            float f3 = 0.2999f * f2;
            float f4 = 0.587f * f2;
            float f5 = f2 * 0.114f;
            float[] fArr = this.f2872a;
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

        /* renamed from: b */
        private void m44768b(float f) {
            float f2;
            float f3;
            float f4 = f;
            if (f <= BitmapDescriptorFactory.HUE_RED) {
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
            float min = Math.min(255.0f, Math.max(f2, (float) BitmapDescriptorFactory.HUE_RED));
            float min2 = Math.min(255.0f, Math.max(f3, (float) BitmapDescriptorFactory.HUE_RED));
            float min3 = Math.min(255.0f, Math.max(log, (float) BitmapDescriptorFactory.HUE_RED));
            float log2 = (float) Math.log(50.0d);
            float log3 = (float) Math.log(40.0d);
            float min4 = Math.min(255.0f, Math.max(255.0f, (float) BitmapDescriptorFactory.HUE_RED));
            float min5 = Math.min(255.0f, Math.max((log2 * 99.4708f) - 161.11957f, (float) BitmapDescriptorFactory.HUE_RED));
            float f6 = min / min4;
            float f7 = min2 / min5;
            float min6 = min3 / Math.min(255.0f, Math.max((log3 * 138.51773f) - 305.0448f, (float) BitmapDescriptorFactory.HUE_RED));
            float[] fArr = this.f2872a;
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
        private void m44767c(float f) {
            float[] fArr = this.f2872a;
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

        /* renamed from: a */
        public final void m44769a(ImageView imageView) {
            boolean z;
            this.f2873b.reset();
            float f = this.f2876e;
            if (f != 1.0f) {
                m44770a(f);
                this.f2873b.set(this.f2872a);
                z = true;
            } else {
                z = false;
            }
            float f2 = this.f2877f;
            if (f2 != 1.0f) {
                this.f2874c.setScale(f2, f2, f2, 1.0f);
                this.f2873b.postConcat(this.f2874c);
                z = true;
            }
            float f3 = this.f2878g;
            if (f3 != 1.0f) {
                m44768b(f3);
                this.f2874c.set(this.f2872a);
                this.f2873b.postConcat(this.f2874c);
                z = true;
            }
            float f4 = this.f2875d;
            if (f4 != 1.0f) {
                m44767c(f4);
                this.f2874c.set(this.f2872a);
                this.f2873b.postConcat(this.f2874c);
                z = true;
            }
            if (z) {
                imageView.setColorFilter(new ColorMatrixColorFilter(this.f2873b));
            } else {
                imageView.clearColorFilter();
            }
        }
    }

    public ImageFilterView(Context context) {
        super(context);
        m44773a((AttributeSet) null);
    }

    public ImageFilterView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m44773a(attributeSet);
    }

    public ImageFilterView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m44773a(attributeSet);
    }

    /* renamed from: a */
    private void m44773a(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0687e.C0689b.ImageFilterView);
            int indexCount = obtainStyledAttributes.getIndexCount();
            Drawable drawable = obtainStyledAttributes.getDrawable(C0687e.C0689b.ImageFilterView_altSrc);
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0687e.C0689b.ImageFilterView_crossfade) {
                    this.f2866g = obtainStyledAttributes.getFloat(index, BitmapDescriptorFactory.HUE_RED);
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
                    this.f2865f = obtainStyledAttributes.getBoolean(index, this.f2865f);
                }
            }
            obtainStyledAttributes.recycle();
            if (drawable == null) {
                return;
            }
            Drawable[] drawableArr = new Drawable[2];
            this.f2862c = drawableArr;
            drawableArr[0] = getDrawable();
            this.f2862c[1] = drawable;
            LayerDrawable layerDrawable = new LayerDrawable(this.f2862c);
            this.f2863d = layerDrawable;
            layerDrawable.getDrawable(1).setAlpha((int) (this.f2866g * 255.0f));
            super.setImageDrawable(this.f2863d);
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        boolean z;
        if (Build.VERSION.SDK_INT >= 21 || this.f2867h == BitmapDescriptorFactory.HUE_RED || this.f2869j == null) {
            z = false;
        } else {
            z = true;
            canvas.save();
            canvas.clipPath(this.f2869j);
        }
        super.draw(canvas);
        if (z) {
            canvas.restore();
        }
    }

    public void setBrightness(float f) {
        this.f2864e.f2875d = f;
        this.f2864e.m44769a(this);
    }

    public void setContrast(float f) {
        this.f2864e.f2877f = f;
        this.f2864e.m44769a(this);
    }

    public void setCrossfade(float f) {
        this.f2866g = f;
        if (this.f2862c != null) {
            if (!this.f2865f) {
                this.f2863d.getDrawable(0).setAlpha((int) ((1.0f - this.f2866g) * 255.0f));
            }
            this.f2863d.getDrawable(1).setAlpha((int) (this.f2866g * 255.0f));
            super.setImageDrawable(this.f2863d);
        }
    }

    public void setRound(float f) {
        if (Float.isNaN(f)) {
            this.f2868i = f;
            float f2 = this.f2867h;
            this.f2867h = -1.0f;
            setRoundPercent(f2);
            return;
        }
        boolean z = this.f2868i != f;
        this.f2868i = f;
        if (f != BitmapDescriptorFactory.HUE_RED) {
            if (this.f2869j == null) {
                this.f2869j = new Path();
            }
            if (this.f2861b == null) {
                this.f2861b = new RectF();
            }
            if (Build.VERSION.SDK_INT >= 21) {
                if (this.f2860a == null) {
                    ViewOutlineProvider viewOutlineProvider = new ViewOutlineProvider() { // from class: androidx.constraintlayout.utils.widget.ImageFilterView.2
                        @Override // android.view.ViewOutlineProvider
                        public final void getOutline(View view, Outline outline) {
                            outline.setRoundRect(0, 0, ImageFilterView.this.getWidth(), ImageFilterView.this.getHeight(), ImageFilterView.this.f2868i);
                        }
                    };
                    this.f2860a = viewOutlineProvider;
                    setOutlineProvider(viewOutlineProvider);
                }
                setClipToOutline(true);
            }
            this.f2861b.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight());
            this.f2869j.reset();
            Path path = this.f2869j;
            RectF rectF = this.f2861b;
            float f3 = this.f2868i;
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
        boolean z = this.f2867h != f;
        this.f2867h = f;
        if (f != BitmapDescriptorFactory.HUE_RED) {
            if (this.f2869j == null) {
                this.f2869j = new Path();
            }
            if (this.f2861b == null) {
                this.f2861b = new RectF();
            }
            if (Build.VERSION.SDK_INT >= 21) {
                if (this.f2860a == null) {
                    ViewOutlineProvider viewOutlineProvider = new ViewOutlineProvider() { // from class: androidx.constraintlayout.utils.widget.ImageFilterView.1
                        @Override // android.view.ViewOutlineProvider
                        public final void getOutline(View view, Outline outline) {
                            int width = ImageFilterView.this.getWidth();
                            int height = ImageFilterView.this.getHeight();
                            outline.setRoundRect(0, 0, width, height, (Math.min(width, height) * ImageFilterView.this.f2867h) / 2.0f);
                        }
                    };
                    this.f2860a = viewOutlineProvider;
                    setOutlineProvider(viewOutlineProvider);
                }
                setClipToOutline(true);
            }
            int width = getWidth();
            int height = getHeight();
            float min = (Math.min(width, height) * this.f2867h) / 2.0f;
            this.f2861b.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, width, height);
            this.f2869j.reset();
            this.f2869j.addRoundRect(this.f2861b, min, min, Path.Direction.CW);
        } else if (Build.VERSION.SDK_INT >= 21) {
            setClipToOutline(false);
        }
        if (!z || Build.VERSION.SDK_INT < 21) {
            return;
        }
        invalidateOutline();
    }

    public void setSaturation(float f) {
        this.f2864e.f2876e = f;
        this.f2864e.m44769a(this);
    }

    public void setWarmth(float f) {
        this.f2864e.f2878g = f;
        this.f2864e.m44769a(this);
    }
}
