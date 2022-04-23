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
import androidx.constraintlayout.widget.e;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/utils/widget/ImageFilterView.class */
public class ImageFilterView extends AppCompatImageView {

    /* renamed from: a  reason: collision with root package name */
    ViewOutlineProvider f1562a;

    /* renamed from: b  reason: collision with root package name */
    RectF f1563b;

    /* renamed from: c  reason: collision with root package name */
    Drawable[] f1564c;

    /* renamed from: d  reason: collision with root package name */
    LayerDrawable f1565d;
    private a e = new a();
    private boolean f = true;
    private float g = BitmapDescriptorFactory.HUE_RED;
    private float h = BitmapDescriptorFactory.HUE_RED;
    private float i = Float.NaN;
    private Path j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/utils/widget/ImageFilterView$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        float[] f1568a = new float[20];

        /* renamed from: b  reason: collision with root package name */
        ColorMatrix f1569b = new ColorMatrix();

        /* renamed from: c  reason: collision with root package name */
        ColorMatrix f1570c = new ColorMatrix();

        /* renamed from: d  reason: collision with root package name */
        float f1571d = 1.0f;
        float e = 1.0f;
        float f = 1.0f;
        float g = 1.0f;

        private void a(float f) {
            float f2 = 1.0f - f;
            float f3 = 0.2999f * f2;
            float f4 = 0.587f * f2;
            float f5 = f2 * 0.114f;
            float[] fArr = this.f1568a;
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

        private void b(float f) {
            float f2;
            float f3;
            float f4 = f;
            if (f <= BitmapDescriptorFactory.HUE_RED) {
                f4 = 0.01f;
            }
            float f5 = (5000.0f / f4) / 100.0f;
            if (f5 > 66.0f) {
                double d2 = f5 - 60.0f;
                f2 = ((float) Math.pow(d2, -0.13320475816726685d)) * 329.69873f;
                f3 = ((float) Math.pow(d2, 0.07551484555006027d)) * 288.12216f;
            } else {
                f3 = (((float) Math.log(f5)) * 99.4708f) - 161.11957f;
                f2 = 255.0f;
            }
            float log = f5 < 66.0f ? f5 > 19.0f ? (((float) Math.log(f5 - 10.0f)) * 138.51773f) - 305.0448f : BitmapDescriptorFactory.HUE_RED : 255.0f;
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
            float[] fArr = this.f1568a;
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

        private void c(float f) {
            float[] fArr = this.f1568a;
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

        /* JADX INFO: Access modifiers changed from: package-private */
        public final void a(ImageView imageView) {
            this.f1569b.reset();
            float f = this.e;
            boolean z = true;
            if (f != 1.0f) {
                a(f);
                this.f1569b.set(this.f1568a);
                z = true;
            } else {
                z = false;
            }
            float f2 = this.f;
            if (f2 != 1.0f) {
                this.f1570c.setScale(f2, f2, f2, 1.0f);
                this.f1569b.postConcat(this.f1570c);
                z = true;
            }
            float f3 = this.g;
            if (f3 != 1.0f) {
                b(f3);
                this.f1570c.set(this.f1568a);
                this.f1569b.postConcat(this.f1570c);
                z = true;
            }
            float f4 = this.f1571d;
            if (f4 != 1.0f) {
                c(f4);
                this.f1570c.set(this.f1568a);
                this.f1569b.postConcat(this.f1570c);
            }
            if (z) {
                imageView.setColorFilter(new ColorMatrixColorFilter(this.f1569b));
            } else {
                imageView.clearColorFilter();
            }
        }
    }

    public ImageFilterView(Context context) {
        super(context);
        a((AttributeSet) null);
    }

    public ImageFilterView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(attributeSet);
    }

    public ImageFilterView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(attributeSet);
    }

    private void a(AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, e.b.ImageFilterView);
            int indexCount = obtainStyledAttributes.getIndexCount();
            Drawable drawable = obtainStyledAttributes.getDrawable(e.b.ImageFilterView_altSrc);
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == e.b.ImageFilterView_crossfade) {
                    this.g = obtainStyledAttributes.getFloat(index, BitmapDescriptorFactory.HUE_RED);
                } else if (index == e.b.ImageFilterView_warmth) {
                    setWarmth(obtainStyledAttributes.getFloat(index, BitmapDescriptorFactory.HUE_RED));
                } else if (index == e.b.ImageFilterView_saturation) {
                    setSaturation(obtainStyledAttributes.getFloat(index, BitmapDescriptorFactory.HUE_RED));
                } else if (index == e.b.ImageFilterView_contrast) {
                    setContrast(obtainStyledAttributes.getFloat(index, BitmapDescriptorFactory.HUE_RED));
                } else if (index == e.b.ImageFilterView_round) {
                    if (Build.VERSION.SDK_INT >= 21) {
                        setRound(obtainStyledAttributes.getDimension(index, BitmapDescriptorFactory.HUE_RED));
                    }
                } else if (index == e.b.ImageFilterView_roundPercent) {
                    if (Build.VERSION.SDK_INT >= 21) {
                        setRoundPercent(obtainStyledAttributes.getFloat(index, BitmapDescriptorFactory.HUE_RED));
                    }
                } else if (index == e.b.ImageFilterView_overlay) {
                    this.f = obtainStyledAttributes.getBoolean(index, this.f);
                }
            }
            obtainStyledAttributes.recycle();
            if (drawable != null) {
                Drawable[] drawableArr = new Drawable[2];
                this.f1564c = drawableArr;
                drawableArr[0] = getDrawable();
                this.f1564c[1] = drawable;
                LayerDrawable layerDrawable = new LayerDrawable(this.f1564c);
                this.f1565d = layerDrawable;
                layerDrawable.getDrawable(1).setAlpha((int) (this.g * 255.0f));
                super.setImageDrawable(this.f1565d);
            }
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        boolean z;
        if (Build.VERSION.SDK_INT >= 21 || this.h == BitmapDescriptorFactory.HUE_RED || this.j == null) {
            z = false;
        } else {
            z = true;
            canvas.save();
            canvas.clipPath(this.j);
        }
        super.draw(canvas);
        if (z) {
            canvas.restore();
        }
    }

    public void setBrightness(float f) {
        this.e.f1571d = f;
        this.e.a(this);
    }

    public void setContrast(float f) {
        this.e.f = f;
        this.e.a(this);
    }

    public void setCrossfade(float f) {
        this.g = f;
        if (this.f1564c != null) {
            if (!this.f) {
                this.f1565d.getDrawable(0).setAlpha((int) ((1.0f - this.g) * 255.0f));
            }
            this.f1565d.getDrawable(1).setAlpha((int) (this.g * 255.0f));
            super.setImageDrawable(this.f1565d);
        }
    }

    public void setRound(float f) {
        if (Float.isNaN(f)) {
            this.i = f;
            float f2 = this.h;
            this.h = -1.0f;
            setRoundPercent(f2);
            return;
        }
        boolean z = this.i != f;
        this.i = f;
        if (f != BitmapDescriptorFactory.HUE_RED) {
            if (this.j == null) {
                this.j = new Path();
            }
            if (this.f1563b == null) {
                this.f1563b = new RectF();
            }
            if (Build.VERSION.SDK_INT >= 21) {
                if (this.f1562a == null) {
                    ViewOutlineProvider viewOutlineProvider = new ViewOutlineProvider() { // from class: androidx.constraintlayout.utils.widget.ImageFilterView.2
                        @Override // android.view.ViewOutlineProvider
                        public final void getOutline(View view, Outline outline) {
                            outline.setRoundRect(0, 0, ImageFilterView.this.getWidth(), ImageFilterView.this.getHeight(), ImageFilterView.this.i);
                        }
                    };
                    this.f1562a = viewOutlineProvider;
                    setOutlineProvider(viewOutlineProvider);
                }
                setClipToOutline(true);
            }
            this.f1563b.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight());
            this.j.reset();
            Path path = this.j;
            RectF rectF = this.f1563b;
            float f3 = this.i;
            path.addRoundRect(rectF, f3, f3, Path.Direction.CW);
        } else if (Build.VERSION.SDK_INT >= 21) {
            setClipToOutline(false);
        }
        if (z && Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    public void setRoundPercent(float f) {
        boolean z = this.h != f;
        this.h = f;
        if (f != BitmapDescriptorFactory.HUE_RED) {
            if (this.j == null) {
                this.j = new Path();
            }
            if (this.f1563b == null) {
                this.f1563b = new RectF();
            }
            if (Build.VERSION.SDK_INT >= 21) {
                if (this.f1562a == null) {
                    ViewOutlineProvider viewOutlineProvider = new ViewOutlineProvider() { // from class: androidx.constraintlayout.utils.widget.ImageFilterView.1
                        @Override // android.view.ViewOutlineProvider
                        public final void getOutline(View view, Outline outline) {
                            int width = ImageFilterView.this.getWidth();
                            int height = ImageFilterView.this.getHeight();
                            outline.setRoundRect(0, 0, width, height, (Math.min(width, height) * ImageFilterView.this.h) / 2.0f);
                        }
                    };
                    this.f1562a = viewOutlineProvider;
                    setOutlineProvider(viewOutlineProvider);
                }
                setClipToOutline(true);
            }
            int width = getWidth();
            int height = getHeight();
            float min = (Math.min(width, height) * this.h) / 2.0f;
            this.f1563b.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, width, height);
            this.j.reset();
            this.j.addRoundRect(this.f1563b, min, min, Path.Direction.CW);
        } else if (Build.VERSION.SDK_INT >= 21) {
            setClipToOutline(false);
        }
        if (z && Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    public void setSaturation(float f) {
        this.e.e = f;
        this.e.a(this);
    }

    public void setWarmth(float f) {
        this.e.g = f;
        this.e.a(this);
    }
}
