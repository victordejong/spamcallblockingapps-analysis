package com.airbnb.lottie.model.content;

import android.graphics.Path;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.GradientFillContent;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableGradientColorValue;
import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.animatable.AnimatablePointValue;
import com.airbnb.lottie.model.layer.BaseLayer;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/content/GradientFill.class */
public class GradientFill implements ContentModel {

    /* renamed from: a */
    private final GradientType f6113a;

    /* renamed from: b */
    private final Path.FillType f6114b;

    /* renamed from: c */
    private final AnimatableGradientColorValue f6115c;

    /* renamed from: d */
    private final AnimatableIntegerValue f6116d;

    /* renamed from: e */
    private final AnimatablePointValue f6117e;

    /* renamed from: f */
    private final AnimatablePointValue f6118f;

    /* renamed from: g */
    private final String f6119g;

    /* renamed from: h */
    private final boolean f6120h;

    public GradientFill(String str, GradientType gradientType, Path.FillType fillType, AnimatableGradientColorValue animatableGradientColorValue, AnimatableIntegerValue animatableIntegerValue, AnimatablePointValue animatablePointValue, AnimatablePointValue animatablePointValue2, AnimatableFloatValue animatableFloatValue, AnimatableFloatValue animatableFloatValue2, boolean z) {
        this.f6113a = gradientType;
        this.f6114b = fillType;
        this.f6115c = animatableGradientColorValue;
        this.f6116d = animatableIntegerValue;
        this.f6117e = animatablePointValue;
        this.f6118f = animatablePointValue2;
        this.f6119g = str;
        this.f6120h = z;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    /* renamed from: a */
    public Content mo15977a(LottieDrawable lottieDrawable, BaseLayer baseLayer) {
        return new GradientFillContent(lottieDrawable, baseLayer, this);
    }

    /* renamed from: b */
    public AnimatablePointValue m16051b() {
        return this.f6118f;
    }

    /* renamed from: c */
    public Path.FillType m16050c() {
        return this.f6114b;
    }

    /* renamed from: d */
    public AnimatableGradientColorValue m16049d() {
        return this.f6115c;
    }

    /* renamed from: e */
    public GradientType m16048e() {
        return this.f6113a;
    }

    /* renamed from: f */
    public String m16047f() {
        return this.f6119g;
    }

    /* renamed from: g */
    public AnimatableIntegerValue m16046g() {
        return this.f6116d;
    }

    /* renamed from: h */
    public AnimatablePointValue m16045h() {
        return this.f6117e;
    }

    /* renamed from: i */
    public boolean m16044i() {
        return this.f6120h;
    }
}
