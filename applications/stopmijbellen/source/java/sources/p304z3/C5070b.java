package p304z3;

import android.content.Context;
import android.util.TypedValue;
/* renamed from: z3.b */
/* loaded from: classes-dex2jar.jar:z3/b.class */
public class C5070b {
    /* renamed from: a */
    public static TypedValue m75a(Context context, int i) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i, typedValue, true)) {
            return typedValue;
        }
        return null;
    }

    /* renamed from: b */
    public static boolean m74b(Context context, int i, boolean z) {
        TypedValue m75a = m75a(context, i);
        boolean z2 = z;
        if (m75a != null) {
            z2 = z;
            if (m75a.type == 18) {
                z2 = m75a.data != 0;
            }
        }
        return z2;
    }

    /* renamed from: c */
    public static int m73c(Context context, int i, String str) {
        TypedValue m75a = m75a(context, i);
        if (m75a != null) {
            return m75a.data;
        }
        throw new IllegalArgumentException(String.format("%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant).", str, context.getResources().getResourceName(i)));
    }
}
