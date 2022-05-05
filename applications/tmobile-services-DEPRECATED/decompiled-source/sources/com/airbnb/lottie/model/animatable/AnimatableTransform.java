package com.airbnb.lottie.model.animatable;

import android.graphics.PointF;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.ModifierContent;
import com.airbnb.lottie.animation.keyframe.TransformKeyframeAnimation;
import com.airbnb.lottie.model.content.ContentModel;
import com.airbnb.lottie.model.layer.BaseLayer;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/animatable/AnimatableTransform.class */
public class AnimatableTransform implements ModifierContent, ContentModel {
    @Nullable

    /* renamed from: a */
    private final AnimatablePathValue f6096a;
    @Nullable

    /* renamed from: b */
    private final AnimatableValue<PointF, PointF> f6097b;
    @Nullable

    /* renamed from: c */
    private final AnimatableScaleValue f6098c;
    @Nullable

    /* renamed from: d */
    private final AnimatableFloatValue f6099d;
    @Nullable

    /* renamed from: e */
    private final AnimatableIntegerValue f6100e;
    @Nullable

    /* renamed from: f */
    private final AnimatableFloatValue f6101f;
    @Nullable

    /* renamed from: g */
    private final AnimatableFloatValue f6102g;
    @Nullable

    /* renamed from: h */
    private final AnimatableFloatValue f6103h;
    @Nullable

    /* renamed from: i */
    private final AnimatableFloatValue f6104i;

    public AnimatableTransform() {
        this(null, null, null, null, null, null, null, null, null);
    }

    public AnimatableTransform(@Nullable AnimatablePathValue animatablePathValue, @Nullable AnimatableValue<PointF, PointF> animatableValue, @Nullable AnimatableScaleValue animatableScaleValue, @Nullable AnimatableFloatValue animatableFloatValue, @Nullable AnimatableIntegerValue animatableIntegerValue, @Nullable AnimatableFloatValue animatableFloatValue2, @Nullable AnimatableFloatValue animatableFloatValue3, @Nullable AnimatableFloatValue animatableFloatValue4, @Nullable AnimatableFloatValue animatableFloatValue5) {
        this.f6096a = animatablePathValue;
        this.f6097b = animatableValue;
        this.f6098c = animatableScaleValue;
        this.f6099d = animatableFloatValue;
        this.f6100e = animatableIntegerValue;
        this.f6103h = animatableFloatValue2;
        this.f6104i = animatableFloatValue3;
        this.f6101f = animatableFloatValue4;
        this.f6102g = animatableFloatValue5;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    @Nullable
    /* renamed from: a */
    public Content mo15977a(LottieDrawable lottieDrawable, BaseLayer baseLayer) {
        return null;
    }

    /* renamed from: b */
    public TransformKeyframeAnimation m16073b() {
        return new TransformKeyframeAnimation(this);
    }

    @Nullable
    /* renamed from: c */
    public AnimatablePathValue m16072c() {
        return this.f6096a;
    }

    @Nullable
    /* renamed from: d */
    public AnimatableFloatValue m16071d() {
        return this.f6104i;
    }

    @Nullable
    /* renamed from: e */
    public AnimatableIntegerValue m16070e() {
        return this.f6100e;
    }

    @Nullable
    /* renamed from: f */
    public AnimatableValue<PointF, PointF> m16069f() {
        return this.f6097b;
    }

    @Nullable
    /* renamed from: g */
    public AnimatableFloatValue m16068g() {
        return this.f6099d;
    }

    @Nullable
    /* renamed from: h */
    public AnimatableScaleValue m16067h() {
        return this.f6098c;
    }

    @Nullable
    /* renamed from: i */
    public AnimatableFloatValue m16066i() {
        return this.f6101f;
    }

    @Nullable
    /* renamed from: j */
    public AnimatableFloatValue m16065j() {
        return this.f6102g;
    }

    @Nullable
    /* renamed from: k */
    public AnimatableFloatValue m16064k() {
        return this.f6103h;
    }
}
