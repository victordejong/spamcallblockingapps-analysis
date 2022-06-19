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
import androidx.transition.C1173x;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/transition/ChangeImageTransform.class */
public class ChangeImageTransform extends Transition {

    /* renamed from: N */
    private static final String[] f4753N = {"android:changeImageTransform:matrix", "android:changeImageTransform:bounds"};

    /* renamed from: O */
    private static final TypeEvaluator<Matrix> f4754O = new C1085a();

    /* renamed from: P */
    private static final Property<ImageView, Matrix> f4755P = new C1086b(Matrix.class, "animatedTransform");

    /* renamed from: androidx.transition.ChangeImageTransform$a */
    /* loaded from: classes-dex2jar.jar:androidx/transition/ChangeImageTransform$a.class */
    static final class C1085a implements TypeEvaluator<Matrix> {
        C1085a() {
        }

        /* renamed from: a */
        public Matrix evaluate(float f, Matrix matrix, Matrix matrix2) {
            return null;
        }
    }

    /* renamed from: androidx.transition.ChangeImageTransform$b */
    /* loaded from: classes-dex2jar.jar:androidx/transition/ChangeImageTransform$b.class */
    static final class C1086b extends Property<ImageView, Matrix> {
        C1086b(Class cls, String str) {
            super(cls, str);
        }

        /* renamed from: a */
        public Matrix get(ImageView imageView) {
            return null;
        }

        /* renamed from: b */
        public void set(ImageView imageView, Matrix matrix) {
            C1147k.m30859a(imageView, matrix);
        }
    }

    /* renamed from: androidx.transition.ChangeImageTransform$c */
    /* loaded from: classes-dex2jar.jar:androidx/transition/ChangeImageTransform$c.class */
    public static /* synthetic */ class C1087c {

        /* renamed from: a */
        static final /* synthetic */ int[] f4756a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            f4756a = iArr;
            try {
                iArr[ImageView.ScaleType.FIT_XY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f4756a[ImageView.ScaleType.CENTER_CROP.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public ChangeImageTransform() {
    }

    public ChangeImageTransform(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: m0 */
    private void m31059m0(C1175y c1175y) {
        View view = c1175y.f4996b;
        if (!(view instanceof ImageView) || view.getVisibility() != 0) {
            return;
        }
        ImageView imageView = (ImageView) view;
        if (imageView.getDrawable() == null) {
            return;
        }
        Map<String, Object> map = c1175y.f4995a;
        map.put("android:changeImageTransform:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        map.put("android:changeImageTransform:matrix", m31057o0(imageView));
    }

    /* renamed from: n0 */
    private static Matrix m31058n0(ImageView imageView) {
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

    /* renamed from: o0 */
    private static Matrix m31057o0(ImageView imageView) {
        Drawable drawable = imageView.getDrawable();
        if (drawable.getIntrinsicWidth() > 0 && drawable.getIntrinsicHeight() > 0) {
            int i = C1087c.f4756a[imageView.getScaleType().ordinal()];
            if (i == 1) {
                return m31054r0(imageView);
            }
            if (i == 2) {
                return m31058n0(imageView);
            }
        }
        return new Matrix(imageView.getImageMatrix());
    }

    /* renamed from: p0 */
    private ObjectAnimator m31056p0(ImageView imageView, Matrix matrix, Matrix matrix2) {
        return ObjectAnimator.ofObject(imageView, (Property<ImageView, V>) f4755P, (TypeEvaluator) new C1173x.C1174a(), (Object[]) new Matrix[]{matrix, matrix2});
    }

    /* renamed from: q0 */
    private ObjectAnimator m31055q0(ImageView imageView) {
        Property<ImageView, Matrix> property = f4755P;
        TypeEvaluator<Matrix> typeEvaluator = f4754O;
        Matrix matrix = C1149l.f4946a;
        return ObjectAnimator.ofObject(imageView, (Property<ImageView, V>) property, (TypeEvaluator) typeEvaluator, (Object[]) new Matrix[]{matrix, matrix});
    }

    /* renamed from: r0 */
    private static Matrix m31054r0(ImageView imageView) {
        Drawable drawable = imageView.getDrawable();
        Matrix matrix = new Matrix();
        matrix.postScale(imageView.getWidth() / drawable.getIntrinsicWidth(), imageView.getHeight() / drawable.getIntrinsicHeight());
        return matrix;
    }

    @Override // androidx.transition.Transition
    /* renamed from: J */
    public String[] mo30953J() {
        return f4753N;
    }

    @Override // androidx.transition.Transition
    /* renamed from: i */
    public void mo4473i(C1175y c1175y) {
        m31059m0(c1175y);
    }

    @Override // androidx.transition.Transition
    /* renamed from: m */
    public void mo4472m(C1175y c1175y) {
        m31059m0(c1175y);
    }

    @Override // androidx.transition.Transition
    /* renamed from: q */
    public Animator mo4470q(ViewGroup viewGroup, C1175y c1175y, C1175y c1175y2) {
        ObjectAnimator objectAnimator = null;
        if (c1175y != null) {
            if (c1175y2 == null) {
                objectAnimator = null;
            } else {
                Rect rect = (Rect) c1175y.f4995a.get("android:changeImageTransform:bounds");
                Rect rect2 = (Rect) c1175y2.f4995a.get("android:changeImageTransform:bounds");
                objectAnimator = null;
                if (rect != null) {
                    if (rect2 == null) {
                        objectAnimator = null;
                    } else {
                        Matrix matrix = (Matrix) c1175y.f4995a.get("android:changeImageTransform:matrix");
                        Matrix matrix2 = (Matrix) c1175y2.f4995a.get("android:changeImageTransform:matrix");
                        boolean z = (matrix == null && matrix2 == null) || (matrix != null && matrix.equals(matrix2));
                        if (rect.equals(rect2) && z) {
                            return null;
                        }
                        ImageView imageView = (ImageView) c1175y2.f4996b;
                        Drawable drawable = imageView.getDrawable();
                        int intrinsicWidth = drawable.getIntrinsicWidth();
                        int intrinsicHeight = drawable.getIntrinsicHeight();
                        if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
                            objectAnimator = m31055q0(imageView);
                        } else {
                            Matrix matrix3 = matrix;
                            if (matrix == null) {
                                matrix3 = C1149l.f4946a;
                            }
                            Matrix matrix4 = matrix2;
                            if (matrix2 == null) {
                                matrix4 = C1149l.f4946a;
                            }
                            f4755P.set(imageView, matrix3);
                            objectAnimator = m31056p0(imageView, matrix3, matrix4);
                        }
                    }
                }
            }
        }
        return objectAnimator;
    }
}
