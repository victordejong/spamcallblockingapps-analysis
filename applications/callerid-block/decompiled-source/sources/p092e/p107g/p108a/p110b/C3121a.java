package p092e.p107g.p108a.p110b;

import android.graphics.Color;
/* renamed from: e.g.a.b.a */
/* loaded from: classes2-dex2jar.jar:e/g/a/b/a.class */
public class C3121a {
    /* renamed from: a */
    public static int m88a(int i, float f) {
        return (i & 16777215) | (Math.round(Color.alpha(i) * f) << 24);
    }

    /* renamed from: b */
    public static int m87b(int i, int i2, float f) {
        return i == i2 ? i2 : f == 0.0f ? i : f == 1.0f ? i2 : Color.argb(m86c(Color.alpha(i), Color.alpha(i2), f), m86c(Color.red(i), Color.red(i2), f), m86c(Color.green(i), Color.green(i2), f), m86c(Color.blue(i), Color.blue(i2), f));
    }

    /* renamed from: c */
    private static int m86c(int i, int i2, float f) {
        return Math.round(i + ((i2 - i) * f));
    }
}
