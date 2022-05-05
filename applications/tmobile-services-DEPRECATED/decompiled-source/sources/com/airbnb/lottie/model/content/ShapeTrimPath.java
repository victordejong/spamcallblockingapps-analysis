package com.airbnb.lottie.model.content;

import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.TrimPathContent;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.layer.BaseLayer;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/content/ShapeTrimPath.class */
public class ShapeTrimPath implements ContentModel {

    /* renamed from: a */
    private final String f6189a;

    /* renamed from: b */
    private final Type f6190b;

    /* renamed from: c */
    private final AnimatableFloatValue f6191c;

    /* renamed from: d */
    private final AnimatableFloatValue f6192d;

    /* renamed from: e */
    private final AnimatableFloatValue f6193e;

    /* renamed from: f */
    private final boolean f6194f;

    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/content/ShapeTrimPath$Type.class */
    public enum Type {
        SIMULTANEOUSLY,
        INDIVIDUALLY;

        public static Type forId(int i) {
            if (i == 1) {
                return SIMULTANEOUSLY;
            }
            if (i == 2) {
                return INDIVIDUALLY;
            }
            throw new IllegalArgumentException("Unknown trim path type " + i);
        }
    }

    public ShapeTrimPath(String str, Type type, AnimatableFloatValue animatableFloatValue, AnimatableFloatValue animatableFloatValue2, AnimatableFloatValue animatableFloatValue3, boolean z) {
        this.f6189a = str;
        this.f6190b = type;
        this.f6191c = animatableFloatValue;
        this.f6192d = animatableFloatValue2;
        this.f6193e = animatableFloatValue3;
        this.f6194f = z;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    /* renamed from: a */
    public Content mo15977a(LottieDrawable lottieDrawable, BaseLayer baseLayer) {
        return new TrimPathContent(baseLayer, this);
    }

    /* renamed from: b */
    public AnimatableFloatValue m15976b() {
        return this.f6192d;
    }

    /* renamed from: c */
    public String m15975c() {
        return this.f6189a;
    }

    /* renamed from: d */
    public AnimatableFloatValue m15974d() {
        return this.f6193e;
    }

    /* renamed from: e */
    public AnimatableFloatValue m15973e() {
        return this.f6191c;
    }

    /* renamed from: f */
    public Type m15972f() {
        return this.f6190b;
    }

    /* renamed from: g */
    public boolean m15971g() {
        return this.f6194f;
    }

    public String toString() {
        return "Trim Path: {start: " + this.f6191c + ", end: " + this.f6192d + ", offset: " + this.f6193e + "}";
    }
}
