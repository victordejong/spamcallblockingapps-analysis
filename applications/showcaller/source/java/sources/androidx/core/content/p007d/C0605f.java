package androidx.core.content.p007d;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import p020b.p041h.p049k.C1592c;
import p020b.p041h.p049k.C1597h;
/* renamed from: androidx.core.content.d.f */
/* loaded from: classes-dex2jar.jar:androidx/core/content/d/f.class */
public final class C0605f {

    /* renamed from: a */
    private static final ThreadLocal<TypedValue> f2971a = new ThreadLocal<>();

    /* renamed from: b */
    private static final WeakHashMap<C0607b, SparseArray<C0606a>> f2972b = new WeakHashMap<>(0);

    /* renamed from: c */
    private static final Object f2973c = new Object();

    /* renamed from: androidx.core.content.d.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/d/f$a.class */
    public static class C0606a {

        /* renamed from: a */
        final ColorStateList f2974a;

        /* renamed from: b */
        final Configuration f2975b;

        C0606a(ColorStateList colorStateList, Configuration configuration) {
            this.f2974a = colorStateList;
            this.f2975b = configuration;
        }
    }

    /* renamed from: androidx.core.content.d.f$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/d/f$b.class */
    public static final class C0607b {

        /* renamed from: a */
        final Resources f2976a;

        /* renamed from: b */
        final Resources.Theme f2977b;

        C0607b(Resources resources, Resources.Theme theme) {
            this.f2976a = resources;
            this.f2977b = theme;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || C0607b.class != obj.getClass()) {
                return false;
            }
            C0607b c0607b = (C0607b) obj;
            if (!this.f2976a.equals(c0607b.f2976a) || !C1592c.m29668a(this.f2977b, c0607b.f2977b)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            return C1592c.m29667b(this.f2976a, this.f2977b);
        }
    }

    /* renamed from: androidx.core.content.d.f$c */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/d/f$c.class */
    public static abstract class AbstractC0608c {

        /* renamed from: androidx.core.content.d.f$c$a */
        /* loaded from: classes-dex2jar.jar:androidx/core/content/d/f$c$a.class */
        public class RunnableC0609a implements Runnable {

            /* renamed from: d */
            final /* synthetic */ Typeface f2978d;

            RunnableC0609a(Typeface typeface) {
                AbstractC0608c.this = r4;
                this.f2978d = typeface;
            }

            @Override // java.lang.Runnable
            public void run() {
                AbstractC0608c.this.mo28665e(this.f2978d);
            }
        }

        /* renamed from: androidx.core.content.d.f$c$b */
        /* loaded from: classes-dex2jar.jar:androidx/core/content/d/f$c$b.class */
        public class RunnableC0610b implements Runnable {

            /* renamed from: d */
            final /* synthetic */ int f2980d;

            RunnableC0610b(int i) {
                AbstractC0608c.this = r4;
                this.f2980d = i;
            }

            @Override // java.lang.Runnable
            public void run() {
                AbstractC0608c.this.mo28666d(this.f2980d);
            }
        }

        /* renamed from: c */
        public static Handler m33263c(Handler handler) {
            Handler handler2 = handler;
            if (handler == null) {
                handler2 = new Handler(Looper.getMainLooper());
            }
            return handler2;
        }

        /* renamed from: a */
        public final void m33265a(int i, Handler handler) {
            m33263c(handler).post(new RunnableC0610b(i));
        }

        /* renamed from: b */
        public final void m33264b(Typeface typeface, Handler handler) {
            m33263c(handler).post(new RunnableC0609a(typeface));
        }

        /* renamed from: d */
        public abstract void mo28666d(int i);

        /* renamed from: e */
        public abstract void mo28665e(Typeface typeface);
    }

    /* renamed from: androidx.core.content.d.f$d */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/d/f$d.class */
    public static final class C0611d {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: androidx.core.content.d.f$d$a */
        /* loaded from: classes-dex2jar.jar:androidx/core/content/d/f$d$a.class */
        public static class C0612a {

            /* renamed from: a */
            private static final Object f2982a = new Object();

            /* renamed from: b */
            private static Method f2983b;

            /* renamed from: c */
            private static boolean f2984c;

            /* renamed from: a */
            static void m33261a(Resources.Theme theme) {
                synchronized (f2982a) {
                    if (!f2984c) {
                        try {
                            Method declaredMethod = Resources.Theme.class.getDeclaredMethod("rebase", new Class[0]);
                            f2983b = declaredMethod;
                            declaredMethod.setAccessible(true);
                        } catch (NoSuchMethodException e) {
                            Log.i("ResourcesCompat", "Failed to retrieve rebase() method", e);
                        }
                        f2984c = true;
                    }
                    Method method = f2983b;
                    if (method != null) {
                        try {
                            method.invoke(theme, new Object[0]);
                        } catch (IllegalAccessException | InvocationTargetException e2) {
                            Log.i("ResourcesCompat", "Failed to invoke rebase() method via reflection", e2);
                            f2983b = null;
                        }
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: androidx.core.content.d.f$d$b */
        /* loaded from: classes-dex2jar.jar:androidx/core/content/d/f$d$b.class */
        public static class C0613b {
            /* renamed from: a */
            static void m33260a(Resources.Theme theme) {
                theme.rebase();
            }
        }

        /* renamed from: a */
        public static void m33262a(Resources.Theme theme) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 29) {
                C0613b.m33260a(theme);
            } else if (i < 23) {
            } else {
                C0612a.m33261a(theme);
            }
        }
    }

    /* renamed from: a */
    private static void m33277a(C0607b c0607b, int i, ColorStateList colorStateList) {
        synchronized (f2973c) {
            WeakHashMap<C0607b, SparseArray<C0606a>> weakHashMap = f2972b;
            SparseArray<C0606a> sparseArray = weakHashMap.get(c0607b);
            SparseArray<C0606a> sparseArray2 = sparseArray;
            if (sparseArray == null) {
                sparseArray2 = new SparseArray<>();
                weakHashMap.put(c0607b, sparseArray2);
            }
            sparseArray2.append(i, new C0606a(colorStateList, c0607b.f2976a.getConfiguration()));
        }
    }

    /* renamed from: b */
    private static ColorStateList m33276b(C0607b c0607b, int i) {
        C0606a c0606a;
        synchronized (f2973c) {
            SparseArray<C0606a> sparseArray = f2972b.get(c0607b);
            if (sparseArray != null && sparseArray.size() > 0 && (c0606a = sparseArray.get(i)) != null) {
                if (c0606a.f2975b.equals(c0607b.f2976a.getConfiguration())) {
                    return c0606a.f2974a;
                }
                sparseArray.remove(i);
            }
            return null;
        }
    }

    /* renamed from: c */
    public static ColorStateList m33275c(Resources resources, int i, Resources.Theme theme) {
        if (Build.VERSION.SDK_INT >= 23) {
            return resources.getColorStateList(i, theme);
        }
        C0607b c0607b = new C0607b(resources, theme);
        ColorStateList m33276b = m33276b(c0607b, i);
        if (m33276b != null) {
            return m33276b;
        }
        ColorStateList m33269i = m33269i(resources, i, theme);
        if (m33269i == null) {
            return resources.getColorStateList(i);
        }
        m33277a(c0607b, i, m33269i);
        return m33269i;
    }

    /* renamed from: d */
    public static Drawable m33274d(Resources resources, int i, Resources.Theme theme) {
        return Build.VERSION.SDK_INT >= 21 ? resources.getDrawable(i, theme) : resources.getDrawable(i);
    }

    /* renamed from: e */
    public static Typeface m33273e(Context context, int i) {
        if (context.isRestricted()) {
            return null;
        }
        return m33267k(context, i, new TypedValue(), 0, null, null, false, false);
    }

    /* renamed from: f */
    public static Typeface m33272f(Context context, int i, TypedValue typedValue, int i2, AbstractC0608c abstractC0608c) {
        if (context.isRestricted()) {
            return null;
        }
        return m33267k(context, i, typedValue, i2, abstractC0608c, null, true, false);
    }

    /* renamed from: g */
    public static void m33271g(Context context, int i, AbstractC0608c abstractC0608c, Handler handler) {
        C1597h.m29659e(abstractC0608c);
        if (context.isRestricted()) {
            abstractC0608c.m33265a(-4, handler);
        } else {
            m33267k(context, i, new TypedValue(), 0, abstractC0608c, handler, false, false);
        }
    }

    /* renamed from: h */
    private static TypedValue m33270h() {
        ThreadLocal<TypedValue> threadLocal = f2971a;
        TypedValue typedValue = threadLocal.get();
        TypedValue typedValue2 = typedValue;
        if (typedValue == null) {
            typedValue2 = new TypedValue();
            threadLocal.set(typedValue2);
        }
        return typedValue2;
    }

    /* renamed from: i */
    private static ColorStateList m33269i(Resources resources, int i, Resources.Theme theme) {
        if (m33268j(resources, i)) {
            return null;
        }
        try {
            return C0595a.m33323a(resources, resources.getXml(i), theme);
        } catch (Exception e) {
            Log.e("ResourcesCompat", "Failed to inflate ColorStateList, leaving it to the framework", e);
            return null;
        }
    }

    /* renamed from: j */
    private static boolean m33268j(Resources resources, int i) {
        TypedValue m33270h = m33270h();
        boolean z = true;
        resources.getValue(i, m33270h, true);
        int i2 = m33270h.type;
        if (i2 < 28 || i2 > 31) {
            z = false;
        }
        return z;
    }

    /* renamed from: k */
    private static Typeface m33267k(Context context, int i, TypedValue typedValue, int i2, AbstractC0608c abstractC0608c, Handler handler, boolean z, boolean z2) {
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        Typeface m33266l = m33266l(context, resources, typedValue, i, i2, abstractC0608c, handler, z, z2);
        if (m33266l == null && abstractC0608c == null && !z2) {
            throw new Resources.NotFoundException("Font resource ID #0x" + Integer.toHexString(i) + " could not be retrieved.");
        }
        return m33266l;
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x010e  */
    /* JADX WARN: Removed duplicated region for block: B:52:? A[RETURN, SYNTHETIC] */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.graphics.Typeface m33266l(android.content.Context r9, android.content.res.Resources r10, android.util.TypedValue r11, int r12, int r13, androidx.core.content.p007d.C0605f.AbstractC0608c r14, android.os.Handler r15, boolean r16, boolean r17) {
        /*
            Method dump skipped, instructions count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.content.p007d.C0605f.m33266l(android.content.Context, android.content.res.Resources, android.util.TypedValue, int, int, androidx.core.content.d.f$c, android.os.Handler, boolean, boolean):android.graphics.Typeface");
    }
}
