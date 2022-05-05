package com.airbnb.lottie.model.content;

import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.ShapeContent;
import com.airbnb.lottie.model.animatable.AnimatableShapeValue;
import com.airbnb.lottie.model.layer.BaseLayer;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/content/ShapePath.class */
public class ShapePath implements ContentModel {

    /* renamed from: a */
    private final String f6173a;

    /* renamed from: b */
    private final int f6174b;

    /* renamed from: c */
    private final AnimatableShapeValue f6175c;

    /* renamed from: d */
    private final boolean f6176d;

    public ShapePath(String str, int i, AnimatableShapeValue animatableShapeValue, boolean z) {
        this.f6173a = str;
        this.f6174b = i;
        this.f6175c = animatableShapeValue;
        this.f6176d = z;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    /* renamed from: a */
    public Content mo15977a(LottieDrawable lottieDrawable, BaseLayer baseLayer) {
        return new ShapeContent(lottieDrawable, baseLayer, this);
    }

    /* renamed from: b */
    public String m15990b() {
        return this.f6173a;
    }

    /* renamed from: c */
    public AnimatableShapeValue m15989c() {
        return this.f6175c;
    }

    /* renamed from: d */
    public boolean m15988d() {
        return this.f6176d;
    }

    public String toString() {
        return "ShapePath{name=" + this.f6173a + ", index=" + this.f6174b + '}';
    }
}
