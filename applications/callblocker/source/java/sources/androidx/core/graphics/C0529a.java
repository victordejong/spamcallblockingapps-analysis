package androidx.core.graphics;

import android.graphics.Color;
/* renamed from: androidx.core.graphics.a */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/a.class */
public final class C0529a {

    /* renamed from: a */
    private static final ThreadLocal<double[]> f1961a = new ThreadLocal<>();

    /* renamed from: a */
    public static int m20635a(int i, int i2) {
        int alpha = Color.alpha(i2);
        int alpha2 = Color.alpha(i);
        int m20632c = m20632c(alpha2, alpha);
        return Color.argb(m20632c, m20634a(Color.red(i), alpha2, Color.red(i2), alpha, m20632c), m20634a(Color.green(i), alpha2, Color.green(i2), alpha, m20632c), m20634a(Color.blue(i), alpha2, Color.blue(i2), alpha, m20632c));
    }

    /* renamed from: a */
    private static int m20634a(int i, int i2, int i3, int i4, int i5) {
        return i5 == 0 ? 0 : (((i * 255) * i2) + ((i3 * i4) * (255 - i2))) / (i5 * 255);
    }

    /* renamed from: b */
    public static int m20633b(int i, int i2) {
        if (i2 < 0 || i2 > 255) {
            throw new IllegalArgumentException("alpha must be between 0 and 255.");
        }
        return (16777215 & i) | (i2 << 24);
    }

    /* renamed from: c */
    private static int m20632c(int i, int i2) {
        return 255 - (((255 - i2) * (255 - i)) / 255);
    }
}
