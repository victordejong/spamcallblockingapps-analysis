package androidx.core.p015a.p016a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.TypedValue;
import androidx.core.p022f.C0502e;
/* renamed from: androidx.core.a.a.f */
/* loaded from: classes-dex2jar.jar:androidx/core/a/a/f.class */
public final class C0420f {

    /* renamed from: androidx.core.a.a.f$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/a/a/f$a.class */
    public static abstract class AbstractC0421a {
        public final void callbackFailAsync(final int i, Handler handler) {
            Handler handler2 = handler;
            if (handler == null) {
                handler2 = new Handler(Looper.getMainLooper());
            }
            handler2.post(new Runnable() { // from class: androidx.core.a.a.f.a.2
                @Override // java.lang.Runnable
                public void run() {
                    AbstractC0421a.this.onFontRetrievalFailed(i);
                }
            });
        }

        public final void callbackSuccessAsync(final Typeface typeface, Handler handler) {
            Handler handler2 = handler;
            if (handler == null) {
                handler2 = new Handler(Looper.getMainLooper());
            }
            handler2.post(new Runnable() { // from class: androidx.core.a.a.f.a.1
                @Override // java.lang.Runnable
                public void run() {
                    AbstractC0421a.this.onFontRetrieved(typeface);
                }
            });
        }

        public abstract void onFontRetrievalFailed(int i);

        public abstract void onFontRetrieved(Typeface typeface);
    }

    /* renamed from: a */
    public static Typeface m6702a(Context context, int i) {
        if (context.isRestricted()) {
            return null;
        }
        return m6700a(context, i, new TypedValue(), 0, null, null, false);
    }

    /* renamed from: a */
    public static Typeface m6701a(Context context, int i, TypedValue typedValue, int i2, AbstractC0421a abstractC0421a) {
        if (context.isRestricted()) {
            return null;
        }
        return m6700a(context, i, typedValue, i2, abstractC0421a, null, true);
    }

    /* renamed from: a */
    private static Typeface m6700a(Context context, int i, TypedValue typedValue, int i2, AbstractC0421a abstractC0421a, Handler handler, boolean z) {
        Resources resources = context.getResources();
        resources.getValue(i, typedValue, true);
        Typeface m6698a = m6698a(context, resources, typedValue, i, i2, abstractC0421a, handler, z);
        if (m6698a == null && abstractC0421a == null) {
            throw new Resources.NotFoundException("Font resource ID #0x" + Integer.toHexString(i) + " could not be retrieved.");
        }
        return m6698a;
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:49:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.graphics.Typeface m6698a(android.content.Context r9, android.content.res.Resources r10, android.util.TypedValue r11, int r12, int r13, androidx.core.p015a.p016a.C0420f.AbstractC0421a r14, android.os.Handler r15, boolean r16) {
        /*
            Method dump skipped, instructions count: 334
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.p015a.p016a.C0420f.m6698a(android.content.Context, android.content.res.Resources, android.util.TypedValue, int, int, androidx.core.a.a.f$a, android.os.Handler, boolean):android.graphics.Typeface");
    }

    /* renamed from: a */
    public static Drawable m6697a(Resources resources, int i, Resources.Theme theme) {
        return Build.VERSION.SDK_INT >= 21 ? resources.getDrawable(i, theme) : resources.getDrawable(i);
    }

    /* renamed from: a */
    public static void m6699a(Context context, int i, AbstractC0421a abstractC0421a, Handler handler) {
        C0502e.m6462a(abstractC0421a);
        if (context.isRestricted()) {
            abstractC0421a.callbackFailAsync(-4, handler);
        } else {
            m6700a(context, i, new TypedValue(), 0, abstractC0421a, handler, false);
        }
    }
}
