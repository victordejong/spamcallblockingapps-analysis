package androidx.core.b;
/* loaded from: classes-dex2jar.jar:androidx/core/b/a.class */
public final class a {
    private a() {
    }

    public static float a(float f, float f2, float f3) {
        return f < f2 ? f2 : f > f3 ? f3 : f;
    }

    public static int a(int i, int i2, int i3) {
        return i < i2 ? i2 : i > i3 ? i3 : i;
    }

    public static long a(long j, long j2) {
        if (j < 0) {
            return 0L;
        }
        return j > j2 ? j2 : j;
    }
}
