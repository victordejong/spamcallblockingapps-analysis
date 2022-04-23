package com.airbnb.lottie.animation.content;

import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Path;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.TransformKeyframeAnimation;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.content.Repeater;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.ListIterator;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/animation/content/RepeaterContent.class */
public class RepeaterContent implements DrawingContent, PathContent, GreedyContent, BaseKeyframeAnimation.AnimationListener, KeyPathElementContent {

    /* renamed from: a */
    private final Matrix f5970a = new Matrix();

    /* renamed from: b */
    private final Path f5971b = new Path();

    /* renamed from: c */
    private final LottieDrawable f5972c;

    /* renamed from: d */
    private final BaseLayer f5973d;

    /* renamed from: e */
    private final String f5974e;

    /* renamed from: f */
    private final boolean f5975f;

    /* renamed from: g */
    private final BaseKeyframeAnimation<Float, Float> f5976g;

    /* renamed from: h */
    private final BaseKeyframeAnimation<Float, Float> f5977h;

    /* renamed from: i */
    private final TransformKeyframeAnimation f5978i;

    /* renamed from: j */
    private ContentGroup f5979j;

    public RepeaterContent(LottieDrawable lottieDrawable, BaseLayer baseLayer, Repeater repeater) {
        this.f5972c = lottieDrawable;
        this.f5973d = baseLayer;
        this.f5974e = repeater.m16007c();
        this.f5975f = repeater.m16004f();
        BaseKeyframeAnimation<Float, Float> a = repeater.m16008b().mo16063a();
        this.f5976g = a;
        baseLayer.m15958i(a);
        this.f5976g.m16161a(this);
        BaseKeyframeAnimation<Float, Float> a2 = repeater.m16006d().mo16063a();
        this.f5977h = a2;
        baseLayer.m15958i(a2);
        this.f5977h.m16161a(this);
        TransformKeyframeAnimation b = repeater.m16005e().m16073b();
        this.f5978i = b;
        b.m16124a(baseLayer);
        this.f5978i.m16123b(this);
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    /* renamed from: a */
    public void mo15941a() {
        this.f5972c.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.content.Content
    /* renamed from: b */
    public void mo15963b(List<Content> list, List<Content> list2) {
        this.f5979j.mo15963b(list, list2);
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    /* renamed from: c */
    public void mo15962c(KeyPath keyPath, int i, List<KeyPath> list, KeyPath keyPath2) {
        MiscUtils.m15698m(keyPath, i, list, keyPath2, this);
    }

    @Override // com.airbnb.lottie.animation.content.DrawingContent
    /* renamed from: d */
    public void mo15900d(RectF rectF, Matrix matrix, boolean z) {
        this.f5979j.mo15900d(rectF, matrix, z);
    }

    @Override // com.airbnb.lottie.animation.content.GreedyContent
    /* renamed from: e */
    public void mo16169e(ListIterator<Content> listIterator) {
        if (this.f5979j == null) {
            while (listIterator.hasPrevious() && listIterator.previous() != this) {
            }
            ArrayList arrayList = new ArrayList();
            while (listIterator.hasPrevious()) {
                arrayList.add(listIterator.previous());
                listIterator.remove();
            }
            Collections.reverse(arrayList);
            this.f5979j = new ContentGroup(this.f5972c, this.f5973d, "Repeater", this.f5975f, arrayList, null);
        }
    }

    @Override // com.airbnb.lottie.animation.content.DrawingContent
    /* renamed from: f */
    public void mo15960f(Canvas canvas, Matrix matrix, int i) {
        float floatValue = this.f5976g.mo16113h().floatValue();
        float floatValue2 = this.f5977h.mo16113h().floatValue();
        float floatValue3 = this.f5978i.m16116i().mo16113h().floatValue() / 100.0f;
        float floatValue4 = this.f5978i.m16120e().mo16113h().floatValue() / 100.0f;
        for (int i2 = ((int) floatValue) - 1; i2 >= 0; i2--) {
            this.f5970a.set(matrix);
            float f = i2;
            this.f5970a.preConcat(this.f5978i.m16118g(f + floatValue2));
            this.f5979j.mo15960f(canvas, this.f5970a, (int) (i * MiscUtils.m15700k(floatValue3, floatValue4, f / floatValue)));
        }
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    /* renamed from: g */
    public <T> void mo15899g(T t, @Nullable LottieValueCallback<T> lottieValueCallback) {
        if (!this.f5978i.m16122c(t, lottieValueCallback)) {
            if (t == LottieProperty.f5838q) {
                this.f5976g.m16154m(lottieValueCallback);
            } else if (t == LottieProperty.f5839r) {
                this.f5977h.m16154m(lottieValueCallback);
            }
        }
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public String getName() {
        return this.f5974e;
    }

    @Override // com.airbnb.lottie.animation.content.PathContent
    public Path getPath() {
        Path path = this.f5979j.getPath();
        this.f5971b.reset();
        float floatValue = this.f5976g.mo16113h().floatValue();
        float floatValue2 = this.f5977h.mo16113h().floatValue();
        for (int i = ((int) floatValue) - 1; i >= 0; i--) {
            this.f5970a.set(this.f5978i.m16118g(i + floatValue2));
            this.f5971b.addPath(path, this.f5970a);
        }
        return this.f5971b;
    }
}
