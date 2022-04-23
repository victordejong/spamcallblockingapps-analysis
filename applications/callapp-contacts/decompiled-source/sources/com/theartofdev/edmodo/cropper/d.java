package com.theartofdev.edmodo.cropper;

import android.graphics.Matrix;
import android.graphics.RectF;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.widget.ImageView;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/d.class */
public final class d extends Animation implements Animation.AnimationListener {

    /* renamed from: a  reason: collision with root package name */
    private final ImageView f35059a;

    /* renamed from: b  reason: collision with root package name */
    private final CropOverlayView f35060b;

    /* renamed from: c  reason: collision with root package name */
    private final float[] f35061c = new float[8];

    /* renamed from: d  reason: collision with root package name */
    private final float[] f35062d = new float[8];
    private final RectF e = new RectF();
    private final RectF f = new RectF();
    private final float[] g = new float[9];
    private final float[] h = new float[9];
    private final RectF i = new RectF();
    private final float[] j = new float[8];
    private final float[] k = new float[9];

    public d(ImageView imageView, CropOverlayView cropOverlayView) {
        this.f35059a = imageView;
        this.f35060b = cropOverlayView;
        setDuration(300L);
        setFillAfter(true);
        setInterpolator(new AccelerateDecelerateInterpolator());
        setAnimationListener(this);
    }

    public final void a(float[] fArr, Matrix matrix) {
        reset();
        System.arraycopy(fArr, 0, this.f35061c, 0, 8);
        this.e.set(this.f35060b.f35030a.a());
        matrix.getValues(this.g);
    }

    @Override // android.view.animation.Animation
    protected final void applyTransformation(float f, Transformation transformation) {
        float[] fArr;
        this.i.left = this.e.left + ((this.f.left - this.e.left) * f);
        this.i.top = this.e.top + ((this.f.top - this.e.top) * f);
        this.i.right = this.e.right + ((this.f.right - this.e.right) * f);
        this.i.bottom = this.e.bottom + ((this.f.bottom - this.e.bottom) * f);
        this.f35060b.setCropWindowRect(this.i);
        int i = 0;
        int i2 = 0;
        while (true) {
            fArr = this.j;
            if (i2 >= fArr.length) {
                break;
            }
            float[] fArr2 = this.f35061c;
            fArr[i2] = fArr2[i2] + ((this.f35062d[i2] - fArr2[i2]) * f);
            i2++;
        }
        this.f35060b.setBounds(fArr, this.f35059a.getWidth(), this.f35059a.getHeight());
        while (true) {
            float[] fArr3 = this.k;
            if (i < fArr3.length) {
                float[] fArr4 = this.g;
                fArr3[i] = fArr4[i] + ((this.h[i] - fArr4[i]) * f);
                i++;
            } else {
                Matrix imageMatrix = this.f35059a.getImageMatrix();
                imageMatrix.setValues(this.k);
                this.f35059a.setImageMatrix(imageMatrix);
                this.f35059a.invalidate();
                this.f35060b.invalidate();
                return;
            }
        }
    }

    public final void b(float[] fArr, Matrix matrix) {
        System.arraycopy(fArr, 0, this.f35062d, 0, 8);
        this.f.set(this.f35060b.f35030a.a());
        matrix.getValues(this.h);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        this.f35059a.clearAnimation();
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
    }
}
