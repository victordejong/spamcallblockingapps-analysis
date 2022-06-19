package androidx.core.p021e;

import android.os.Build;
import android.text.TextUtils;
import java.util.Locale;
/* renamed from: androidx.core.e.f */
/* loaded from: classes-dex2jar.jar:androidx/core/e/f.class */
public final class C0494f {

    /* renamed from: a */
    private static final Locale f1800a = new Locale("", "");

    /* renamed from: a */
    public static int m6472a(Locale locale) {
        if (Build.VERSION.SDK_INT >= 17) {
            return TextUtils.getLayoutDirectionFromLocale(locale);
        }
        if (locale == null || locale.equals(f1800a)) {
            return 0;
        }
        String m6490a = C0482b.m6490a(locale);
        return m6490a == null ? m6471b(locale) : (m6490a.equalsIgnoreCase("Arab") || m6490a.equalsIgnoreCase("Hebr")) ? 1 : 0;
    }

    /* renamed from: b */
    private static int m6471b(Locale locale) {
        byte directionality = Character.getDirectionality(locale.getDisplayName(locale).charAt(0));
        return (directionality == 1 || directionality == 2) ? 1 : 0;
    }
}
