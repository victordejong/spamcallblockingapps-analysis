package androidx.transition;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.TypeEvaluator;
import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.transition.TransitionUtils;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/transition/ChangeImageTransform.class */
public class ChangeImageTransform extends Transition {

    /* renamed from: O */
    private static final String[] f5103O = {"android:changeImageTransform:matrix", "android:changeImageTransform:bounds"};

    /* renamed from: P */
    private static final TypeEvaluator<Matrix> f5104P = new TypeEvaluator<Matrix>() { // from class: androidx.transition.ChangeImageTransform.1
        /* renamed from: a */
        public Matrix evaluate(float f, Matrix matrix, Matrix matrix2) {
            return null;
        }
    };

    /* renamed from: Q */
    private static final Property<ImageView, Matrix> f5105Q = new Property<ImageView, Matrix>(Matrix.class, "animatedTransform") { // from class: androidx.transition.ChangeImageTransform.2
        /* renamed from: a */
        public Matrix get(ImageView imageView) {
            return null;
        }

        /* renamed from: b */
        public void set(ImageView imageView, Matrix matrix) {
            ImageViewUtils.m16810a(imageView, matrix);
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.transition.ChangeImageTransform$3 */
    /* loaded from: classes-dex2jar.jar:androidx/transition/ChangeImageTransform$3.class */
    public static /* synthetic */ class C05313 {

        /* renamed from: a */
        static final /* synthetic */ int[] f5106a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            f5106a = iArr;
            try {
                iArr[ImageView.ScaleType.FIT_XY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f5106a[ImageView.ScaleType.CENTER_CROP.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public ChangeImageTransform() {
    }

    public ChangeImageTransform(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: p0 */
    private void m16884p0(TransitionValues transitionValues) {
        View view = transitionValues.f5272b;
        if ((view instanceof ImageView) && view.getVisibility() == 0) {
            ImageView imageView = (ImageView) view;
            if (imageView.getDrawable() != null) {
                Map<String, Object> map = transitionValues.f5271a;
                map.put("android:changeImageTransform:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
                map.put("android:changeImageTransform:matrix", m16882r0(imageView));
            }
        }
    }

    /* renamed from: q0 */
    private static Matrix m16883q0(ImageView imageView) {
        Drawable drawable = imageView.getDrawable();
        int intrinsicWidth = drawable.getIntrinsicWidth();
        float width = imageView.getWidth();
        float f = intrinsicWidth;
        float f2 = width / f;
        int intrinsicHeight = drawable.getIntrinsicHeight();
        float height = imageView.getHeight();
        float f3 = intrinsicHeight;
        float max = Math.max(f2, height / f3);
        int round = Math.round((width - (f * max)) / 2.0f);
        int round2 = Math.round((height - (f3 * max)) / 2.0f);
        Matrix matrix = new Matrix();
        matrix.postScale(max, max);
        matrix.postTranslate(round, round2);
        return matrix;
    }

    @NonNull
    /* renamed from: r0 */
    private static Matrix m16882r0(@NonNull ImageView imageView) {
        Drawable drawable = imageView.getDrawable();
        if (drawable.getIntrinsicWidth() > 0 && drawable.getIntrinsicHeight() > 0) {
            int i = C05313.f5106a[imageView.getScaleType().ordinal()];
            if (i == 1) {
                return m16879u0(imageView);
            }
            if (i == 2) {
                return m16883q0(imageView);
            }
        }
        return new Matrix(imageView.getImageMatrix());
    }

    /* renamed from: s0 */
    private ObjectAnimator m16881s0(ImageView imageView, Matrix matrix, Matrix matrix2) {
        return ObjectAnimator.ofObject(imageView, (Property<ImageView, V>) f5105Q, (TypeEvaluator) new TransitionUtils.MatrixEvaluator(), (Object[]) new Matrix[]{matrix, matrix2});
    }

    @NonNull
    /* renamed from: t0 */
    private ObjectAnimator m16880t0(@NonNull ImageView imageView) {
        Property<ImageView, Matrix> property = f5105Q;
        TypeEvaluator<Matrix> typeEvaluator = f5104P;
        Matrix matrix = MatrixUtils.f5176a;
        return ObjectAnimator.ofObject(imageView, (Property<ImageView, V>) property, (TypeEvaluator) typeEvaluator, (Object[]) new Matrix[]{matrix, matrix});
    }

    /* renamed from: u0 */
    private static Matrix m16879u0(ImageView imageView) {
        Drawable drawable = imageView.getDrawable();
        Matrix matrix = new Matrix();
        matrix.postScale(imageView.getWidth() / drawable.getIntrinsicWidth(), imageView.getHeight() / drawable.getIntrinsicHeight());
        return matrix;
    }

    @Override // androidx.transition.Transition
    /* renamed from: J */
    public String[] mo8629J() {
        return f5103O;
    }

    @Override // androidx.transition.Transition
    /* renamed from: i */
    public void mo8628i(@NonNull TransitionValues transitionValues) {
        m16884p0(transitionValues);
    }

    @Override // androidx.transition.Transition
    /* renamed from: m */
    public void mo8627m(@NonNull TransitionValues transitionValues) {
        m16884p0(transitionValues);
    }

    @Override // androidx.transition.Transition
    /* renamed from: q */
    public Animator mo8625q(@NonNull ViewGroup viewGroup, TransitionValues transitionValues, TransitionValues transitionValues2) {
        ObjectAnimator objectAnimator = null;
        if (transitionValues != null) {
            if (transitionValues2 == null) {
                objectAnimator = null;
            } else {
                Rect rect = (Rect) transitionValues.f5271a.get("android:changeImageTransform:bounds");
                Rect rect2 = (Rect) transitionValues2.f5271a.get("android:changeImageTransform:bounds");
                objectAnimator = null;
                if (rect != null) {
                    if (rect2 == null) {
                        objectAnimator = null;
                    } else {
                        Matrix matrix = (Matrix) transitionValues.f5271a.get("android:changeImageTransform:matrix");
                        Matrix matrix2 = (Matrix) transitionValues2.f5271a.get("android:changeImageTransform:matrix");
                        boolean z = (matrix == null && matrix2 == null) || (matrix != null && matrix.equals(matrix2));
                        if (rect.equals(rect2) && z) {
                            return null;
                        }
                        ImageView imageView = (ImageView) transitionValues2.f5272b;
                        Drawable drawable = imageView.getDrawable();
                        int intrinsicWidth = drawable.getIntrinsicWidth();
                        int intrinsicHeight = drawable.getIntrinsicHeight();
                        if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
                            objectAnimator = m16880t0(imageView);
                        } else {
                            Matrix matrix3 = matrix;
                            if (matrix == null) {
                                matrix3 = MatrixUtils.f5176a;
                            }
                            Matrix matrix4 = matrix2;
                            if (matrix2 == null) {
                                matrix4 = MatrixUtils.f5176a;
                            }
                            f5105Q.set(imageView, matrix3);
                            objectAnimator = m16881s0(imageView, matrix3, matrix4);
                        }
                    }
                }
            }
        }
        return objectAnimator;
    }
}
