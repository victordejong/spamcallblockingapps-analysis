package p111h2;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
@TargetApi(21)
/* renamed from: h2.c */
/* loaded from: classes-dex2jar.jar:h2/c.class */
public class C3004c {
    /* renamed from: a */
    public static void m2757a(Drawable drawable, int i) {
        if (drawable instanceof RippleDrawable) {
            ((RippleDrawable) drawable).setColor(ColorStateList.valueOf(i));
        }
    }
}
