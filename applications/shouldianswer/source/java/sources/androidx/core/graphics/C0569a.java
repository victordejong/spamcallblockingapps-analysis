package androidx.core.graphics;

import android.graphics.Color;
import com.google.android.flexbox.FlexItem;
/* renamed from: androidx.core.graphics.a */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/a.class */
public final class C0569a {

    /* renamed from: a */
    private static final ThreadLocal<double[]> f1916a = new ThreadLocal<>();

    /* renamed from: a */
    public static int m6173a(int i, int i2) {
        int alpha = Color.alpha(i2);
        int alpha2 = Color.alpha(i);
        int m6170c = m6170c(alpha2, alpha);
        return Color.argb(m6170c, m6172a(Color.red(i), alpha2, Color.red(i2), alpha, m6170c), m6172a(Color.green(i), alpha2, Color.green(i2), alpha, m6170c), m6172a(Color.blue(i), alpha2, Color.blue(i2), alpha, m6170c));
    }

    /* renamed from: a */
    private static int m6172a(int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            return 0;
        }
        return (((i * 255) * i2) + ((i3 * i4) * (255 - i2))) / (i5 * 255);
    }

    /* renamed from: b */
    public static int m6171b(int i, int i2) {
        if (i2 < 0 || i2 > 255) {
            throw new IllegalArgumentException("alpha must be between 0 and 255.");
        }
        return (i & FlexItem.MAX_SIZE) | (i2 << 24);
    }

    /* renamed from: c */
    private static int m6170c(int i, int i2) {
        return 255 - (((255 - i2) * (255 - i)) / 255);
    }
}
