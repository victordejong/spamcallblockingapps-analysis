package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ScaleDrawable;
import android.os.Build;
import androidx.appcompat.p010b.p011a.C0165c;
import androidx.core.graphics.drawable.AbstractC0537c;
@SuppressLint({"RestrictedAPI"})
/* renamed from: androidx.appcompat.widget.y */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/y.class */
public class C0369y {

    /* renamed from: d */
    private static Class<?> f1527d;

    /* renamed from: b */
    private static final int[] f1525b = {16842912};

    /* renamed from: c */
    private static final int[] f1526c = new int[0];

    /* renamed from: a */
    public static final Rect f1524a = new Rect();

    static {
        if (Build.VERSION.SDK_INT >= 18) {
            try {
                f1527d = Class.forName("android.graphics.Insets");
            } catch (ClassNotFoundException e) {
            }
        }
    }

    /* renamed from: a */
    public static PorterDuff.Mode m21168a(int i, PorterDuff.Mode mode) {
        PorterDuff.Mode mode2 = mode;
        switch (i) {
            case 3:
                mode2 = PorterDuff.Mode.SRC_OVER;
                break;
            case 4:
            case 6:
            case 7:
            case 8:
            case 10:
            case 11:
            case 12:
            case 13:
                break;
            case 5:
                mode2 = PorterDuff.Mode.SRC_IN;
                break;
            case 9:
                mode2 = PorterDuff.Mode.SRC_ATOP;
                break;
            case 14:
                mode2 = PorterDuff.Mode.MULTIPLY;
                break;
            case 15:
                mode2 = PorterDuff.Mode.SCREEN;
                break;
            case 16:
                mode2 = PorterDuff.Mode.ADD;
                break;
            default:
                mode2 = mode;
                break;
        }
        return mode2;
    }

    /* renamed from: a */
    public static void m21167a(Drawable drawable) {
        if (Build.VERSION.SDK_INT != 21 || !"android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName())) {
            return;
        }
        m21165c(drawable);
    }

    /* renamed from: b */
    public static boolean m21166b(Drawable drawable) {
        boolean z;
        if (Build.VERSION.SDK_INT < 15 && (drawable instanceof InsetDrawable)) {
            z = false;
        } else if (Build.VERSION.SDK_INT < 15 && (drawable instanceof GradientDrawable)) {
            z = false;
        } else if (Build.VERSION.SDK_INT < 17 && (drawable instanceof LayerDrawable)) {
            z = false;
        } else if (drawable instanceof DrawableContainer) {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState instanceof DrawableContainer.DrawableContainerState) {
                for (Drawable drawable2 : ((DrawableContainer.DrawableContainerState) constantState).getChildren()) {
                    if (!m21166b(drawable2)) {
                        z = false;
                        break;
                    }
                }
            }
            z = true;
        } else if (drawable instanceof AbstractC0537c) {
            z = m21166b(((AbstractC0537c) drawable).mo20581a());
        } else if (drawable instanceof C0165c) {
            z = m21166b(((C0165c) drawable).m22007a());
        } else {
            if (drawable instanceof ScaleDrawable) {
                z = m21166b(((ScaleDrawable) drawable).getDrawable());
            }
            z = true;
        }
        return z;
    }

    /* renamed from: c */
    private static void m21165c(Drawable drawable) {
        int[] state = drawable.getState();
        if (state == null || state.length == 0) {
            drawable.setState(f1525b);
        } else {
            drawable.setState(f1526c);
        }
        drawable.setState(state);
    }
}
