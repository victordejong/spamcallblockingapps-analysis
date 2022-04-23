package com.airbnb.lottie.model.content;

import android.graphics.PointF;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.EllipseContent;
import com.airbnb.lottie.model.animatable.AnimatablePointValue;
import com.airbnb.lottie.model.animatable.AnimatableValue;
import com.airbnb.lottie.model.layer.BaseLayer;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/content/CircleShape.class */
public class CircleShape implements ContentModel {

    /* renamed from: a */
    private final String f6106a;

    /* renamed from: b */
    private final AnimatableValue<PointF, PointF> f6107b;

    /* renamed from: c */
    private final AnimatablePointValue f6108c;

    /* renamed from: d */
    private final boolean f6109d;

    /* renamed from: e */
    private final boolean f6110e;

    public CircleShape(String str, AnimatableValue<PointF, PointF> animatableValue, AnimatablePointValue animatablePointValue, boolean z, boolean z2) {
        this.f6106a = str;
        this.f6107b = animatableValue;
        this.f6108c = animatablePointValue;
        this.f6109d = z;
        this.f6110e = z2;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    /* renamed from: a */
    public Content mo15977a(LottieDrawable lottieDrawable, BaseLayer baseLayer) {
        return new EllipseContent(lottieDrawable, baseLayer, this);
    }

    /* renamed from: b */
    public String m16060b() {
        return this.f6106a;
    }

    /* renamed from: c */
    public AnimatableValue<PointF, PointF> m16059c() {
        return this.f6107b;
    }

    /* renamed from: d */
    public AnimatablePointValue m16058d() {
        return this.f6108c;
    }

    /* renamed from: e */
    public boolean m16057e() {
        return this.f6110e;
    }

    /* renamed from: f */
    public boolean m16056f() {
        return this.f6109d;
    }
}
