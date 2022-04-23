package android.support.v4.a;
/* loaded from: classes-dex2jar.jar:android/support/v4/a/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final ThreadLocal<double[]> f17a = new ThreadLocal<>();

    public static int a(int i, int i2) {
        if (i2 >= 0 && i2 <= 255) {
            return (16777215 & i) | (i2 << 24);
        }
        throw new IllegalArgumentException("alpha must be between 0 and 255.");
    }
}
