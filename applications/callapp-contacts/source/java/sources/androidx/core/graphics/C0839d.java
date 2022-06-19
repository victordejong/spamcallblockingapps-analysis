package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Handler;
import androidx.core.content.res.C0796c;
import androidx.core.content.res.C0804f;
import androidx.core.p033c.C0772b;
import androidx.p023b.C0434e;
import com.sinch.verification.core.verification.VerificationLanguage;
/* renamed from: androidx.core.graphics.d */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/d.class */
public final class C0839d {

    /* renamed from: a */
    private static final C0851j f3571a;

    /* renamed from: b */
    private static final C0434e<String, Typeface> f3572b;

    static {
        if (Build.VERSION.SDK_INT >= 29) {
            f3571a = new C0850i();
        } else if (Build.VERSION.SDK_INT >= 28) {
            f3571a = new C0849h();
        } else if (Build.VERSION.SDK_INT >= 26) {
            f3571a = new C0848g();
        } else if (Build.VERSION.SDK_INT >= 24 && C0847f.m44331a()) {
            f3571a = new C0847f();
        } else if (Build.VERSION.SDK_INT >= 21) {
            f3571a = new C0846e();
        } else {
            f3571a = new C0851j();
        }
        f3572b = new C0434e<>(16);
    }

    private C0839d() {
    }

    /* renamed from: a */
    public static Typeface m44379a(Context context, Resources resources, int i, String str, int i2) {
        Typeface mo44319a = f3571a.mo44319a(context, resources, i, str, i2);
        if (mo44319a != null) {
            f3572b.put(m44374b(resources, i, i2), mo44319a);
        }
        return mo44319a;
    }

    /* renamed from: a */
    public static Typeface m44378a(Context context, Typeface typeface, int i) {
        if (context != null) {
            if (Build.VERSION.SDK_INT < 21) {
                C0851j c0851j = f3571a;
                long m44315a = C0851j.m44315a(typeface);
                C0796c.C0798b c0798b = m44315a == 0 ? null : c0851j.f3615h.get(Long.valueOf(m44315a));
                Typeface mo44317a = c0798b == null ? null : c0851j.mo44317a(context, c0798b, context.getResources(), i);
                if (mo44317a != null) {
                    return mo44317a;
                }
            }
            return Typeface.create(typeface, i);
        }
        throw new IllegalArgumentException("Context cannot be null");
    }

    /* renamed from: a */
    public static Typeface m44377a(Context context, C0796c.AbstractC0797a abstractC0797a, Resources resources, int i, int i2, C0804f.AbstractC0805a abstractC0805a, Handler handler, boolean z) {
        Typeface typeface;
        if (abstractC0797a instanceof C0796c.C0800d) {
            C0796c.C0800d c0800d = (C0796c.C0800d) abstractC0797a;
            boolean z2 = false;
            if (!z ? abstractC0805a == null : c0800d.f3499c == 0) {
                z2 = true;
            }
            typeface = C0772b.m44518a(context, c0800d.f3497a, abstractC0805a, handler, z2, z ? c0800d.f3498b : -1, i2);
        } else {
            Typeface mo44317a = f3571a.mo44317a(context, (C0796c.C0798b) abstractC0797a, resources, i2);
            typeface = mo44317a;
            if (abstractC0805a != null) {
                if (mo44317a != null) {
                    abstractC0805a.m44461a(mo44317a, handler);
                    typeface = mo44317a;
                } else {
                    abstractC0805a.m44462a(-3, handler);
                    typeface = mo44317a;
                }
            }
        }
        if (typeface != null) {
            f3572b.put(m44374b(resources, i, i2), typeface);
        }
        return typeface;
    }

    /* renamed from: a */
    public static Typeface m44376a(Context context, C0772b.C0778b[] c0778bArr, int i) {
        return f3571a.mo44318a(context, (CancellationSignal) null, c0778bArr, i);
    }

    /* renamed from: a */
    public static Typeface m44375a(Resources resources, int i, int i2) {
        return f3572b.get(m44374b(resources, i, i2));
    }

    /* renamed from: b */
    private static String m44374b(Resources resources, int i, int i2) {
        return resources.getResourcePackageName(i) + VerificationLanguage.REGION_PREFIX + i + VerificationLanguage.REGION_PREFIX + i2;
    }
}
