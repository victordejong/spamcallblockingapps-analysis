package androidx.core.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.ImageView;
/* renamed from: androidx.core.widget.e */
/* loaded from: classes-dex2jar.jar:androidx/core/widget/e.class */
public class C0601e {
    /* renamed from: a */
    public static ColorStateList m5992a(ImageView imageView) {
        if (Build.VERSION.SDK_INT >= 21) {
            return imageView.getImageTintList();
        }
        return imageView instanceof AbstractC0609l ? ((AbstractC0609l) imageView).getSupportImageTintList() : null;
    }

    /* renamed from: a */
    public static void m5991a(ImageView imageView, ColorStateList colorStateList) {
        Drawable drawable;
        if (Build.VERSION.SDK_INT < 21) {
            if (!(imageView instanceof AbstractC0609l)) {
                return;
            }
            ((AbstractC0609l) imageView).setSupportImageTintList(colorStateList);
            return;
        }
        imageView.setImageTintList(colorStateList);
        if (Build.VERSION.SDK_INT != 21 || (drawable = imageView.getDrawable()) == null || imageView.getImageTintList() == null) {
            return;
        }
        if (drawable.isStateful()) {
            drawable.setState(imageView.getDrawableState());
        }
        imageView.setImageDrawable(drawable);
    }

    /* renamed from: a */
    public static void m5990a(ImageView imageView, PorterDuff.Mode mode) {
        Drawable drawable;
        if (Build.VERSION.SDK_INT < 21) {
            if (!(imageView instanceof AbstractC0609l)) {
                return;
            }
            ((AbstractC0609l) imageView).setSupportImageTintMode(mode);
            return;
        }
        imageView.setImageTintMode(mode);
        if (Build.VERSION.SDK_INT != 21 || (drawable = imageView.getDrawable()) == null || imageView.getImageTintList() == null) {
            return;
        }
        if (drawable.isStateful()) {
            drawable.setState(imageView.getDrawableState());
        }
        imageView.setImageDrawable(drawable);
    }

    /* renamed from: b */
    public static PorterDuff.Mode m5989b(ImageView imageView) {
        if (Build.VERSION.SDK_INT >= 21) {
            return imageView.getImageTintMode();
        }
        return imageView instanceof AbstractC0609l ? ((AbstractC0609l) imageView).getSupportImageTintMode() : null;
    }
}
