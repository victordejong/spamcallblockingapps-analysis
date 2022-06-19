package p020b.p041h.p048j;

import android.os.Build;
import android.text.TextUtils;
import java.util.Locale;
/* renamed from: b.h.j.f */
/* loaded from: classes-dex2jar.jar:b/h/j/f.class */
public final class C1589f {

    /* renamed from: a */
    private static final Locale f6186a = new Locale("", "");

    /* renamed from: a */
    private static int m29672a(Locale locale) {
        byte directionality = Character.getDirectionality(locale.getDisplayName(locale).charAt(0));
        return (directionality == 1 || directionality == 2) ? 1 : 0;
    }

    /* renamed from: b */
    public static int m29671b(Locale locale) {
        if (Build.VERSION.SDK_INT >= 17) {
            return TextUtils.getLayoutDirectionFromLocale(locale);
        }
        if (locale == null || locale.equals(f6186a)) {
            return 0;
        }
        String m29690c = C1577b.m29690c(locale);
        return m29690c == null ? m29672a(locale) : (m29690c.equalsIgnoreCase("Arab") || m29690c.equalsIgnoreCase("Hebr")) ? 1 : 0;
    }
}
