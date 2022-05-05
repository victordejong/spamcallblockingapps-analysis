package com.airbnb.lottie.model.layer;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.LPaint;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.ValueCallbackKeyframeAnimation;
import com.airbnb.lottie.value.LottieValueCallback;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/layer/SolidLayer.class */
public class SolidLayer extends BaseLayer {

    /* renamed from: B */
    private final Layer f6255B;
    @Nullable

    /* renamed from: C */
    private BaseKeyframeAnimation<ColorFilter, ColorFilter> f6256C;

    /* renamed from: x */
    private final RectF f6257x = new RectF();

    /* renamed from: y */
    private final Paint f6258y = new LPaint();

    /* renamed from: z */
    private final float[] f6259z = new float[8];

    /* renamed from: A */
    private final Path f6254A = new Path();

    /* JADX INFO: Access modifiers changed from: package-private */
    public SolidLayer(LottieDrawable lottieDrawable, Layer layer) {
        super(lottieDrawable, layer);
        this.f6255B = layer;
        this.f6258y.setAlpha(0);
        this.f6258y.setStyle(Paint.Style.FILL);
        this.f6258y.setColor(layer.m15926m());
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer, com.airbnb.lottie.animation.content.DrawingContent
    /* renamed from: d */
    public void mo15900d(RectF rectF, Matrix matrix, boolean z) {
        super.mo15900d(rectF, matrix, z);
        this.f6257x.set(0.0f, 0.0f, this.f6255B.m15924o(), this.f6255B.m15925n());
        this.f6207m.mapRect(this.f6257x);
        rectF.set(this.f6257x);
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer, com.airbnb.lottie.model.KeyPathElement
    /* renamed from: g */
    public <T> void mo15899g(T t, @Nullable LottieValueCallback<T> lottieValueCallback) {
        super.mo15899g(t, lottieValueCallback);
        if (t != LottieProperty.f5820C) {
            return;
        }
        if (lottieValueCallback == null) {
            this.f6256C = null;
        } else {
            this.f6256C = new ValueCallbackKeyframeAnimation(lottieValueCallback);
        }
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer
    /* renamed from: t */
    public void mo15898t(Canvas canvas, Matrix matrix, int i) {
        int alpha = Color.alpha(this.f6255B.m15926m());
        if (alpha != 0) {
            int intValue = (int) ((i / 255.0f) * (((alpha / 255.0f) * (this.f6216v.m16117h() == null ? 100 : this.f6216v.m16117h().mo16113h().intValue())) / 100.0f) * 255.0f);
            this.f6258y.setAlpha(intValue);
            BaseKeyframeAnimation<ColorFilter, ColorFilter> baseKeyframeAnimation = this.f6256C;
            if (baseKeyframeAnimation != null) {
                this.f6258y.setColorFilter(baseKeyframeAnimation.mo16113h());
            }
            if (intValue > 0) {
                float[] fArr = this.f6259z;
                fArr[0] = 0.0f;
                fArr[1] = 0.0f;
                fArr[2] = this.f6255B.m15924o();
                float[] fArr2 = this.f6259z;
                fArr2[3] = 0.0f;
                fArr2[4] = this.f6255B.m15924o();
                this.f6259z[5] = this.f6255B.m15925n();
                float[] fArr3 = this.f6259z;
                fArr3[6] = 0.0f;
                fArr3[7] = this.f6255B.m15925n();
                matrix.mapPoints(this.f6259z);
                this.f6254A.reset();
                Path path = this.f6254A;
                float[] fArr4 = this.f6259z;
                path.moveTo(fArr4[0], fArr4[1]);
                Path path2 = this.f6254A;
                float[] fArr5 = this.f6259z;
                path2.lineTo(fArr5[2], fArr5[3]);
                Path path3 = this.f6254A;
                float[] fArr6 = this.f6259z;
                path3.lineTo(fArr6[4], fArr6[5]);
                Path path4 = this.f6254A;
                float[] fArr7 = this.f6259z;
                path4.lineTo(fArr7[6], fArr7[7]);
                Path path5 = this.f6254A;
                float[] fArr8 = this.f6259z;
                path5.lineTo(fArr8[0], fArr8[1]);
                this.f6254A.close();
                canvas.drawPath(this.f6254A, this.f6258y);
            }
        }
    }
}
