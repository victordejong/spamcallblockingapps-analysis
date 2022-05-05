package com.airbnb.lottie.animation.content;

import android.graphics.Path;
import android.graphics.PointF;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.content.CircleShape;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/animation/content/EllipseContent.class */
public class EllipseContent implements PathContent, BaseKeyframeAnimation.AnimationListener, KeyPathElementContent {

    /* renamed from: b */
    private final String f5892b;

    /* renamed from: c */
    private final LottieDrawable f5893c;

    /* renamed from: d */
    private final BaseKeyframeAnimation<?, PointF> f5894d;

    /* renamed from: e */
    private final BaseKeyframeAnimation<?, PointF> f5895e;

    /* renamed from: f */
    private final CircleShape f5896f;

    /* renamed from: h */
    private boolean f5898h;

    /* renamed from: a */
    private final Path f5891a = new Path();

    /* renamed from: g */
    private CompoundTrimPathContent f5897g = new CompoundTrimPathContent();

    public EllipseContent(LottieDrawable lottieDrawable, BaseLayer baseLayer, CircleShape circleShape) {
        this.f5892b = circleShape.m16060b();
        this.f5893c = lottieDrawable;
        this.f5894d = circleShape.m16058d().mo16063a();
        this.f5895e = circleShape.m16059c().mo16063a();
        this.f5896f = circleShape;
        baseLayer.m15958i(this.f5894d);
        baseLayer.m15958i(this.f5895e);
        this.f5894d.m16161a(this);
        this.f5895e.m16161a(this);
    }

    /* renamed from: e */
    private void m16184e() {
        this.f5898h = false;
        this.f5893c.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    /* renamed from: a */
    public void mo15941a() {
        m16184e();
    }

    @Override // com.airbnb.lottie.animation.content.Content
    /* renamed from: b */
    public void mo15963b(List<Content> list, List<Content> list2) {
        for (int i = 0; i < list.size(); i++) {
            Content content = list.get(i);
            if (content instanceof TrimPathContent) {
                TrimPathContent trimPathContent = (TrimPathContent) content;
                if (trimPathContent.m16163i() == ShapeTrimPath.Type.SIMULTANEOUSLY) {
                    this.f5897g.m16191a(trimPathContent);
                    trimPathContent.m16167c(this);
                }
            }
        }
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    /* renamed from: c */
    public void mo15962c(KeyPath keyPath, int i, List<KeyPath> list, KeyPath keyPath2) {
        MiscUtils.m15698m(keyPath, i, list, keyPath2, this);
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    /* renamed from: g */
    public <T> void mo15899g(T t, @Nullable LottieValueCallback<T> lottieValueCallback) {
        if (t == LottieProperty.f5828g) {
            this.f5894d.m16154m(lottieValueCallback);
        } else if (t == LottieProperty.f5831j) {
            this.f5895e.m16154m(lottieValueCallback);
        }
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public String getName() {
        return this.f5892b;
    }

    @Override // com.airbnb.lottie.animation.content.PathContent
    public Path getPath() {
        if (this.f5898h) {
            return this.f5891a;
        }
        this.f5891a.reset();
        if (this.f5896f.m16057e()) {
            this.f5898h = true;
            return this.f5891a;
        }
        PointF h = this.f5894d.mo16113h();
        float f = h.x / 2.0f;
        float f2 = h.y / 2.0f;
        float f3 = f * 0.55228f;
        float f4 = 0.55228f * f2;
        this.f5891a.reset();
        if (this.f5896f.m16056f()) {
            float f5 = -f2;
            this.f5891a.moveTo(0.0f, f5);
            float f6 = 0.0f - f3;
            float f7 = -f;
            float f8 = 0.0f - f4;
            this.f5891a.cubicTo(f6, f5, f7, f8, f7, 0.0f);
            float f9 = f4 + 0.0f;
            this.f5891a.cubicTo(f7, f9, f6, f2, 0.0f, f2);
            float f10 = f3 + 0.0f;
            this.f5891a.cubicTo(f10, f2, f, f9, f, 0.0f);
            this.f5891a.cubicTo(f, f8, f10, f5, 0.0f, f5);
        } else {
            float f11 = -f2;
            this.f5891a.moveTo(0.0f, f11);
            float f12 = f3 + 0.0f;
            float f13 = 0.0f - f4;
            this.f5891a.cubicTo(f12, f11, f, f13, f, 0.0f);
            float f14 = f4 + 0.0f;
            this.f5891a.cubicTo(f, f14, f12, f2, 0.0f, f2);
            float f15 = 0.0f - f3;
            float f16 = -f;
            this.f5891a.cubicTo(f15, f2, f16, f14, f16, 0.0f);
            this.f5891a.cubicTo(f16, f13, f15, f11, 0.0f, f11);
        }
        PointF h2 = this.f5895e.mo16113h();
        this.f5891a.offset(h2.x, h2.y);
        this.f5891a.close();
        this.f5897g.m16190b(this.f5891a);
        this.f5898h = true;
        return this.f5891a;
    }
}
