package com.google.android.material.transition;
/* loaded from: classes-dex2jar.jar:com/google/android/material/transition/MaterialFade.class */
public final class MaterialFade extends MaterialVisibility<FadeProvider> {
    public MaterialFade() {
        super(m8591y0(), m8590z0());
    }

    /* renamed from: y0 */
    private static FadeProvider m8591y0() {
        FadeProvider fadeProvider = new FadeProvider();
        fadeProvider.m8642d(0.3f);
        return fadeProvider;
    }

    /* renamed from: z0 */
    private static VisibilityAnimatorProvider m8590z0() {
        ScaleProvider scaleProvider = new ScaleProvider();
        scaleProvider.m8582e(false);
        scaleProvider.m8583d(0.8f);
        return scaleProvider;
    }
}
