package com.airbnb.lottie.model.content;

import com.airbnb.lottie.utils.GammaEvaluator;
import com.airbnb.lottie.utils.MiscUtils;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/content/GradientColor.class */
public class GradientColor {

    /* renamed from: a */
    private final float[] f6111a;

    /* renamed from: b */
    private final int[] f6112b;

    public GradientColor(float[] fArr, int[] iArr) {
        this.f6111a = fArr;
        this.f6112b = iArr;
    }

    /* renamed from: a */
    public int[] m16055a() {
        return this.f6112b;
    }

    /* renamed from: b */
    public float[] m16054b() {
        return this.f6111a;
    }

    /* renamed from: c */
    public int m16053c() {
        return this.f6112b.length;
    }

    /* renamed from: d */
    public void m16052d(GradientColor gradientColor, GradientColor gradientColor2, float f) {
        if (gradientColor.f6112b.length == gradientColor2.f6112b.length) {
            for (int i = 0; i < gradientColor.f6112b.length; i++) {
                this.f6111a[i] = MiscUtils.m15700k(gradientColor.f6111a[i], gradientColor2.f6111a[i], f);
                this.f6112b[i] = GammaEvaluator.m15744c(f, gradientColor.f6112b[i], gradientColor2.f6112b[i]);
            }
            return;
        }
        throw new IllegalArgumentException("Cannot interpolate between gradients. Lengths vary (" + gradientColor.f6112b.length + " vs " + gradientColor2.f6112b.length + ")");
    }
}
