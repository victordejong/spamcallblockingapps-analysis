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
class C0515x {

    /* renamed from: a */
    private static final boolean f2771a;

    /* renamed from: b */
    private static final boolean f2772b;

    /* renamed from: c */
    private static final boolean f2773c;

    /* renamed from: androidx.transition.x$a */
    /* loaded from: classes-dex2jar.jar:androidx/transition/x$a.class */
    static class C0516a implements TypeEvaluator<Matrix> {

        /* renamed from: a */
        final float[] f2774a = new float[9];

        /* renamed from: b */
        final float[] f2775b = new float[9];

        /* renamed from: c */
        final Matrix f2776c = new Matrix();

        C0516a() {
        }

        /* renamed from: a */
        public Matrix evaluate(float f, Matrix matrix, Matrix matrix2) {
            matrix.getValues(this.f2774a);
            matrix2.getValues(this.f2775b);
            for (int i = 0; i < 9; i++) {
                float[] fArr = this.f2775b;
                float f2 = fArr[i];
                float[] fArr2 = this.f2774a;
                fArr[i] = fArr2[i] + ((f2 - fArr2[i]) * f);
            }
            this.f2776c.setValues(this.f2775b);
            return this.f2776c;
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        f2771a = i >= 19;
        f2772b = i >= 18;
        f2773c = i >= 28;
    }

    /* renamed from: a */
    static View m11978a(ViewGroup viewGroup, View view, View view2) {
        Matrix matrix = new Matrix();
        matrix.setTranslate(-view2.getScrollX(), -view2.getScrollY());
        C0497j0.m12014j(view, matrix);
        C0497j0.m12013k(viewGroup, matrix);
        RectF rectF = new RectF(0.0f, 0.0f, view.getWidth(), view.getHeight());
        matrix.mapRect(rectF);
        int round = Math.round(rectF.left);
        int round2 = Math.round(rectF.top);
        int round3 = Math.round(rectF.right);
        int round4 = Math.round(rectF.bottom);
        ImageView imageView = new ImageView(view.getContext());
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        Bitmap m11977b = m11977b(view, matrix, rectF, viewGroup);
        if (m11977b != null) {
            imageView.setImageBitmap(m11977b);
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
    private static android.graphics.Bitmap m11977b(android.view.View r5, android.graphics.Matrix r6, android.graphics.RectF r7, android.view.ViewGroup r8) {
        /*
            Method dump skipped, instructions count: 303
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.C0515x.m11977b(android.view.View, android.graphics.Matrix, android.graphics.RectF, android.view.ViewGroup):android.graphics.Bitmap");
    }

    /* renamed from: c */
    static Animator m11976c(Animator animator, Animator animator2) {
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
