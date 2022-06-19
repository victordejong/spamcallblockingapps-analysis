package androidx.transition;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.TypeEvaluator;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
/* renamed from: androidx.transition.x */
/* loaded from: classes-dex2jar.jar:androidx/transition/x.class */
class C1173x {

    /* renamed from: a */
    private static final boolean f4989a;

    /* renamed from: b */
    private static final boolean f4990b;

    /* renamed from: c */
    private static final boolean f4991c;

    /* renamed from: androidx.transition.x$a */
    /* loaded from: classes-dex2jar.jar:androidx/transition/x$a.class */
    static class C1174a implements TypeEvaluator<Matrix> {

        /* renamed from: a */
        final float[] f4992a = new float[9];

        /* renamed from: b */
        final float[] f4993b = new float[9];

        /* renamed from: c */
        final Matrix f4994c = new Matrix();

        /* renamed from: a */
        public Matrix evaluate(float f, Matrix matrix, Matrix matrix2) {
            matrix.getValues(this.f4992a);
            matrix2.getValues(this.f4993b);
            for (int i = 0; i < 9; i++) {
                float[] fArr = this.f4993b;
                float f2 = fArr[i];
                float[] fArr2 = this.f4992a;
                fArr[i] = fArr2[i] + ((f2 - fArr2[i]) * f);
            }
            this.f4994c.setValues(this.f4993b);
            return this.f4994c;
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        f4989a = i >= 19;
        f4990b = i >= 18;
        f4991c = i >= 28;
    }

    /* renamed from: a */
    public static View m30817a(ViewGroup viewGroup, View view, View view2) {
        Matrix matrix = new Matrix();
        matrix.setTranslate(-view2.getScrollX(), -view2.getScrollY());
        C1144j0.m30865j(view, matrix);
        C1144j0.m30864k(viewGroup, matrix);
        RectF rectF = new RectF(0.0f, 0.0f, view.getWidth(), view.getHeight());
        matrix.mapRect(rectF);
        int round = Math.round(rectF.left);
        int round2 = Math.round(rectF.top);
        int round3 = Math.round(rectF.right);
        int round4 = Math.round(rectF.bottom);
        ImageView imageView = new ImageView(view.getContext());
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        Bitmap m30816b = m30816b(view, matrix, rectF, viewGroup);
        if (m30816b != null) {
            imageView.setImageBitmap(m30816b);
        }
        imageView.measure(View.MeasureSpec.makeMeasureSpec(round3 - round, 1073741824), View.MeasureSpec.makeMeasureSpec(round4 - round2, 1073741824));
        imageView.layout(round, round2, round3, round4);
        return imageView;
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x007a  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.graphics.Bitmap m30816b(android.view.View r5, android.graphics.Matrix r6, android.graphics.RectF r7, android.view.ViewGroup r8) {
        /*
            Method dump skipped, instructions count: 303
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.C1173x.m30816b(android.view.View, android.graphics.Matrix, android.graphics.RectF, android.view.ViewGroup):android.graphics.Bitmap");
    }

    /* renamed from: c */
    public static Animator m30815c(Animator animator, Animator animator2) {
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
}
