package androidx.core.d;

import android.os.Build;
import android.text.TextUtils;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:androidx/core/d/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private static final Locale f1888a = new Locale("", "");

    private f() {
    }

    public static int a(Locale locale) {
        if (Build.VERSION.SDK_INT >= 17) {
            return TextUtils.getLayoutDirectionFromLocale(locale);
        }
        if (locale == null || locale.equals(f1888a)) {
            return 0;
        }
        String a2 = b.a(locale);
        if (a2 != null) {
            return (a2.equalsIgnoreCase("Arab") || a2.equalsIgnoreCase("Hebr")) ? 1 : 0;
        }
        byte directionality = Character.getDirectionality(locale.getDisplayName(locale).charAt(0));
        return (directionality == 1 || directionality == 2) ? 1 : 0;
    }
}
