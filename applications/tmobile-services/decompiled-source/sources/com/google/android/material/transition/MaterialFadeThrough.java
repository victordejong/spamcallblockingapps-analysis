package com.google.android.material.transition;
/* loaded from: classes-dex2jar.jar:com/google/android/material/transition/MaterialFadeThrough.class */
public final class MaterialFadeThrough extends MaterialVisibility<FadeThroughProvider> {
    public MaterialFadeThrough() {
        super(m8589y0(), m8588z0());
    }

    /* renamed from: y0 */
    private static FadeThroughProvider m8589y0() {
        return new FadeThroughProvider();
    }

    /* renamed from: z0 */
    private static VisibilityAnimatorProvider m8588z0() {
        ScaleProvider scaleProvider = new ScaleProvider();
        scaleProvider.m8582e(false);
        scaleProvider.m8583d(0.92f);
        return scaleProvider;
    }
}
