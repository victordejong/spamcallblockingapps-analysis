package androidx.core.p035d;

import android.os.Build;
import android.text.TextUtils;
import java.util.Locale;
/* renamed from: androidx.core.d.f */
/* loaded from: classes-dex2jar.jar:androidx/core/d/f.class */
public final class C0826f {

    /* renamed from: a */
    private static final Locale f3555a = new Locale("", "");

    private C0826f() {
    }

    /* renamed from: a */
    public static int m44415a(Locale locale) {
        if (Build.VERSION.SDK_INT >= 17) {
            return TextUtils.getLayoutDirectionFromLocale(locale);
        }
        if (locale == null || locale.equals(f3555a)) {
            return 0;
        }
        String m44424a = C0814b.m44424a(locale);
        if (m44424a != null) {
            return (m44424a.equalsIgnoreCase("Arab") || m44424a.equalsIgnoreCase("Hebr")) ? 1 : 0;
        }
        byte directionality = Character.getDirectionality(locale.getDisplayName(locale).charAt(0));
        return (directionality == 1 || directionality == 2) ? 1 : 0;
    }
}
