package com.google.zxing.c;

import com.google.zxing.WriterException;
import com.google.zxing.c;
import com.google.zxing.common.b;
import java.util.ArrayList;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/zxing/c/d.class */
public final class d extends o {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* loaded from: classes4-dex2jar.jar:com/google/zxing/c/d$a.class */
    public static final class a extends Enum<a> {

        /* renamed from: a  reason: collision with root package name */
        public static final int f32946a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f32947b = 2;

        /* renamed from: c  reason: collision with root package name */
        public static final int f32948c = 3;

        /* renamed from: d  reason: collision with root package name */
        public static final int f32949d = 4;
        private static final /* synthetic */ int[] e = {1, 2, 3, 4};

        private a(String str, int i) {
        }
    }

    private static int a(CharSequence charSequence, int i) {
        int length = charSequence.length();
        if (i >= length) {
            return a.f32946a;
        }
        char charAt = charSequence.charAt(i);
        if (charAt == 241) {
            return a.f32949d;
        }
        if (charAt < '0' || charAt > '9') {
            return a.f32946a;
        }
        int i2 = i + 1;
        if (i2 >= length) {
            return a.f32947b;
        }
        char charAt2 = charSequence.charAt(i2);
        return (charAt2 < '0' || charAt2 > '9') ? a.f32947b : a.f32948c;
    }

    private static int a(CharSequence charSequence, int i, int i2) {
        int a2;
        int a3;
        int a4 = a(charSequence, i);
        if (a4 == a.f32947b) {
            return 100;
        }
        if (a4 == a.f32946a) {
            if (i >= charSequence.length()) {
                return 100;
            }
            char charAt = charSequence.charAt(i);
            if (charAt >= ' ') {
                return (i2 != 101 || charAt >= '`') ? 100 : 101;
            }
            return 101;
        } else if (i2 == 99) {
            return 99;
        } else {
            if (i2 != 100) {
                int i3 = a4;
                if (a4 == a.f32949d) {
                    i3 = a(charSequence, i + 1);
                }
                return i3 == a.f32948c ? 99 : 100;
            } else if (a4 == a.f32949d || (a2 = a(charSequence, i + 2)) == a.f32946a || a2 == a.f32947b) {
                return 100;
            } else {
                if (a2 == a.f32949d) {
                    return a(charSequence, i + 3) == a.f32948c ? 99 : 100;
                }
                int i4 = i + 4;
                while (true) {
                    a3 = a(charSequence, i4);
                    if (a3 != a.f32948c) {
                        break;
                    }
                    i4 += 2;
                }
                return a3 == a.f32947b ? 100 : 99;
            }
        }
    }

    @Override // com.google.zxing.c.o, com.google.zxing.e
    public final b a(String str, com.google.zxing.a aVar, int i, int i2, Map<c, ?> map) throws WriterException {
        if (aVar == com.google.zxing.a.CODE_128) {
            return super.a(str, aVar, i, i2, map);
        }
        throw new IllegalArgumentException("Can only encode CODE_128, but got ".concat(String.valueOf(aVar)));
    }

    @Override // com.google.zxing.c.o
    public final boolean[] a(String str) {
        int i;
        int i2;
        int i3;
        int length = str.length();
        if (length <= 0 || length > 80) {
            throw new IllegalArgumentException("Contents length should be between 1 and 80 characters, but got ".concat(String.valueOf(length)));
        }
        int i4 = 0;
        for (int i5 = 0; i5 < length; i5++) {
            char charAt = str.charAt(i5);
            switch (charAt) {
                case 241:
                case 242:
                case 243:
                case 244:
                    break;
                default:
                    if (charAt <= 127) {
                        break;
                    } else {
                        throw new IllegalArgumentException("Bad character in input: ".concat(String.valueOf(charAt)));
                    }
            }
        }
        ArrayList<int[]> arrayList = new ArrayList();
        int i6 = 0;
        int i7 = 0;
        int i8 = 0;
        int i9 = 1;
        while (true) {
            int i10 = 103;
            if (i6 < length) {
                int a2 = a(str, i6, i8);
                i10 = 100;
                if (a2 == i8) {
                    switch (str.charAt(i6)) {
                        case 241:
                            i10 = 102;
                            i3 = i6;
                            break;
                        case 242:
                            i10 = 97;
                            i3 = i6;
                            break;
                        case 243:
                            i10 = 96;
                            i3 = i6;
                            break;
                        case 244:
                            i3 = i6;
                            if (i8 == 101) {
                                i10 = 101;
                                i3 = i6;
                                break;
                            }
                            break;
                        default:
                            if (i8 != 100) {
                                if (i8 != 101) {
                                    i10 = Integer.parseInt(str.substring(i6, i6 + 2));
                                    i3 = i6 + 1;
                                    break;
                                } else {
                                    int charAt2 = str.charAt(i6) - ' ';
                                    i3 = i6;
                                    i10 = charAt2;
                                    if (charAt2 < 0) {
                                        i10 = charAt2 + 96;
                                        i3 = i6;
                                        break;
                                    }
                                }
                            } else {
                                i10 = str.charAt(i6) - ' ';
                                i3 = i6;
                                break;
                            }
                            break;
                    }
                    i = i3 + 1;
                    i2 = i8;
                } else {
                    if (i8 != 0) {
                        i10 = a2;
                    } else if (a2 == 100) {
                        i10 = 104;
                    } else if (a2 != 101) {
                        i10 = 105;
                    }
                    i2 = a2;
                    i = i6;
                }
                arrayList.add(c.f32945a[i10]);
                int i11 = i7 + (i10 * i9);
                i6 = i;
                i7 = i11;
                i8 = i2;
                if (i != 0) {
                    i9++;
                    i6 = i;
                    i7 = i11;
                    i8 = i2;
                }
            } else {
                arrayList.add(c.f32945a[i7 % 103]);
                arrayList.add(c.f32945a[106]);
                int i12 = 0;
                for (int[] iArr : arrayList) {
                    int length2 = iArr.length;
                    int i13 = 0;
                    int i14 = i12;
                    while (true) {
                        i12 = i14;
                        if (i13 < length2) {
                            i14 += iArr[i13];
                            i13++;
                        }
                    }
                }
                boolean[] zArr = new boolean[i12];
                for (int[] iArr2 : arrayList) {
                    i4 += a(zArr, i4, iArr2, true);
                }
                return zArr;
            }
        }
    }
}
