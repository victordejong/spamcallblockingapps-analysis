package p081h.p203i.p401g;

import androidx.appcompat.graphics.drawable.AnimatedStateListDrawableCompat;
import androidx.media.AudioAttributesCompat;
import com.fasterxml.jackson.core.base.GeneratorBase;
/* renamed from: h.i.g.j1 */
/* loaded from: classes2-dex2jar.jar:h/i/g/j1.class */
public final class C10289j1 {

    /* renamed from: a */
    public static final AbstractC10291b f23134a;

    /* renamed from: h.i.g.j1$a */
    /* loaded from: classes2-dex2jar.jar:h/i/g/j1$a.class */
    public static class C10290a {
        /* renamed from: a */
        public static char m12743a(int i) {
            return (char) ((i >>> 10) + 55232);
        }

        /* renamed from: b */
        public static char m12737b(int i) {
            return (char) ((i & AudioAttributesCompat.FLAG_ALL) + GeneratorBase.SURR2_FIRST);
        }

        /* renamed from: b */
        public static void m12741b(byte b, byte b2, byte b3, byte b4, char[] cArr, int i) throws C10222a0 {
            if (m12735d(b2) || (((b << 28) + (b2 + 112)) >> 30) != 0 || m12735d(b3) || m12735d(b4)) {
                throw C10222a0.m13074e();
            }
            int h = ((b & 7) << 18) | (m12731h(b2) << 12) | (m12731h(b3) << 6) | m12731h(b4);
            cArr[i] = m12743a(h);
            cArr[i + 1] = m12737b(h);
        }

        /* renamed from: b */
        public static void m12740b(byte b, byte b2, byte b3, char[] cArr, int i) throws C10222a0 {
            if (m12735d(b2) || ((b == -32 && b2 < -96) || ((b == -19 && b2 >= -96) || m12735d(b3)))) {
                throw C10222a0.m13074e();
            }
            cArr[i] = (char) (((b & 15) << 12) | (m12731h(b2) << 6) | m12731h(b3));
        }

        /* renamed from: b */
        public static void m12739b(byte b, byte b2, char[] cArr, int i) throws C10222a0 {
            if (b < -62 || m12735d(b2)) {
                throw C10222a0.m13074e();
            }
            cArr[i] = (char) (((b & 31) << 6) | m12731h(b2));
        }

        /* renamed from: b */
        public static void m12738b(byte b, char[] cArr, int i) {
            cArr[i] = (char) b;
        }

        /* renamed from: d */
        public static boolean m12735d(byte b) {
            return b > -65;
        }

        /* renamed from: e */
        public static boolean m12734e(byte b) {
            return b >= 0;
        }

        /* renamed from: f */
        public static boolean m12733f(byte b) {
            return b < -16;
        }

        /* renamed from: g */
        public static boolean m12732g(byte b) {
            return b < -32;
        }

        /* renamed from: h */
        public static int m12731h(byte b) {
            return b & 63;
        }
    }

    /* renamed from: h.i.g.j1$b */
    /* loaded from: classes2-dex2jar.jar:h/i/g/j1$b.class */
    public static abstract class AbstractC10291b {
        /* renamed from: a */
        public abstract int mo12726a(int i, byte[] bArr, int i2, int i3);

        /* renamed from: a */
        public abstract int mo12725a(CharSequence charSequence, byte[] bArr, int i, int i2);

        /* renamed from: a */
        public abstract String mo12724a(byte[] bArr, int i, int i2) throws C10222a0;

        /* renamed from: b */
        public final boolean m12730b(byte[] bArr, int i, int i2) {
            boolean z = false;
            if (mo12726a(0, bArr, i, i2) == 0) {
                z = true;
            }
            return z;
        }
    }

    /* renamed from: h.i.g.j1$c */
    /* loaded from: classes2-dex2jar.jar:h/i/g/j1$c.class */
    public static final class C10292c extends AbstractC10291b {
        /* renamed from: c */
        public static int m12729c(byte[] bArr, int i, int i2) {
            while (i < i2 && bArr[i] >= 0) {
                i++;
            }
            return i >= i2 ? 0 : m12728d(bArr, i, i2);
        }

        /* renamed from: d */
        public static int m12728d(byte[] bArr, int i, int i2) {
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
                            return C10289j1.m12750c(bArr, i3, i2);
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
                        return C10289j1.m12750c(bArr, i3, i2);
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

        @Override // p081h.p203i.p401g.C10289j1.AbstractC10291b
        /* renamed from: a */
        public int mo12726a(int i, byte[] bArr, int i2, int i3) {
            int i4;
            int i5 = i2;
            if (i != 0) {
                if (i2 >= i3) {
                    return i;
                }
                byte b = (byte) i;
                if (b < -32) {
                    if (b < -62) {
                        return -1;
                    }
                    i5 = i2 + 1;
                    if (bArr[i2] > -65) {
                        return -1;
                    }
                } else if (b < -16) {
                    byte b2 = (byte) ((i >> 8) ^ (-1));
                    byte b3 = b2;
                    int i6 = i2;
                    if (b2 == 0) {
                        i6 = i2 + 1;
                        b3 = bArr[i2];
                        if (i6 >= i3) {
                            return C10289j1.m12753b(b, b3);
                        }
                    }
                    if (b3 > -65) {
                        return -1;
                    }
                    if (b == -32 && b3 < -96) {
                        return -1;
                    }
                    if (b == -19 && b3 >= -96) {
                        return -1;
                    }
                    i5 = i6 + 1;
                    if (bArr[i6] > -65) {
                        return -1;
                    }
                } else {
                    byte b4 = (byte) ((i >> 8) ^ (-1));
                    byte b5 = 0;
                    if (b4 == 0) {
                        int i7 = i2 + 1;
                        byte b6 = bArr[i2];
                        b4 = b6;
                        i4 = i7;
                        if (i7 >= i3) {
                            return C10289j1.m12753b(b, b6);
                        }
                    } else {
                        b5 = (byte) (i >> 16);
                        i4 = i2;
                    }
                    byte b7 = b5;
                    int i8 = i4;
                    if (b5 == 0) {
                        i8 = i4 + 1;
                        b7 = bArr[i4];
                        if (i8 >= i3) {
                            return C10289j1.m12752b(b, b4, b7);
                        }
                    }
                    if (b4 > -65 || (((b << 28) + (b4 + 112)) >> 30) != 0 || b7 > -65) {
                        return -1;
                    }
                    i5 = i8 + 1;
                    if (bArr[i8] > -65) {
                        return -1;
                    }
                }
                return m12729c(bArr, i5, i3);
            }
            return m12729c(bArr, i5, i3);
        }

        @Override // p081h.p203i.p401g.C10289j1.AbstractC10291b
        /* renamed from: a */
        public int mo12725a(CharSequence charSequence, byte[] bArr, int i, int i2) {
            int i3;
            int i4;
            char charAt;
            int length = charSequence.length();
            int i5 = i2 + i;
            int i6 = 0;
            while (i6 < length && (i4 = i6 + i) < i5 && (charAt = charSequence.charAt(i6)) < 128) {
                bArr[i4] = (byte) charAt;
                i6++;
            }
            if (i6 == length) {
                return i + length;
            }
            int i7 = i + i6;
            int i8 = i6;
            while (i8 < length) {
                char charAt2 = charSequence.charAt(i8);
                if (charAt2 < 128 && i7 < i5) {
                    i7++;
                    bArr[i7] = (byte) charAt2;
                } else if (charAt2 < 2048 && i7 <= i5 - 2) {
                    int i9 = i7 + 1;
                    bArr[i7] = (byte) ((charAt2 >>> 6) | 960);
                    i7 = i9 + 1;
                    bArr[i9] = (byte) ((charAt2 & '?') | 128);
                } else if ((charAt2 < 55296 || 57343 < charAt2) && i7 <= i5 - 3) {
                    int i10 = i7 + 1;
                    bArr[i7] = (byte) ((charAt2 >>> '\f') | 480);
                    int i11 = i10 + 1;
                    bArr[i10] = (byte) (((charAt2 >>> 6) & 63) | 128);
                    i7 = i11 + 1;
                    bArr[i11] = (byte) ((charAt2 & '?') | 128);
                } else if (i7 <= i5 - 4) {
                    int i12 = i8 + 1;
                    if (i12 != charSequence.length()) {
                        char charAt3 = charSequence.charAt(i12);
                        if (Character.isSurrogatePair(charAt2, charAt3)) {
                            int codePoint = Character.toCodePoint(charAt2, charAt3);
                            int i13 = i7 + 1;
                            bArr[i7] = (byte) ((codePoint >>> 18) | 240);
                            int i14 = i13 + 1;
                            bArr[i13] = (byte) (((codePoint >>> 12) & 63) | 128);
                            int i15 = i14 + 1;
                            bArr[i14] = (byte) (((codePoint >>> 6) & 63) | 128);
                            i7 = i15 + 1;
                            bArr[i15] = (byte) ((codePoint & 63) | 128);
                            i8 = i12;
                        } else {
                            i8 = i12;
                        }
                    }
                    throw new C10293d(i8 - 1, length);
                } else if (55296 > charAt2 || charAt2 > 57343 || ((i3 = i8 + 1) != charSequence.length() && Character.isSurrogatePair(charAt2, charSequence.charAt(i3)))) {
                    throw new ArrayIndexOutOfBoundsException("Failed writing " + charAt2 + " at index " + i7);
                } else {
                    throw new C10293d(i8, length);
                }
                i8++;
            }
            return i7;
        }

        @Override // p081h.p203i.p401g.C10289j1.AbstractC10291b
        /* renamed from: a */
        public String mo12724a(byte[] bArr, int i, int i2) throws C10222a0 {
            if ((i | i2 | ((bArr.length - i) - i2)) >= 0) {
                int i3 = i + i2;
                char[] cArr = new char[i2];
                int i4 = 0;
                while (i < i3) {
                    byte b = bArr[i];
                    if (!C10290a.m12734e(b)) {
                        break;
                    }
                    i++;
                    C10290a.m12738b(b, cArr, i4);
                    i4++;
                }
                int i5 = i;
                int i6 = i4;
                while (i5 < i3) {
                    int i7 = i5 + 1;
                    byte b2 = bArr[i5];
                    if (C10290a.m12734e(b2)) {
                        i6++;
                        C10290a.m12738b(b2, cArr, i6);
                        i5 = i7;
                        while (i5 < i3) {
                            byte b3 = bArr[i5];
                            if (!C10290a.m12734e(b3)) {
                                break;
                            }
                            i5++;
                            C10290a.m12738b(b3, cArr, i6);
                            i6++;
                        }
                    } else if (C10290a.m12732g(b2)) {
                        if (i7 < i3) {
                            C10290a.m12739b(b2, bArr[i7], cArr, i6);
                            i5 = i7 + 1;
                            i6++;
                        } else {
                            throw C10222a0.m13074e();
                        }
                    } else if (C10290a.m12733f(b2)) {
                        if (i7 < i3 - 1) {
                            int i8 = i7 + 1;
                            C10290a.m12740b(b2, bArr[i7], bArr[i8], cArr, i6);
                            i5 = i8 + 1;
                            i6++;
                        } else {
                            throw C10222a0.m13074e();
                        }
                    } else if (i7 < i3 - 2) {
                        int i9 = i7 + 1;
                        byte b4 = bArr[i7];
                        int i10 = i9 + 1;
                        C10290a.m12741b(b2, b4, bArr[i9], bArr[i10], cArr, i6);
                        i5 = i10 + 1;
                        i6 = i6 + 1 + 1;
                    } else {
                        throw C10222a0.m13074e();
                    }
                }
                return new String(cArr, 0, i6);
            }
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
        }
    }

    /* renamed from: h.i.g.j1$d */
    /* loaded from: classes2-dex2jar.jar:h/i/g/j1$d.class */
    public static class C10293d extends IllegalArgumentException {
        public C10293d(int i, int i2) {
            super("Unpaired surrogate at index " + i + " of " + i2);
        }
    }

    /* renamed from: h.i.g.j1$e */
    /* loaded from: classes2-dex2jar.jar:h/i/g/j1$e.class */
    public static final class C10294e extends AbstractC10291b {
        /* renamed from: a */
        public static int m12723a(byte[] bArr, int i, long j, int i2) {
            if (i2 == 0) {
                return C10289j1.m12754b(i);
            }
            if (i2 == 1) {
                return C10289j1.m12753b(i, C10279i1.m12789a(bArr, j));
            }
            if (i2 == 2) {
                return C10289j1.m12752b(i, C10279i1.m12789a(bArr, j), C10279i1.m12789a(bArr, j + 1));
            }
            throw new AssertionError();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r12v0 */
        /* JADX WARN: Type inference failed for: r12v1, types: [long] */
        /* JADX WARN: Type inference failed for: r12v3, types: [long] */
        /* JADX WARN: Type inference failed for: r7v14 */
        /* JADX WARN: Type inference failed for: r7v3, types: [long] */
        /* JADX WARN: Type inference failed for: r7v9 */
        /* JADX WARN: Unknown variable types count: 2 */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static int m12722a(byte[] r6, long r7, int r9) {
            /*
                Method dump skipped, instructions count: 303
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p401g.C10289j1.C10294e.m12722a(byte[], long, int):int");
        }

        /* renamed from: a */
        public static boolean m12727a() {
            return C10279i1.m12778d() && C10279i1.m12775e();
        }

        /* renamed from: b */
        public static int m12721b(byte[] bArr, long j, int i) {
            int i2 = 0;
            if (i < 16) {
                return 0;
            }
            while (i2 < i) {
                if (C10279i1.m12789a(bArr, j) < 0) {
                    return i2;
                }
                i2++;
                j = 1 + j;
            }
            return i;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v55, types: [long] */
        /* JADX WARN: Type inference failed for: r15v0, types: [long] */
        /* JADX WARN: Type inference failed for: r19v0, types: [long] */
        /* JADX WARN: Type inference failed for: r19v1 */
        /* JADX WARN: Type inference failed for: r19v6 */
        /* JADX WARN: Type inference failed for: r19v7 */
        /* JADX WARN: Type inference failed for: r19v8 */
        /* JADX WARN: Type inference failed for: r21v1, types: [long] */
        /* JADX WARN: Type inference failed for: r21v3 */
        /* JADX WARN: Type inference failed for: r21v4, types: [long] */
        /* JADX WARN: Type inference failed for: r21v6 */
        /* JADX WARN: Type inference failed for: r21v7 */
        /* JADX WARN: Unknown variable types count: 4 */
        @Override // p081h.p203i.p401g.C10289j1.AbstractC10291b
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int mo12726a(int r9, byte[] r10, int r11, int r12) {
            /*
                Method dump skipped, instructions count: 387
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p401g.C10289j1.C10294e.mo12726a(int, byte[], int, int):int");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v39, types: [java.lang.StringBuilder] */
        /* JADX WARN: Type inference failed for: r12v1, types: [long] */
        /* JADX WARN: Type inference failed for: r12v11 */
        /* JADX WARN: Type inference failed for: r12v12 */
        /* JADX WARN: Type inference failed for: r17v0 */
        /* JADX WARN: Type inference failed for: r17v1, types: [long] */
        /* JADX WARN: Type inference failed for: r17v2 */
        /* JADX WARN: Type inference failed for: r17v4 */
        /* JADX WARN: Type inference failed for: r17v6 */
        /* JADX WARN: Type inference failed for: r17v7 */
        /* JADX WARN: Type inference failed for: r17v8 */
        /* JADX WARN: Type inference failed for: r19v0 */
        /* JADX WARN: Type inference failed for: r19v1, types: [long] */
        /* JADX WARN: Type inference failed for: r19v5 */
        /* JADX WARN: Unknown variable types count: 3 */
        @Override // p081h.p203i.p401g.C10289j1.AbstractC10291b
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int mo12725a(java.lang.CharSequence r8, byte[] r9, int r10, int r11) {
            /*
                Method dump skipped, instructions count: 670
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p401g.C10289j1.C10294e.mo12725a(java.lang.CharSequence, byte[], int, int):int");
        }

        @Override // p081h.p203i.p401g.C10289j1.AbstractC10291b
        /* renamed from: a */
        public String mo12724a(byte[] bArr, int i, int i2) throws C10222a0 {
            if ((i | i2 | ((bArr.length - i) - i2)) >= 0) {
                int i3 = i + i2;
                char[] cArr = new char[i2];
                int i4 = 0;
                while (i < i3) {
                    byte a = C10279i1.m12789a(bArr, i);
                    if (!C10290a.m12734e(a)) {
                        break;
                    }
                    i++;
                    C10290a.m12738b(a, cArr, i4);
                    i4++;
                }
                int i5 = i;
                int i6 = i4;
                while (i5 < i3) {
                    int i7 = i5 + 1;
                    byte a2 = C10279i1.m12789a(bArr, i5);
                    if (C10290a.m12734e(a2)) {
                        i6++;
                        C10290a.m12738b(a2, cArr, i6);
                        i5 = i7;
                        while (i5 < i3) {
                            byte a3 = C10279i1.m12789a(bArr, i5);
                            if (!C10290a.m12734e(a3)) {
                                break;
                            }
                            i5++;
                            C10290a.m12738b(a3, cArr, i6);
                            i6++;
                        }
                    } else if (C10290a.m12732g(a2)) {
                        if (i7 < i3) {
                            C10290a.m12739b(a2, C10279i1.m12789a(bArr, i7), cArr, i6);
                            i5 = i7 + 1;
                            i6++;
                        } else {
                            throw C10222a0.m13074e();
                        }
                    } else if (C10290a.m12733f(a2)) {
                        if (i7 < i3 - 1) {
                            int i8 = i7 + 1;
                            C10290a.m12740b(a2, C10279i1.m12789a(bArr, i7), C10279i1.m12789a(bArr, i8), cArr, i6);
                            i5 = i8 + 1;
                            i6++;
                        } else {
                            throw C10222a0.m13074e();
                        }
                    } else if (i7 < i3 - 2) {
                        int i9 = i7 + 1;
                        int i10 = i9 + 1;
                        C10290a.m12741b(a2, C10279i1.m12789a(bArr, i7), C10279i1.m12789a(bArr, i9), C10279i1.m12789a(bArr, i10), cArr, i6);
                        i5 = i10 + 1;
                        i6 = i6 + 1 + 1;
                    } else {
                        throw C10222a0.m13074e();
                    }
                }
                return new String(cArr, 0, i6);
            }
            throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
        }
    }

    static {
        f23134a = (!C10294e.m12727a() || C10242e.m13029b()) ? new C10292c() : new C10294e();
    }

    /* renamed from: a */
    public static int m12759a(CharSequence charSequence) {
        int i;
        int length = charSequence.length();
        int i2 = 0;
        while (i2 < length && charSequence.charAt(i2) < 128) {
            i2++;
        }
        int i3 = length;
        while (true) {
            i = i3;
            if (i2 < length) {
                char charAt = charSequence.charAt(i2);
                if (charAt >= 2048) {
                    i = i3 + m12758a(charSequence, i2);
                    break;
                }
                i3 += (127 - charAt) >>> 31;
                i2++;
            } else {
                break;
            }
        }
        if (i >= length) {
            return i;
        }
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (i + AnimatedStateListDrawableCompat.AnimatedStateListState.REVERSED_BIT));
    }

    /* renamed from: a */
    public static int m12758a(CharSequence charSequence, int i) {
        int i2;
        int length = charSequence.length();
        int i3 = 0;
        while (i < length) {
            char charAt = charSequence.charAt(i);
            if (charAt < 2048) {
                i3 += (127 - charAt) >>> 31;
                i2 = i;
            } else {
                int i4 = i3 + 2;
                i3 = i4;
                i2 = i;
                if (55296 <= charAt) {
                    i3 = i4;
                    i2 = i;
                    if (charAt > 57343) {
                        continue;
                    } else if (Character.codePointAt(charSequence, i) >= 65536) {
                        i2 = i + 1;
                        i3 = i4;
                    } else {
                        throw new C10293d(i, length);
                    }
                } else {
                    continue;
                }
            }
            i = i2 + 1;
        }
        return i3;
    }

    /* renamed from: a */
    public static int m12757a(CharSequence charSequence, byte[] bArr, int i, int i2) {
        return f23134a.mo12725a(charSequence, bArr, i, i2);
    }

    /* renamed from: a */
    public static boolean m12756a(byte[] bArr) {
        return f23134a.m12730b(bArr, 0, bArr.length);
    }

    /* renamed from: b */
    public static int m12754b(int i) {
        int i2 = i;
        if (i > -12) {
            i2 = -1;
        }
        return i2;
    }

    /* renamed from: b */
    public static int m12753b(int i, int i2) {
        return (i > -12 || i2 > -65) ? -1 : i ^ (i2 << 8);
    }

    /* renamed from: b */
    public static int m12752b(int i, int i2, int i3) {
        return (i > -12 || i2 > -65 || i3 > -65) ? -1 : (i ^ (i2 << 8)) ^ (i3 << 16);
    }

    /* renamed from: b */
    public static String m12751b(byte[] bArr, int i, int i2) throws C10222a0 {
        return f23134a.mo12724a(bArr, i, i2);
    }

    /* renamed from: c */
    public static int m12750c(byte[] bArr, int i, int i2) {
        byte b = bArr[i - 1];
        int i3 = i2 - i;
        if (i3 == 0) {
            return m12754b(b);
        }
        if (i3 == 1) {
            return m12753b(b, bArr[i]);
        }
        if (i3 == 2) {
            return m12752b(b, bArr[i], bArr[i + 1]);
        }
        throw new AssertionError();
    }

    /* renamed from: d */
    public static boolean m12749d(byte[] bArr, int i, int i2) {
        return f23134a.m12730b(bArr, i, i2);
    }
}
