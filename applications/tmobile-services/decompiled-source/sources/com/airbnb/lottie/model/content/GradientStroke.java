package com.airbnb.lottie.model.content;

import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.GradientStrokeContent;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableGradientColorValue;
import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.animatable.AnimatablePointValue;
import com.airbnb.lottie.model.content.ShapeStroke;
import com.airbnb.lottie.model.layer.BaseLayer;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/content/GradientStroke.class */
public class GradientStroke implements ContentModel {

    /* renamed from: a */
    private final String f6121a;

    /* renamed from: b */
    private final GradientType f6122b;

    /* renamed from: c */
    private final AnimatableGradientColorValue f6123c;

    /* renamed from: d */
    private final AnimatableIntegerValue f6124d;

    /* renamed from: e */
    private final AnimatablePointValue f6125e;

    /* renamed from: f */
    private final AnimatablePointValue f6126f;

    /* renamed from: g */
    private final AnimatableFloatValue f6127g;

    /* renamed from: h */
    private final ShapeStroke.LineCapType f6128h;

    /* renamed from: i */
    private final ShapeStroke.LineJoinType f6129i;

    /* renamed from: j */
    private final float f6130j;

    /* renamed from: k */
    private final List<AnimatableFloatValue> f6131k;
    @Nullable

    /* renamed from: l */
    private final AnimatableFloatValue f6132l;

    /* renamed from: m */
    private final boolean f6133m;

    public GradientStroke(String str, GradientType gradientType, AnimatableGradientColorValue animatableGradientColorValue, AnimatableIntegerValue animatableIntegerValue, AnimatablePointValue animatablePointValue, AnimatablePointValue animatablePointValue2, AnimatableFloatValue animatableFloatValue, ShapeStroke.LineCapType lineCapType, ShapeStroke.LineJoinType lineJoinType, float f, List<AnimatableFloatValue> list, @Nullable AnimatableFloatValue animatableFloatValue2, boolean z) {
        this.f6121a = str;
        this.f6122b = gradientType;
        this.f6123c = animatableGradientColorValue;
        this.f6124d = animatableIntegerValue;
        this.f6125e = animatablePointValue;
        this.f6126f = animatablePointValue2;
        this.f6127g = animatableFloatValue;
        this.f6128h = lineCapType;
        this.f6129i = lineJoinType;
        this.f6130j = f;
        this.f6131k = list;
        this.f6132l = animatableFloatValue2;
        this.f6133m = z;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    /* renamed from: a */
    public Content mo15977a(LottieDrawable lottieDrawable, BaseLayer baseLayer) {
        return new GradientStrokeContent(lottieDrawable, baseLayer, this);
    }

    /* renamed from: b */
    public ShapeStroke.LineCapType m16043b() {
        return this.f6128h;
    }

    @Nullable
    /* renamed from: c */
    public AnimatableFloatValue m16042c() {
        return this.f6132l;
    }

    /* renamed from: d */
    public AnimatablePointValue m16041d() {
        return this.f6126f;
    }

    /* renamed from: e */
    public AnimatableGradientColorValue m16040e() {
        return this.f6123c;
    }

    /* renamed from: f */
    public GradientType m16039f() {
        return this.f6122b;
    }

    /* renamed from: g */
    public ShapeStroke.LineJoinType m16038g() {
        return this.f6129i;
    }

    /* renamed from: h */
    public List<AnimatableFloatValue> m16037h() {
        return this.f6131k;
    }

    /* renamed from: i */
    public float m16036i() {
        return this.f6130j;
    }

    /* renamed from: j */
    public String m16035j() {
        return this.f6121a;
    }

    /* renamed from: k */
    public AnimatableIntegerValue m16034k() {
        return this.f6124d;
    }

    /* renamed from: l */
    public AnimatablePointValue m16033l() {
        return this.f6125e;
    }

    /* renamed from: m */
    public AnimatableFloatValue m16032m() {
        return this.f6127g;
    }

    /* renamed from: n */
    public boolean m16031n() {
        return this.f6133m;
    }
}
