package p193e.p194a.p1146q2;
/* renamed from: e.a.q2.u0 */
/* loaded from: classes4-dex2jar.jar:e/a/q2/u0.class */
public final class C19548u0 {

    /* renamed from: a */
    public static final long[] f54334a;

    /* renamed from: b */
    public static final long[] f54335b;

    /* renamed from: c */
    public static final long[] f54336c;

    static {
        long[] jArr = new long[8];
        int i = 0;
        for (int i2 = 0; i2 < 8; i2++) {
            jArr[i2] = 1 << i2;
        }
        f54334a = jArr;
        long[] jArr2 = new long[8];
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i4 >= 8) {
                break;
            }
            int i5 = i4 + 1;
            jArr2[i4] = i5 * 125;
            i3 = i5;
        }
        f54335b = jArr2;
        long[] jArr3 = new long[8];
        while (true) {
            int i6 = i;
            if (i6 >= 8) {
                f54336c = jArr3;
                return;
            } else {
                i = i6 + 1;
                jArr3[i6] = i * 625;
            }
        }
    }
}
