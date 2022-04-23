package com.airbnb.lottie.model.layer;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.LPaint;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.ValueCallbackKeyframeAnimation;
import com.airbnb.lottie.utils.Utils;
import com.airbnb.lottie.value.LottieValueCallback;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/layer/ImageLayer.class */
public class ImageLayer extends BaseLayer {
    @Nullable

    /* renamed from: A */
    private BaseKeyframeAnimation<ColorFilter, ColorFilter> f6227A;

    /* renamed from: x */
    private final Paint f6228x = new LPaint(3);

    /* renamed from: y */
    private final Rect f6229y = new Rect();

    /* renamed from: z */
    private final Rect f6230z = new Rect();

    /* JADX INFO: Access modifiers changed from: package-private */
    public ImageLayer(LottieDrawable lottieDrawable, Layer layer) {
        super(lottieDrawable, layer);
    }

    @Nullable
    /* renamed from: J */
    private Bitmap m15939J() {
        return this.f6208n.m16235q(this.f6209o.m15928k());
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer, com.airbnb.lottie.animation.content.DrawingContent
    /* renamed from: d */
    public void mo15900d(RectF rectF, Matrix matrix, boolean z) {
        super.mo15900d(rectF, matrix, z);
        Bitmap J = m15939J();
        if (J != null) {
            rectF.set(0.0f, 0.0f, J.getWidth() * Utils.m15693e(), J.getHeight() * Utils.m15693e());
            this.f6207m.mapRect(rectF);
        }
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer, com.airbnb.lottie.model.KeyPathElement
    /* renamed from: g */
    public <T> void mo15899g(T t, @Nullable LottieValueCallback<T> lottieValueCallback) {
        super.mo15899g(t, lottieValueCallback);
        if (t != LottieProperty.f5820C) {
            return;
        }
        if (lottieValueCallback == null) {
            this.f6227A = null;
        } else {
            this.f6227A = new ValueCallbackKeyframeAnimation(lottieValueCallback);
        }
    }

    @Override // com.airbnb.lottie.model.layer.BaseLayer
    /* renamed from: t */
    public void mo15898t(@NonNull Canvas canvas, Matrix matrix, int i) {
        Bitmap J = m15939J();
        if (J != null && !J.isRecycled()) {
            float e = Utils.m15693e();
            this.f6228x.setAlpha(i);
            BaseKeyframeAnimation<ColorFilter, ColorFilter> baseKeyframeAnimation = this.f6227A;
            if (baseKeyframeAnimation != null) {
                this.f6228x.setColorFilter(baseKeyframeAnimation.mo16113h());
            }
            canvas.save();
            canvas.concat(matrix);
            this.f6229y.set(0, 0, J.getWidth(), J.getHeight());
            this.f6230z.set(0, 0, (int) (J.getWidth() * e), (int) (J.getHeight() * e));
            canvas.drawBitmap(J, this.f6229y, this.f6230z, this.f6228x);
            canvas.restore();
        }
    }
}
