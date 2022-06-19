package kotlin.reflect.jvm.internal.impl.protobuf;
/* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.w */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/w.class */
final class C19727w {
    /* renamed from: a */
    private static int m1598a(int i) {
        int i2 = i;
        if (i > -12) {
            i2 = -1;
        }
        return i2;
    }

    /* renamed from: a */
    public static int m1597a(int i, int i2) {
        if (i > -12 || i2 > -65) {
            return -1;
        }
        return i ^ (i2 << 8);
    }

    /* renamed from: a */
    public static int m1596a(int i, int i2, int i3) {
        if (i > -12 || i2 > -65 || i3 > -65) {
            return -1;
        }
        return (i ^ (i2 << 8)) ^ (i3 << 16);
    }

    /* renamed from: a */
    public static boolean m1595a(byte[] bArr, int i, int i2) {
        return m1594b(bArr, i, i2) == 0;
    }

    /* renamed from: b */
    public static int m1594b(byte[] bArr, int i, int i2) {
        while (i < i2 && bArr[i] >= 0) {
            i++;
        }
        if (i >= i2) {
            return 0;
        }
        return m1593c(bArr, i, i2);
    }

    /* renamed from: c */
    private static int m1593c(byte[] bArr, int i, int i2) {
        while (i < i2) {
            int i3 = i + 1;
            byte b = bArr[i];
            i = i3;
            if (b < 0) {
                if (b < -32) {
                    if (i3 >= i2) {
                        return b;
                    }
                    if (b < -62) {
                        return -1;
                    }
                    i = i3 + 1;
                    if (bArr[i3] > -65) {
                        return -1;
                    }
                } else if (b < -16) {
                    if (i3 >= i2 - 1) {
                        return m1592d(bArr, i3, i2);
                    }
                    int i4 = i3 + 1;
                    byte b2 = bArr[i3];
                    if (b2 > -65) {
                        return -1;
                    }
                    if (b == -32 && b2 < -96) {
                        return -1;
                    }
                    if (b == -19 && b2 >= -96) {
                        return -1;
                    }
                    i = i4 + 1;
                    if (bArr[i4] > -65) {
                        return -1;
                    }
                } else if (i3 >= i2 - 2) {
                    return m1592d(bArr, i3, i2);
                } else {
                    int i5 = i3 + 1;
                    byte b3 = bArr[i3];
                    if (b3 > -65 || (((b << 28) + (b3 + 112)) >> 30) != 0) {
                        return -1;
                    }
                    int i6 = i5 + 1;
                    if (bArr[i5] > -65) {
                        return -1;
                    }
                    i = i6 + 1;
                    if (bArr[i6] > -65) {
                        return -1;
                    }
                }
            }
        }
        return 0;
    }

    /* renamed from: d */
    private static int m1592d(byte[] bArr, int i, int i2) {
        byte b = bArr[i - 1];
        int i3 = i2 - i;
        if (i3 != 0) {
            if (i3 == 1) {
                return m1597a(b, bArr[i]);
            }
            if (i3 != 2) {
                throw new AssertionError();
            }
            return m1596a(b, bArr[i], bArr[i + 1]);
        }
        return m1598a(b);
    }
}
