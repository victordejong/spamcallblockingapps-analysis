package androidx.core.content.res;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.TypedValue;
import androidx.core.p036e.C0833d;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* renamed from: androidx.core.content.res.f */
/* loaded from: classes-dex2jar.jar:androidx/core/content/res/f.class */
public final class C0804f {

    /* renamed from: androidx.core.content.res.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/res/f$a.class */
    public static abstract class AbstractC0805a {
        /* renamed from: a */
        public abstract void mo10639a(int i);

        /* renamed from: a */
        public final void m44462a(final int i, Handler handler) {
            Handler handler2 = handler;
            if (handler == null) {
                handler2 = new Handler(Looper.getMainLooper());
            }
            handler2.post(new Runnable() { // from class: androidx.core.content.res.f.a.2
                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC0805a.this.mo10639a(i);
                }
            });
        }

        /* renamed from: a */
        public abstract void mo10638a(Typeface typeface);

        /* renamed from: a */
        public final void m44461a(final Typeface typeface, Handler handler) {
            Handler handler2 = handler;
            if (handler == null) {
                handler2 = new Handler(Looper.getMainLooper());
            }
            handler2.post(new Runnable() { // from class: androidx.core.content.res.f.a.1
                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC0805a.this.mo10638a(typeface);
                }
            });
        }
    }

    /* renamed from: androidx.core.content.res.f$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/content/res/f$b.class */
    public static final class C0808b {

        /* renamed from: androidx.core.content.res.f$b$a */
        /* loaded from: classes-dex2jar.jar:androidx/core/content/res/f$b$a.class */
        public static final class C0809a {

            /* renamed from: a */
            private static final Object f3506a = new Object();

            /* renamed from: b */
            private static Method f3507b;

            /* renamed from: c */
            private static boolean f3508c;

            private C0809a() {
            }

            /* renamed from: a */
            public static void m44460a(Resources.Theme theme) {
                synchronized (f3506a) {
                    if (!f3508c) {
                        try {
                            Method declaredMethod = Resources.Theme.class.getDeclaredMethod("rebase", new Class[0]);
                            f3507b = declaredMethod;
                            declaredMethod.setAccessible(true);
                        } catch (NoSuchMethodException e) {
                        }
                        f3508c = true;
                    }
                    Method method = f3507b;
                    if (method != null) {
                        try {
                            method.invoke(theme, new Object[0]);
                        } catch (IllegalAccessException | InvocationTargetException e2) {
                            f3507b = null;
                        }
                    }
                }
            }
        }

        private C0808b() {
        }
    }

    private C0804f() {
    }

    /* renamed from: a */
    public static Typeface m44468a(Context context, int i) throws Resources.NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return m44466a(context, i, new TypedValue(), 0, null, null, false);
    }

    /* renamed from: a */
    public static Typeface m44467a(Context context, int i, TypedValue typedValue, int i2, AbstractC0805a abstractC0805a) throws Resources.NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return m44466a(context, i, typedValue, i2, abstractC0805a, null, true);
    }

    /* renamed from: a */
    private static Typeface m44466a(Context context, int i, TypedValue typedValue, int i2, AbstractC0805a abstractC0805a, Handler handler, boolean z) {
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        Typeface m44464a = m44464a(context, resources, typedValue, i, i2, abstractC0805a, null, z);
        if (m44464a == null && abstractC0805a == null) {
            throw new Resources.NotFoundException("Font resource ID #0x" + Integer.toHexString(i) + " could not be retrieved.");
        }
        return m44464a;
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:49:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.graphics.Typeface m44464a(android.content.Context r9, android.content.res.Resources r10, android.util.TypedValue r11, int r12, int r13, androidx.core.content.res.C0804f.AbstractC0805a r14, android.os.Handler r15, boolean r16) {
        /*
            Method dump skipped, instructions count: 297
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.content.res.C0804f.m44464a(android.content.Context, android.content.res.Resources, android.util.TypedValue, int, int, androidx.core.content.res.f$a, android.os.Handler, boolean):android.graphics.Typeface");
    }

    /* renamed from: a */
    public static Drawable m44463a(Resources resources, int i, Resources.Theme theme) throws Resources.NotFoundException {
        return Build.VERSION.SDK_INT >= 21 ? resources.getDrawable(i, theme) : resources.getDrawable(i);
    }

    /* renamed from: a */
    public static void m44465a(Context context, int i, AbstractC0805a abstractC0805a) throws Resources.NotFoundException {
        C0833d.m44410a(abstractC0805a);
        if (context.isRestricted()) {
            abstractC0805a.m44462a(-4, (Handler) null);
        } else {
            m44466a(context, i, new TypedValue(), 0, abstractC0805a, null, false);
        }
    }
}
