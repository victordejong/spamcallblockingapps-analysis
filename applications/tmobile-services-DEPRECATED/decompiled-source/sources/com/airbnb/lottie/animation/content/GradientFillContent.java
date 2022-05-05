package com.airbnb.lottie.animation.content;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.LongSparseArray;
import com.airbnb.lottie.C0611L;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.LPaint;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.ValueCallbackKeyframeAnimation;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.content.GradientColor;
import com.airbnb.lottie.model.content.GradientFill;
import com.airbnb.lottie.model.content.GradientType;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/animation/content/GradientFillContent.class */
public class GradientFillContent implements DrawingContent, BaseKeyframeAnimation.AnimationListener, KeyPathElementContent {
    @NonNull

    /* renamed from: a */
    private final String f5909a;

    /* renamed from: b */
    private final boolean f5910b;

    /* renamed from: c */
    private final BaseLayer f5911c;

    /* renamed from: d */
    private final LongSparseArray<LinearGradient> f5912d = new LongSparseArray<>();

    /* renamed from: e */
    private final LongSparseArray<RadialGradient> f5913e = new LongSparseArray<>();

    /* renamed from: f */
    private final Path f5914f = new Path();

    /* renamed from: g */
    private final Paint f5915g = new LPaint(1);

    /* renamed from: h */
    private final RectF f5916h = new RectF();

    /* renamed from: i */
    private final List<PathContent> f5917i = new ArrayList();

    /* renamed from: j */
    private final GradientType f5918j;

    /* renamed from: k */
    private final BaseKeyframeAnimation<GradientColor, GradientColor> f5919k;

    /* renamed from: l */
    private final BaseKeyframeAnimation<Integer, Integer> f5920l;

    /* renamed from: m */
    private final BaseKeyframeAnimation<PointF, PointF> f5921m;

    /* renamed from: n */
    private final BaseKeyframeAnimation<PointF, PointF> f5922n;
    @Nullable

    /* renamed from: o */
    private BaseKeyframeAnimation<ColorFilter, ColorFilter> f5923o;
    @Nullable

    /* renamed from: p */
    private ValueCallbackKeyframeAnimation f5924p;

    /* renamed from: q */
    private final LottieDrawable f5925q;

    /* renamed from: r */
    private final int f5926r;

    public GradientFillContent(LottieDrawable lottieDrawable, BaseLayer baseLayer, GradientFill gradientFill) {
        this.f5911c = baseLayer;
        this.f5909a = gradientFill.m16047f();
        this.f5910b = gradientFill.m16044i();
        this.f5925q = lottieDrawable;
        this.f5918j = gradientFill.m16048e();
        this.f5914f.setFillType(gradientFill.m16050c());
        this.f5926r = (int) (lottieDrawable.m16239m().m16343d() / 32.0f);
        BaseKeyframeAnimation<GradientColor, GradientColor> a = gradientFill.m16049d().mo16063a();
        this.f5919k = a;
        a.m16161a(this);
        baseLayer.m15958i(this.f5919k);
        BaseKeyframeAnimation<Integer, Integer> a2 = gradientFill.m16046g().mo16063a();
        this.f5920l = a2;
        a2.m16161a(this);
        baseLayer.m15958i(this.f5920l);
        BaseKeyframeAnimation<PointF, PointF> a3 = gradientFill.m16045h().mo16063a();
        this.f5921m = a3;
        a3.m16161a(this);
        baseLayer.m15958i(this.f5921m);
        BaseKeyframeAnimation<PointF, PointF> a4 = gradientFill.m16051b().mo16063a();
        this.f5922n = a4;
        a4.m16161a(this);
        baseLayer.m15958i(this.f5922n);
    }

    /* renamed from: e */
    private int[] m16183e(int[] iArr) {
        ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation = this.f5924p;
        int[] iArr2 = iArr;
        if (valueCallbackKeyframeAnimation != null) {
            Integer[] numArr = (Integer[]) valueCallbackKeyframeAnimation.mo16113h();
            int i = 0;
            int i2 = 0;
            if (iArr.length != numArr.length) {
                int[] iArr3 = new int[numArr.length];
                while (true) {
                    iArr2 = iArr3;
                    if (i >= numArr.length) {
                        break;
                    }
                    iArr3[i] = numArr[i].intValue();
                    i++;
                }
            } else {
                while (true) {
                    iArr2 = iArr;
                    if (i2 >= iArr.length) {
                        break;
                    }
                    iArr[i2] = numArr[i2].intValue();
                    i2++;
                }
            }
        }
        return iArr2;
    }

    /* renamed from: h */
    private int m16182h() {
        int round = Math.round(this.f5921m.m16157f() * this.f5926r);
        int round2 = Math.round(this.f5922n.m16157f() * this.f5926r);
        int round3 = Math.round(this.f5919k.m16157f() * this.f5926r);
        int i = round != 0 ? 527 * round : 17;
        int i2 = i;
        if (round2 != 0) {
            i2 = i * 31 * round2;
        }
        int i3 = i2;
        if (round3 != 0) {
            i3 = i2 * 31 * round3;
        }
        return i3;
    }

    /* renamed from: i */
    private LinearGradient m16181i() {
        long h = m16182h();
        LinearGradient g = this.f5912d.m21045g(h);
        if (g != null) {
            return g;
        }
        PointF h2 = this.f5921m.mo16113h();
        PointF h3 = this.f5922n.mo16113h();
        GradientColor h4 = this.f5919k.mo16113h();
        LinearGradient linearGradient = new LinearGradient(h2.x, h2.y, h3.x, h3.y, m16183e(h4.m16055a()), h4.m16054b(), Shader.TileMode.CLAMP);
        this.f5912d.m21040n(h, linearGradient);
        return linearGradient;
    }

    /* renamed from: j */
    private RadialGradient m16180j() {
        long h = m16182h();
        RadialGradient g = this.f5913e.m21045g(h);
        if (g != null) {
            return g;
        }
        PointF h2 = this.f5921m.mo16113h();
        PointF h3 = this.f5922n.mo16113h();
        GradientColor h4 = this.f5919k.mo16113h();
        int[] e = m16183e(h4.m16055a());
        float[] b = h4.m16054b();
        float f = h2.x;
        float f2 = h2.y;
        float hypot = (float) Math.hypot(h3.x - f, h3.y - f2);
        if (hypot <= 0.0f) {
            hypot = 0.001f;
        }
        RadialGradient radialGradient = new RadialGradient(f, f2, hypot, e, b, Shader.TileMode.CLAMP);
        this.f5913e.m21040n(h, radialGradient);
        return radialGradient;
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    /* renamed from: a */
    public void mo15941a() {
        this.f5925q.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.content.Content
    /* renamed from: b */
    public void mo15963b(List<Content> list, List<Content> list2) {
        for (int i = 0; i < list2.size(); i++) {
            Content content = list2.get(i);
            if (content instanceof PathContent) {
                this.f5917i.add((PathContent) content);
            }
        }
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    /* renamed from: c */
    public void mo15962c(KeyPath keyPath, int i, List<KeyPath> list, KeyPath keyPath2) {
        MiscUtils.m15698m(keyPath, i, list, keyPath2, this);
    }

    @Override // com.airbnb.lottie.animation.content.DrawingContent
    /* renamed from: d */
    public void mo15900d(RectF rectF, Matrix matrix, boolean z) {
        this.f5914f.reset();
        for (int i = 0; i < this.f5917i.size(); i++) {
            this.f5914f.addPath(this.f5917i.get(i).getPath(), matrix);
        }
        this.f5914f.computeBounds(rectF, false);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
    }

    @Override // com.airbnb.lottie.animation.content.DrawingContent
    /* renamed from: f */
    public void mo15960f(Canvas canvas, Matrix matrix, int i) {
        if (!this.f5910b) {
            C0611L.m16372a("GradientFillContent#draw");
            this.f5914f.reset();
            for (int i2 = 0; i2 < this.f5917i.size(); i2++) {
                this.f5914f.addPath(this.f5917i.get(i2).getPath(), matrix);
            }
            this.f5914f.computeBounds(this.f5916h, false);
            Shader i3 = this.f5918j == GradientType.LINEAR ? m16181i() : m16180j();
            i3.setLocalMatrix(matrix);
            this.f5915g.setShader(i3);
            BaseKeyframeAnimation<ColorFilter, ColorFilter> baseKeyframeAnimation = this.f5923o;
            if (baseKeyframeAnimation != null) {
                this.f5915g.setColorFilter(baseKeyframeAnimation.mo16113h());
            }
            this.f5915g.setAlpha(MiscUtils.m15707d((int) ((((i / 255.0f) * this.f5920l.mo16113h().intValue()) / 100.0f) * 255.0f), 0, 255));
            canvas.drawPath(this.f5914f, this.f5915g);
            C0611L.m16371b("GradientFillContent#draw");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.airbnb.lottie.model.KeyPathElement
    /* renamed from: g */
    public <T> void mo15899g(T t, @Nullable LottieValueCallback<T> lottieValueCallback) {
        if (t == LottieProperty.f5825d) {
            this.f5920l.m16154m(lottieValueCallback);
        } else if (t == LottieProperty.f5820C) {
            BaseKeyframeAnimation<ColorFilter, ColorFilter> baseKeyframeAnimation = this.f5923o;
            if (baseKeyframeAnimation != null) {
                this.f5911c.m15968C(baseKeyframeAnimation);
            }
            if (lottieValueCallback == null) {
                this.f5923o = null;
                return;
            }
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation = new ValueCallbackKeyframeAnimation(lottieValueCallback);
            this.f5923o = valueCallbackKeyframeAnimation;
            valueCallbackKeyframeAnimation.m16161a(this);
            this.f5911c.m15958i(this.f5923o);
        } else if (t == LottieProperty.f5821D) {
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation2 = this.f5924p;
            if (valueCallbackKeyframeAnimation2 != null) {
                this.f5911c.m15968C(valueCallbackKeyframeAnimation2);
            }
            if (lottieValueCallback == null) {
                this.f5924p = null;
                return;
            }
            this.f5912d.m21049b();
            this.f5913e.m21049b();
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation3 = new ValueCallbackKeyframeAnimation(lottieValueCallback);
            this.f5924p = valueCallbackKeyframeAnimation3;
            valueCallbackKeyframeAnimation3.m16161a(this);
            this.f5911c.m15958i(this.f5924p);
        }
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public String getName() {
        return this.f5909a;
    }
}
