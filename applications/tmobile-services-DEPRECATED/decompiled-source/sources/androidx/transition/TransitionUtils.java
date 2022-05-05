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
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/transition/TransitionUtils.class */
public class TransitionUtils {

    /* renamed from: a */
    private static final boolean f5265a;

    /* renamed from: b */
    private static final boolean f5266b;

    /* renamed from: c */
    private static final boolean f5267c;

    /* loaded from: classes-dex2jar.jar:androidx/transition/TransitionUtils$MatrixEvaluator.class */
    static class MatrixEvaluator implements TypeEvaluator<Matrix> {

        /* renamed from: a */
        final float[] f5268a = new float[9];

        /* renamed from: b */
        final float[] f5269b = new float[9];

        /* renamed from: c */
        final Matrix f5270c = new Matrix();

        /* renamed from: a */
        public Matrix evaluate(float f, Matrix matrix, Matrix matrix2) {
            matrix.getValues(this.f5268a);
            matrix2.getValues(this.f5269b);
            for (int i = 0; i < 9; i++) {
                float[] fArr = this.f5269b;
                float f2 = fArr[i];
                float[] fArr2 = this.f5268a;
                fArr[i] = fArr2[i] + ((f2 - fArr2[i]) * f);
            }
            this.f5270c.setValues(this.f5269b);
            return this.f5270c;
        }
    }

    static {
        boolean z = true;
        f5265a = Build.VERSION.SDK_INT >= 19;
        f5266b = Build.VERSION.SDK_INT >= 18;
        if (Build.VERSION.SDK_INT < 28) {
            z = false;
        }
        f5267c = z;
    }

    private TransitionUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static View m16716a(ViewGroup viewGroup, View view, View view2) {
        Matrix matrix = new Matrix();
        matrix.setTranslate(-view2.getScrollX(), -view2.getScrollY());
        ViewUtils.m16682j(view, matrix);
        ViewUtils.m16681k(viewGroup, matrix);
        RectF rectF = new RectF(0.0f, 0.0f, view.getWidth(), view.getHeight());
        matrix.mapRect(rectF);
        int round = Math.round(rectF.left);
        int round2 = Math.round(rectF.top);
        int round3 = Math.round(rectF.right);
        int round4 = Math.round(rectF.bottom);
        ImageView imageView = new ImageView(view.getContext());
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        Bitmap b = m16715b(view, matrix, rectF, viewGroup);
        if (b != null) {
            imageView.setImageBitmap(b);
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
    private static android.graphics.Bitmap m16715b(android.view.View r5, android.graphics.Matrix r6, android.graphics.RectF r7, android.view.ViewGroup r8) {
        /*
            Method dump skipped, instructions count: 304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.transition.TransitionUtils.m16715b(android.view.View, android.graphics.Matrix, android.graphics.RectF, android.view.ViewGroup):android.graphics.Bitmap");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static Animator m16714c(Animator animator, Animator animator2) {
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
