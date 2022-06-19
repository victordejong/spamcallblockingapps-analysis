package com.google.zxing.p408c;

import com.google.zxing.EnumC16139a;
import com.google.zxing.EnumC16165c;
import com.google.zxing.WriterException;
import com.google.zxing.common.C16191b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
/* renamed from: com.google.zxing.c.d */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/c/d.class */
public final class C16169d extends AbstractC16181o {

    /* renamed from: com.google.zxing.c.d$a */
    /* loaded from: classes4-dex2jar.jar:com/google/zxing/c/d$a.class */
    public static final class EnumC16170a extends Enum<EnumC16170a> {

        /* renamed from: a */
        public static final int f57113a = 1;

        /* renamed from: b */
        public static final int f57114b = 2;

        /* renamed from: c */
        public static final int f57115c = 3;

        /* renamed from: d */
        public static final int f57116d = 4;

        /* renamed from: e */
        private static final /* synthetic */ int[] f57117e = {1, 2, 3, 4};

        private EnumC16170a(String str, int i) {
            super(str, i);
        }
    }

    /* renamed from: a */
    private static int m7701a(CharSequence charSequence, int i) {
        int length = charSequence.length();
        if (i >= length) {
            return EnumC16170a.f57113a;
        }
        char charAt = charSequence.charAt(i);
        if (charAt == 241) {
            return EnumC16170a.f57116d;
        }
        if (charAt < '0' || charAt > '9') {
            return EnumC16170a.f57113a;
        }
        int i2 = i + 1;
        if (i2 >= length) {
            return EnumC16170a.f57114b;
        }
        char charAt2 = charSequence.charAt(i2);
        return (charAt2 < '0' || charAt2 > '9') ? EnumC16170a.f57114b : EnumC16170a.f57115c;
    }

    /* renamed from: a */
    private static int m7700a(CharSequence charSequence, int i, int i2) {
        int m7701a;
        int m7701a2;
        int m7701a3 = m7701a(charSequence, i);
        if (m7701a3 == EnumC16170a.f57114b) {
            return 100;
        }
        if (m7701a3 == EnumC16170a.f57113a) {
            if (i >= charSequence.length()) {
                return 100;
            }
            char charAt = charSequence.charAt(i);
            if (charAt < ' ') {
                return 101;
            }
            return (i2 != 101 || charAt >= '`') ? 100 : 101;
        } else if (i2 == 99) {
            return 99;
        } else {
            if (i2 != 100) {
                int i3 = m7701a3;
                if (m7701a3 == EnumC16170a.f57116d) {
                    i3 = m7701a(charSequence, i + 1);
                }
                return i3 == EnumC16170a.f57115c ? 99 : 100;
            } else if (m7701a3 == EnumC16170a.f57116d || (m7701a = m7701a(charSequence, i + 2)) == EnumC16170a.f57113a || m7701a == EnumC16170a.f57114b) {
                return 100;
            } else {
                if (m7701a == EnumC16170a.f57116d) {
                    return m7701a(charSequence, i + 3) == EnumC16170a.f57115c ? 99 : 100;
                }
                int i4 = i + 4;
                while (true) {
                    m7701a2 = m7701a(charSequence, i4);
                    if (m7701a2 != EnumC16170a.f57115c) {
                        break;
                    }
                    i4 += 2;
                }
                return m7701a2 == EnumC16170a.f57114b ? 100 : 99;
            }
        }
    }

    @Override // com.google.zxing.p408c.AbstractC16181o, com.google.zxing.AbstractC16207e
    /* renamed from: a */
    public final C16191b mo7642a(String str, EnumC16139a enumC16139a, int i, int i2, Map<EnumC16165c, ?> map) throws WriterException {
        if (enumC16139a == EnumC16139a.CODE_128) {
            return super.mo7642a(str, enumC16139a, i, i2, map);
        }
        throw new IllegalArgumentException("Can only encode CODE_128, but got ".concat(String.valueOf(enumC16139a)));
    }

    @Override // com.google.zxing.p408c.AbstractC16181o
    /* renamed from: a */
    public final boolean[] mo7688a(String str) {
        int i;
        int i2;
        int i3;
        int length = str.length();
        if (length <= 0 || length > 80) {
            throw new IllegalArgumentException("Contents length should be between 1 and 80 characters, but got ".concat(String.valueOf(length)));
        }
        for (int i4 = 0; i4 < length; i4++) {
            char charAt = str.charAt(i4);
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
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 1;
        while (i5 < length) {
            int m7700a = m7700a(str, i5, i7);
            int i9 = 100;
            if (m7700a == i7) {
                switch (str.charAt(i5)) {
                    case 241:
                        i9 = 102;
                        i3 = i5;
                        break;
                    case 242:
                        i9 = 97;
                        i3 = i5;
                        break;
                    case 243:
                        i9 = 96;
                        i3 = i5;
                        break;
                    case 244:
                        i3 = i5;
                        if (i7 == 101) {
                            i9 = 101;
                            i3 = i5;
                            break;
                        }
                        break;
                    default:
                        if (i7 != 100) {
                            if (i7 != 101) {
                                i9 = Integer.parseInt(str.substring(i5, i5 + 2));
                                i3 = i5 + 1;
                                break;
                            } else {
                                int charAt2 = str.charAt(i5) - ' ';
                                i3 = i5;
                                i9 = charAt2;
                                if (charAt2 < 0) {
                                    i9 = charAt2 + 96;
                                    i3 = i5;
                                    break;
                                }
                            }
                        } else {
                            i9 = str.charAt(i5) - ' ';
                            i3 = i5;
                            break;
                        }
                        break;
                }
                i = i3 + 1;
                i2 = i7;
            } else {
                if (i7 != 0) {
                    i9 = m7700a;
                } else if (m7700a != 100) {
                    i9 = 103;
                    if (m7700a != 101) {
                        i9 = 105;
                    }
                } else {
                    i9 = 104;
                }
                i2 = m7700a;
                i = i5;
            }
            arrayList.add(C16168c.f57112a[i9]);
            int i10 = i6 + (i9 * i8);
            i5 = i;
            i6 = i10;
            i7 = i2;
            if (i != 0) {
                i8++;
                i5 = i;
                i6 = i10;
                i7 = i2;
            }
        }
        arrayList.add(C16168c.f57112a[i6 % 103]);
        arrayList.add(C16168c.f57112a[106]);
        int i11 = 0;
        for (int[] iArr : arrayList) {
            int length2 = iArr.length;
            int i12 = 0;
            int i13 = i11;
            while (true) {
                i11 = i13;
                if (i12 < length2) {
                    i13 += iArr[i12];
                    i12++;
                }
            }
        }
        boolean[] zArr = new boolean[i11];
        Iterator it2 = arrayList.iterator();
        int i14 = 0;
        while (true) {
            int i15 = i14;
            if (!it2.hasNext()) {
                return zArr;
            }
            i14 = i15 + m7693a(zArr, i15, (int[]) it2.next(), true);
        }
    }
}
