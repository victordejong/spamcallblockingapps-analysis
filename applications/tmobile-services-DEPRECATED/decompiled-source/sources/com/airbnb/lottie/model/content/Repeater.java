package com.airbnb.lottie.model.content;

import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.RepeaterContent;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableTransform;
import com.airbnb.lottie.model.layer.BaseLayer;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/content/Repeater.class */
public class Repeater implements ContentModel {

    /* renamed from: a */
    private final String f6156a;

    /* renamed from: b */
    private final AnimatableFloatValue f6157b;

    /* renamed from: c */
    private final AnimatableFloatValue f6158c;

    /* renamed from: d */
    private final AnimatableTransform f6159d;

    /* renamed from: e */
    private final boolean f6160e;

    public Repeater(String str, AnimatableFloatValue animatableFloatValue, AnimatableFloatValue animatableFloatValue2, AnimatableTransform animatableTransform, boolean z) {
        this.f6156a = str;
        this.f6157b = animatableFloatValue;
        this.f6158c = animatableFloatValue2;
        this.f6159d = animatableTransform;
        this.f6160e = z;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    @Nullable
    /* renamed from: a */
    public Content mo15977a(LottieDrawable lottieDrawable, BaseLayer baseLayer) {
        return new RepeaterContent(lottieDrawable, baseLayer, this);
    }

    /* renamed from: b */
    public AnimatableFloatValue m16008b() {
        return this.f6157b;
    }

    /* renamed from: c */
    public String m16007c() {
        return this.f6156a;
    }

    /* renamed from: d */
    public AnimatableFloatValue m16006d() {
        return this.f6158c;
    }

    /* renamed from: e */
    public AnimatableTransform m16005e() {
        return this.f6159d;
    }

    /* renamed from: f */
    public boolean m16004f() {
        return this.f6160e;
    }
}
