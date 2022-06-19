package androidx.appcompat.widget;

import android.graphics.Rect;
import android.view.View;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import p163m0.C3589v;
import p163m0.C3611y;
/* renamed from: androidx.appcompat.widget.h1 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/h1.class */
public class C0236h1 {

    /* renamed from: a */
    public static Method f963a;

    static {
        try {
            Method declaredMethod = View.class.getDeclaredMethod("computeFitSystemWindows", Rect.class, Rect.class);
            f963a = declaredMethod;
            if (declaredMethod.isAccessible()) {
                return;
            }
            f963a.setAccessible(true);
        } catch (NoSuchMethodException e) {
        }
    }

    /* renamed from: a */
    public static boolean m8493a(View view) {
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        boolean z = true;
        if (C3589v.C3594e.m2071d(view) != 1) {
            z = false;
        }
        return z;
    }
}
