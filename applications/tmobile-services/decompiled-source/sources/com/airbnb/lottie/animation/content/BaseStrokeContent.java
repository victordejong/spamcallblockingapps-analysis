package com.airbnb.lottie.animation.content;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.DashPathEffect;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.RectF;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.airbnb.lottie.C0611L;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.LPaint;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.FloatKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.IntegerKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.ValueCallbackKeyframeAnimation;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.utils.Utils;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/animation/content/BaseStrokeContent.class */
public abstract class BaseStrokeContent implements BaseKeyframeAnimation.AnimationListener, KeyPathElementContent, DrawingContent {

    /* renamed from: e */
    private final LottieDrawable f5867e;

    /* renamed from: f */
    protected final BaseLayer f5868f;

    /* renamed from: h */
    private final float[] f5870h;

    /* renamed from: i */
    final Paint f5871i;

    /* renamed from: j */
    private final BaseKeyframeAnimation<?, Float> f5872j;

    /* renamed from: k */
    private final BaseKeyframeAnimation<?, Integer> f5873k;

    /* renamed from: l */
    private final List<BaseKeyframeAnimation<?, Float>> f5874l;
    @Nullable

    /* renamed from: m */
    private final BaseKeyframeAnimation<?, Float> f5875m;
    @Nullable

    /* renamed from: n */
    private BaseKeyframeAnimation<ColorFilter, ColorFilter> f5876n;

    /* renamed from: a */
    private final PathMeasure f5863a = new PathMeasure();

    /* renamed from: b */
    private final Path f5864b = new Path();

    /* renamed from: c */
    private final Path f5865c = new Path();

    /* renamed from: d */
    private final RectF f5866d = new RectF();

    /* renamed from: g */
    private final List<PathGroup> f5869g = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/animation/content/BaseStrokeContent$PathGroup.class */
    public static final class PathGroup {

        /* renamed from: a */
        private final List<PathContent> f5877a;
        @Nullable

        /* renamed from: b */
        private final TrimPathContent f5878b;

        private PathGroup(@Nullable TrimPathContent trimPathContent) {
            this.f5877a = new ArrayList();
            this.f5878b = trimPathContent;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BaseStrokeContent(LottieDrawable lottieDrawable, BaseLayer baseLayer, Paint.Cap cap, Paint.Join join, float f, AnimatableIntegerValue animatableIntegerValue, AnimatableFloatValue animatableFloatValue, List<AnimatableFloatValue> list, AnimatableFloatValue animatableFloatValue2) {
        LPaint lPaint = new LPaint(1);
        this.f5871i = lPaint;
        this.f5867e = lottieDrawable;
        this.f5868f = baseLayer;
        lPaint.setStyle(Paint.Style.STROKE);
        this.f5871i.setStrokeCap(cap);
        this.f5871i.setStrokeJoin(join);
        this.f5871i.setStrokeMiter(f);
        this.f5873k = animatableIntegerValue.mo16063a();
        this.f5872j = animatableFloatValue.mo16063a();
        if (animatableFloatValue2 == null) {
            this.f5875m = null;
        } else {
            this.f5875m = animatableFloatValue2.mo16063a();
        }
        this.f5874l = new ArrayList(list.size());
        this.f5870h = new float[list.size()];
        for (int i = 0; i < list.size(); i++) {
            this.f5874l.add(list.get(i).mo16063a());
        }
        baseLayer.m15958i(this.f5873k);
        baseLayer.m15958i(this.f5872j);
        for (int i2 = 0; i2 < this.f5874l.size(); i2++) {
            baseLayer.m15958i(this.f5874l.get(i2));
        }
        BaseKeyframeAnimation<?, Float> baseKeyframeAnimation = this.f5875m;
        if (baseKeyframeAnimation != null) {
            baseLayer.m15958i(baseKeyframeAnimation);
        }
        this.f5873k.m16161a(this);
        this.f5872j.m16161a(this);
        for (int i3 = 0; i3 < list.size(); i3++) {
            this.f5874l.get(i3).m16161a(this);
        }
        BaseKeyframeAnimation<?, Float> baseKeyframeAnimation2 = this.f5875m;
        if (baseKeyframeAnimation2 != null) {
            baseKeyframeAnimation2.m16161a(this);
        }
    }

    /* renamed from: e */
    private void m16195e(Matrix matrix) {
        C0611L.m16372a("StrokeContent#applyDashPattern");
        if (this.f5874l.isEmpty()) {
            C0611L.m16371b("StrokeContent#applyDashPattern");
            return;
        }
        float g = Utils.m15691g(matrix);
        for (int i = 0; i < this.f5874l.size(); i++) {
            this.f5870h[i] = this.f5874l.get(i).mo16113h().floatValue();
            if (i % 2 == 0) {
                float[] fArr = this.f5870h;
                if (fArr[i] < 1.0f) {
                    fArr[i] = 1.0f;
                }
            } else {
                float[] fArr2 = this.f5870h;
                if (fArr2[i] < 0.1f) {
                    fArr2[i] = 0.1f;
                }
            }
            float[] fArr3 = this.f5870h;
            fArr3[i] = fArr3[i] * g;
        }
        BaseKeyframeAnimation<?, Float> baseKeyframeAnimation = this.f5875m;
        this.f5871i.setPathEffect(new DashPathEffect(this.f5870h, baseKeyframeAnimation == null ? 0.0f : g * baseKeyframeAnimation.mo16113h().floatValue()));
        C0611L.m16371b("StrokeContent#applyDashPattern");
    }

    /* renamed from: h */
    private void m16194h(Canvas canvas, PathGroup pathGroup, Matrix matrix) {
        C0611L.m16372a("StrokeContent#applyTrimPath");
        if (pathGroup.f5878b == null) {
            C0611L.m16371b("StrokeContent#applyTrimPath");
            return;
        }
        this.f5864b.reset();
        for (int size = pathGroup.f5877a.size() - 1; size >= 0; size--) {
            this.f5864b.addPath(((PathContent) pathGroup.f5877a.get(size)).getPath(), matrix);
        }
        this.f5863a.setPath(this.f5864b, false);
        float length = this.f5863a.getLength();
        while (this.f5863a.nextContour()) {
            length += this.f5863a.getLength();
        }
        float floatValue = (pathGroup.f5878b.m16165g().mo16113h().floatValue() * length) / 360.0f;
        float floatValue2 = ((pathGroup.f5878b.m16164h().mo16113h().floatValue() * length) / 100.0f) + floatValue;
        float floatValue3 = ((pathGroup.f5878b.m16166e().mo16113h().floatValue() * length) / 100.0f) + floatValue;
        float f = 0.0f;
        for (int size2 = pathGroup.f5877a.size() - 1; size2 >= 0; size2--) {
            this.f5865c.set(((PathContent) pathGroup.f5877a.get(size2)).getPath());
            this.f5865c.transform(matrix);
            this.f5863a.setPath(this.f5865c, false);
            float length2 = this.f5863a.getLength();
            float f2 = 1.0f;
            if (floatValue3 > length) {
                float f3 = floatValue3 - length;
                if (f3 < f + length2 && f < f3) {
                    Utils.m15697a(this.f5865c, floatValue2 > length ? (floatValue2 - length) / length2 : 0.0f, Math.min(f3 / length2, 1.0f), 0.0f);
                    canvas.drawPath(this.f5865c, this.f5871i);
                    f += length2;
                }
            }
            float f4 = f + length2;
            if (f4 >= floatValue2 && f <= floatValue3) {
                if (f4 > floatValue3 || floatValue2 >= f) {
                    float f5 = floatValue2 < f ? 0.0f : (floatValue2 - f) / length2;
                    if (floatValue3 <= f4) {
                        f2 = (floatValue3 - f) / length2;
                    }
                    Utils.m15697a(this.f5865c, f5, f2, 0.0f);
                    canvas.drawPath(this.f5865c, this.f5871i);
                } else {
                    canvas.drawPath(this.f5865c, this.f5871i);
                }
            }
            f += length2;
        }
        C0611L.m16371b("StrokeContent#applyTrimPath");
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    /* renamed from: a */
    public void mo15941a() {
        this.f5867e.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.content.Content
    /* renamed from: b */
    public void mo15963b(List<Content> list, List<Content> list2) {
        TrimPathContent trimPathContent = null;
        for (int size = list.size() - 1; size >= 0; size--) {
            Content content = list.get(size);
            trimPathContent = trimPathContent;
            if (content instanceof TrimPathContent) {
                TrimPathContent trimPathContent2 = (TrimPathContent) content;
                trimPathContent = trimPathContent;
                if (trimPathContent2.m16163i() == ShapeTrimPath.Type.INDIVIDUALLY) {
                    trimPathContent = trimPathContent2;
                }
            }
        }
        if (trimPathContent != null) {
            trimPathContent.m16167c(this);
        }
        PathGroup pathGroup = null;
        for (int size2 = list2.size() - 1; size2 >= 0; size2--) {
            Content content2 = list2.get(size2);
            if (content2 instanceof TrimPathContent) {
                TrimPathContent trimPathContent3 = (TrimPathContent) content2;
                if (trimPathContent3.m16163i() == ShapeTrimPath.Type.INDIVIDUALLY) {
                    if (pathGroup != null) {
                        this.f5869g.add(pathGroup);
                    }
                    pathGroup = new PathGroup(trimPathContent3);
                    trimPathContent3.m16167c(this);
                }
            }
            pathGroup = pathGroup;
            if (content2 instanceof PathContent) {
                pathGroup = pathGroup;
                if (pathGroup == null) {
                    pathGroup = new PathGroup(trimPathContent);
                }
                pathGroup.f5877a.add((PathContent) content2);
            }
        }
        if (pathGroup != null) {
            this.f5869g.add(pathGroup);
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
        C0611L.m16372a("StrokeContent#getBounds");
        this.f5864b.reset();
        for (int i = 0; i < this.f5869g.size(); i++) {
            PathGroup pathGroup = this.f5869g.get(i);
            for (int i2 = 0; i2 < pathGroup.f5877a.size(); i2++) {
                this.f5864b.addPath(((PathContent) pathGroup.f5877a.get(i2)).getPath(), matrix);
            }
        }
        this.f5864b.computeBounds(this.f5866d, false);
        float o = ((FloatKeyframeAnimation) this.f5872j).m16143o();
        RectF rectF2 = this.f5866d;
        float f = rectF2.left;
        float f2 = o / 2.0f;
        rectF2.set(f - f2, rectF2.top - f2, rectF2.right + f2, rectF2.bottom + f2);
        rectF.set(this.f5866d);
        rectF.set(rectF.left - 1.0f, rectF.top - 1.0f, rectF.right + 1.0f, rectF.bottom + 1.0f);
        C0611L.m16371b("StrokeContent#getBounds");
    }

    @Override // com.airbnb.lottie.animation.content.DrawingContent
    /* renamed from: f */
    public void mo15960f(Canvas canvas, Matrix matrix, int i) {
        C0611L.m16372a("StrokeContent#draw");
        if (Utils.m15690h(matrix)) {
            C0611L.m16371b("StrokeContent#draw");
            return;
        }
        this.f5871i.setAlpha(MiscUtils.m15707d((int) ((((i / 255.0f) * ((IntegerKeyframeAnimation) this.f5873k).m16139o()) / 100.0f) * 255.0f), 0, 255));
        this.f5871i.setStrokeWidth(((FloatKeyframeAnimation) this.f5872j).m16143o() * Utils.m15691g(matrix));
        if (this.f5871i.getStrokeWidth() <= 0.0f) {
            C0611L.m16371b("StrokeContent#draw");
            return;
        }
        m16195e(matrix);
        BaseKeyframeAnimation<ColorFilter, ColorFilter> baseKeyframeAnimation = this.f5876n;
        int i2 = 0;
        if (baseKeyframeAnimation != null) {
            this.f5871i.setColorFilter(baseKeyframeAnimation.mo16113h());
            i2 = 0;
        }
        while (i2 < this.f5869g.size()) {
            PathGroup pathGroup = this.f5869g.get(i2);
            if (pathGroup.f5878b != null) {
                m16194h(canvas, pathGroup, matrix);
            } else {
                C0611L.m16372a("StrokeContent#buildPath");
                this.f5864b.reset();
                for (int size = pathGroup.f5877a.size() - 1; size >= 0; size--) {
                    this.f5864b.addPath(((PathContent) pathGroup.f5877a.get(size)).getPath(), matrix);
                }
                C0611L.m16371b("StrokeContent#buildPath");
                C0611L.m16372a("StrokeContent#drawPath");
                canvas.drawPath(this.f5864b, this.f5871i);
                C0611L.m16371b("StrokeContent#drawPath");
            }
            i2++;
        }
        C0611L.m16371b("StrokeContent#draw");
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    @CallSuper
    /* renamed from: g */
    public <T> void mo15899g(T t, @Nullable LottieValueCallback<T> lottieValueCallback) {
        if (t == LottieProperty.f5825d) {
            this.f5873k.m16154m(lottieValueCallback);
        } else if (t == LottieProperty.f5836o) {
            this.f5872j.m16154m(lottieValueCallback);
        } else if (t == LottieProperty.f5820C) {
            BaseKeyframeAnimation<ColorFilter, ColorFilter> baseKeyframeAnimation = this.f5876n;
            if (baseKeyframeAnimation != null) {
                this.f5868f.m15968C(baseKeyframeAnimation);
            }
            if (lottieValueCallback == null) {
                this.f5876n = null;
                return;
            }
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation = new ValueCallbackKeyframeAnimation(lottieValueCallback);
            this.f5876n = valueCallbackKeyframeAnimation;
            valueCallbackKeyframeAnimation.m16161a(this);
            this.f5868f.m15958i(this.f5876n);
        }
    }
}
