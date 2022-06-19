package androidx.core.content.p003c;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.TypedValue;
import d.h.l.h;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: androidx.core.content.c.f */
/* loaded from: classes-dex2jar.jar:androidx/core/content/c/f.class */
public final class C0275f {

    /* renamed from: androidx.core.content.c.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/c/f$a.class */
    public static abstract class AbstractC0276a {

        /* renamed from: androidx.core.content.c.f$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/core/content/c/f$a$a.class */
        public class RunnableC0277a implements Runnable {

            /* renamed from: b */
            final /* synthetic */ Typeface f1681b;

            RunnableC0277a(Typeface typeface) {
                AbstractC0276a.this = r4;
                this.f1681b = typeface;
            }

            @Override // java.lang.Runnable
            public void run() {
                AbstractC0276a.this.m13494d(this.f1681b);
            }
        }

        /* renamed from: androidx.core.content.c.f$a$b */
        /* loaded from: classes-dex2jar.jar:androidx/core/content/c/f$a$b.class */
        public class RunnableC0278b implements Runnable {

            /* renamed from: b */
            final /* synthetic */ int f1683b;

            RunnableC0278b(int i) {
                AbstractC0276a.this = r4;
                this.f1683b = i;
            }

            @Override // java.lang.Runnable
            public void run() {
                AbstractC0276a.this.m13495c(this.f1683b);
            }
        }

        /* renamed from: a */
        public final void m13497a(int i, Handler handler) {
            Handler handler2 = handler;
            if (handler == null) {
                handler2 = new Handler(Looper.getMainLooper());
            }
            handler2.post(new RunnableC0278b(i));
        }

        /* renamed from: b */
        public final void m13496b(Typeface typeface, Handler handler) {
            Handler handler2 = handler;
            if (handler == null) {
                handler2 = new Handler(Looper.getMainLooper());
            }
            handler2.post(new RunnableC0277a(typeface));
        }

        /* renamed from: c */
        public abstract void m13495c(int i);

        /* renamed from: d */
        public abstract void m13494d(Typeface typeface);
    }

    /* renamed from: androidx.core.content.c.f$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/c/f$b.class */
    public static final class C0279b {

        /* renamed from: androidx.core.content.c.f$b$a */
        /* loaded from: classes-dex2jar.jar:androidx/core/content/c/f$b$a.class */
        static class C0280a {

            /* renamed from: a */
            private static final Object f1685a = new Object();

            /* renamed from: b */
            private static Method f1686b;

            /* renamed from: c */
            private static boolean f1687c;

            /* renamed from: a */
            static void m13492a(Resources.Theme theme) {
                synchronized (f1685a) {
                    if (!f1687c) {
                        try {
                            Method declaredMethod = Resources.Theme.class.getDeclaredMethod("rebase", new Class[0]);
                            f1686b = declaredMethod;
                            declaredMethod.setAccessible(true);
                        } catch (NoSuchMethodException e) {
                            Log.i("ResourcesCompat", "Failed to retrieve rebase() method", e);
                        }
                        f1687c = true;
                    }
                    Method method = f1686b;
                    if (method != null) {
                        try {
                            method.invoke(theme, new Object[0]);
                        } catch (IllegalAccessException | InvocationTargetException e2) {
                            Log.i("ResourcesCompat", "Failed to invoke rebase() method via reflection", e2);
                            f1686b = null;
                        }
                    }
                }
            }
        }

        /* renamed from: androidx.core.content.c.f$b$b */
        /* loaded from: classes-dex2jar.jar:androidx/core/content/c/f$b$b.class */
        static class C0281b {
            /* renamed from: a */
            static void m13491a(Resources.Theme theme) {
                theme.rebase();
            }
        }

        /* renamed from: a */
        public static void m13493a(Resources.Theme theme) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 29) {
                C0281b.m13491a(theme);
            } else if (i < 23) {
            } else {
                C0280a.m13492a(theme);
            }
        }
    }

    /* renamed from: a */
    public static Drawable m13503a(Resources resources, int i, Resources.Theme theme) {
        return Build.VERSION.SDK_INT >= 21 ? resources.getDrawable(i, theme) : resources.getDrawable(i);
    }

    /* renamed from: b */
    public static Typeface m13502b(Context context, int i) {
        if (context.isRestricted()) {
            return null;
        }
        return m13499e(context, i, new TypedValue(), 0, null, null, false);
    }

    /* renamed from: c */
    public static Typeface m13501c(Context context, int i, TypedValue typedValue, int i2, AbstractC0276a abstractC0276a) {
        if (context.isRestricted()) {
            return null;
        }
        return m13499e(context, i, typedValue, i2, abstractC0276a, null, true);
    }

    /* renamed from: d */
    public static void m13500d(Context context, int i, AbstractC0276a abstractC0276a, Handler handler) {
        h.c(abstractC0276a);
        if (context.isRestricted()) {
            abstractC0276a.m13497a(-4, handler);
        } else {
            m13499e(context, i, new TypedValue(), 0, abstractC0276a, handler, false);
        }
    }

    /* renamed from: e */
    private static Typeface m13499e(Context context, int i, TypedValue typedValue, int i2, AbstractC0276a abstractC0276a, Handler handler, boolean z) {
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        Typeface m13498f = m13498f(context, resources, typedValue, i, i2, abstractC0276a, handler, z);
        if (m13498f == null && abstractC0276a == null) {
            throw new Resources.NotFoundException("Font resource ID #0x" + Integer.toHexString(i) + " could not be retrieved.");
        }
        return m13498f;
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:49:? A[RETURN, SYNTHETIC] */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.graphics.Typeface m13498f(android.content.Context r9, android.content.res.Resources r10, android.util.TypedValue r11, int r12, int r13, androidx.core.content.p003c.C0275f.AbstractC0276a r14, android.os.Handler r15, boolean r16) {
        /*
            Method dump skipped, instructions count: 315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.content.p003c.C0275f.m13498f(android.content.Context, android.content.res.Resources, android.util.TypedValue, int, int, androidx.core.content.c.f$a, android.os.Handler, boolean):android.graphics.Typeface");
    }
}
