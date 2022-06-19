package androidx.transition;

import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.ImageView;
import java.lang.reflect.Field;
/* loaded from: classes-dex2jar.jar:androidx/transition/ImageViewUtils.class */
class ImageViewUtils {
    private static Field sDrawMatrixField;
    private static boolean sDrawMatrixFieldFetched = false;
    private static boolean sTryHiddenAnimateTransform = true;

    private ImageViewUtils() {
    }

    public static void animateTransform(ImageView imageView, Matrix matrix) {
        if (Build.VERSION.SDK_INT >= 29) {
            imageView.animateTransform(matrix);
        } else if (matrix == null) {
            Drawable drawable = imageView.getDrawable();
            if (drawable == null) {
                return;
            }
            drawable.setBounds(0, 0, (imageView.getWidth() - imageView.getPaddingLeft()) - imageView.getPaddingRight(), (imageView.getHeight() - imageView.getPaddingTop()) - imageView.getPaddingBottom());
            imageView.invalidate();
        } else if (Build.VERSION.SDK_INT >= 21) {
            hiddenAnimateTransform(imageView, matrix);
        } else {
            Drawable drawable2 = imageView.getDrawable();
            if (drawable2 == null) {
                return;
            }
            drawable2.setBounds(0, 0, drawable2.getIntrinsicWidth(), drawable2.getIntrinsicHeight());
            Matrix matrix2 = null;
            fetchDrawMatrixField();
            Field field = sDrawMatrixField;
            if (field != null) {
                matrix2 = null;
                try {
                    Matrix matrix3 = (Matrix) field.get(imageView);
                    if (matrix3 == null) {
                        try {
                            Matrix matrix4 = new Matrix();
                            matrix2 = matrix4;
                            sDrawMatrixField.set(imageView, matrix4);
                            matrix2 = matrix4;
                        } catch (IllegalAccessException e) {
                        }
                    }
                    matrix2 = matrix3;
                } catch (IllegalAccessException e2) {
                }
            }
            if (matrix2 != null) {
                matrix2.set(matrix);
            }
            imageView.invalidate();
        }
    }

    private static void fetchDrawMatrixField() {
        if (!sDrawMatrixFieldFetched) {
            try {
                Field declaredField = ImageView.class.getDeclaredField("mDrawMatrix");
                sDrawMatrixField = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
            }
            sDrawMatrixFieldFetched = true;
        }
    }

    private static void hiddenAnimateTransform(ImageView imageView, Matrix matrix) {
        if (sTryHiddenAnimateTransform) {
            try {
                imageView.animateTransform(matrix);
            } catch (NoSuchMethodError e) {
                sTryHiddenAnimateTransform = false;
            }
        }
    }
}
