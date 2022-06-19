package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Handler;
import androidx.core.p015a.p016a.C0412c;
import androidx.core.p015a.p016a.C0420f;
import androidx.core.p020d.C0465b;
import androidx.p014c.C0380e;
/* renamed from: androidx.core.graphics.c */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/c.class */
public class C0573c {

    /* renamed from: a */
    private static final C0584h f1921a;

    /* renamed from: b */
    private static final C0380e<String, Typeface> f1922b;

    static {
        if (Build.VERSION.SDK_INT >= 28) {
            f1921a = new C0583g();
        } else if (Build.VERSION.SDK_INT >= 26) {
            f1921a = new C0582f();
        } else if (Build.VERSION.SDK_INT >= 24 && C0581e.m6111a()) {
            f1921a = new C0581e();
        } else if (Build.VERSION.SDK_INT >= 21) {
            f1921a = new C0574d();
        } else {
            f1921a = new C0584h();
        }
        f1922b = new C0380e<>(16);
    }

    /* renamed from: a */
    public static Typeface m6154a(Context context, Resources resources, int i, String str, int i2) {
        Typeface mo6093a = f1921a.mo6093a(context, resources, i, str, i2);
        if (mo6093a != null) {
            f1922b.put(m6148b(resources, i, i2), mo6093a);
        }
        return mo6093a;
    }

    /* renamed from: a */
    public static Typeface m6153a(Context context, Typeface typeface, int i) {
        Typeface m6149b;
        if (context != null) {
            return (Build.VERSION.SDK_INT >= 21 || (m6149b = m6149b(context, typeface, i)) == null) ? Typeface.create(typeface, i) : m6149b;
        }
        throw new IllegalArgumentException("Context cannot be null");
    }

    /* renamed from: a */
    public static Typeface m6152a(Context context, CancellationSignal cancellationSignal, C0465b.C0471b[] c0471bArr, int i) {
        return f1921a.mo6092a(context, cancellationSignal, c0471bArr, i);
    }

    /* renamed from: a */
    public static Typeface m6151a(Context context, C0412c.AbstractC0413a abstractC0413a, Resources resources, int i, int i2, C0420f.AbstractC0421a abstractC0421a, Handler handler, boolean z) {
        Typeface typeface;
        if (abstractC0413a instanceof C0412c.C0416d) {
            C0412c.C0416d c0416d = (C0412c.C0416d) abstractC0413a;
            boolean z2 = false;
            if (!z ? abstractC0421a == null : c0416d.m6711b() == 0) {
                z2 = true;
            }
            typeface = C0465b.m6536a(context, c0416d.m6712a(), abstractC0421a, handler, z2, z ? c0416d.m6710c() : -1, i2);
        } else {
            Typeface mo6091a = f1921a.mo6091a(context, (C0412c.C0414b) abstractC0413a, resources, i2);
            typeface = mo6091a;
            if (abstractC0421a != null) {
                if (mo6091a != null) {
                    abstractC0421a.callbackSuccessAsync(mo6091a, handler);
                    typeface = mo6091a;
                } else {
                    abstractC0421a.callbackFailAsync(-3, handler);
                    typeface = mo6091a;
                }
            }
        }
        if (typeface != null) {
            f1922b.put(m6148b(resources, i, i2), typeface);
        }
        return typeface;
    }

    /* renamed from: a */
    public static Typeface m6150a(Resources resources, int i, int i2) {
        return f1922b.get(m6148b(resources, i, i2));
    }

    /* renamed from: b */
    private static Typeface m6149b(Context context, Typeface typeface, int i) {
        C0412c.C0414b m6089a = f1921a.m6089a(typeface);
        if (m6089a == null) {
            return null;
        }
        return f1921a.mo6091a(context, m6089a, context.getResources(), i);
    }

    /* renamed from: b */
    private static String m6148b(Resources resources, int i, int i2) {
        return resources.getResourcePackageName(i) + "-" + i + "-" + i2;
    }
}
