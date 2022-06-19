package com.google.zxing.p174c;

import com.google.zxing.EnumC5069a;
import com.google.zxing.EnumC5095c;
import com.google.zxing.common.C5117b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
/* renamed from: com.google.zxing.c.d */
/* loaded from: classes-dex2jar.jar:com/google/zxing/c/d.class */
public final class C5099d extends AbstractC5110n {

    /* renamed from: com.google.zxing.c.d$a */
    /* loaded from: classes-dex2jar.jar:com/google/zxing/c/d$a.class */
    public enum EnumC5100a {
        UNCODABLE,
        ONE_DIGIT,
        TWO_DIGITS,
        FNC_1
    }

    /* renamed from: a */
    private static int m1488a(CharSequence charSequence, int i, int i2) {
        int i3;
        EnumC5100a m1489a;
        char charAt;
        EnumC5100a m1489a2 = m1489a(charSequence, i);
        if (m1489a2 == EnumC5100a.ONE_DIGIT) {
            i3 = 100;
        } else if (m1489a2 == EnumC5100a.UNCODABLE) {
            i3 = (i >= charSequence.length() || ((charAt = charSequence.charAt(i)) >= ' ' && (i2 != 101 || charAt >= '`'))) ? 100 : 101;
        } else if (i2 == 99) {
            i3 = 99;
        } else if (i2 != 100) {
            EnumC5100a enumC5100a = m1489a2;
            if (m1489a2 == EnumC5100a.FNC_1) {
                enumC5100a = m1489a(charSequence, i + 1);
            }
            i3 = enumC5100a == EnumC5100a.TWO_DIGITS ? 99 : 100;
        } else if (m1489a2 == EnumC5100a.FNC_1) {
            i3 = 100;
        } else {
            EnumC5100a m1489a3 = m1489a(charSequence, i + 2);
            if (m1489a3 == EnumC5100a.UNCODABLE || m1489a3 == EnumC5100a.ONE_DIGIT) {
                i3 = 100;
            } else if (m1489a3 == EnumC5100a.FNC_1) {
                i3 = m1489a(charSequence, i + 3) == EnumC5100a.TWO_DIGITS ? 99 : 100;
            } else {
                int i4 = i + 4;
                while (true) {
                    m1489a = m1489a(charSequence, i4);
                    if (m1489a != EnumC5100a.TWO_DIGITS) {
                        break;
                    }
                    i4 += 2;
                }
                i3 = m1489a == EnumC5100a.ONE_DIGIT ? 100 : 99;
            }
        }
        return i3;
    }

    /* renamed from: a */
    private static EnumC5100a m1489a(CharSequence charSequence, int i) {
        EnumC5100a enumC5100a;
        int length = charSequence.length();
        if (i >= length) {
            enumC5100a = EnumC5100a.UNCODABLE;
        } else {
            char charAt = charSequence.charAt(i);
            if (charAt == 241) {
                enumC5100a = EnumC5100a.FNC_1;
            } else if (charAt < '0' || charAt > '9') {
                enumC5100a = EnumC5100a.UNCODABLE;
            } else if (i + 1 >= length) {
                enumC5100a = EnumC5100a.ONE_DIGIT;
            } else {
                char charAt2 = charSequence.charAt(i + 1);
                enumC5100a = (charAt2 < '0' || charAt2 > '9') ? EnumC5100a.ONE_DIGIT : EnumC5100a.TWO_DIGITS;
            }
        }
        return enumC5100a;
    }

    @Override // com.google.zxing.p174c.AbstractC5110n, com.google.zxing.AbstractC5133e
    /* renamed from: a */
    public C5117b mo1394a(String str, EnumC5069a enumC5069a, int i, int i2, Map<EnumC5095c, ?> map) {
        if (enumC5069a != EnumC5069a.CODE_128) {
            throw new IllegalArgumentException("Can only encode CODE_128, but got ".concat(String.valueOf(enumC5069a)));
        }
        return super.mo1394a(str, enumC5069a, i, i2, map);
    }

    @Override // com.google.zxing.p174c.AbstractC5110n
    /* renamed from: a */
    public boolean[] mo1476a(String str) {
        int i;
        int i2;
        int i3;
        int i4;
        int length = str.length();
        if (length <= 0 || length > 80) {
            throw new IllegalArgumentException("Contents length should be between 1 and 80 characters, but got ".concat(String.valueOf(length)));
        }
        for (int i5 = 0; i5 < length; i5++) {
            char charAt = str.charAt(i5);
            switch (charAt) {
                case 241:
                case 242:
                case 243:
                case 244:
                    break;
                default:
                    if (charAt > 127) {
                        throw new IllegalArgumentException("Bad character in input: ".concat(String.valueOf(charAt)));
                    }
                    break;
            }
        }
        ArrayList<int[]> arrayList = new ArrayList();
        int i6 = 0;
        int i7 = 0;
        int i8 = 1;
        int i9 = 0;
        while (i6 < length) {
            int m1488a = m1488a(str, i6, i7);
            if (m1488a == i7) {
                switch (str.charAt(i6)) {
                    case 241:
                        i = 102;
                        i4 = i6;
                        break;
                    case 242:
                        i = 97;
                        i4 = i6;
                        break;
                    case 243:
                        i = 96;
                        i4 = i6;
                        break;
                    case 244:
                        if (i7 == 101) {
                            i = 101;
                            i4 = i6;
                            break;
                        } else {
                            i = 100;
                            i4 = i6;
                            break;
                        }
                    default:
                        switch (i7) {
                            case 100:
                                i = str.charAt(i6) - ' ';
                                i4 = i6;
                                break;
                            case 101:
                                int charAt2 = str.charAt(i6) - ' ';
                                i = charAt2;
                                i4 = i6;
                                if (charAt2 < 0) {
                                    i = charAt2 + 96;
                                    i4 = i6;
                                    break;
                                }
                                break;
                            default:
                                i = Integer.parseInt(str.substring(i6, i6 + 2));
                                i4 = i6 + 1;
                                break;
                        }
                }
                i3 = i7;
                i2 = i4 + 1;
            } else if (i7 == 0) {
                switch (m1488a) {
                    case 100:
                        i = 104;
                        i2 = i6;
                        i3 = m1488a;
                        break;
                    case 101:
                        i = 103;
                        i2 = i6;
                        i3 = m1488a;
                        break;
                    default:
                        i = 105;
                        i2 = i6;
                        i3 = m1488a;
                        break;
                }
            } else {
                i = m1488a;
                i2 = i6;
                i3 = m1488a;
            }
            arrayList.add(C5098c.f21578a[i]);
            i9 += i * i8;
            int i10 = i2 != 0 ? i8 + 1 : i8;
            int i11 = i3;
            i6 = i2;
            i7 = i11;
            i8 = i10;
        }
        arrayList.add(C5098c.f21578a[i9 % 103]);
        arrayList.add(C5098c.f21578a[106]);
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
        Iterator it = arrayList.iterator();
        int i15 = 0;
        while (true) {
            int i16 = i15;
            if (!it.hasNext()) {
                return zArr;
            }
            i15 = i16 + m1481a(zArr, i16, (int[]) it.next(), true);
        }
    }
}
