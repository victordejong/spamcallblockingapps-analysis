package com.airbnb.lottie.animation.content;

import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.RectF;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.FloatKeyframeAnimation;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.content.RectangleShape;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/animation/content/RectangleContent.class */
public class RectangleContent implements BaseKeyframeAnimation.AnimationListener, KeyPathElementContent, PathContent {

    /* renamed from: c */
    private final String f5962c;

    /* renamed from: d */
    private final boolean f5963d;

    /* renamed from: e */
    private final LottieDrawable f5964e;

    /* renamed from: f */
    private final BaseKeyframeAnimation<?, PointF> f5965f;

    /* renamed from: g */
    private final BaseKeyframeAnimation<?, PointF> f5966g;

    /* renamed from: h */
    private final BaseKeyframeAnimation<?, Float> f5967h;

    /* renamed from: j */
    private boolean f5969j;

    /* renamed from: a */
    private final Path f5960a = new Path();

    /* renamed from: b */
    private final RectF f5961b = new RectF();

    /* renamed from: i */
    private CompoundTrimPathContent f5968i = new CompoundTrimPathContent();

    public RectangleContent(LottieDrawable lottieDrawable, BaseLayer baseLayer, RectangleShape rectangleShape) {
        this.f5962c = rectangleShape.m16012c();
        this.f5963d = rectangleShape.m16009f();
        this.f5964e = lottieDrawable;
        this.f5965f = rectangleShape.m16011d().mo16063a();
        this.f5966g = rectangleShape.m16010e().mo16063a();
        this.f5967h = rectangleShape.m16013b().mo16063a();
        baseLayer.m15958i(this.f5965f);
        baseLayer.m15958i(this.f5966g);
        baseLayer.m15958i(this.f5967h);
        this.f5965f.m16161a(this);
        this.f5966g.m16161a(this);
        this.f5967h.m16161a(this);
    }

    /* renamed from: e */
    private void m16170e() {
        this.f5969j = false;
        this.f5964e.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    /* renamed from: a */
    public void mo15941a() {
        m16170e();
    }

    @Override // com.airbnb.lottie.animation.content.Content
    /* renamed from: b */
    public void mo15963b(List<Content> list, List<Content> list2) {
        for (int i = 0; i < list.size(); i++) {
            Content content = list.get(i);
            if (content instanceof TrimPathContent) {
                TrimPathContent trimPathContent = (TrimPathContent) content;
                if (trimPathContent.m16163i() == ShapeTrimPath.Type.SIMULTANEOUSLY) {
                    this.f5968i.m16191a(trimPathContent);
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
        if (t == LottieProperty.f5829h) {
            this.f5966g.m16154m(lottieValueCallback);
        } else if (t == LottieProperty.f5831j) {
            this.f5965f.m16154m(lottieValueCallback);
        } else if (t == LottieProperty.f5830i) {
            this.f5967h.m16154m(lottieValueCallback);
        }
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public String getName() {
        return this.f5962c;
    }

    @Override // com.airbnb.lottie.animation.content.PathContent
    public Path getPath() {
        if (this.f5969j) {
            return this.f5960a;
        }
        this.f5960a.reset();
        if (this.f5963d) {
            this.f5969j = true;
            return this.f5960a;
        }
        PointF h = this.f5966g.mo16113h();
        float f = h.x / 2.0f;
        float f2 = h.y / 2.0f;
        BaseKeyframeAnimation<?, Float> baseKeyframeAnimation = this.f5967h;
        float o = baseKeyframeAnimation == null ? 0.0f : ((FloatKeyframeAnimation) baseKeyframeAnimation).m16143o();
        float min = Math.min(f, f2);
        float f3 = o;
        if (o > min) {
            f3 = min;
        }
        PointF h2 = this.f5965f.mo16113h();
        this.f5960a.moveTo(h2.x + f, (h2.y - f2) + f3);
        this.f5960a.lineTo(h2.x + f, (h2.y + f2) - f3);
        int i = (f3 > 0.0f ? 1 : (f3 == 0.0f ? 0 : -1));
        if (i > 0) {
            RectF rectF = this.f5961b;
            float f4 = h2.x;
            float f5 = f3 * 2.0f;
            float f6 = h2.y;
            rectF.set((f4 + f) - f5, (f6 + f2) - f5, f4 + f, f6 + f2);
            this.f5960a.arcTo(this.f5961b, 0.0f, 90.0f, false);
        }
        this.f5960a.lineTo((h2.x - f) + f3, h2.y + f2);
        if (i > 0) {
            RectF rectF2 = this.f5961b;
            float f7 = h2.x;
            float f8 = h2.y;
            float f9 = f3 * 2.0f;
            rectF2.set(f7 - f, (f8 + f2) - f9, (f7 - f) + f9, f8 + f2);
            this.f5960a.arcTo(this.f5961b, 90.0f, 90.0f, false);
        }
        this.f5960a.lineTo(h2.x - f, (h2.y - f2) + f3);
        if (i > 0) {
            RectF rectF3 = this.f5961b;
            float f10 = h2.x;
            float f11 = h2.y;
            float f12 = f3 * 2.0f;
            rectF3.set(f10 - f, f11 - f2, (f10 - f) + f12, (f11 - f2) + f12);
            this.f5960a.arcTo(this.f5961b, 180.0f, 90.0f, false);
        }
        this.f5960a.lineTo((h2.x + f) - f3, h2.y - f2);
        if (i > 0) {
            RectF rectF4 = this.f5961b;
            float f13 = h2.x;
            float f14 = f3 * 2.0f;
            float f15 = h2.y;
            rectF4.set((f13 + f) - f14, f15 - f2, f13 + f, (f15 - f2) + f14);
            this.f5960a.arcTo(this.f5961b, 270.0f, 90.0f, false);
        }
        this.f5960a.close();
        this.f5968i.m16190b(this.f5960a);
        this.f5969j = true;
        return this.f5960a;
    }
}
