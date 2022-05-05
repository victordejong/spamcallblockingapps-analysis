package com.google.android.material.transition.platform;

import androidx.annotation.RequiresApi;
@RequiresApi
/* loaded from: classes-dex2jar.jar:com/google/android/material/transition/platform/FadeModeEvaluators.class */
class FadeModeEvaluators {

    /* renamed from: a */
    private static final FadeModeEvaluator f11771a = new FadeModeEvaluator() { // from class: com.google.android.material.transition.platform.FadeModeEvaluators.1
        @Override // com.google.android.material.transition.platform.FadeModeEvaluator
        /* renamed from: a */
        public FadeModeResult mo8549a(float f, float f2, float f3) {
            return FadeModeResult.m8548a(255, TransitionUtils.m8462m(0, 255, f2, f3, f));
        }
    };

    /* renamed from: b */
    private static final FadeModeEvaluator f11772b = new FadeModeEvaluator() { // from class: com.google.android.material.transition.platform.FadeModeEvaluators.2
        @Override // com.google.android.material.transition.platform.FadeModeEvaluator
        /* renamed from: a */
        public FadeModeResult mo8549a(float f, float f2, float f3) {
            return FadeModeResult.m8547b(TransitionUtils.m8462m(255, 0, f2, f3, f), 255);
        }
    };

    /* renamed from: c */
    private static final FadeModeEvaluator f11773c = new FadeModeEvaluator() { // from class: com.google.android.material.transition.platform.FadeModeEvaluators.3
        @Override // com.google.android.material.transition.platform.FadeModeEvaluator
        /* renamed from: a */
        public FadeModeResult mo8549a(float f, float f2, float f3) {
            return FadeModeResult.m8547b(TransitionUtils.m8462m(255, 0, f2, f3, f), TransitionUtils.m8462m(0, 255, f2, f3, f));
        }
    };

    /* renamed from: d */
    private static final FadeModeEvaluator f11774d = new FadeModeEvaluator() { // from class: com.google.android.material.transition.platform.FadeModeEvaluators.4
        @Override // com.google.android.material.transition.platform.FadeModeEvaluator
        /* renamed from: a */
        public FadeModeResult mo8549a(float f, float f2, float f3) {
            float f4 = ((f3 - f2) * 0.35f) + f2;
            return FadeModeResult.m8547b(TransitionUtils.m8462m(255, 0, f2, f4, f), TransitionUtils.m8462m(0, 255, f4, f3, f));
        }
    };

    private FadeModeEvaluators() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static FadeModeEvaluator m8550a(int i, boolean z) {
        if (i == 0) {
            return z ? f11771a : f11772b;
        } else if (i == 1) {
            return z ? f11772b : f11771a;
        } else if (i == 2) {
            return f11773c;
        } else {
            if (i == 3) {
                return f11774d;
            }
            throw new IllegalArgumentException("Invalid fade mode: " + i);
        }
    }
}
