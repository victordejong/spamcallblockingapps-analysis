package p081h.p203i.p402h.p409m;

import androidx.media2.exoplayer.external.extractor.mkv.MatroskaExtractor;
import java.util.ArrayList;
import java.util.Map;
import p081h.p203i.p402h.C10538i;
import p081h.p203i.p402h.EnumC10529a;
import p081h.p203i.p402h.EnumC10531c;
import p081h.p203i.p402h.p405k.C10549b;
/* renamed from: h.i.h.m.d */
/* loaded from: classes2-dex2jar.jar:h/i/h/m/d.class */
public final class C10572d extends AbstractC10583n {

    /* renamed from: h.i.h.m.d$a */
    /* loaded from: classes2-dex2jar.jar:h/i/h/m/d$a.class */
    public enum EnumC10573a {
        UNCODABLE,
        ONE_DIGIT,
        TWO_DIGITS,
        FNC_1
    }

    /* renamed from: a */
    public static int m11342a(CharSequence charSequence, int i, int i2) {
        EnumC10573a a;
        EnumC10573a a2;
        EnumC10573a a3 = m11343a(charSequence, i);
        if (a3 == EnumC10573a.ONE_DIGIT) {
            return 100;
        }
        if (a3 == EnumC10573a.UNCODABLE) {
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
                EnumC10573a aVar = a3;
                if (a3 == EnumC10573a.FNC_1) {
                    aVar = m11343a(charSequence, i + 1);
                }
                return aVar == EnumC10573a.TWO_DIGITS ? 99 : 100;
            } else if (a3 == EnumC10573a.FNC_1 || (a = m11343a(charSequence, i + 2)) == EnumC10573a.UNCODABLE || a == EnumC10573a.ONE_DIGIT) {
                return 100;
            } else {
                if (a == EnumC10573a.FNC_1) {
                    return m11343a(charSequence, i + 3) == EnumC10573a.TWO_DIGITS ? 99 : 100;
                }
                int i3 = i + 4;
                while (true) {
                    a2 = m11343a(charSequence, i3);
                    if (a2 != EnumC10573a.TWO_DIGITS) {
                        break;
                    }
                    i3 += 2;
                }
                return a2 == EnumC10573a.ONE_DIGIT ? 100 : 99;
            }
        }
    }

    /* renamed from: a */
    public static EnumC10573a m11343a(CharSequence charSequence, int i) {
        int length = charSequence.length();
        if (i >= length) {
            return EnumC10573a.UNCODABLE;
        }
        char charAt = charSequence.charAt(i);
        if (charAt == 241) {
            return EnumC10573a.FNC_1;
        }
        if (charAt < '0' || charAt > '9') {
            return EnumC10573a.UNCODABLE;
        }
        int i2 = i + 1;
        if (i2 >= length) {
            return EnumC10573a.ONE_DIGIT;
        }
        char charAt2 = charSequence.charAt(i2);
        return (charAt2 < '0' || charAt2 > '9') ? EnumC10573a.ONE_DIGIT : EnumC10573a.TWO_DIGITS;
    }

    @Override // p081h.p203i.p402h.p409m.AbstractC10583n, p081h.p203i.p402h.AbstractC10537h
    /* renamed from: a */
    public C10549b mo11288a(String str, EnumC10529a aVar, int i, int i2, Map<EnumC10531c, ?> map) throws C10538i {
        if (aVar == EnumC10529a.CODE_128) {
            return super.mo11288a(str, aVar, i, i2, map);
        }
        throw new IllegalArgumentException("Can only encode CODE_128, but got ".concat(String.valueOf(aVar)));
    }

    @Override // p081h.p203i.p402h.p409m.AbstractC10583n
    /* renamed from: a */
    public boolean[] mo11330a(String str) {
        int i;
        int i2;
        int length = str.length();
        if (length <= 0 || length > 80) {
            throw new IllegalArgumentException("Contents length should be between 1 and 80 characters, but got ".concat(String.valueOf(length)));
        }
        int i3 = 0;
        for (int i4 = 0; i4 < length; i4++) {
            char charAt = str.charAt(i4);
            switch (charAt) {
                case MatroskaExtractor.ID_CUE_CLUSTER_POSITION /* 241 */:
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
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        int i8 = 1;
        while (i5 < length) {
            int a = m11342a(str, i5, i7);
            int i9 = 100;
            if (a == i7) {
                switch (str.charAt(i5)) {
                    case MatroskaExtractor.ID_CUE_CLUSTER_POSITION /* 241 */:
                        i9 = 102;
                        i2 = i5;
                        break;
                    case 242:
                        i9 = 97;
                        i2 = i5;
                        break;
                    case 243:
                        i9 = 96;
                        i2 = i5;
                        break;
                    case 244:
                        i2 = i5;
                        if (i7 == 101) {
                            i9 = 101;
                            i2 = i5;
                            break;
                        }
                        break;
                    default:
                        if (i7 != 100) {
                            if (i7 != 101) {
                                i9 = Integer.parseInt(str.substring(i5, i5 + 2));
                                i2 = i5 + 1;
                                break;
                            } else {
                                int charAt2 = str.charAt(i5) - ' ';
                                i2 = i5;
                                i9 = charAt2;
                                if (charAt2 < 0) {
                                    i9 = charAt2 + 96;
                                    i2 = i5;
                                    break;
                                }
                            }
                        } else {
                            i9 = str.charAt(i5) - ' ';
                            i2 = i5;
                            break;
                        }
                        break;
                }
                i = i2 + 1;
                a = i7;
            } else {
                i9 = i7 == 0 ? a != 100 ? a != 101 ? 105 : 103 : 104 : a;
                i = i5;
            }
            arrayList.add(C10571c.f24068a[i9]);
            int i10 = i6 + (i9 * i8);
            i5 = i;
            i6 = i10;
            i7 = a;
            if (i != 0) {
                i8++;
                i5 = i;
                i6 = i10;
                i7 = a;
            }
        }
        arrayList.add(C10571c.f24068a[i6 % 103]);
        arrayList.add(C10571c.f24068a[106]);
        int i11 = 0;
        for (int[] iArr : arrayList) {
            for (int i12 : iArr) {
                i11 += i12;
            }
        }
        boolean[] zArr = new boolean[i11];
        for (int[] iArr2 : arrayList) {
            i3 += AbstractC10583n.m11335a(zArr, i3, iArr2, true);
        }
        return zArr;
    }
}
