package com.airbnb.lottie.model.content;

import android.graphics.PointF;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.PolystarContent;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableValue;
import com.airbnb.lottie.model.layer.BaseLayer;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/content/PolystarShape.class */
public class PolystarShape implements ContentModel {

    /* renamed from: a */
    private final String f6141a;

    /* renamed from: b */
    private final Type f6142b;

    /* renamed from: c */
    private final AnimatableFloatValue f6143c;

    /* renamed from: d */
    private final AnimatableValue<PointF, PointF> f6144d;

    /* renamed from: e */
    private final AnimatableFloatValue f6145e;

    /* renamed from: f */
    private final AnimatableFloatValue f6146f;

    /* renamed from: g */
    private final AnimatableFloatValue f6147g;

    /* renamed from: h */
    private final AnimatableFloatValue f6148h;

    /* renamed from: i */
    private final AnimatableFloatValue f6149i;

    /* renamed from: j */
    private final boolean f6150j;

    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/content/PolystarShape$Type.class */
    public enum Type {
        STAR(1),
        POLYGON(2);
        
        private final int value;

        Type(int i) {
            this.value = i;
        }

        public static Type forValue(int i) {
            Type[] values;
            for (Type type : values()) {
                if (type.value == i) {
                    return type;
                }
            }
            return null;
        }
    }

    public PolystarShape(String str, Type type, AnimatableFloatValue animatableFloatValue, AnimatableValue<PointF, PointF> animatableValue, AnimatableFloatValue animatableFloatValue2, AnimatableFloatValue animatableFloatValue3, AnimatableFloatValue animatableFloatValue4, AnimatableFloatValue animatableFloatValue5, AnimatableFloatValue animatableFloatValue6, boolean z) {
        this.f6141a = str;
        this.f6142b = type;
        this.f6143c = animatableFloatValue;
        this.f6144d = animatableValue;
        this.f6145e = animatableFloatValue2;
        this.f6146f = animatableFloatValue3;
        this.f6147g = animatableFloatValue4;
        this.f6148h = animatableFloatValue5;
        this.f6149i = animatableFloatValue6;
        this.f6150j = z;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    /* renamed from: a */
    public Content mo15977a(LottieDrawable lottieDrawable, BaseLayer baseLayer) {
        return new PolystarContent(lottieDrawable, baseLayer, this);
    }

    /* renamed from: b */
    public AnimatableFloatValue m16023b() {
        return this.f6146f;
    }

    /* renamed from: c */
    public AnimatableFloatValue m16022c() {
        return this.f6148h;
    }

    /* renamed from: d */
    public String m16021d() {
        return this.f6141a;
    }

    /* renamed from: e */
    public AnimatableFloatValue m16020e() {
        return this.f6147g;
    }

    /* renamed from: f */
    public AnimatableFloatValue m16019f() {
        return this.f6149i;
    }

    /* renamed from: g */
    public AnimatableFloatValue m16018g() {
        return this.f6143c;
    }

    /* renamed from: h */
    public AnimatableValue<PointF, PointF> m16017h() {
        return this.f6144d;
    }

    /* renamed from: i */
    public AnimatableFloatValue m16016i() {
        return this.f6145e;
    }

    /* renamed from: j */
    public Type m16015j() {
        return this.f6142b;
    }

    /* renamed from: k */
    public boolean m16014k() {
        return this.f6150j;
    }
}
