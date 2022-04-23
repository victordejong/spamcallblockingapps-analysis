package androidx.transition;

import android.annotation.SuppressLint;
import android.graphics.Matrix;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.ImageView;
import java.lang.reflect.Field;
/* renamed from: androidx.transition.k */
/* loaded from: classes-dex2jar.jar:androidx/transition/k.class */
class C0500k {

    /* renamed from: a */
    private static boolean f2739a = true;

    /* renamed from: b */
    private static Field f2740b;

    /* renamed from: c */
    private static boolean f2741c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m12008a(ImageView imageView, Matrix matrix) {
        int i = Build.VERSION.SDK_INT;
        if (i >= 29) {
            imageView.animateTransform(matrix);
            return;
        }
        if (matrix == null) {
            Drawable drawable = imageView.getDrawable();
            if (drawable != null) {
                drawable.setBounds(0, 0, (imageView.getWidth() - imageView.getPaddingLeft()) - imageView.getPaddingRight(), (imageView.getHeight() - imageView.getPaddingTop()) - imageView.getPaddingBottom());
            } else {
                return;
            }
        } else if (i >= 21) {
            m12006c(imageView, matrix);
            return;
        } else {
            Drawable drawable2 = imageView.getDrawable();
            if (drawable2 != null) {
                drawable2.setBounds(0, 0, drawable2.getIntrinsicWidth(), drawable2.getIntrinsicHeight());
                Matrix matrix2 = null;
                matrix2 = null;
                m12007b();
                Field field = f2740b;
                if (field != null) {
                    try {
                        Matrix matrix3 = (Matrix) field.get(imageView);
                        if (matrix3 == null) {
                            try {
                                Matrix matrix4 = new Matrix();
                                matrix2 = matrix4;
                                f2740b.set(imageView, matrix4);
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
            } else {
                return;
            }
        }
        imageView.invalidate();
    }

    /* renamed from: b */
    private static void m12007b() {
        if (!f2741c) {
            try {
                Field declaredField = ImageView.class.getDeclaredField("mDrawMatrix");
                f2740b = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e) {
            }
            f2741c = true;
        }
    }

    @SuppressLint({"NewApi"})
    /* renamed from: c */
    private static void m12006c(ImageView imageView, Matrix matrix) {
        if (f2739a) {
            try {
                imageView.animateTransform(matrix);
            } catch (NoSuchMethodError e) {
                f2739a = false;
            }
        }
    }
}
