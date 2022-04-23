package androidx.core.content.res;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.TypedValue;
import androidx.core.e.d;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:androidx/core/content/res/f.class */
public final class f {

    /* loaded from: classes-dex2jar.jar:androidx/core/content/res/f$a.class */
    public static abstract class a {
        public abstract void a(int i);

        public final void a(final int i, Handler handler) {
            Handler handler2 = handler;
            if (handler == null) {
                handler2 = new Handler(Looper.getMainLooper());
            }
            handler2.post(new Runnable() { // from class: androidx.core.content.res.f.a.2
                @Override // java.lang.Runnable
                public final void run() {
                    a.this.a(i);
                }
            });
        }

        public abstract void a(Typeface typeface);

        public final void a(final Typeface typeface, Handler handler) {
            Handler handler2 = handler;
            if (handler == null) {
                handler2 = new Handler(Looper.getMainLooper());
            }
            handler2.post(new Runnable() { // from class: androidx.core.content.res.f.a.1
                @Override // java.lang.Runnable
                public final void run() {
                    a.this.a(typeface);
                }
            });
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/content/res/f$b.class */
    public static final class b {

        /* loaded from: classes-dex2jar.jar:androidx/core/content/res/f$b$a.class */
        public static final class a {

            /* renamed from: a  reason: collision with root package name */
            private static final Object f1850a = new Object();

            /* renamed from: b  reason: collision with root package name */
            private static Method f1851b;

            /* renamed from: c  reason: collision with root package name */
            private static boolean f1852c;

            private a() {
            }

            public static void a(Resources.Theme theme) {
                synchronized (f1850a) {
                    if (!f1852c) {
                        try {
                            Method declaredMethod = Resources.Theme.class.getDeclaredMethod("rebase", new Class[0]);
                            f1851b = declaredMethod;
                            declaredMethod.setAccessible(true);
                        } catch (NoSuchMethodException e) {
                        }
                        f1852c = true;
                    }
                    Method method = f1851b;
                    if (method != null) {
                        try {
                            method.invoke(theme, new Object[0]);
                        } catch (IllegalAccessException | InvocationTargetException e2) {
                            f1851b = null;
                        }
                    }
                }
            }
        }

        private b() {
        }
    }

    private f() {
    }

    public static Typeface a(Context context, int i) throws Resources.NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return a(context, i, new TypedValue(), 0, null, null, false);
    }

    public static Typeface a(Context context, int i, TypedValue typedValue, int i2, a aVar) throws Resources.NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return a(context, i, typedValue, i2, aVar, null, true);
    }

    private static Typeface a(Context context, int i, TypedValue typedValue, int i2, a aVar, Handler handler, boolean z) {
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        Typeface a2 = a(context, resources, typedValue, i, i2, aVar, null, z);
        if (a2 != null || aVar != null) {
            return a2;
        }
        throw new Resources.NotFoundException("Font resource ID #0x" + Integer.toHexString(i) + " could not be retrieved.");
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:49:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.graphics.Typeface a(android.content.Context r9, android.content.res.Resources r10, android.util.TypedValue r11, int r12, int r13, androidx.core.content.res.f.a r14, android.os.Handler r15, boolean r16) {
        /*
            Method dump skipped, instructions count: 297
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.content.res.f.a(android.content.Context, android.content.res.Resources, android.util.TypedValue, int, int, androidx.core.content.res.f$a, android.os.Handler, boolean):android.graphics.Typeface");
    }

    public static Drawable a(Resources resources, int i, Resources.Theme theme) throws Resources.NotFoundException {
        return Build.VERSION.SDK_INT >= 21 ? resources.getDrawable(i, theme) : resources.getDrawable(i);
    }

    public static void a(Context context, int i, a aVar) throws Resources.NotFoundException {
        d.a(aVar);
        if (context.isRestricted()) {
            aVar.a(-4, (Handler) null);
        } else {
            a(context, i, new TypedValue(), 0, aVar, null, false);
        }
    }
}
