package com.airbnb.lottie.model.content;

import android.graphics.Path;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.FillContent;
import com.airbnb.lottie.model.animatable.AnimatableColorValue;
import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.layer.BaseLayer;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/content/ShapeFill.class */
public class ShapeFill implements ContentModel {

    /* renamed from: a */
    private final boolean f6164a;

    /* renamed from: b */
    private final Path.FillType f6165b;

    /* renamed from: c */
    private final String f6166c;
    @Nullable

    /* renamed from: d */
    private final AnimatableColorValue f6167d;
    @Nullable

    /* renamed from: e */
    private final AnimatableIntegerValue f6168e;

    /* renamed from: f */
    private final boolean f6169f;

    public ShapeFill(String str, boolean z, Path.FillType fillType, @Nullable AnimatableColorValue animatableColorValue, @Nullable AnimatableIntegerValue animatableIntegerValue, boolean z2) {
        this.f6166c = str;
        this.f6164a = z;
        this.f6165b = fillType;
        this.f6167d = animatableColorValue;
        this.f6168e = animatableIntegerValue;
        this.f6169f = z2;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    /* renamed from: a */
    public Content mo15977a(LottieDrawable lottieDrawable, BaseLayer baseLayer) {
        return new FillContent(lottieDrawable, baseLayer, this);
    }

    @Nullable
    /* renamed from: b */
    public AnimatableColorValue m15998b() {
        return this.f6167d;
    }

    /* renamed from: c */
    public Path.FillType m15997c() {
        return this.f6165b;
    }

    /* renamed from: d */
    public String m15996d() {
        return this.f6166c;
    }

    @Nullable
    /* renamed from: e */
    public AnimatableIntegerValue m15995e() {
        return this.f6168e;
    }

    /* renamed from: f */
    public boolean m15994f() {
        return this.f6169f;
    }

    public String toString() {
        return "ShapeFill{color=, fillEnabled=" + this.f6164a + '}';
    }
}
