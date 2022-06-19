package androidx.appcompat.p017a.p018a;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import androidx.appcompat.widget.C0414t;
import androidx.core.content.C0790b;
import androidx.core.content.res.C0794a;
import java.util.WeakHashMap;
/* renamed from: androidx.appcompat.a.a.a */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/a/a/a.class */
public final class C0153a {

    /* renamed from: a */
    private static final ThreadLocal<TypedValue> f277a = new ThreadLocal<>();

    /* renamed from: b */
    private static final WeakHashMap<Context, SparseArray<C0154a>> f278b = new WeakHashMap<>(0);

    /* renamed from: c */
    private static final Object f279c = new Object();

    /* renamed from: androidx.appcompat.a.a.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/a/a/a$a.class */
    public static final class C0154a {

        /* renamed from: a */
        final ColorStateList f280a;

        /* renamed from: b */
        final Configuration f281b;

        C0154a(ColorStateList colorStateList, Configuration configuration) {
            this.f280a = colorStateList;
            this.f281b = configuration;
        }
    }

    private C0153a() {
    }

    /* renamed from: a */
    public static ColorStateList m46375a(Context context, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            return context.getColorStateList(i);
        }
        ColorStateList m46372d = m46372d(context, i);
        if (m46372d != null) {
            return m46372d;
        }
        ColorStateList m46373c = m46373c(context, i);
        if (m46373c == null) {
            return C0790b.m44494b(context, i);
        }
        synchronized (f279c) {
            WeakHashMap<Context, SparseArray<C0154a>> weakHashMap = f278b;
            SparseArray<C0154a> sparseArray = weakHashMap.get(context);
            SparseArray<C0154a> sparseArray2 = sparseArray;
            if (sparseArray == null) {
                sparseArray2 = new SparseArray<>();
                weakHashMap.put(context, sparseArray2);
            }
            sparseArray2.append(i, new C0154a(m46373c, context.getResources().getConfiguration()));
        }
        return m46373c;
    }

    /* renamed from: b */
    public static Drawable m46374b(Context context, int i) {
        return C0414t.m45610a().m45606a(context, i);
    }

    /* renamed from: c */
    private static ColorStateList m46373c(Context context, int i) {
        Resources resources = context.getResources();
        ThreadLocal<TypedValue> threadLocal = f277a;
        TypedValue typedValue = threadLocal.get();
        TypedValue typedValue2 = typedValue;
        if (typedValue == null) {
            typedValue2 = new TypedValue();
            threadLocal.set(typedValue2);
        }
        boolean z = true;
        resources.getValue(i, typedValue2, true);
        if (typedValue2.type < 28 || typedValue2.type > 31) {
            z = false;
        }
        if (z) {
            return null;
        }
        Resources resources2 = context.getResources();
        try {
            return C0794a.m44486a(resources2, resources2.getXml(i), context.getTheme());
        } catch (Exception e) {
            Log.e("AppCompatResources", "Failed to inflate ColorStateList, leaving it to the framework", e);
            return null;
        }
    }

    /* renamed from: d */
    private static ColorStateList m46372d(Context context, int i) {
        C0154a c0154a;
        synchronized (f279c) {
            SparseArray<C0154a> sparseArray = f278b.get(context);
            if (sparseArray != null && sparseArray.size() > 0 && (c0154a = sparseArray.get(i)) != null) {
                if (c0154a.f281b.equals(context.getResources().getConfiguration())) {
                    return c0154a.f280a;
                }
                sparseArray.remove(i);
            }
            return null;
        }
    }
}
