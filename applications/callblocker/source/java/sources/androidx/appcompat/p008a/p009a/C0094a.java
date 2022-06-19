package androidx.appcompat.p008a.p009a;

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
import androidx.appcompat.widget.C0296af;
import androidx.core.p017a.C0438a;
import androidx.core.p017a.p018a.C0439a;
import java.util.WeakHashMap;
@SuppressLint({"RestrictedAPI"})
/* renamed from: androidx.appcompat.a.a.a */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/a/a/a.class */
public final class C0094a {

    /* renamed from: a */
    private static final ThreadLocal<TypedValue> f203a = new ThreadLocal<>();

    /* renamed from: b */
    private static final WeakHashMap<Context, SparseArray<C0095a>> f204b = new WeakHashMap<>(0);

    /* renamed from: c */
    private static final Object f205c = new Object();

    /* renamed from: androidx.appcompat.a.a.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/appcompat/a/a/a$a.class */
    public static class C0095a {

        /* renamed from: a */
        final ColorStateList f206a;

        /* renamed from: b */
        final Configuration f207b;

        C0095a(ColorStateList colorStateList, Configuration configuration) {
            this.f206a = colorStateList;
            this.f207b = configuration;
        }
    }

    /* renamed from: a */
    public static ColorStateList m22277a(Context context, int i) {
        ColorStateList colorStateList;
        if (Build.VERSION.SDK_INT >= 23) {
            colorStateList = context.getColorStateList(i);
        } else {
            ColorStateList m22273d = m22273d(context, i);
            colorStateList = m22273d;
            if (m22273d == null) {
                colorStateList = m22274c(context, i);
                if (colorStateList != null) {
                    m22276a(context, i, colorStateList);
                } else {
                    colorStateList = C0438a.m20894b(context, i);
                }
            }
        }
        return colorStateList;
    }

    /* renamed from: a */
    private static TypedValue m22278a() {
        TypedValue typedValue = f203a.get();
        TypedValue typedValue2 = typedValue;
        if (typedValue == null) {
            typedValue2 = new TypedValue();
            f203a.set(typedValue2);
        }
        return typedValue2;
    }

    /* renamed from: a */
    private static void m22276a(Context context, int i, ColorStateList colorStateList) {
        synchronized (f205c) {
            SparseArray<C0095a> sparseArray = f204b.get(context);
            SparseArray<C0095a> sparseArray2 = sparseArray;
            if (sparseArray == null) {
                sparseArray2 = new SparseArray<>();
                f204b.put(context, sparseArray2);
            }
            sparseArray2.append(i, new C0095a(colorStateList, context.getResources().getConfiguration()));
        }
    }

    /* renamed from: b */
    public static Drawable m22275b(Context context, int i) {
        return C0296af.m21513a().m21509a(context, i);
    }

    /* renamed from: c */
    private static ColorStateList m22274c(Context context, int i) {
        ColorStateList colorStateList;
        if (m22272e(context, i)) {
            colorStateList = null;
        } else {
            Resources resources = context.getResources();
            try {
                colorStateList = C0439a.m20888a(resources, resources.getXml(i), context.getTheme());
            } catch (Exception e) {
                Log.e("AppCompatResources", "Failed to inflate ColorStateList, leaving it to the framework", e);
                colorStateList = null;
            }
        }
        return colorStateList;
    }

    /* renamed from: d */
    private static ColorStateList m22273d(Context context, int i) {
        ColorStateList colorStateList;
        C0095a c0095a;
        synchronized (f205c) {
            SparseArray<C0095a> sparseArray = f204b.get(context);
            if (sparseArray != null && sparseArray.size() > 0 && (c0095a = sparseArray.get(i)) != null) {
                if (c0095a.f207b.equals(context.getResources().getConfiguration())) {
                    colorStateList = c0095a.f206a;
                } else {
                    sparseArray.remove(i);
                }
            }
            colorStateList = null;
        }
        return colorStateList;
    }

    /* renamed from: e */
    private static boolean m22272e(Context context, int i) {
        boolean z = true;
        Resources resources = context.getResources();
        TypedValue m22278a = m22278a();
        resources.getValue(i, m22278a, true);
        if (m22278a.type < 28 || m22278a.type > 31) {
            z = false;
        }
        return z;
    }
}
