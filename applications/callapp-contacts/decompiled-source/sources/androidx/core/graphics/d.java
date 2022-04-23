package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Handler;
import androidx.b.e;
import androidx.core.c.b;
import androidx.core.content.res.c;
import androidx.core.content.res.f;
import com.sinch.verification.core.verification.VerificationLanguage;
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private static final j f1903a;

    /* renamed from: b  reason: collision with root package name */
    private static final e<String, Typeface> f1904b;

    static {
        if (Build.VERSION.SDK_INT >= 29) {
            f1903a = new i();
        } else if (Build.VERSION.SDK_INT >= 28) {
            f1903a = new h();
        } else if (Build.VERSION.SDK_INT >= 26) {
            f1903a = new g();
        } else if (Build.VERSION.SDK_INT >= 24 && f.a()) {
            f1903a = new f();
        } else if (Build.VERSION.SDK_INT >= 21) {
            f1903a = new e();
        } else {
            f1903a = new j();
        }
        f1904b = new e<>(16);
    }

    private d() {
    }

    public static Typeface a(Context context, Resources resources, int i, String str, int i2) {
        Typeface a2 = f1903a.a(context, resources, i, str, i2);
        if (a2 != null) {
            f1904b.put(b(resources, i, i2), a2);
        }
        return a2;
    }

    public static Typeface a(Context context, Typeface typeface, int i) {
        if (context != null) {
            if (Build.VERSION.SDK_INT < 21) {
                j jVar = f1903a;
                long a2 = j.a(typeface);
                Typeface typeface2 = null;
                c.b bVar = a2 == 0 ? null : jVar.h.get(Long.valueOf(a2));
                if (bVar != null) {
                    typeface2 = jVar.a(context, bVar, context.getResources(), i);
                }
                if (typeface2 != null) {
                    return typeface2;
                }
            }
            return Typeface.create(typeface, i);
        }
        throw new IllegalArgumentException("Context cannot be null");
    }

    public static Typeface a(Context context, c.a aVar, Resources resources, int i, int i2, f.a aVar2, Handler handler, boolean z) {
        Typeface typeface;
        if (aVar instanceof c.d) {
            c.d dVar = (c.d) aVar;
            boolean z2 = false;
            if (!z ? aVar2 == null : dVar.f1843c == 0) {
                z2 = true;
            }
            typeface = b.a(context, dVar.f1841a, aVar2, handler, z2, z ? dVar.f1842b : -1, i2);
        } else {
            Typeface a2 = f1903a.a(context, (c.b) aVar, resources, i2);
            typeface = a2;
            if (aVar2 != null) {
                if (a2 != null) {
                    aVar2.a(a2, handler);
                    typeface = a2;
                } else {
                    aVar2.a(-3, handler);
                    typeface = a2;
                }
            }
        }
        if (typeface != null) {
            f1904b.put(b(resources, i, i2), typeface);
        }
        return typeface;
    }

    public static Typeface a(Context context, b.C0043b[] bVarArr, int i) {
        return f1903a.a(context, (CancellationSignal) null, bVarArr, i);
    }

    public static Typeface a(Resources resources, int i, int i2) {
        return f1904b.get(b(resources, i, i2));
    }

    private static String b(Resources resources, int i, int i2) {
        return resources.getResourcePackageName(i) + VerificationLanguage.REGION_PREFIX + i + VerificationLanguage.REGION_PREFIX + i2;
    }
}
