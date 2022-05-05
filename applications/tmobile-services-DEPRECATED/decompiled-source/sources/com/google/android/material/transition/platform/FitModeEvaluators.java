package com.google.android.material.transition.platform;

import android.graphics.RectF;
import androidx.annotation.RequiresApi;
@RequiresApi
/* loaded from: classes-dex2jar.jar:com/google/android/material/transition/platform/FitModeEvaluators.class */
class FitModeEvaluators {

    /* renamed from: a */
    private static final FitModeEvaluator f11789a = new FitModeEvaluator() { // from class: com.google.android.material.transition.platform.FitModeEvaluators.1
        @Override // com.google.android.material.transition.platform.FitModeEvaluator
        /* renamed from: a */
        public FitModeResult mo8541a(float f, float f2, float f3, float f4, float f5, float f6, float f7) {
            float l = TransitionUtils.m8463l(f4, f6, f2, f3, f);
            float f8 = l / f4;
            float f9 = l / f6;
            return new FitModeResult(f8, f9, l, f5 * f8, l, f7 * f9);
        }

        @Override // com.google.android.material.transition.platform.FitModeEvaluator
        /* renamed from: b */
        public boolean mo8540b(FitModeResult fitModeResult) {
            return fitModeResult.f11794d > fitModeResult.f11796f;
        }

        @Override // com.google.android.material.transition.platform.FitModeEvaluator
        /* renamed from: c */
        public void mo8539c(RectF rectF, float f, FitModeResult fitModeResult) {
            rectF.bottom -= Math.abs(fitModeResult.f11796f - fitModeResult.f11794d) * f;
        }
    };

    /* renamed from: b */
    private static final FitModeEvaluator f11790b = new FitModeEvaluator() { // from class: com.google.android.material.transition.platform.FitModeEvaluators.2
        @Override // com.google.android.material.transition.platform.FitModeEvaluator
        /* renamed from: a */
        public FitModeResult mo8541a(float f, float f2, float f3, float f4, float f5, float f6, float f7) {
            float l = TransitionUtils.m8463l(f5, f7, f2, f3, f);
            float f8 = l / f5;
            float f9 = l / f7;
            return new FitModeResult(f8, f9, f4 * f8, l, f6 * f9, l);
        }

        @Override // com.google.android.material.transition.platform.FitModeEvaluator
        /* renamed from: b */
        public boolean mo8540b(FitModeResult fitModeResult) {
            return fitModeResult.f11793c > fitModeResult.f11795e;
        }

        @Override // com.google.android.material.transition.platform.FitModeEvaluator
        /* renamed from: c */
        public void mo8539c(RectF rectF, float f, FitModeResult fitModeResult) {
            float abs = (Math.abs(fitModeResult.f11795e - fitModeResult.f11793c) / 2.0f) * f;
            rectF.left += abs;
            rectF.right -= abs;
        }
    };

    private FitModeEvaluators() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static FitModeEvaluator m8543a(int i, boolean z, RectF rectF, RectF rectF2) {
        if (i == 0) {
            return m8542b(z, rectF, rectF2) ? f11789a : f11790b;
        } else if (i == 1) {
            return f11789a;
        } else {
            if (i == 2) {
                return f11790b;
            }
            throw new IllegalArgumentException("Invalid fit mode: " + i);
        }
    }

    /* renamed from: b */
    private static boolean m8542b(boolean z, RectF rectF, RectF rectF2) {
        boolean z2;
        float width = rectF.width();
        float height = rectF.height();
        float width2 = rectF2.width();
        float height2 = rectF2.height();
        float f = (height2 * width) / width2;
        float f2 = (width2 * height) / width;
        if (z) {
            if (f >= height) {
                z2 = true;
            }
            z2 = false;
        } else {
            if (f2 >= height2) {
                z2 = true;
            }
            z2 = false;
        }
        return z2;
    }
}
