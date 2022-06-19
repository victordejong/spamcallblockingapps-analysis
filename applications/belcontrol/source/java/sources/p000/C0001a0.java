package p000;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import java.util.WeakHashMap;
@SuppressLint({"RestrictedAPI"})
/* renamed from: a0 */
/* loaded from: classes-dex2jar.jar:a0.class */
public final class C0001a0 {

    /* renamed from: a */
    public static final ThreadLocal<TypedValue> f0a = new ThreadLocal<>();

    /* renamed from: b */
    public static final WeakHashMap<Context, SparseArray<C0002a>> f1b = new WeakHashMap<>(0);

    /* renamed from: c */
    public static final Object f2c = new Object();

    /* renamed from: a0$a */
    /* loaded from: classes-dex2jar.jar:a0$a.class */
    public static class C0002a {

        /* renamed from: a */
        public final ColorStateList f3a;

        /* renamed from: b */
        public final Configuration f4b;

        public C0002a(ColorStateList colorStateList, Configuration configuration) {
            this.f3a = colorStateList;
            this.f4b = configuration;
        }
    }

    /* renamed from: a */
    public static void m7467a(Context context, int i, ColorStateList colorStateList) {
        synchronized (f2c) {
            WeakHashMap<Context, SparseArray<C0002a>> weakHashMap = f1b;
            SparseArray<C0002a> sparseArray = weakHashMap.get(context);
            SparseArray<C0002a> sparseArray2 = sparseArray;
            if (sparseArray == null) {
                sparseArray2 = new SparseArray<>();
                weakHashMap.put(context, sparseArray2);
            }
            sparseArray2.append(i, new C0002a(colorStateList, context.getResources().getConfiguration()));
        }
    }

    /* renamed from: b */
    public static ColorStateList m7466b(Context context, int i) {
        C0002a c0002a;
        synchronized (f2c) {
            SparseArray<C0002a> sparseArray = f1b.get(context);
            if (sparseArray != null && sparseArray.size() > 0 && (c0002a = sparseArray.get(i)) != null) {
                if (c0002a.f4b.equals(context.getResources().getConfiguration())) {
                    return c0002a.f3a;
                }
                sparseArray.remove(i);
            }
            return null;
        }
    }

    /* renamed from: c */
    public static ColorStateList m7465c(Context context, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            return context.getColorStateList(i);
        }
        ColorStateList m7466b = m7466b(context, i);
        if (m7466b != null) {
            return m7466b;
        }
        ColorStateList m7462f = m7462f(context, i);
        if (m7462f == null) {
            return g8.e(context, i);
        }
        m7467a(context, i, m7462f);
        return m7462f;
    }

    /* renamed from: d */
    public static Drawable m7464d(Context context, int i) {
        return C1339e2.m2291h().m2289j(context, i);
    }

    /* renamed from: e */
    public static TypedValue m7463e() {
        ThreadLocal<TypedValue> threadLocal = f0a;
        TypedValue typedValue = threadLocal.get();
        TypedValue typedValue2 = typedValue;
        if (typedValue == null) {
            typedValue2 = new TypedValue();
            threadLocal.set(typedValue2);
        }
        return typedValue2;
    }

    /* renamed from: f */
    public static ColorStateList m7462f(Context context, int i) {
        if (m7461g(context, i)) {
            return null;
        }
        Resources resources = context.getResources();
        try {
            return i8.a(resources, resources.getXml(i), context.getTheme());
        } catch (Exception e) {
            Log.e("AppCompatResources", "Failed to inflate ColorStateList, leaving it to the framework", e);
            return null;
        }
    }

    /* renamed from: g */
    public static boolean m7461g(Context context, int i) {
        Resources resources = context.getResources();
        TypedValue m7463e = m7463e();
        boolean z = true;
        resources.getValue(i, m7463e, true);
        int i2 = m7463e.type;
        if (i2 < 28 || i2 > 31) {
            z = false;
        }
        return z;
    }
}
