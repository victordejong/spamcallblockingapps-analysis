package p020b.p021a.p022k.p023a;

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
import androidx.appcompat.widget.C0327v;
import androidx.core.content.C0586a;
import androidx.core.content.p007d.C0595a;
import java.util.WeakHashMap;
@SuppressLint({"RestrictedAPI"})
/* renamed from: b.a.k.a.a */
/* loaded from: classes-dex2jar.jar:b/a/k/a/a.class */
public final class C1433a {

    /* renamed from: a */
    private static final ThreadLocal<TypedValue> f5759a = new ThreadLocal<>();

    /* renamed from: b */
    private static final WeakHashMap<Context, SparseArray<C1434a>> f5760b = new WeakHashMap<>(0);

    /* renamed from: c */
    private static final Object f5761c = new Object();

    /* renamed from: b.a.k.a.a$a */
    /* loaded from: classes-dex2jar.jar:b/a/k/a/a$a.class */
    public static class C1434a {

        /* renamed from: a */
        final ColorStateList f5762a;

        /* renamed from: b */
        final Configuration f5763b;

        C1434a(ColorStateList colorStateList, Configuration configuration) {
            this.f5762a = colorStateList;
            this.f5763b = configuration;
        }
    }

    /* renamed from: a */
    private static void m30129a(Context context, int i, ColorStateList colorStateList) {
        synchronized (f5761c) {
            WeakHashMap<Context, SparseArray<C1434a>> weakHashMap = f5760b;
            SparseArray<C1434a> sparseArray = weakHashMap.get(context);
            SparseArray<C1434a> sparseArray2 = sparseArray;
            if (sparseArray == null) {
                sparseArray2 = new SparseArray<>();
                weakHashMap.put(context, sparseArray2);
            }
            sparseArray2.append(i, new C1434a(colorStateList, context.getResources().getConfiguration()));
        }
    }

    /* renamed from: b */
    private static ColorStateList m30128b(Context context, int i) {
        C1434a c1434a;
        synchronized (f5761c) {
            SparseArray<C1434a> sparseArray = f5760b.get(context);
            if (sparseArray != null && sparseArray.size() > 0 && (c1434a = sparseArray.get(i)) != null) {
                if (c1434a.f5763b.equals(context.getResources().getConfiguration())) {
                    return c1434a.f5762a;
                }
                sparseArray.remove(i);
            }
            return null;
        }
    }

    /* renamed from: c */
    public static ColorStateList m30127c(Context context, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            return context.getColorStateList(i);
        }
        ColorStateList m30128b = m30128b(context, i);
        if (m30128b != null) {
            return m30128b;
        }
        ColorStateList m30124f = m30124f(context, i);
        if (m30124f == null) {
            return C0586a.m33349e(context, i);
        }
        m30129a(context, i, m30124f);
        return m30124f;
    }

    /* renamed from: d */
    public static Drawable m30126d(Context context, int i) {
        return C0327v.m34738h().m34736j(context, i);
    }

    /* renamed from: e */
    private static TypedValue m30125e() {
        ThreadLocal<TypedValue> threadLocal = f5759a;
        TypedValue typedValue = threadLocal.get();
        TypedValue typedValue2 = typedValue;
        if (typedValue == null) {
            typedValue2 = new TypedValue();
            threadLocal.set(typedValue2);
        }
        return typedValue2;
    }

    /* renamed from: f */
    private static ColorStateList m30124f(Context context, int i) {
        if (m30123g(context, i)) {
            return null;
        }
        Resources resources = context.getResources();
        try {
            return C0595a.m33323a(resources, resources.getXml(i), context.getTheme());
        } catch (Exception e) {
            Log.e("AppCompatResources", "Failed to inflate ColorStateList, leaving it to the framework", e);
            return null;
        }
    }

    /* renamed from: g */
    private static boolean m30123g(Context context, int i) {
        Resources resources = context.getResources();
        TypedValue m30125e = m30125e();
        boolean z = true;
        resources.getValue(i, m30125e, true);
        int i2 = m30125e.type;
        if (i2 < 28 || i2 > 31) {
            z = false;
        }
        return z;
    }
}
