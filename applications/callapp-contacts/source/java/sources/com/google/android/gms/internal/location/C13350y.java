package com.google.android.gms.internal.location;
/* renamed from: com.google.android.gms.internal.location.y */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/y.class */
public final class C13350y {
    /* renamed from: a */
    public static int m13325a(int i, int i2) {
        String str;
        if (i < 0 || i >= i2) {
            if (i < 0) {
                str = C13351z.m13321a("%s (%s) must not be negative", "index", Integer.valueOf(i));
            } else if (i2 < 0) {
                StringBuilder sb = new StringBuilder(26);
                sb.append("negative size: ");
                sb.append(i2);
                throw new IllegalArgumentException(sb.toString());
            } else {
                str = C13351z.m13321a("%s (%s) must be less than size (%s)", "index", Integer.valueOf(i), Integer.valueOf(i2));
            }
            throw new IndexOutOfBoundsException(str);
        }
        return i;
    }

    /* renamed from: a */
    private static String m13323a(int i, int i2, String str) {
        if (i < 0) {
            return C13351z.m13321a("%s (%s) must not be negative", str, Integer.valueOf(i));
        }
        if (i2 >= 0) {
            return C13351z.m13321a("%s (%s) must not be greater than size (%s)", str, Integer.valueOf(i), Integer.valueOf(i2));
        }
        StringBuilder sb = new StringBuilder(26);
        sb.append("negative size: ");
        sb.append(i2);
        throw new IllegalArgumentException(sb.toString());
    }

    /* renamed from: a */
    public static void m13324a(int i, int i2, int i3) {
        if (i < 0 || i2 < i || i2 > i3) {
            throw new IndexOutOfBoundsException((i < 0 || i > i3) ? m13323a(i, i3, "start index") : (i2 < 0 || i2 > i3) ? m13323a(i2, i3, "end index") : C13351z.m13321a("end index (%s) must not be less than start index (%s)", Integer.valueOf(i2), Integer.valueOf(i)));
        }
    }

    /* renamed from: b */
    public static int m13322b(int i, int i2) {
        if (i < 0 || i > i2) {
            throw new IndexOutOfBoundsException(m13323a(i, i2, "index"));
        }
        return i;
    }
}
