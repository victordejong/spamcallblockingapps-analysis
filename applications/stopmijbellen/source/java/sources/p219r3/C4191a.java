package p219r3;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
/* renamed from: r3.a */
/* loaded from: classes-dex2jar.jar:r3/a.class */
public final class C4191a {
    /* renamed from: a */
    public static PorterDuffColorFilter m1300a(Drawable drawable, ColorStateList colorStateList, PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new PorterDuffColorFilter(colorStateList.getColorForState(drawable.getState(), 0), mode);
    }
}
