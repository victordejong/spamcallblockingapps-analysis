package p097g;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import androidx.appcompat.widget.C0264p0;
import java.util.WeakHashMap;
import p066d0.C2134a;
import p076e0.C2503b;
import p076e0.C2511f;
@SuppressLint({"RestrictedAPI"})
/* renamed from: g.a */
/* loaded from: classes-dex2jar.jar:g/a.class */
public final class C2788a {
    /* renamed from: a */
    public static ColorStateList m3016a(Context context, int i) {
        ColorStateList colorStateList;
        C2511f.C2512a c2512a;
        Object obj = C2134a.f7832a;
        Resources resources = context.getResources();
        Resources.Theme theme = context.getTheme();
        ThreadLocal<TypedValue> threadLocal = C2511f.f8775a;
        C2511f.C2513b c2513b = new C2511f.C2513b(resources, theme);
        synchronized (C2511f.f8777c) {
            SparseArray<C2511f.C2512a> sparseArray = C2511f.f8776b.get(c2513b);
            if (sparseArray != null && sparseArray.size() > 0 && (c2512a = sparseArray.get(i)) != null) {
                if (c2512a.f8779b.equals(resources.getConfiguration())) {
                    colorStateList = c2512a.f8778a;
                } else {
                    sparseArray.remove(i);
                }
            }
            colorStateList = null;
        }
        if (colorStateList == null) {
            ThreadLocal<TypedValue> threadLocal2 = C2511f.f8775a;
            TypedValue typedValue = threadLocal2.get();
            TypedValue typedValue2 = typedValue;
            if (typedValue == null) {
                typedValue2 = new TypedValue();
                threadLocal2.set(typedValue2);
            }
            boolean z = true;
            resources.getValue(i, typedValue2, true);
            int i2 = typedValue2.type;
            if (i2 < 28 || i2 > 31) {
                z = false;
            }
            if (z) {
                colorStateList = null;
            } else {
                try {
                    colorStateList = C2503b.m3505a(resources, resources.getXml(i), theme);
                } catch (Exception e) {
                    Log.w("ResourcesCompat", "Failed to inflate ColorStateList, leaving it to the framework", e);
                    colorStateList = null;
                }
            }
            if (colorStateList != null) {
                synchronized (C2511f.f8777c) {
                    WeakHashMap<C2511f.C2513b, SparseArray<C2511f.C2512a>> weakHashMap = C2511f.f8776b;
                    SparseArray<C2511f.C2512a> sparseArray2 = weakHashMap.get(c2513b);
                    SparseArray<C2511f.C2512a> sparseArray3 = sparseArray2;
                    if (sparseArray2 == null) {
                        sparseArray3 = new SparseArray<>();
                        weakHashMap.put(c2513b, sparseArray3);
                    }
                    sparseArray3.append(i, new C2511f.C2512a(colorStateList, c2513b.f8780a.getConfiguration()));
                }
            } else {
                colorStateList = Build.VERSION.SDK_INT >= 23 ? resources.getColorStateList(i, theme) : resources.getColorStateList(i);
            }
        }
        return colorStateList;
    }

    /* renamed from: b */
    public static Drawable m3015b(Context context, int i) {
        return C0264p0.m8446d().m8444f(context, i);
    }
}
