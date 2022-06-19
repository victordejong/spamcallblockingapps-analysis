package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.TypeEvaluator;
import android.graphics.Matrix;
import android.os.Build;
/* renamed from: androidx.transition.w */
/* loaded from: classes-dex2jar.jar:androidx/transition/w.class */
final class C2912w {

    /* renamed from: a */
    private static final boolean f10927a;

    /* renamed from: b */
    private static final boolean f10928b;

    /* renamed from: c */
    private static final boolean f10929c;

    /* renamed from: androidx.transition.w$a */
    /* loaded from: classes-dex2jar.jar:androidx/transition/w$a.class */
    static final class C2913a implements TypeEvaluator<Matrix> {

        /* renamed from: a */
        final float[] f10930a = new float[9];

        /* renamed from: b */
        final float[] f10931b = new float[9];

        /* renamed from: c */
        final Matrix f10932c = new Matrix();

        @Override // android.animation.TypeEvaluator
        public final /* synthetic */ Matrix evaluate(float f, Matrix matrix, Matrix matrix2) {
            matrix.getValues(this.f10930a);
            matrix2.getValues(this.f10931b);
            for (int i = 0; i < 9; i++) {
                float[] fArr = this.f10931b;
                float f2 = fArr[i];
                float[] fArr2 = this.f10930a;
                fArr[i] = fArr2[i] + ((f2 - fArr2[i]) * f);
            }
            this.f10932c.setValues(this.f10931b);
            return this.f10932c;
        }
    }

    static {
        f10927a = Build.VERSION.SDK_INT >= 19;
        f10928b = Build.VERSION.SDK_INT >= 18;
        f10929c = Build.VERSION.SDK_INT >= 28;
    }

    private C2912w() {
    }

    /* renamed from: a */
    public static Animator m39675a(Animator animator, Animator animator2) {
        if (animator == null) {
            return animator2;
        }
        if (animator2 == null) {
            return animator;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(animator, animator2);
        return animatorSet;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x01bc  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.view.View m39674a(android.view.ViewGroup r7, android.view.View r8, android.view.View r9) {
        /*
            Method dump skipped, instructions count: 492
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.C2912w.m39674a(android.view.ViewGroup, android.view.View, android.view.View):android.view.View");
    }
}
