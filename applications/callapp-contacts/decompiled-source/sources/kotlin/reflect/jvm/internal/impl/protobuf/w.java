package kotlin.reflect.jvm.internal.impl.protobuf;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/w.class */
final class w {
    private static int a(int i) {
        int i2 = i;
        if (i > -12) {
            i2 = -1;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i, int i2) {
        if (i > -12 || i2 > -65) {
            return -1;
        }
        return i ^ (i2 << 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i, int i2, int i3) {
        if (i > -12 || i2 > -65 || i3 > -65) {
            return -1;
        }
        return (i ^ (i2 << 8)) ^ (i3 << 16);
    }

    public static boolean a(byte[] bArr, int i, int i2) {
        return b(bArr, i, i2) == 0;
    }

    public static int b(byte[] bArr, int i, int i2) {
        while (i < i2 && bArr[i] >= 0) {
            i++;
        }
        if (i >= i2) {
            return 0;
        }
        return c(bArr, i, i2);
    }

    private static int c(byte[] bArr, int i, int i2) {
        while (i < i2) {
            int i3 = i + 1;
            byte b2 = bArr[i];
            i = i3;
            if (b2 < 0) {
                if (b2 < -32) {
                    if (i3 >= i2) {
                        return b2;
                    }
                    if (b2 < -62) {
                        return -1;
                    }
                    i = i3 + 1;
                    if (bArr[i3] > -65) {
                        return -1;
                    }
                } else if (b2 < -16) {
                    if (i3 >= i2 - 1) {
                        return d(bArr, i3, i2);
                    }
                    int i4 = i3 + 1;
                    byte b3 = bArr[i3];
                    if (b3 > -65) {
                        return -1;
                    }
                    if (b2 == -32 && b3 < -96) {
                        return -1;
                    }
                    if (b2 == -19 && b3 >= -96) {
                        return -1;
                    }
                    i = i4 + 1;
                    if (bArr[i4] > -65) {
                        return -1;
                    }
                } else if (i3 >= i2 - 2) {
                    return d(bArr, i3, i2);
                } else {
                    int i5 = i3 + 1;
                    byte b4 = bArr[i3];
                    if (b4 > -65 || (((b2 << 28) + (b4 + 112)) >> 30) != 0) {
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

    private static int d(byte[] bArr, int i, int i2) {
        byte b2 = bArr[i - 1];
        int i3 = i2 - i;
        if (i3 == 0) {
            return a(b2);
        }
        if (i3 == 1) {
            return a(b2, bArr[i]);
        }
        if (i3 == 2) {
            return a(b2, bArr[i], bArr[i + 1]);
        }
        throw new AssertionError();
    }
}
