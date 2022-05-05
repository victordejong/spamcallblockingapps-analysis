package androidx.core.content.res;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.TypedValue;
import androidx.annotation.DrawableRes;
import androidx.annotation.FontRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.util.Preconditions;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:androidx/core/content/res/ResourcesCompat.class */
public final class ResourcesCompat {

    /* loaded from: classes-dex2jar.jar:androidx/core/content/res/ResourcesCompat$FontCallback.class */
    public static abstract class FontCallback {
        @RestrictTo
        /* renamed from: a */
        public final void m19607a(final int i, @Nullable Handler handler) {
            Handler handler2 = handler;
            if (handler == null) {
                handler2 = new Handler(Looper.getMainLooper());
            }
            handler2.post(new Runnable() { // from class: androidx.core.content.res.ResourcesCompat.FontCallback.2
                @Override // java.lang.Runnable
                public void run() {
                    FontCallback.this.mo9377c(i);
                }
            });
        }

        @RestrictTo
        /* renamed from: b */
        public final void m19606b(final Typeface typeface, @Nullable Handler handler) {
            Handler handler2 = handler;
            if (handler == null) {
                handler2 = new Handler(Looper.getMainLooper());
            }
            handler2.post(new Runnable() { // from class: androidx.core.content.res.ResourcesCompat.FontCallback.1
                @Override // java.lang.Runnable
                public void run() {
                    FontCallback.this.mo9376d(typeface);
                }
            });
        }

        /* renamed from: c */
        public abstract void mo9377c(int i);

        /* renamed from: d */
        public abstract void mo9376d(@NonNull Typeface typeface);
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/content/res/ResourcesCompat$ThemeCompat.class */
    public static final class ThemeCompat {

        @RequiresApi
        /* loaded from: classes-dex2jar.jar:androidx/core/content/res/ResourcesCompat$ThemeCompat$ImplApi23.class */
        static class ImplApi23 {

            /* renamed from: a */
            private static final Object f3011a = new Object();

            /* renamed from: b */
            private static Method f3012b;

            /* renamed from: c */
            private static boolean f3013c;

            private ImplApi23() {
            }

            /* renamed from: a */
            static void m19604a(@NonNull Resources.Theme theme) {
                synchronized (f3011a) {
                    if (!f3013c) {
                        try {
                            Method declaredMethod = Resources.Theme.class.getDeclaredMethod("rebase", new Class[0]);
                            f3012b = declaredMethod;
                            declaredMethod.setAccessible(true);
                        } catch (NoSuchMethodException e) {
                            Log.i("ResourcesCompat", "Failed to retrieve rebase() method", e);
                        }
                        f3013c = true;
                    }
                    if (f3012b != null) {
                        try {
                            f3012b.invoke(theme, new Object[0]);
                        } catch (IllegalAccessException | InvocationTargetException e2) {
                            Log.i("ResourcesCompat", "Failed to invoke rebase() method via reflection", e2);
                            f3012b = null;
                        }
                    }
                }
            }
        }

        @RequiresApi
        /* loaded from: classes-dex2jar.jar:androidx/core/content/res/ResourcesCompat$ThemeCompat$ImplApi29.class */
        static class ImplApi29 {
            private ImplApi29() {
            }

            /* renamed from: a */
            static void m19603a(@NonNull Resources.Theme theme) {
                theme.rebase();
            }
        }

        private ThemeCompat() {
        }

        /* renamed from: a */
        public static void m19605a(@NonNull Resources.Theme theme) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 29) {
                ImplApi29.m19603a(theme);
            } else if (i >= 23) {
                ImplApi23.m19604a(theme);
            }
        }
    }

    private ResourcesCompat() {
    }

    @Nullable
    /* renamed from: a */
    public static Drawable m19613a(@NonNull Resources resources, @DrawableRes int i, @Nullable Resources.Theme theme) throws Resources.NotFoundException {
        return Build.VERSION.SDK_INT >= 21 ? resources.getDrawable(i, theme) : resources.getDrawable(i);
    }

    @Nullable
    /* renamed from: b */
    public static Typeface m19612b(@NonNull Context context, @FontRes int i) throws Resources.NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return m19609e(context, i, new TypedValue(), 0, null, null, false);
    }

    @RestrictTo
    /* renamed from: c */
    public static Typeface m19611c(@NonNull Context context, @FontRes int i, TypedValue typedValue, int i2, @Nullable FontCallback fontCallback) throws Resources.NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return m19609e(context, i, typedValue, i2, fontCallback, null, true);
    }

    /* renamed from: d */
    public static void m19610d(@NonNull Context context, @FontRes int i, @NonNull FontCallback fontCallback, @Nullable Handler handler) throws Resources.NotFoundException {
        Preconditions.m19337d(fontCallback);
        if (context.isRestricted()) {
            fontCallback.m19607a(-4, handler);
        } else {
            m19609e(context, i, new TypedValue(), 0, fontCallback, handler, false);
        }
    }

    /* renamed from: e */
    private static Typeface m19609e(@NonNull Context context, int i, TypedValue typedValue, int i2, @Nullable FontCallback fontCallback, @Nullable Handler handler, boolean z) {
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        Typeface f = m19608f(context, resources, typedValue, i, i2, fontCallback, handler, z);
        if (f != null || fontCallback != null) {
            return f;
        }
        throw new Resources.NotFoundException("Font resource ID #0x" + Integer.toHexString(i) + " could not be retrieved.");
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:49:? A[RETURN, SYNTHETIC] */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.graphics.Typeface m19608f(@androidx.annotation.NonNull android.content.Context r9, android.content.res.Resources r10, android.util.TypedValue r11, int r12, int r13, @androidx.annotation.Nullable androidx.core.content.res.ResourcesCompat.FontCallback r14, @androidx.annotation.Nullable android.os.Handler r15, boolean r16) {
        /*
            Method dump skipped, instructions count: 336
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.content.res.ResourcesCompat.m19608f(android.content.Context, android.content.res.Resources, android.util.TypedValue, int, int, androidx.core.content.res.ResourcesCompat$FontCallback, android.os.Handler, boolean):android.graphics.Typeface");
    }
}
