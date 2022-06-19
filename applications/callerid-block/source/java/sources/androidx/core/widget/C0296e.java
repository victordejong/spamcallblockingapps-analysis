package androidx.core.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.ImageView;
/* renamed from: androidx.core.widget.e */
/* loaded from: classes-dex2jar.jar:androidx/core/widget/e.class */
public class C0296e {
    /* renamed from: a */
    public static ColorStateList m13413a(ImageView imageView) {
        if (Build.VERSION.SDK_INT >= 21) {
            return imageView.getImageTintList();
        }
        return imageView instanceof AbstractC0303l ? ((AbstractC0303l) imageView).getSupportImageTintList() : null;
    }

    /* renamed from: b */
    public static PorterDuff.Mode m13412b(ImageView imageView) {
        if (Build.VERSION.SDK_INT >= 21) {
            return imageView.getImageTintMode();
        }
        return imageView instanceof AbstractC0303l ? ((AbstractC0303l) imageView).getSupportImageTintMode() : null;
    }

    /* renamed from: c */
    public static void m13411c(ImageView imageView, ColorStateList colorStateList) {
        Drawable drawable;
        int i = Build.VERSION.SDK_INT;
        if (i < 21) {
            if (!(imageView instanceof AbstractC0303l)) {
                return;
            }
            ((AbstractC0303l) imageView).setSupportImageTintList(colorStateList);
            return;
        }
        imageView.setImageTintList(colorStateList);
        if (i != 21 || (drawable = imageView.getDrawable()) == null || imageView.getImageTintList() == null) {
            return;
        }
        if (drawable.isStateful()) {
            drawable.setState(imageView.getDrawableState());
        }
        imageView.setImageDrawable(drawable);
    }

    /* renamed from: d */
    public static void m13410d(ImageView imageView, PorterDuff.Mode mode) {
        Drawable drawable;
        int i = Build.VERSION.SDK_INT;
        if (i < 21) {
            if (!(imageView instanceof AbstractC0303l)) {
                return;
            }
            ((AbstractC0303l) imageView).setSupportImageTintMode(mode);
            return;
        }
        imageView.setImageTintMode(mode);
        if (i != 21 || (drawable = imageView.getDrawable()) == null || imageView.getImageTintList() == null) {
            return;
        }
        if (drawable.isStateful()) {
            drawable.setState(imageView.getDrawableState());
        }
        imageView.setImageDrawable(drawable);
    }
}
