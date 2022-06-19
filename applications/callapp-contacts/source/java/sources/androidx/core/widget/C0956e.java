package androidx.core.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.ImageView;
/* renamed from: androidx.core.widget.e */
/* loaded from: classes-dex2jar.jar:androidx/core/widget/e.class */
public final class C0956e {
    private C0956e() {
    }

    /* renamed from: a */
    public static ColorStateList m43974a(ImageView imageView) {
        if (Build.VERSION.SDK_INT >= 21) {
            return imageView.getImageTintList();
        }
        if (!(imageView instanceof AbstractC0963k)) {
            return null;
        }
        return ((AbstractC0963k) imageView).getSupportImageTintList();
    }

    /* renamed from: a */
    public static void m43973a(ImageView imageView, ColorStateList colorStateList) {
        Drawable drawable;
        if (Build.VERSION.SDK_INT < 21) {
            if (!(imageView instanceof AbstractC0963k)) {
                return;
            }
            ((AbstractC0963k) imageView).setSupportImageTintList(colorStateList);
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
    public static void m43972a(ImageView imageView, PorterDuff.Mode mode) {
        Drawable drawable;
        if (Build.VERSION.SDK_INT < 21) {
            if (!(imageView instanceof AbstractC0963k)) {
                return;
            }
            ((AbstractC0963k) imageView).setSupportImageTintMode(mode);
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
    public static PorterDuff.Mode m43971b(ImageView imageView) {
        if (Build.VERSION.SDK_INT >= 21) {
            return imageView.getImageTintMode();
        }
        if (!(imageView instanceof AbstractC0963k)) {
            return null;
        }
        return ((AbstractC0963k) imageView).getSupportImageTintMode();
    }
}
