package androidx.core.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.ImageView;
/* renamed from: androidx.core.widget.g */
/* loaded from: classes-dex2jar.jar:androidx/core/widget/g.class */
public class C0645g {
    /* renamed from: a */
    public static ColorStateList m33102a(ImageView imageView) {
        if (Build.VERSION.SDK_INT >= 21) {
            return imageView.getImageTintList();
        }
        return imageView instanceof AbstractC0656o ? ((AbstractC0656o) imageView).getSupportImageTintList() : null;
    }

    /* renamed from: b */
    public static PorterDuff.Mode m33101b(ImageView imageView) {
        if (Build.VERSION.SDK_INT >= 21) {
            return imageView.getImageTintMode();
        }
        return imageView instanceof AbstractC0656o ? ((AbstractC0656o) imageView).getSupportImageTintMode() : null;
    }

    /* renamed from: c */
    public static void m33100c(ImageView imageView, ColorStateList colorStateList) {
        Drawable drawable;
        int i = Build.VERSION.SDK_INT;
        if (i < 21) {
            if (!(imageView instanceof AbstractC0656o)) {
                return;
            }
            ((AbstractC0656o) imageView).setSupportImageTintList(colorStateList);
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
    public static void m33099d(ImageView imageView, PorterDuff.Mode mode) {
        Drawable drawable;
        int i = Build.VERSION.SDK_INT;
        if (i < 21) {
            if (!(imageView instanceof AbstractC0656o)) {
                return;
            }
            ((AbstractC0656o) imageView).setSupportImageTintMode(mode);
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
