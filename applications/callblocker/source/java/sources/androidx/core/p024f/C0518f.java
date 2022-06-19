package androidx.core.p024f;

import android.os.Build;
import android.text.TextUtils;
import java.util.Locale;
/* renamed from: androidx.core.f.f */
/* loaded from: classes-dex2jar.jar:androidx/core/f/f.class */
public final class C0518f {

    /* renamed from: a */
    private static final Locale f1951a = new Locale("", "");

    /* renamed from: a */
    public static int m20652a(Locale locale) {
        int i;
        if (Build.VERSION.SDK_INT >= 17) {
            i = TextUtils.getLayoutDirectionFromLocale(locale);
        } else {
            if (locale != null && !locale.equals(f1951a)) {
                String m20670a = C0506b.m20670a(locale);
                if (m20670a == null) {
                    i = m20651b(locale);
                } else if (m20670a.equalsIgnoreCase("Arab") || m20670a.equalsIgnoreCase("Hebr")) {
                    i = 1;
                }
            }
            i = 0;
        }
        return i;
    }

    /* renamed from: b */
    private static int m20651b(Locale locale) {
        int i = 0;
        switch (Character.getDirectionality(locale.getDisplayName(locale).charAt(0))) {
            case 1:
            case 2:
                i = 1;
                break;
        }
        return i;
    }
}
