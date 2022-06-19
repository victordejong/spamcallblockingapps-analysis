package androidx.core.p017a.p018a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.TypedValue;
import androidx.core.p025g.C0527f;
/* renamed from: androidx.core.a.a.f */
/* loaded from: classes-dex2jar.jar:androidx/core/a/a/f.class */
public final class C0449f {

    /* renamed from: androidx.core.a.a.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/a/a/f$a.class */
    public static abstract class AbstractC0450a {
        /* renamed from: a */
        public abstract void mo2767a(int i);

        /* renamed from: a */
        public final void m20842a(final int i, Handler handler) {
            Handler handler2 = handler;
            if (handler == null) {
                handler2 = new Handler(Looper.getMainLooper());
            }
            handler2.post(new Runnable() { // from class: androidx.core.a.a.f.a.2
                @Override // java.lang.Runnable
                public void run() {
                    AbstractC0450a.this.mo2767a(i);
                }
            });
        }

        /* renamed from: a */
        public abstract void mo2766a(Typeface typeface);

        /* renamed from: a */
        public final void m20841a(final Typeface typeface, Handler handler) {
            Handler handler2 = handler;
            if (handler == null) {
                handler2 = new Handler(Looper.getMainLooper());
            }
            handler2.post(new Runnable() { // from class: androidx.core.a.a.f.a.1
                @Override // java.lang.Runnable
                public void run() {
                    AbstractC0450a.this.mo2766a(typeface);
                }
            });
        }
    }

    /* renamed from: a */
    public static Typeface m20848a(Context context, int i) {
        return context.isRestricted() ? null : m20846a(context, i, new TypedValue(), 0, null, null, false);
    }

    /* renamed from: a */
    public static Typeface m20847a(Context context, int i, TypedValue typedValue, int i2, AbstractC0450a abstractC0450a) {
        return context.isRestricted() ? null : m20846a(context, i, typedValue, i2, abstractC0450a, null, true);
    }

    /* renamed from: a */
    private static Typeface m20846a(Context context, int i, TypedValue typedValue, int i2, AbstractC0450a abstractC0450a, Handler handler, boolean z) {
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        Typeface m20844a = m20844a(context, resources, typedValue, i, i2, abstractC0450a, handler, z);
        if (m20844a == null && abstractC0450a == null) {
            throw new Resources.NotFoundException("Font resource ID #0x" + Integer.toHexString(i) + " could not be retrieved.");
        }
        return m20844a;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x010f  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.graphics.Typeface m20844a(android.content.Context r9, android.content.res.Resources r10, android.util.TypedValue r11, int r12, int r13, androidx.core.p017a.p018a.C0449f.AbstractC0450a r14, android.os.Handler r15, boolean r16) {
        /*
            Method dump skipped, instructions count: 330
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.p017a.p018a.C0449f.m20844a(android.content.Context, android.content.res.Resources, android.util.TypedValue, int, int, androidx.core.a.a.f$a, android.os.Handler, boolean):android.graphics.Typeface");
    }

    /* renamed from: a */
    public static Drawable m20843a(Resources resources, int i, Resources.Theme theme) {
        return Build.VERSION.SDK_INT >= 21 ? resources.getDrawable(i, theme) : resources.getDrawable(i);
    }

    /* renamed from: a */
    public static void m20845a(Context context, int i, AbstractC0450a abstractC0450a, Handler handler) {
        C0527f.m20644a(abstractC0450a);
        if (context.isRestricted()) {
            abstractC0450a.m20842a(-4, handler);
        } else {
            m20846a(context, i, new TypedValue(), 0, abstractC0450a, handler, false);
        }
    }
}
