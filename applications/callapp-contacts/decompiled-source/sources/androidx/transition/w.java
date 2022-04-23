package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.TypeEvaluator;
import android.graphics.Matrix;
import android.os.Build;
/* loaded from: classes-dex2jar.jar:androidx/transition/w.class */
final class w {

    /* renamed from: a  reason: collision with root package name */
    private static final boolean f5846a;

    /* renamed from: b  reason: collision with root package name */
    private static final boolean f5847b;

    /* renamed from: c  reason: collision with root package name */
    private static final boolean f5848c;

    /* loaded from: classes-dex2jar.jar:androidx/transition/w$a.class */
    static final class a implements TypeEvaluator<Matrix> {

        /* renamed from: a  reason: collision with root package name */
        final float[] f5849a = new float[9];

        /* renamed from: b  reason: collision with root package name */
        final float[] f5850b = new float[9];

        /* renamed from: c  reason: collision with root package name */
        final Matrix f5851c = new Matrix();

        @Override // android.animation.TypeEvaluator
        public final /* synthetic */ Matrix evaluate(float f, Matrix matrix, Matrix matrix2) {
            matrix.getValues(this.f5849a);
            matrix2.getValues(this.f5850b);
            for (int i = 0; i < 9; i++) {
                float[] fArr = this.f5850b;
                float f2 = fArr[i];
                float[] fArr2 = this.f5849a;
                fArr[i] = fArr2[i] + ((f2 - fArr2[i]) * f);
            }
            this.f5851c.setValues(this.f5850b);
            return this.f5851c;
        }
    }

    static {
        boolean z = true;
        f5846a = Build.VERSION.SDK_INT >= 19;
        f5847b = Build.VERSION.SDK_INT >= 18;
        if (Build.VERSION.SDK_INT < 28) {
            z = false;
        }
        f5848c = z;
    }

    private w() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Animator a(Animator animator, Animator animator2) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x01bc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.view.View a(android.view.ViewGroup r7, android.view.View r8, android.view.View r9) {
        /*
            Method dump skipped, instructions count: 492
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.w.a(android.view.ViewGroup, android.view.View, android.view.View):android.view.View");
    }
}
