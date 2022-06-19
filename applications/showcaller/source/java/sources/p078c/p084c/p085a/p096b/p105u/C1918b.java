package p078c.p084c.p085a.p096b.p105u;

import android.content.Context;
import android.util.TypedValue;
import android.view.View;
/* renamed from: c.c.a.b.u.b */
/* loaded from: classes2-dex2jar.jar:c/c/a/b/u/b.class */
public class C1918b {
    /* renamed from: a */
    public static TypedValue m28690a(Context context, int i) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(i, typedValue, true)) {
            return typedValue;
        }
        return null;
    }

    /* renamed from: b */
    public static boolean m28689b(Context context, int i, boolean z) {
        TypedValue m28690a = m28690a(context, i);
        boolean z2 = z;
        if (m28690a != null) {
            z2 = z;
            if (m28690a.type == 18) {
                z2 = m28690a.data != 0;
            }
        }
        return z2;
    }

    /* renamed from: c */
    public static int m28688c(Context context, int i, String str) {
        TypedValue m28690a = m28690a(context, i);
        if (m28690a != null) {
            return m28690a.data;
        }
        throw new IllegalArgumentException(String.format("%1$s requires a value for the %2$s attribute to be set in your app theme. You can either set the attribute in your theme or update your theme to inherit from Theme.MaterialComponents (or a descendant).", str, context.getResources().getResourceName(i)));
    }

    /* renamed from: d */
    public static int m28687d(View view, int i) {
        return m28688c(view.getContext(), i, view.getClass().getCanonicalName());
    }
}
