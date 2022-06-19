package kotlin.reflect.jvm.internal.impl.p539b.p542c.p543a;

import kotlin.C20130x;
import kotlin.jvm.internal.C18524p;
/* renamed from: kotlin.reflect.jvm.internal.impl.b.c.a.a */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/b/c/a/a.class */
public class C18846a {

    /* renamed from: a */
    static final /* synthetic */ boolean f64411a = true;

    /* renamed from: b */
    private static final boolean f64412b;

    static {
        String str;
        try {
            str = System.getProperty("kotlin.jvm.serialization.use8to7");
        } catch (SecurityException e) {
            str = null;
        }
        f64412b = "true".equals(str);
    }

    private C18846a() {
    }

    /* renamed from: a */
    private static /* synthetic */ void m3037a(int i) {
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

    /* renamed from: a */
    private static void m3034a(byte[] bArr) {
        if (bArr == null) {
            m3037a(4);
        }
        int length = bArr.length;
        for (int i = 0; i < length; i++) {
            bArr[i] = (byte) ((bArr[i] + Byte.MAX_VALUE) & 127);
        }
    }

    /* renamed from: a */
    public static byte[] m3033a(String[] strArr) {
        int i;
        if (strArr == null) {
            m3037a(7);
        }
        String[] strArr2 = strArr;
        if (strArr.length > 0) {
            strArr2 = strArr;
            if (!strArr[0].isEmpty()) {
                char charAt = strArr[0].charAt(0);
                if (charAt == 0) {
                    String[] strings = m3029b(strArr);
                    C18524p.m3840d(strings, "strings");
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
                    boolean z = false;
                    if (i4 == i2) {
                        z = true;
                    }
                    if (C20130x.f66532a && !z) {
                        throw new AssertionError("Should have reached the end");
                    }
                    return bArr;
                }
                strArr2 = strArr;
                if (charAt == 65535) {
                    strArr2 = m3029b(strArr);
                }
            }
        }
        byte[] m3026c = m3026c(strArr2);
        m3034a(m3026c);
        return m3030b(m3026c);
    }

    /* renamed from: b */
    private static byte[] m3030b(byte[] bArr) {
        int i;
        if (bArr == null) {
            m3037a(13);
        }
        int length = (bArr.length * 7) / 8;
        byte[] bArr2 = new byte[length];
        int i2 = 0;
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            byte b = bArr[i2];
            i2++;
            int i5 = i3 + 1;
            bArr2[i4] = (byte) (((b & 255) >>> i3) + ((bArr[i2] & ((1 << i5) - 1)) << (7 - i3)));
            if (i3 == 6) {
                i2++;
                i = 0;
            } else {
                i = i5;
            }
            i3 = i;
        }
        return bArr2;
    }

    /* renamed from: b */
    private static String[] m3029b(String[] strArr) {
        if (strArr == null) {
            m3037a(9);
        }
        String[] strArr2 = (String[]) strArr.clone();
        strArr2[0] = strArr2[0].substring(1);
        if (strArr2 == null) {
            m3037a(10);
        }
        return strArr2;
    }

    /* renamed from: c */
    private static byte[] m3026c(String[] strArr) {
        if (strArr == null) {
            m3037a(11);
        }
        int i = 0;
        for (String str : strArr) {
            if (!f64411a && str.length() > 65535) {
                throw new AssertionError("String is too long: " + str.length());
            }
            i += str.length();
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
