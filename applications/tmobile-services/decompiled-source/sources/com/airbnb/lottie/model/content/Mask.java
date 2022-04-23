package com.airbnb.lottie.model.content;

import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.animatable.AnimatableShapeValue;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/content/Mask.class */
public class Mask {

    /* renamed from: a */
    private final MaskMode f6134a;

    /* renamed from: b */
    private final AnimatableShapeValue f6135b;

    /* renamed from: c */
    private final AnimatableIntegerValue f6136c;

    /* renamed from: d */
    private final boolean f6137d;

    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/content/Mask$MaskMode.class */
    public enum MaskMode {
        MASK_MODE_ADD,
        MASK_MODE_SUBTRACT,
        MASK_MODE_INTERSECT,
        MASK_MODE_NONE
    }

    public Mask(MaskMode maskMode, AnimatableShapeValue animatableShapeValue, AnimatableIntegerValue animatableIntegerValue, boolean z) {
        this.f6134a = maskMode;
        this.f6135b = animatableShapeValue;
        this.f6136c = animatableIntegerValue;
        this.f6137d = z;
    }

    /* renamed from: a */
    public MaskMode m16030a() {
        return this.f6134a;
    }

    /* renamed from: b */
    public AnimatableShapeValue m16029b() {
        return this.f6135b;
    }

    /* renamed from: c */
    public AnimatableIntegerValue m16028c() {
        return this.f6136c;
    }

    /* renamed from: d */
    public boolean m16027d() {
        return this.f6137d;
    }
}
