package androidx.core.text;

import android.os.Build;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:androidx/core/text/TextUtilsCompat.class */
public final class TextUtilsCompat {

    /* renamed from: a */
    private static final Locale f3199a = new Locale("", "");

    private TextUtilsCompat() {
    }

    /* renamed from: a */
    private static int m19355a(@NonNull Locale locale) {
        byte directionality = Character.getDirectionality(locale.getDisplayName(locale).charAt(0));
        return (directionality == 1 || directionality == 2) ? 1 : 0;
    }

    /* renamed from: b */
    public static int m19354b(@Nullable Locale locale) {
        if (Build.VERSION.SDK_INT >= 17) {
            return TextUtils.getLayoutDirectionFromLocale(locale);
        }
        if (locale == null || locale.equals(f3199a)) {
            return 0;
        }
        String c = ICUCompat.m19375c(locale);
        return c == null ? m19355a(locale) : (c.equalsIgnoreCase("Arab") || c.equalsIgnoreCase("Hebr")) ? 1 : 0;
    }
}
