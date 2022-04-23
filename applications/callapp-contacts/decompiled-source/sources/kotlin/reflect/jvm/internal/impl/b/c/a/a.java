package kotlin.reflect.jvm.internal.impl.b.c.a;

import kotlin.jvm.internal.p;
import kotlin.x;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/c/a/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ boolean f37173a = true;

    /* renamed from: b  reason: collision with root package name */
    private static final boolean f37174b;

    static {
        String str;
        try {
            str = System.getProperty("kotlin.jvm.serialization.use8to7");
        } catch (SecurityException e) {
            str = null;
        }
        f37174b = "true".equals(str);
    }

    private a() {
    }

    private static /* synthetic */ void a(int i) {
        String str = (i == 1 || i == 3 || i == 6 || i == 8 || i == 10 || i == 12 || i == 14) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 1 || i == 3 || i == 6 || i == 8 || i == 10 || i == 12 || i == 14) ? 2 : 3];
        if (i == 1 || i == 3 || i == 6 || i == 8 || i == 10 || i == 12 || i == 14) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/BitEncoding";
        } else {
            objArr[0] = "data";
        }
        if (i == 1) {
            objArr[1] = "encodeBytes";
        } else if (i == 3) {
            objArr[1] = "encode8to7";
        } else if (i == 6) {
            objArr[1] = "splitBytesToStringArray";
        } else if (i == 8) {
            objArr[1] = "decodeBytes";
        } else if (i == 10) {
            objArr[1] = "dropMarker";
        } else if (i == 12) {
            objArr[1] = "combineStringArrayIntoBytes";
        } else if (i != 14) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/BitEncoding";
        } else {
            objArr[1] = "decode7to8";
        }
        switch (i) {
            case 1:
            case 3:
            case 6:
            case 8:
            case 10:
            case 12:
            case 14:
                break;
            case 2:
                objArr[2] = "encode8to7";
                break;
            case 4:
                objArr[2] = "addModuloByte";
                break;
            case 5:
                objArr[2] = "splitBytesToStringArray";
                break;
            case 7:
                objArr[2] = "decodeBytes";
                break;
            case 9:
                objArr[2] = "dropMarker";
                break;
            case 11:
                objArr[2] = "combineStringArrayIntoBytes";
                break;
            case 13:
                objArr[2] = "decode7to8";
                break;
            default:
                objArr[2] = "encodeBytes";
                break;
        }
        String format = String.format(str, objArr);
        throw ((i == 1 || i == 3 || i == 6 || i == 8 || i == 10 || i == 12 || i == 14) ? new IllegalStateException(format) : new IllegalArgumentException(format));
    }

    private static void a(byte[] bArr) {
        if (bArr == null) {
            a(4);
        }
        int length = bArr.length;
        for (int i = 0; i < length; i++) {
            bArr[i] = (byte) ((bArr[i] + Byte.MAX_VALUE) & 127);
        }
    }

    public static byte[] a(String[] strArr) {
        int i;
        if (strArr == null) {
            a(7);
        }
        String[] strArr2 = strArr;
        if (strArr.length > 0) {
            boolean z = false;
            strArr2 = strArr;
            if (!strArr[0].isEmpty()) {
                char charAt = strArr[0].charAt(0);
                if (charAt == 0) {
                    String[] strings = b(strArr);
                    p.d(strings, "strings");
                    int i2 = 0;
                    for (String str : strings) {
                        i2 += str.length();
                    }
                    byte[] bArr = new byte[i2];
                    int length = strings.length;
                    int i3 = 0;
                    int i4 = 0;
                    while (i3 < length) {
                        String str2 = strings[i3];
                        int i5 = i3 + 1;
                        int length2 = str2.length() - 1;
                        i3 = i5;
                        if (length2 >= 0) {
                            int i6 = 0;
                            while (true) {
                                i = i4 + 1;
                                bArr[i4] = (byte) str2.charAt(i6);
                                if (i6 == length2) {
                                    break;
                                }
                                i6++;
                                i4 = i;
                            }
                            i4 = i;
                            i3 = i5;
                        }
                    }
                    if (i4 == i2) {
                        z = true;
                    }
                    if (!x.f38657a || z) {
                        return bArr;
                    }
                    throw new AssertionError("Should have reached the end");
                }
                strArr2 = strArr;
                if (charAt == 65535) {
                    strArr2 = b(strArr);
                }
            }
        }
        byte[] c2 = c(strArr2);
        a(c2);
        return b(c2);
    }

    private static byte[] b(byte[] bArr) {
        if (bArr == null) {
            a(13);
        }
        int length = (bArr.length * 7) / 8;
        byte[] bArr2 = new byte[length];
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            byte b2 = bArr[i];
            i++;
            int i4 = i2 + 1;
            bArr2[i3] = (byte) (((b2 & 255) >>> i2) + ((bArr[i] & ((1 << i4) - 1)) << (7 - i2)));
            if (i2 == 6) {
                i++;
                i2 = 0;
            } else {
                i2 = i4;
            }
        }
        return bArr2;
    }

    private static String[] b(String[] strArr) {
        if (strArr == null) {
            a(9);
        }
        String[] strArr2 = (String[]) strArr.clone();
        strArr2[0] = strArr2[0].substring(1);
        if (strArr2 == null) {
            a(10);
        }
        return strArr2;
    }

    private static byte[] c(String[] strArr) {
        if (strArr == null) {
            a(11);
        }
        int i = 0;
        for (String str : strArr) {
            if (f37173a || str.length() <= 65535) {
                i += str.length();
            } else {
                throw new AssertionError("String is too long: " + str.length());
            }
        }
        byte[] bArr = new byte[i];
        int i2 = 0;
        for (String str2 : strArr) {
            int length = str2.length();
            int i3 = 0;
            while (i3 < length) {
                bArr[i2] = (byte) str2.charAt(i3);
                i3++;
                i2++;
            }
        }
        return bArr;
    }
}
