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
import androidx.constraintlayout.widget.e;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/utils/widget/ImageFilterButton.class */
public class ImageFilterButton extends AppCompatImageButton {

    /* renamed from: a  reason: collision with root package name */
    ViewOutlineProvider f1556a;

    /* renamed from: b  reason: collision with root package name */
    RectF f1557b;

    /* renamed from: c  reason: collision with root package name */
    Drawable[] f1558c;

    /* renamed from: d  reason: collision with root package name */
    LayerDrawable f1559d;
    private Path i;
    private ImageFilterView.a e = new ImageFilterView.a();
    private float f = BitmapDescriptorFactory.HUE_RED;
    private float g = BitmapDescriptorFactory.HUE_RED;
    private float h = Float.NaN;
    private boolean j = true;

    public ImageFilterButton(Context context) {
        super(context);
        a((AttributeSet) null);
    }

    public ImageFilterButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(attributeSet);
    }

    public ImageFilterButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(attributeSet);
    }

    private void a(AttributeSet attributeSet) {
        setPadding(0, 0, 0, 0);
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, e.b.ImageFilterView);
            int indexCount = obtainStyledAttributes.getIndexCount();
            Drawable drawable = obtainStyledAttributes.getDrawable(e.b.ImageFilterView_altSrc);
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == e.b.ImageFilterView_crossfade) {
                    this.f = obtainStyledAttributes.getFloat(index, BitmapDescriptorFactory.HUE_RED);
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
                    this.j = obtainStyledAttributes.getBoolean(index, this.j);
                }
            }
            obtainStyledAttributes.recycle();
            if (drawable != null) {
                Drawable[] drawableArr = new Drawable[2];
                this.f1558c = drawableArr;
                drawableArr[0] = getDrawable();
                this.f1558c[1] = drawable;
                LayerDrawable layerDrawable = new LayerDrawable(this.f1558c);
                this.f1559d = layerDrawable;
                layerDrawable.getDrawable(1).setAlpha((int) (this.f * 255.0f));
                super.setImageDrawable(this.f1559d);
            }
        }
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        boolean z;
        if (Build.VERSION.SDK_INT >= 21 || this.h == BitmapDescriptorFactory.HUE_RED || this.i == null) {
            z = false;
        } else {
            z = true;
            canvas.save();
            canvas.clipPath(this.i);
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
        this.f = f;
        if (this.f1558c != null) {
            if (!this.j) {
                this.f1559d.getDrawable(0).setAlpha((int) ((1.0f - this.f) * 255.0f));
            }
            this.f1559d.getDrawable(1).setAlpha((int) (this.f * 255.0f));
            super.setImageDrawable(this.f1559d);
        }
    }

    public void setRound(float f) {
        if (Float.isNaN(f)) {
            this.h = f;
            float f2 = this.g;
            this.g = -1.0f;
            setRoundPercent(f2);
            return;
        }
        boolean z = this.h != f;
        this.h = f;
        if (f != BitmapDescriptorFactory.HUE_RED) {
            if (this.i == null) {
                this.i = new Path();
            }
            if (this.f1557b == null) {
                this.f1557b = new RectF();
            }
            if (Build.VERSION.SDK_INT >= 21) {
                if (this.f1556a == null) {
                    ViewOutlineProvider viewOutlineProvider = new ViewOutlineProvider() { // from class: androidx.constraintlayout.utils.widget.ImageFilterButton.2
                        @Override // android.view.ViewOutlineProvider
                        public final void getOutline(View view, Outline outline) {
                            outline.setRoundRect(0, 0, ImageFilterButton.this.getWidth(), ImageFilterButton.this.getHeight(), ImageFilterButton.this.h);
                        }
                    };
                    this.f1556a = viewOutlineProvider;
                    setOutlineProvider(viewOutlineProvider);
                }
                setClipToOutline(true);
            }
            this.f1557b.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight());
            this.i.reset();
            Path path = this.i;
            RectF rectF = this.f1557b;
            float f3 = this.h;
            path.addRoundRect(rectF, f3, f3, Path.Direction.CW);
        } else if (Build.VERSION.SDK_INT >= 21) {
            setClipToOutline(false);
        }
        if (z && Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    public void setRoundPercent(float f) {
        boolean z = this.g != f;
        this.g = f;
        if (f != BitmapDescriptorFactory.HUE_RED) {
            if (this.i == null) {
                this.i = new Path();
            }
            if (this.f1557b == null) {
                this.f1557b = new RectF();
            }
            if (Build.VERSION.SDK_INT >= 21) {
                if (this.f1556a == null) {
                    ViewOutlineProvider viewOutlineProvider = new ViewOutlineProvider() { // from class: androidx.constraintlayout.utils.widget.ImageFilterButton.1
                        @Override // android.view.ViewOutlineProvider
                        public final void getOutline(View view, Outline outline) {
                            int width = ImageFilterButton.this.getWidth();
                            int height = ImageFilterButton.this.getHeight();
                            outline.setRoundRect(0, 0, width, height, (Math.min(width, height) * ImageFilterButton.this.g) / 2.0f);
                        }
                    };
                    this.f1556a = viewOutlineProvider;
                    setOutlineProvider(viewOutlineProvider);
                }
                setClipToOutline(true);
            }
            int width = getWidth();
            int height = getHeight();
            float min = (Math.min(width, height) * this.g) / 2.0f;
            this.f1557b.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, width, height);
            this.i.reset();
            this.i.addRoundRect(this.f1557b, min, min, Path.Direction.CW);
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
