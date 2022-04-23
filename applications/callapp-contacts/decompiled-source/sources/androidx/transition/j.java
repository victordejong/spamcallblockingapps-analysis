package androidx.transition;

import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.ImageView;
import java.lang.reflect.Field;
/* loaded from: classes-dex2jar.jar:androidx/transition/j.class */
final class j {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f5819a = true;

    /* renamed from: b  reason: collision with root package name */
    private static Field f5820b;

    /* renamed from: c  reason: collision with root package name */
    private static boolean f5821c;

    private j() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(ImageView imageView, Matrix matrix) {
        if (Build.VERSION.SDK_INT >= 29) {
            imageView.animateTransform(matrix);
        } else if (matrix == null) {
            Drawable drawable = imageView.getDrawable();
            if (drawable != null) {
                drawable.setBounds(0, 0, (imageView.getWidth() - imageView.getPaddingLeft()) - imageView.getPaddingRight(), (imageView.getHeight() - imageView.getPaddingTop()) - imageView.getPaddingBottom());
                imageView.invalidate();
            }
        } else if (Build.VERSION.SDK_INT < 21) {
            Drawable drawable2 = imageView.getDrawable();
            if (drawable2 != null) {
                drawable2.setBounds(0, 0, drawable2.getIntrinsicWidth(), drawable2.getIntrinsicHeight());
                Matrix matrix2 = null;
                matrix2 = null;
                if (!f5821c) {
                    try {
                        Field declaredField = ImageView.class.getDeclaredField("mDrawMatrix");
                        f5820b = declaredField;
                        declaredField.setAccessible(true);
                    } catch (NoSuchFieldException e) {
                    }
                    f5821c = true;
                }
                Field field = f5820b;
                if (field != null) {
                    try {
                        Matrix matrix3 = (Matrix) field.get(imageView);
                        if (matrix3 == null) {
                            try {
                                Matrix matrix4 = new Matrix();
                                matrix2 = matrix4;
                                f5820b.set(imageView, matrix4);
                                matrix2 = matrix4;
                            } catch (IllegalAccessException e2) {
                            }
                        }
                        matrix2 = matrix3;
                    } catch (IllegalAccessException e3) {
                    }
                }
                if (matrix2 != null) {
                    matrix2.set(matrix);
                }
                imageView.invalidate();
            }
        } else if (f5819a) {
            try {
                imageView.animateTransform(matrix);
            } catch (NoSuchMethodError e4) {
                f5819a = false;
            }
        }
    }
}
