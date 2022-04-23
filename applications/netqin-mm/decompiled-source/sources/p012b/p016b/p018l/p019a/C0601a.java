package p012b.p016b.p018l.p019a;

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
import p012b.p016b.p026q.C0728v;
import p012b.p042i.p044i.C0869a;
import p012b.p042i.p044i.p045c.C0872a;
/* renamed from: b.b.l.a.a */
/* loaded from: classes-dex2jar.jar:b/b/l/a/a.class */
public final class C0601a {

    /* renamed from: a */
    public static final ThreadLocal<TypedValue> f3000a = new ThreadLocal<>();

    /* renamed from: b */
    public static final WeakHashMap<Context, SparseArray<C0602a>> f3001b = new WeakHashMap<>(0);

    /* renamed from: c */
    public static final Object f3002c = new Object();

    /* renamed from: b.b.l.a.a$a */
    /* loaded from: classes-dex2jar.jar:b/b/l/a/a$a.class */
    public static class C0602a {

        /* renamed from: a */
        public final ColorStateList f3003a;

        /* renamed from: b */
        public final Configuration f3004b;

        public C0602a(ColorStateList colorStateList, Configuration configuration) {
            this.f3003a = colorStateList;
            this.f3004b = configuration;
        }
    }

    /* renamed from: a */
    public static ColorStateList m36780a(Context context, int i) {
        C0602a aVar;
        synchronized (f3002c) {
            SparseArray<C0602a> sparseArray = f3001b.get(context);
            if (!(sparseArray == null || sparseArray.size() <= 0 || (aVar = sparseArray.get(i)) == null)) {
                if (aVar.f3004b.equals(context.getResources().getConfiguration())) {
                    return aVar.f3003a;
                }
                sparseArray.remove(i);
            }
            return null;
        }
    }

    /* renamed from: a */
    public static TypedValue m36781a() {
        TypedValue typedValue = f3000a.get();
        TypedValue typedValue2 = typedValue;
        if (typedValue == null) {
            typedValue2 = new TypedValue();
            f3000a.set(typedValue2);
        }
        return typedValue2;
    }

    /* renamed from: a */
    public static void m36779a(Context context, int i, ColorStateList colorStateList) {
        synchronized (f3002c) {
            SparseArray<C0602a> sparseArray = f3001b.get(context);
            SparseArray<C0602a> sparseArray2 = sparseArray;
            if (sparseArray == null) {
                sparseArray2 = new SparseArray<>();
                f3001b.put(context, sparseArray2);
            }
            sparseArray2.append(i, new C0602a(colorStateList, context.getResources().getConfiguration()));
        }
    }

    /* renamed from: b */
    public static ColorStateList m36778b(Context context, int i) {
        if (Build.VERSION.SDK_INT >= 23) {
            return context.getColorStateList(i);
        }
        ColorStateList a = m36780a(context, i);
        if (a != null) {
            return a;
        }
        ColorStateList d = m36776d(context, i);
        if (d == null) {
            return C0869a.m35687b(context, i);
        }
        m36779a(context, i, d);
        return d;
    }

    /* renamed from: c */
    public static Drawable m36777c(Context context, int i) {
        return C0728v.m36215a().m36195b(context, i);
    }

    /* renamed from: d */
    public static ColorStateList m36776d(Context context, int i) {
        if (m36775e(context, i)) {
            return null;
        }
        Resources resources = context.getResources();
        try {
            return C0872a.m35677a(resources, resources.getXml(i), context.getTheme());
        } catch (Exception e) {
            Log.e("AppCompatResources", "Failed to inflate ColorStateList, leaving it to the framework", e);
            return null;
        }
    }

    /* renamed from: e */
    public static boolean m36775e(Context context, int i) {
        Resources resources = context.getResources();
        TypedValue a = m36781a();
        boolean z = true;
        resources.getValue(i, a, true);
        int i2 = a.type;
        if (i2 < 28 || i2 > 31) {
            z = false;
        }
        return z;
    }
}
