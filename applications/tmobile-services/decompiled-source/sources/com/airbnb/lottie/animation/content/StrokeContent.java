package com.airbnb.lottie.animation.content;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.ColorKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.ValueCallbackKeyframeAnimation;
import com.airbnb.lottie.model.content.ShapeStroke;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.value.LottieValueCallback;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/animation/content/StrokeContent.class */
public class StrokeContent extends BaseStrokeContent {

    /* renamed from: o */
    private final BaseLayer f5987o;

    /* renamed from: p */
    private final String f5988p;

    /* renamed from: q */
    private final boolean f5989q;

    /* renamed from: r */
    private final BaseKeyframeAnimation<Integer, Integer> f5990r;
    @Nullable

    /* renamed from: s */
    private BaseKeyframeAnimation<ColorFilter, ColorFilter> f5991s;

    public StrokeContent(LottieDrawable lottieDrawable, BaseLayer baseLayer, ShapeStroke shapeStroke) {
        super(lottieDrawable, baseLayer, shapeStroke.m15987b().toPaintCap(), shapeStroke.m15984e().toPaintJoin(), shapeStroke.m15982g(), shapeStroke.m15980i(), shapeStroke.m15979j(), shapeStroke.m15983f(), shapeStroke.m15985d());
        this.f5987o = baseLayer;
        this.f5988p = shapeStroke.m15981h();
        this.f5989q = shapeStroke.m15978k();
        BaseKeyframeAnimation<Integer, Integer> a = shapeStroke.m15986c().mo16063a();
        this.f5990r = a;
        a.m16161a(this);
        baseLayer.m15958i(this.f5990r);
    }

    @Override // com.airbnb.lottie.animation.content.BaseStrokeContent, com.airbnb.lottie.animation.content.DrawingContent
    /* renamed from: f */
    public void mo15960f(Canvas canvas, Matrix matrix, int i) {
        if (!this.f5989q) {
            this.f5871i.setColor(((ColorKeyframeAnimation) this.f5990r).m16146o());
            BaseKeyframeAnimation<ColorFilter, ColorFilter> baseKeyframeAnimation = this.f5991s;
            if (baseKeyframeAnimation != null) {
                this.f5871i.setColorFilter(baseKeyframeAnimation.mo16113h());
            }
            super.mo15960f(canvas, matrix, i);
        }
    }

    @Override // com.airbnb.lottie.animation.content.BaseStrokeContent, com.airbnb.lottie.model.KeyPathElement
    /* renamed from: g */
    public <T> void mo15899g(T t, @Nullable LottieValueCallback<T> lottieValueCallback) {
        super.mo15899g(t, lottieValueCallback);
        if (t == LottieProperty.f5823b) {
            this.f5990r.m16154m(lottieValueCallback);
        } else if (t == LottieProperty.f5820C) {
            BaseKeyframeAnimation<ColorFilter, ColorFilter> baseKeyframeAnimation = this.f5991s;
            if (baseKeyframeAnimation != null) {
                this.f5987o.m15968C(baseKeyframeAnimation);
            }
            if (lottieValueCallback == null) {
                this.f5991s = null;
                return;
            }
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation = new ValueCallbackKeyframeAnimation(lottieValueCallback);
            this.f5991s = valueCallbackKeyframeAnimation;
            valueCallbackKeyframeAnimation.m16161a(this);
            this.f5987o.m15958i(this.f5990r);
        }
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public String getName() {
        return this.f5988p;
    }
}
