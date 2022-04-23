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
import androidx.transition.w;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/transition/ChangeImageTransform.class */
public class ChangeImageTransform extends Transition {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f5703a = {"android:changeImageTransform:matrix", "android:changeImageTransform:bounds"};
    private static final TypeEvaluator<Matrix> k = new TypeEvaluator<Matrix>() { // from class: androidx.transition.ChangeImageTransform.1
        @Override // android.animation.TypeEvaluator
        public final /* bridge */ /* synthetic */ Matrix evaluate(float f, Matrix matrix, Matrix matrix2) {
            return null;
        }
    };
    private static final Property<ImageView, Matrix> l = new Property<ImageView, Matrix>(Matrix.class, "animatedTransform") { // from class: androidx.transition.ChangeImageTransform.2
        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ Matrix get(ImageView imageView) {
            return null;
        }

        @Override // android.util.Property
        public final /* synthetic */ void set(ImageView imageView, Matrix matrix) {
            j.a(imageView, matrix);
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.transition.ChangeImageTransform$3  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:androidx/transition/ChangeImageTransform$3.class */
    public static final /* synthetic */ class AnonymousClass3 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f5704a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            f5704a = iArr;
            try {
                iArr[ImageView.ScaleType.FIT_XY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f5704a[ImageView.ScaleType.CENTER_CROP.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public ChangeImageTransform() {
    }

    public ChangeImageTransform(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private static void d(x xVar) {
        Matrix matrix;
        View view = xVar.f5853b;
        if ((view instanceof ImageView) && view.getVisibility() == 0) {
            ImageView imageView = (ImageView) view;
            if (imageView.getDrawable() != null) {
                Map<String, Object> map = xVar.f5852a;
                map.put("android:changeImageTransform:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
                Drawable drawable = imageView.getDrawable();
                if (drawable.getIntrinsicWidth() <= 0 || drawable.getIntrinsicHeight() <= 0) {
                    matrix = new Matrix(imageView.getImageMatrix());
                } else {
                    int i = AnonymousClass3.f5704a[imageView.getScaleType().ordinal()];
                    if (i == 1) {
                        Drawable drawable2 = imageView.getDrawable();
                        matrix = new Matrix();
                        matrix.postScale(imageView.getWidth() / drawable2.getIntrinsicWidth(), imageView.getHeight() / drawable2.getIntrinsicHeight());
                    } else if (i != 2) {
                        matrix = new Matrix(imageView.getImageMatrix());
                    } else {
                        Drawable drawable3 = imageView.getDrawable();
                        int intrinsicWidth = drawable3.getIntrinsicWidth();
                        float width = imageView.getWidth();
                        float f = intrinsicWidth;
                        float f2 = width / f;
                        int intrinsicHeight = drawable3.getIntrinsicHeight();
                        float height = imageView.getHeight();
                        float f3 = intrinsicHeight;
                        float max = Math.max(f2, height / f3);
                        int round = Math.round((width - (f * max)) / 2.0f);
                        int round2 = Math.round((height - (f3 * max)) / 2.0f);
                        matrix = new Matrix();
                        matrix.postScale(max, max);
                        matrix.postTranslate(round, round2);
                    }
                }
                map.put("android:changeImageTransform:matrix", matrix);
            }
        }
    }

    @Override // androidx.transition.Transition
    public final Animator a(ViewGroup viewGroup, x xVar, x xVar2) {
        ObjectAnimator objectAnimator = null;
        if (xVar != null) {
            if (xVar2 == null) {
                objectAnimator = null;
            } else {
                Rect rect = (Rect) xVar.f5852a.get("android:changeImageTransform:bounds");
                Rect rect2 = (Rect) xVar2.f5852a.get("android:changeImageTransform:bounds");
                objectAnimator = null;
                if (rect != null) {
                    if (rect2 == null) {
                        objectAnimator = null;
                    } else {
                        Matrix matrix = (Matrix) xVar.f5852a.get("android:changeImageTransform:matrix");
                        Matrix matrix2 = (Matrix) xVar2.f5852a.get("android:changeImageTransform:matrix");
                        boolean z = (matrix == null && matrix2 == null) || (matrix != null && matrix.equals(matrix2));
                        if (rect.equals(rect2) && z) {
                            return null;
                        }
                        ImageView imageView = (ImageView) xVar2.f5853b;
                        Drawable drawable = imageView.getDrawable();
                        int intrinsicWidth = drawable.getIntrinsicWidth();
                        int intrinsicHeight = drawable.getIntrinsicHeight();
                        if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
                            objectAnimator = ObjectAnimator.ofObject(imageView, (Property<ImageView, V>) l, (TypeEvaluator) k, (Object[]) new Matrix[]{k.f5822a, k.f5822a});
                        } else {
                            Matrix matrix3 = matrix;
                            if (matrix == null) {
                                matrix3 = k.f5822a;
                            }
                            Matrix matrix4 = matrix2;
                            if (matrix2 == null) {
                                matrix4 = k.f5822a;
                            }
                            Property<ImageView, Matrix> property = l;
                            property.set(imageView, matrix3);
                            objectAnimator = ObjectAnimator.ofObject(imageView, (Property<ImageView, V>) property, (TypeEvaluator) new w.a(), (Object[]) new Matrix[]{matrix3, matrix4});
                        }
                    }
                }
            }
        }
        return objectAnimator;
    }

    @Override // androidx.transition.Transition
    public final void a(x xVar) {
        d(xVar);
    }

    @Override // androidx.transition.Transition
    public final String[] a() {
        return f5703a;
    }

    @Override // androidx.transition.Transition
    public final void b(x xVar) {
        d(xVar);
    }
}
