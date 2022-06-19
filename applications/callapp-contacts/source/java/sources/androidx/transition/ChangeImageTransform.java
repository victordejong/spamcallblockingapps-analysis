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
import androidx.transition.C2912w;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/transition/ChangeImageTransform.class */
public class ChangeImageTransform extends Transition {

    /* renamed from: a */
    private static final String[] f10691a = {"android:changeImageTransform:matrix", "android:changeImageTransform:bounds"};

    /* renamed from: k */
    private static final TypeEvaluator<Matrix> f10692k = new TypeEvaluator<Matrix>() { // from class: androidx.transition.ChangeImageTransform.1
        @Override // android.animation.TypeEvaluator
        public final /* bridge */ /* synthetic */ Matrix evaluate(float f, Matrix matrix, Matrix matrix2) {
            return null;
        }
    };

    /* renamed from: l */
    private static final Property<ImageView, Matrix> f10693l = new Property<ImageView, Matrix>(Matrix.class, "animatedTransform") { // from class: androidx.transition.ChangeImageTransform.2
        @Override // android.util.Property
        public final /* bridge */ /* synthetic */ Matrix get(ImageView imageView) {
            return null;
        }

        @Override // android.util.Property
        public final /* synthetic */ void set(ImageView imageView, Matrix matrix) {
            C2895j.m39686a(imageView, matrix);
        }
    };

    /* renamed from: androidx.transition.ChangeImageTransform$3 */
    /* loaded from: classes-dex2jar.jar:androidx/transition/ChangeImageTransform$3.class */
    public static final /* synthetic */ class C28263 {

        /* renamed from: a */
        static final /* synthetic */ int[] f10694a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            f10694a = iArr;
            try {
                iArr[ImageView.ScaleType.FIT_XY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f10694a[ImageView.ScaleType.CENTER_CROP.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public ChangeImageTransform() {
    }

    public ChangeImageTransform(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: d */
    private static void m39835d(C2914x c2914x) {
        Matrix matrix;
        View view = c2914x.f10934b;
        if (!(view instanceof ImageView) || view.getVisibility() != 0) {
            return;
        }
        ImageView imageView = (ImageView) view;
        if (imageView.getDrawable() == null) {
            return;
        }
        Map<String, Object> map = c2914x.f10933a;
        map.put("android:changeImageTransform:bounds", new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        Drawable drawable = imageView.getDrawable();
        if (drawable.getIntrinsicWidth() <= 0 || drawable.getIntrinsicHeight() <= 0) {
            matrix = new Matrix(imageView.getImageMatrix());
        } else {
            int i = C28263.f10694a[imageView.getScaleType().ordinal()];
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

    @Override // androidx.transition.Transition
    /* renamed from: a */
    public final Animator mo10514a(ViewGroup viewGroup, C2914x c2914x, C2914x c2914x2) {
        ObjectAnimator objectAnimator = null;
        if (c2914x != null) {
            if (c2914x2 == null) {
                objectAnimator = null;
            } else {
                Rect rect = (Rect) c2914x.f10933a.get("android:changeImageTransform:bounds");
                Rect rect2 = (Rect) c2914x2.f10933a.get("android:changeImageTransform:bounds");
                objectAnimator = null;
                if (rect != null) {
                    if (rect2 == null) {
                        objectAnimator = null;
                    } else {
                        Matrix matrix = (Matrix) c2914x.f10933a.get("android:changeImageTransform:matrix");
                        Matrix matrix2 = (Matrix) c2914x2.f10933a.get("android:changeImageTransform:matrix");
                        boolean z = (matrix == null && matrix2 == null) || (matrix != null && matrix.equals(matrix2));
                        if (rect.equals(rect2) && z) {
                            return null;
                        }
                        ImageView imageView = (ImageView) c2914x2.f10934b;
                        Drawable drawable = imageView.getDrawable();
                        int intrinsicWidth = drawable.getIntrinsicWidth();
                        int intrinsicHeight = drawable.getIntrinsicHeight();
                        if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
                            objectAnimator = ObjectAnimator.ofObject(imageView, (Property<ImageView, V>) f10693l, (TypeEvaluator) f10692k, (Object[]) new Matrix[]{C2896k.f10891a, C2896k.f10891a});
                        } else {
                            Matrix matrix3 = matrix;
                            if (matrix == null) {
                                matrix3 = C2896k.f10891a;
                            }
                            Matrix matrix4 = matrix2;
                            if (matrix2 == null) {
                                matrix4 = C2896k.f10891a;
                            }
                            Property<ImageView, Matrix> property = f10693l;
                            property.set(imageView, matrix3);
                            objectAnimator = ObjectAnimator.ofObject(imageView, (Property<ImageView, V>) property, (TypeEvaluator) new C2912w.C2913a(), (Object[]) new Matrix[]{matrix3, matrix4});
                        }
                    }
                }
            }
        }
        return objectAnimator;
    }

    @Override // androidx.transition.Transition
    /* renamed from: a */
    public final void mo10513a(C2914x c2914x) {
        m39835d(c2914x);
    }

    @Override // androidx.transition.Transition
    /* renamed from: a */
    public final String[] mo39768a() {
        return f10691a;
    }

    @Override // androidx.transition.Transition
    /* renamed from: b */
    public final void mo10512b(C2914x c2914x) {
        m39835d(c2914x);
    }
}
