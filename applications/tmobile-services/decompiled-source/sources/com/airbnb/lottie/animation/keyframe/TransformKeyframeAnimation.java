package com.airbnb.lottie.animation.keyframe;

import android.graphics.Matrix;
import android.graphics.PointF;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.model.animatable.AnimatableTransform;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.value.Keyframe;
import com.airbnb.lottie.value.LottieValueCallback;
import com.airbnb.lottie.value.ScaleXY;
import java.util.Collections;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/animation/keyframe/TransformKeyframeAnimation.class */
public class TransformKeyframeAnimation {

    /* renamed from: a */
    private final Matrix f6030a = new Matrix();

    /* renamed from: b */
    private final Matrix f6031b;

    /* renamed from: c */
    private final Matrix f6032c;

    /* renamed from: d */
    private final Matrix f6033d;

    /* renamed from: e */
    private final float[] f6034e;
    @NonNull

    /* renamed from: f */
    private BaseKeyframeAnimation<PointF, PointF> f6035f;
    @NonNull

    /* renamed from: g */
    private BaseKeyframeAnimation<?, PointF> f6036g;
    @NonNull

    /* renamed from: h */
    private BaseKeyframeAnimation<ScaleXY, ScaleXY> f6037h;
    @NonNull

    /* renamed from: i */
    private BaseKeyframeAnimation<Float, Float> f6038i;
    @NonNull

    /* renamed from: j */
    private BaseKeyframeAnimation<Integer, Integer> f6039j;
    @Nullable

    /* renamed from: k */
    private FloatKeyframeAnimation f6040k;
    @Nullable

    /* renamed from: l */
    private FloatKeyframeAnimation f6041l;
    @Nullable

    /* renamed from: m */
    private BaseKeyframeAnimation<?, Float> f6042m;
    @Nullable

    /* renamed from: n */
    private BaseKeyframeAnimation<?, Float> f6043n;

    public TransformKeyframeAnimation(AnimatableTransform animatableTransform) {
        this.f6035f = animatableTransform.m16072c() == null ? null : animatableTransform.m16072c().mo16063a();
        this.f6036g = animatableTransform.m16069f() == null ? null : animatableTransform.m16069f().mo16063a();
        this.f6037h = animatableTransform.m16067h() == null ? null : animatableTransform.m16067h().mo16063a();
        this.f6038i = animatableTransform.m16068g() == null ? null : animatableTransform.m16068g().mo16063a();
        FloatKeyframeAnimation floatKeyframeAnimation = animatableTransform.m16066i() == null ? null : (FloatKeyframeAnimation) animatableTransform.m16066i().mo16063a();
        this.f6040k = floatKeyframeAnimation;
        if (floatKeyframeAnimation != null) {
            this.f6031b = new Matrix();
            this.f6032c = new Matrix();
            this.f6033d = new Matrix();
            this.f6034e = new float[9];
        } else {
            this.f6031b = null;
            this.f6032c = null;
            this.f6033d = null;
            this.f6034e = null;
        }
        this.f6041l = animatableTransform.m16065j() == null ? null : (FloatKeyframeAnimation) animatableTransform.m16065j().mo16063a();
        if (animatableTransform.m16070e() != null) {
            this.f6039j = animatableTransform.m16070e().mo16063a();
        }
        if (animatableTransform.m16064k() != null) {
            this.f6042m = animatableTransform.m16064k().mo16063a();
        } else {
            this.f6042m = null;
        }
        if (animatableTransform.m16071d() != null) {
            this.f6043n = animatableTransform.m16071d().mo16063a();
        } else {
            this.f6043n = null;
        }
    }

    /* renamed from: d */
    private void m16121d() {
        for (int i = 0; i < 9; i++) {
            this.f6034e[i] = 0.0f;
        }
    }

    /* renamed from: a */
    public void m16124a(BaseLayer baseLayer) {
        baseLayer.m15958i(this.f6039j);
        baseLayer.m15958i(this.f6042m);
        baseLayer.m15958i(this.f6043n);
        baseLayer.m15958i(this.f6035f);
        baseLayer.m15958i(this.f6036g);
        baseLayer.m15958i(this.f6037h);
        baseLayer.m15958i(this.f6038i);
        baseLayer.m15958i(this.f6040k);
        baseLayer.m15958i(this.f6041l);
    }

    /* renamed from: b */
    public void m16123b(BaseKeyframeAnimation.AnimationListener animationListener) {
        BaseKeyframeAnimation<Integer, Integer> baseKeyframeAnimation = this.f6039j;
        if (baseKeyframeAnimation != null) {
            baseKeyframeAnimation.m16161a(animationListener);
        }
        BaseKeyframeAnimation<?, Float> baseKeyframeAnimation2 = this.f6042m;
        if (baseKeyframeAnimation2 != null) {
            baseKeyframeAnimation2.m16161a(animationListener);
        }
        BaseKeyframeAnimation<?, Float> baseKeyframeAnimation3 = this.f6043n;
        if (baseKeyframeAnimation3 != null) {
            baseKeyframeAnimation3.m16161a(animationListener);
        }
        BaseKeyframeAnimation<PointF, PointF> baseKeyframeAnimation4 = this.f6035f;
        if (baseKeyframeAnimation4 != null) {
            baseKeyframeAnimation4.m16161a(animationListener);
        }
        BaseKeyframeAnimation<?, PointF> baseKeyframeAnimation5 = this.f6036g;
        if (baseKeyframeAnimation5 != null) {
            baseKeyframeAnimation5.m16161a(animationListener);
        }
        BaseKeyframeAnimation<ScaleXY, ScaleXY> baseKeyframeAnimation6 = this.f6037h;
        if (baseKeyframeAnimation6 != null) {
            baseKeyframeAnimation6.m16161a(animationListener);
        }
        BaseKeyframeAnimation<Float, Float> baseKeyframeAnimation7 = this.f6038i;
        if (baseKeyframeAnimation7 != null) {
            baseKeyframeAnimation7.m16161a(animationListener);
        }
        FloatKeyframeAnimation floatKeyframeAnimation = this.f6040k;
        if (floatKeyframeAnimation != null) {
            floatKeyframeAnimation.m16161a(animationListener);
        }
        FloatKeyframeAnimation floatKeyframeAnimation2 = this.f6041l;
        if (floatKeyframeAnimation2 != null) {
            floatKeyframeAnimation2.m16161a(animationListener);
        }
    }

    /* renamed from: c */
    public <T> boolean m16122c(T t, @Nullable LottieValueCallback<T> lottieValueCallback) {
        FloatKeyframeAnimation floatKeyframeAnimation;
        FloatKeyframeAnimation floatKeyframeAnimation2;
        BaseKeyframeAnimation<?, Float> baseKeyframeAnimation;
        BaseKeyframeAnimation<?, Float> baseKeyframeAnimation2;
        if (t == LottieProperty.f5826e) {
            BaseKeyframeAnimation<PointF, PointF> baseKeyframeAnimation3 = this.f6035f;
            if (baseKeyframeAnimation3 == null) {
                this.f6035f = new ValueCallbackKeyframeAnimation(lottieValueCallback, new PointF());
                return true;
            }
            baseKeyframeAnimation3.m16154m(lottieValueCallback);
            return true;
        } else if (t == LottieProperty.f5827f) {
            BaseKeyframeAnimation<?, PointF> baseKeyframeAnimation4 = this.f6036g;
            if (baseKeyframeAnimation4 == null) {
                this.f6036g = new ValueCallbackKeyframeAnimation(lottieValueCallback, new PointF());
                return true;
            }
            baseKeyframeAnimation4.m16154m(lottieValueCallback);
            return true;
        } else if (t == LottieProperty.f5832k) {
            BaseKeyframeAnimation<ScaleXY, ScaleXY> baseKeyframeAnimation5 = this.f6037h;
            if (baseKeyframeAnimation5 == null) {
                this.f6037h = new ValueCallbackKeyframeAnimation(lottieValueCallback, new ScaleXY());
                return true;
            }
            baseKeyframeAnimation5.m16154m(lottieValueCallback);
            return true;
        } else if (t == LottieProperty.f5833l) {
            BaseKeyframeAnimation<Float, Float> baseKeyframeAnimation6 = this.f6038i;
            if (baseKeyframeAnimation6 == null) {
                this.f6038i = new ValueCallbackKeyframeAnimation(lottieValueCallback, Float.valueOf(0.0f));
                return true;
            }
            baseKeyframeAnimation6.m16154m(lottieValueCallback);
            return true;
        } else if (t == LottieProperty.f5824c) {
            BaseKeyframeAnimation<Integer, Integer> baseKeyframeAnimation7 = this.f6039j;
            if (baseKeyframeAnimation7 == null) {
                this.f6039j = new ValueCallbackKeyframeAnimation(lottieValueCallback, 100);
                return true;
            }
            baseKeyframeAnimation7.m16154m(lottieValueCallback);
            return true;
        } else if (t != LottieProperty.f5846y || (baseKeyframeAnimation2 = this.f6042m) == null) {
            if (t != LottieProperty.f5847z || (baseKeyframeAnimation = this.f6043n) == null) {
                if (t == LottieProperty.f5834m && (floatKeyframeAnimation2 = this.f6040k) != null) {
                    if (floatKeyframeAnimation2 == null) {
                        this.f6040k = new FloatKeyframeAnimation(Collections.singletonList(new Keyframe(Float.valueOf(0.0f))));
                    }
                    this.f6040k.m16154m(lottieValueCallback);
                    return true;
                } else if (t != LottieProperty.f5835n || (floatKeyframeAnimation = this.f6041l) == null) {
                    return false;
                } else {
                    if (floatKeyframeAnimation == null) {
                        this.f6041l = new FloatKeyframeAnimation(Collections.singletonList(new Keyframe(Float.valueOf(0.0f))));
                    }
                    this.f6041l.m16154m(lottieValueCallback);
                    return true;
                }
            } else if (baseKeyframeAnimation == null) {
                this.f6043n = new ValueCallbackKeyframeAnimation(lottieValueCallback, 100);
                return true;
            } else {
                baseKeyframeAnimation.m16154m(lottieValueCallback);
                return true;
            }
        } else if (baseKeyframeAnimation2 == null) {
            this.f6042m = new ValueCallbackKeyframeAnimation(lottieValueCallback, 100);
            return true;
        } else {
            baseKeyframeAnimation2.m16154m(lottieValueCallback);
            return true;
        }
    }

    @Nullable
    /* renamed from: e */
    public BaseKeyframeAnimation<?, Float> m16120e() {
        return this.f6043n;
    }

    /* renamed from: f */
    public Matrix m16119f() {
        this.f6030a.reset();
        BaseKeyframeAnimation<?, PointF> baseKeyframeAnimation = this.f6036g;
        if (baseKeyframeAnimation != null) {
            PointF h = baseKeyframeAnimation.mo16113h();
            if (!(h.x == 0.0f && h.y == 0.0f)) {
                this.f6030a.preTranslate(h.x, h.y);
            }
        }
        BaseKeyframeAnimation<Float, Float> baseKeyframeAnimation2 = this.f6038i;
        if (baseKeyframeAnimation2 != null) {
            float floatValue = baseKeyframeAnimation2 instanceof ValueCallbackKeyframeAnimation ? baseKeyframeAnimation2.mo16113h().floatValue() : ((FloatKeyframeAnimation) baseKeyframeAnimation2).m16143o();
            if (floatValue != 0.0f) {
                this.f6030a.preRotate(floatValue);
            }
        }
        if (this.f6040k != null) {
            FloatKeyframeAnimation floatKeyframeAnimation = this.f6041l;
            float cos = floatKeyframeAnimation == null ? 0.0f : (float) Math.cos(Math.toRadians((-floatKeyframeAnimation.m16143o()) + 90.0f));
            FloatKeyframeAnimation floatKeyframeAnimation2 = this.f6041l;
            float sin = floatKeyframeAnimation2 == null ? 1.0f : (float) Math.sin(Math.toRadians((-floatKeyframeAnimation2.m16143o()) + 90.0f));
            float tan = (float) Math.tan(Math.toRadians(this.f6040k.m16143o()));
            m16121d();
            float[] fArr = this.f6034e;
            fArr[0] = cos;
            fArr[1] = sin;
            float f = -sin;
            fArr[3] = f;
            fArr[4] = cos;
            fArr[8] = 1.0f;
            this.f6031b.setValues(fArr);
            m16121d();
            float[] fArr2 = this.f6034e;
            fArr2[0] = 1.0f;
            fArr2[3] = tan;
            fArr2[4] = 1.0f;
            fArr2[8] = 1.0f;
            this.f6032c.setValues(fArr2);
            m16121d();
            float[] fArr3 = this.f6034e;
            fArr3[0] = cos;
            fArr3[1] = f;
            fArr3[3] = sin;
            fArr3[4] = cos;
            fArr3[8] = 1.0f;
            this.f6033d.setValues(fArr3);
            this.f6032c.preConcat(this.f6031b);
            this.f6033d.preConcat(this.f6032c);
            this.f6030a.preConcat(this.f6033d);
        }
        BaseKeyframeAnimation<ScaleXY, ScaleXY> baseKeyframeAnimation3 = this.f6037h;
        if (baseKeyframeAnimation3 != null) {
            ScaleXY h2 = baseKeyframeAnimation3.mo16113h();
            if (!(h2.m15652b() == 1.0f && h2.m15651c() == 1.0f)) {
                this.f6030a.preScale(h2.m15652b(), h2.m15651c());
            }
        }
        BaseKeyframeAnimation<PointF, PointF> baseKeyframeAnimation4 = this.f6035f;
        if (baseKeyframeAnimation4 != null) {
            PointF h3 = baseKeyframeAnimation4.mo16113h();
            if (!(h3.x == 0.0f && h3.y == 0.0f)) {
                this.f6030a.preTranslate(-h3.x, -h3.y);
            }
        }
        return this.f6030a;
    }

    /* renamed from: g */
    public Matrix m16118g(float f) {
        BaseKeyframeAnimation<?, PointF> baseKeyframeAnimation = this.f6036g;
        PointF pointF = null;
        PointF h = baseKeyframeAnimation == null ? null : baseKeyframeAnimation.mo16113h();
        BaseKeyframeAnimation<ScaleXY, ScaleXY> baseKeyframeAnimation2 = this.f6037h;
        ScaleXY h2 = baseKeyframeAnimation2 == null ? null : baseKeyframeAnimation2.mo16113h();
        this.f6030a.reset();
        if (h != null) {
            this.f6030a.preTranslate(h.x * f, h.y * f);
        }
        if (h2 != null) {
            double d = f;
            this.f6030a.preScale((float) Math.pow(h2.m15652b(), d), (float) Math.pow(h2.m15651c(), d));
        }
        BaseKeyframeAnimation<Float, Float> baseKeyframeAnimation3 = this.f6038i;
        if (baseKeyframeAnimation3 != null) {
            float floatValue = baseKeyframeAnimation3.mo16113h().floatValue();
            BaseKeyframeAnimation<PointF, PointF> baseKeyframeAnimation4 = this.f6035f;
            if (baseKeyframeAnimation4 != null) {
                pointF = baseKeyframeAnimation4.mo16113h();
            }
            Matrix matrix = this.f6030a;
            float f2 = 0.0f;
            float f3 = pointF == null ? 0.0f : pointF.x;
            if (pointF != null) {
                f2 = pointF.y;
            }
            matrix.preRotate(floatValue * f, f3, f2);
        }
        return this.f6030a;
    }

    @Nullable
    /* renamed from: h */
    public BaseKeyframeAnimation<?, Integer> m16117h() {
        return this.f6039j;
    }

    @Nullable
    /* renamed from: i */
    public BaseKeyframeAnimation<?, Float> m16116i() {
        return this.f6042m;
    }

    /* renamed from: j */
    public void m16115j(float f) {
        BaseKeyframeAnimation<Integer, Integer> baseKeyframeAnimation = this.f6039j;
        if (baseKeyframeAnimation != null) {
            baseKeyframeAnimation.mo16110l(f);
        }
        BaseKeyframeAnimation<?, Float> baseKeyframeAnimation2 = this.f6042m;
        if (baseKeyframeAnimation2 != null) {
            baseKeyframeAnimation2.mo16110l(f);
        }
        BaseKeyframeAnimation<?, Float> baseKeyframeAnimation3 = this.f6043n;
        if (baseKeyframeAnimation3 != null) {
            baseKeyframeAnimation3.mo16110l(f);
        }
        BaseKeyframeAnimation<PointF, PointF> baseKeyframeAnimation4 = this.f6035f;
        if (baseKeyframeAnimation4 != null) {
            baseKeyframeAnimation4.mo16110l(f);
        }
        BaseKeyframeAnimation<?, PointF> baseKeyframeAnimation5 = this.f6036g;
        if (baseKeyframeAnimation5 != null) {
            baseKeyframeAnimation5.mo16110l(f);
        }
        BaseKeyframeAnimation<ScaleXY, ScaleXY> baseKeyframeAnimation6 = this.f6037h;
        if (baseKeyframeAnimation6 != null) {
            baseKeyframeAnimation6.mo16110l(f);
        }
        BaseKeyframeAnimation<Float, Float> baseKeyframeAnimation7 = this.f6038i;
        if (baseKeyframeAnimation7 != null) {
            baseKeyframeAnimation7.mo16110l(f);
        }
        FloatKeyframeAnimation floatKeyframeAnimation = this.f6040k;
        if (floatKeyframeAnimation != null) {
            floatKeyframeAnimation.mo16110l(f);
        }
        FloatKeyframeAnimation floatKeyframeAnimation2 = this.f6041l;
        if (floatKeyframeAnimation2 != null) {
            floatKeyframeAnimation2.mo16110l(f);
        }
    }
}
