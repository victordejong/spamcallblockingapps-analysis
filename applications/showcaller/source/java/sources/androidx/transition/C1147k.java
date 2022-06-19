package androidx.transition;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.ImageView;
import java.lang.reflect.Field;
/* renamed from: androidx.transition.k */
/* loaded from: classes-dex2jar.jar:androidx/transition/k.class */
class C1147k {

    /* renamed from: a */
    private static boolean f4942a = true;

    /* renamed from: b */
    private static Field f4943b;

    /* renamed from: c */
    private static boolean f4944c;

    /* renamed from: a */
    public static void m30859a(ImageView imageView, Matrix matrix) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            imageView.animateTransform(matrix);
        } else if (matrix == null) {
            Drawable drawable = imageView.getDrawable();
            if (drawable == null) {
                return;
            }
            drawable.setBounds(0, 0, (imageView.getWidth() - imageView.getPaddingLeft()) - imageView.getPaddingRight(), (imageView.getHeight() - imageView.getPaddingTop()) - imageView.getPaddingBottom());
            imageView.invalidate();
        } else if (i >= 21) {
            m30857c(imageView, matrix);
        } else {
            Drawable drawable2 = imageView.getDrawable();
            if (drawable2 == null) {
                return;
            }
            drawable2.setBounds(0, 0, drawable2.getIntrinsicWidth(), drawable2.getIntrinsicHeight());
            Matrix matrix2 = null;
            m30858b();
            Field field = f4943b;
            if (field != null) {
                matrix2 = null;
                try {
                    Matrix matrix3 = (Matrix) field.get(imageView);
                    if (matrix3 == null) {
                        try {
                            Matrix matrix4 = new Matrix();
                            matrix2 = matrix4;
                            f4943b.set(imageView, matrix4);
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

    /* renamed from: b */
    private static void m30858b() {
        if (!f4944c) {
            try {
                Field declaredField = ImageView.class.getDeclaredField("mDrawMatrix");
                f4943b = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
            }
            f4944c = true;
        }
    }

    @SuppressLint({"NewApi"})
    /* renamed from: c */
    private static void m30857c(ImageView imageView, Matrix matrix) {
        if (f4942a) {
            try {
                imageView.animateTransform(matrix);
            } catch (NoSuchMethodError e) {
                f4942a = false;
            }
        }
    }
}
