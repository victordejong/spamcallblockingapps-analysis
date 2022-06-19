package androidx.transition;

import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.ImageView;
import java.lang.reflect.Field;
/* renamed from: androidx.transition.j */
/* loaded from: classes-dex2jar.jar:androidx/transition/j.class */
final class C2895j {

    /* renamed from: a */
    private static boolean f10888a = true;

    /* renamed from: b */
    private static Field f10889b;

    /* renamed from: c */
    private static boolean f10890c;

    private C2895j() {
    }

    /* renamed from: a */
    public static void m39686a(ImageView imageView, Matrix matrix) {
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
            if (!f10888a) {
                return;
            }
            try {
                imageView.animateTransform(matrix);
            } catch (NoSuchMethodError e) {
                f10888a = false;
            }
        } else {
            Drawable drawable2 = imageView.getDrawable();
            if (drawable2 == null) {
                return;
            }
            drawable2.setBounds(0, 0, drawable2.getIntrinsicWidth(), drawable2.getIntrinsicHeight());
            Matrix matrix2 = null;
            if (!f10890c) {
                try {
                    Field declaredField = ImageView.class.getDeclaredField("mDrawMatrix");
                    f10889b = declaredField;
                    declaredField.setAccessible(true);
                } catch (NoSuchFieldException e2) {
                }
                f10890c = true;
            }
            Field field = f10889b;
            if (field != null) {
                matrix2 = null;
                try {
                    Matrix matrix3 = (Matrix) field.get(imageView);
                    if (matrix3 == null) {
                        try {
                            Matrix matrix4 = new Matrix();
                            matrix2 = matrix4;
                            f10889b.set(imageView, matrix4);
                            matrix2 = matrix4;
                        } catch (IllegalAccessException e3) {
                        }
                    }
                    matrix2 = matrix3;
                } catch (IllegalAccessException e4) {
                }
            }
            if (matrix2 != null) {
                matrix2.set(matrix);
            }
            imageView.invalidate();
        }
    }
}
