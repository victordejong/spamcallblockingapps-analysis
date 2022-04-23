package androidx.appcompat.a.a;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import androidx.appcompat.widget.t;
import androidx.core.content.b;
import java.util.WeakHashMap;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/a/a/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final ThreadLocal<TypedValue> f562a = new ThreadLocal<>();

    /* renamed from: b  reason: collision with root package name */
    private static final WeakHashMap<Context, SparseArray<C0019a>> f563b = new WeakHashMap<>(0);

    /* renamed from: c  reason: collision with root package name */
    private static final Object f564c = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.appcompat.a.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/a/a/a$a.class */
    public static final class C0019a {

        /* renamed from: a  reason: collision with root package name */
        final ColorStateList f565a;

        /* renamed from: b  reason: collision with root package name */
        final Configuration f566b;

        C0019a(ColorStateList colorStateList, Configuration configuration) {
            this.f565a = colorStateList;
            this.f566b = configuration;
        }
    }

    private a() {
    }

    public static ColorStateList a(Context context, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            return context.getColorStateList(i);
        }
        ColorStateList d2 = d(context, i);
        if (d2 != null) {
            return d2;
        }
        ColorStateList c2 = c(context, i);
        if (c2 == null) {
            return b.b(context, i);
        }
        synchronized (f564c) {
            WeakHashMap<Context, SparseArray<C0019a>> weakHashMap = f563b;
            SparseArray<C0019a> sparseArray = weakHashMap.get(context);
            SparseArray<C0019a> sparseArray2 = sparseArray;
            if (sparseArray == null) {
                sparseArray2 = new SparseArray<>();
                weakHashMap.put(context, sparseArray2);
            }
            sparseArray2.append(i, new C0019a(c2, context.getResources().getConfiguration()));
        }
        return c2;
    }

    public static Drawable b(Context context, int i) {
        return t.a().a(context, i);
    }

    private static ColorStateList c(Context context, int i) {
        Resources resources = context.getResources();
        ThreadLocal<TypedValue> threadLocal = f562a;
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
            return androidx.core.content.res.a.a(resources2, resources2.getXml(i), context.getTheme());
        } catch (Exception e) {
            Log.e("AppCompatResources", "Failed to inflate ColorStateList, leaving it to the framework", e);
            return null;
        }
    }

    private static ColorStateList d(Context context, int i) {
        C0019a aVar;
        synchronized (f564c) {
            SparseArray<C0019a> sparseArray = f563b.get(context);
            if (!(sparseArray == null || sparseArray.size() <= 0 || (aVar = sparseArray.get(i)) == null)) {
                if (aVar.f566b.equals(context.getResources().getConfiguration())) {
                    return aVar.f565a;
                }
                sparseArray.remove(i);
            }
            return null;
        }
    }
}
