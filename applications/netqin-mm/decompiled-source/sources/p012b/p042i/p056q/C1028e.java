package p012b.p042i.p056q;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.ImageView;
/* renamed from: b.i.q.e */
/* loaded from: classes-dex2jar.jar:b/i/q/e.class */
public class C1028e {
    /* renamed from: a */
    public static ColorStateList m35115a(ImageView imageView) {
        if (Build.VERSION.SDK_INT >= 21) {
            return imageView.getImageTintList();
        }
        return imageView instanceof AbstractC1036l ? ((AbstractC1036l) imageView).getSupportImageTintList() : null;
    }

    /* renamed from: a */
    public static void m35114a(ImageView imageView, ColorStateList colorStateList) {
        Drawable drawable;
        if (Build.VERSION.SDK_INT >= 21) {
            imageView.setImageTintList(colorStateList);
            if (Build.VERSION.SDK_INT == 21 && (drawable = imageView.getDrawable()) != null && imageView.getImageTintList() != null) {
                if (drawable.isStateful()) {
                    drawable.setState(imageView.getDrawableState());
                }
                imageView.setImageDrawable(drawable);
            }
        } else if (imageView instanceof AbstractC1036l) {
            ((AbstractC1036l) imageView).setSupportImageTintList(colorStateList);
        }
    }

    /* renamed from: a */
    public static void m35113a(ImageView imageView, PorterDuff.Mode mode) {
        Drawable drawable;
        if (Build.VERSION.SDK_INT >= 21) {
            imageView.setImageTintMode(mode);
            if (Build.VERSION.SDK_INT == 21 && (drawable = imageView.getDrawable()) != null && imageView.getImageTintList() != null) {
                if (drawable.isStateful()) {
                    drawable.setState(imageView.getDrawableState());
                }
                imageView.setImageDrawable(drawable);
            }
        } else if (imageView instanceof AbstractC1036l) {
            ((AbstractC1036l) imageView).setSupportImageTintMode(mode);
        }
    }

    /* renamed from: b */
    public static PorterDuff.Mode m35112b(ImageView imageView) {
        if (Build.VERSION.SDK_INT >= 21) {
            return imageView.getImageTintMode();
        }
        return imageView instanceof AbstractC1036l ? ((AbstractC1036l) imageView).getSupportImageTintMode() : null;
    }
}
