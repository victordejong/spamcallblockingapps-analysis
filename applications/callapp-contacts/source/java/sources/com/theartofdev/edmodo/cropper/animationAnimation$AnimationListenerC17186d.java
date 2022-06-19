package com.theartofdev.edmodo.cropper;

import android.graphics.Matrix;
import android.graphics.RectF;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.widget.ImageView;
/* renamed from: com.theartofdev.edmodo.cropper.d */
/* loaded from: classes4-dex2jar.jar:com/theartofdev/edmodo/cropper/d.class */
public final class animationAnimation$AnimationListenerC17186d extends Animation implements Animation.AnimationListener {

    /* renamed from: a */
    private final ImageView f60865a;

    /* renamed from: b */
    private final CropOverlayView f60866b;

    /* renamed from: c */
    private final float[] f60867c = new float[8];

    /* renamed from: d */
    private final float[] f60868d = new float[8];

    /* renamed from: e */
    private final RectF f60869e = new RectF();

    /* renamed from: f */
    private final RectF f60870f = new RectF();

    /* renamed from: g */
    private final float[] f60871g = new float[9];

    /* renamed from: h */
    private final float[] f60872h = new float[9];

    /* renamed from: i */
    private final RectF f60873i = new RectF();

    /* renamed from: j */
    private final float[] f60874j = new float[8];

    /* renamed from: k */
    private final float[] f60875k = new float[9];

    public animationAnimation$AnimationListenerC17186d(ImageView imageView, CropOverlayView cropOverlayView) {
        this.f60865a = imageView;
        this.f60866b = cropOverlayView;
        setDuration(300L);
        setFillAfter(true);
        setInterpolator(new AccelerateDecelerateInterpolator());
        setAnimationListener(this);
    }

    /* renamed from: a */
    public final void m5752a(float[] fArr, Matrix matrix) {
        reset();
        System.arraycopy(fArr, 0, this.f60867c, 0, 8);
        this.f60869e.set(this.f60866b.f60793a.m5750a());
        matrix.getValues(this.f60871g);
    }

    @Override // android.view.animation.Animation
    protected final void applyTransformation(float f, Transformation transformation) {
        float[] fArr;
        this.f60873i.left = this.f60869e.left + ((this.f60870f.left - this.f60869e.left) * f);
        this.f60873i.top = this.f60869e.top + ((this.f60870f.top - this.f60869e.top) * f);
        this.f60873i.right = this.f60869e.right + ((this.f60870f.right - this.f60869e.right) * f);
        this.f60873i.bottom = this.f60869e.bottom + ((this.f60870f.bottom - this.f60869e.bottom) * f);
        this.f60866b.setCropWindowRect(this.f60873i);
        int i = 0;
        while (true) {
            fArr = this.f60874j;
            if (i >= fArr.length) {
                break;
            }
            float[] fArr2 = this.f60867c;
            fArr[i] = fArr2[i] + ((this.f60868d[i] - fArr2[i]) * f);
            i++;
        }
        this.f60866b.setBounds(fArr, this.f60865a.getWidth(), this.f60865a.getHeight());
        int i2 = 0;
        while (true) {
            float[] fArr3 = this.f60875k;
            if (i2 >= fArr3.length) {
                Matrix imageMatrix = this.f60865a.getImageMatrix();
                imageMatrix.setValues(this.f60875k);
                this.f60865a.setImageMatrix(imageMatrix);
                this.f60865a.invalidate();
                this.f60866b.invalidate();
                return;
            }
            float[] fArr4 = this.f60871g;
            fArr3[i2] = fArr4[i2] + ((this.f60872h[i2] - fArr4[i2]) * f);
            i2++;
        }
    }

    /* renamed from: b */
    public final void m5751b(float[] fArr, Matrix matrix) {
        System.arraycopy(fArr, 0, this.f60868d, 0, 8);
        this.f60870f.set(this.f60866b.f60793a.m5750a());
        matrix.getValues(this.f60872h);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationEnd(Animation animation) {
        this.f60865a.clearAnimation();
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public final void onAnimationStart(Animation animation) {
    }
}
