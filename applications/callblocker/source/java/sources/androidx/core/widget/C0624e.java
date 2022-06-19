package androidx.core.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.ImageView;
/* renamed from: androidx.core.widget.e */
/* loaded from: classes-dex2jar.jar:androidx/core/widget/e.class */
public class C0624e {
    /* renamed from: a */
    public static ColorStateList m20158a(ImageView imageView) {
        return Build.VERSION.SDK_INT >= 21 ? imageView.getImageTintList() : imageView instanceof AbstractC0632l ? ((AbstractC0632l) imageView).getSupportImageTintList() : null;
    }

    /* renamed from: a */
    public static void m20157a(ImageView imageView, ColorStateList colorStateList) {
        Drawable drawable;
        if (Build.VERSION.SDK_INT < 21) {
            if (!(imageView instanceof AbstractC0632l)) {
                return;
            }
            ((AbstractC0632l) imageView).setSupportImageTintList(colorStateList);
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
    public static void m20156a(ImageView imageView, PorterDuff.Mode mode) {
        Drawable drawable;
        if (Build.VERSION.SDK_INT < 21) {
            if (!(imageView instanceof AbstractC0632l)) {
                return;
            }
            ((AbstractC0632l) imageView).setSupportImageTintMode(mode);
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
    public static PorterDuff.Mode m20155b(ImageView imageView) {
        return Build.VERSION.SDK_INT >= 21 ? imageView.getImageTintMode() : imageView instanceof AbstractC0632l ? ((AbstractC0632l) imageView).getSupportImageTintMode() : null;
    }
}
