package com.google.common.p291io;

import com.google.common.base.C8751g;
import com.google.common.base.C8756j;
import java.io.IOException;
import java.math.RoundingMode;
import java.util.Arrays;
import p078c.p084c.p119c.p120a.C1971a;
/* renamed from: com.google.common.io.BaseEncoding */
/* loaded from: classes2-dex2jar.jar:com/google/common/io/BaseEncoding.class */
public abstract class BaseEncoding {

    /* renamed from: a */
    private static final BaseEncoding f38727a = new C8825c("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", '=');

    /* renamed from: b */
    private static final BaseEncoding f38728b = new C8825c("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_", '=');

    /* renamed from: c */
    private static final BaseEncoding f38729c = new C8826d("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567", '=');

    /* renamed from: d */
    private static final BaseEncoding f38730d = new C8826d("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV", '=');

    /* renamed from: e */
    private static final BaseEncoding f38731e = new C8824b("base16()", "0123456789ABCDEF");

    /* renamed from: com.google.common.io.BaseEncoding$DecodingException */
    /* loaded from: classes2-dex2jar.jar:com/google/common/io/BaseEncoding$DecodingException.class */
    public static final class DecodingException extends IOException {
        DecodingException(String str) {
            super(str);
        }

        DecodingException(Throwable th) {
            super(th);
        }
    }

    /* renamed from: com.google.common.io.BaseEncoding$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/io/BaseEncoding$a.class */
    public static final class C8823a {

        /* renamed from: a */
        private final String f38732a;

        /* renamed from: b */
        private final char[] f38733b;

        /* renamed from: c */
        final int f38734c;

        /* renamed from: d */
        final int f38735d;

        /* renamed from: e */
        final int f38736e;

        /* renamed from: f */
        final int f38737f;

        /* renamed from: g */
        private final byte[] f38738g;

        /* renamed from: h */
        private final boolean[] f38739h;

        C8823a(String str, char[] cArr) {
            this.f38732a = (String) C8756j.m2789l(str);
            this.f38733b = (char[]) C8756j.m2789l(cArr);
            try {
                int m28423d = C1971a.m28423d(cArr.length, RoundingMode.UNNECESSARY);
                this.f38735d = m28423d;
                int min = Math.min(8, Integer.lowestOneBit(m28423d));
                try {
                    this.f38736e = 8 / min;
                    this.f38737f = m28423d / min;
                    this.f38734c = cArr.length - 1;
                    byte[] bArr = new byte[128];
                    Arrays.fill(bArr, (byte) -1);
                    for (int i = 0; i < cArr.length; i++) {
                        char c = cArr[i];
                        C8756j.m2795f(c < 128, "Non-ASCII character: %s", c);
                        C8756j.m2795f(bArr[c] == -1, "Duplicate character: %s", c);
                        bArr[c] = (byte) i;
                    }
                    this.f38738g = bArr;
                    boolean[] zArr = new boolean[this.f38736e];
                    for (int i2 = 0; i2 < this.f38737f; i2++) {
                        zArr[C1971a.m28426a(i2 * 8, this.f38735d, RoundingMode.CEILING)] = true;
                    }
                    this.f38739h = zArr;
                } catch (ArithmeticException e) {
                    throw new IllegalArgumentException("Illegal alphabet " + new String(cArr), e);
                }
            } catch (ArithmeticException e2) {
                throw new IllegalArgumentException("Illegal alphabet length " + cArr.length, e2);
            }
        }

        /* renamed from: b */
        int m2591b(char c) {
            if (c > 127) {
                throw new DecodingException("Unrecognized character: 0x" + Integer.toHexString(c));
            }
            byte b = this.f38738g[c];
            if (b != -1) {
                return b;
            }
            if (c <= ' ' || c == 127) {
                throw new DecodingException("Unrecognized character: 0x" + Integer.toHexString(c));
            }
            throw new DecodingException("Unrecognized character: " + c);
        }

        /* renamed from: c */
        char m2590c(int i) {
            return this.f38733b[i];
        }

        /* renamed from: d */
        boolean m2589d(int i) {
            return this.f38739h[i % this.f38736e];
        }

        /* renamed from: e */
        public boolean m2588e(char c) {
            byte[] bArr = this.f38738g;
            return c < bArr.length && bArr[c] != -1;
        }

        public boolean equals(Object obj) {
            if (obj instanceof C8823a) {
                return Arrays.equals(this.f38733b, ((C8823a) obj).f38733b);
            }
            return false;
        }

        public int hashCode() {
            return Arrays.hashCode(this.f38733b);
        }

        public String toString() {
            return this.f38732a;
        }
    }

    /* renamed from: com.google.common.io.BaseEncoding$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/io/BaseEncoding$b.class */
    static final class C8824b extends C8826d {

        /* renamed from: h */
        final char[] f38740h;

        private C8824b(C8823a c8823a) {
            super(c8823a, null);
            this.f38740h = new char[512];
            C8756j.m2797d(c8823a.f38733b.length == 16);
            for (int i = 0; i < 256; i++) {
                this.f38740h[i] = c8823a.m2590c(i >>> 4);
                this.f38740h[i | 256] = c8823a.m2590c(i & 15);
            }
        }

        C8824b(String str, String str2) {
            this(new C8823a(str, str2.toCharArray()));
        }

        @Override // com.google.common.p291io.BaseEncoding.C8826d, com.google.common.p291io.BaseEncoding
        /* renamed from: e */
        int mo2587e(byte[] bArr, CharSequence charSequence) {
            C8756j.m2789l(bArr);
            if (charSequence.length() % 2 == 1) {
                throw new DecodingException("Invalid input length " + charSequence.length());
            }
            int i = 0;
            int i2 = 0;
            while (i < charSequence.length()) {
                bArr[i2] = (byte) ((this.f38741f.m2591b(charSequence.charAt(i)) << 4) | this.f38741f.m2591b(charSequence.charAt(i + 1)));
                i += 2;
                i2++;
            }
            return i2;
        }

        @Override // com.google.common.p291io.BaseEncoding.C8826d, com.google.common.p291io.BaseEncoding
        /* renamed from: h */
        void mo2586h(Appendable appendable, byte[] bArr, int i, int i2) {
            C8756j.m2789l(appendable);
            C8756j.m2784q(i, i + i2, bArr.length);
            for (int i3 = 0; i3 < i2; i3++) {
                int i4 = bArr[i + i3] & 255;
                appendable.append(this.f38740h[i4]);
                appendable.append(this.f38740h[i4 | 256]);
            }
        }

        @Override // com.google.common.p291io.BaseEncoding.C8826d
        /* renamed from: o */
        BaseEncoding mo2580o(C8823a c8823a, Character ch) {
            return new C8824b(c8823a);
        }
    }

    /* renamed from: com.google.common.io.BaseEncoding$c */
    /* loaded from: classes2-dex2jar.jar:com/google/common/io/BaseEncoding$c.class */
    static final class C8825c extends C8826d {
        private C8825c(C8823a c8823a, Character ch) {
            super(c8823a, ch);
            C8756j.m2797d(c8823a.f38733b.length == 64);
        }

        C8825c(String str, String str2, Character ch) {
            this(new C8823a(str, str2.toCharArray()), ch);
        }

        @Override // com.google.common.p291io.BaseEncoding.C8826d, com.google.common.p291io.BaseEncoding
        /* renamed from: e */
        int mo2587e(byte[] bArr, CharSequence charSequence) {
            C8756j.m2789l(bArr);
            CharSequence mo2582m = mo2582m(charSequence);
            if (!this.f38741f.m2589d(mo2582m.length())) {
                throw new DecodingException("Invalid input length " + mo2582m.length());
            }
            int i = 0;
            int i2 = 0;
            while (i < mo2582m.length()) {
                int i3 = i + 1;
                int m2591b = this.f38741f.m2591b(mo2582m.charAt(i));
                int i4 = i3 + 1;
                int m2591b2 = (m2591b << 18) | (this.f38741f.m2591b(mo2582m.charAt(i3)) << 12);
                int i5 = i2 + 1;
                bArr[i2] = (byte) (m2591b2 >>> 16);
                int i6 = i5;
                int i7 = i4;
                if (i4 < mo2582m.length()) {
                    i = i4 + 1;
                    int m2591b3 = m2591b2 | (this.f38741f.m2591b(mo2582m.charAt(i4)) << 6);
                    i2 = i5 + 1;
                    bArr[i5] = (byte) ((m2591b3 >>> 8) & 255);
                    if (i < mo2582m.length()) {
                        int i8 = i + 1;
                        int m2591b4 = this.f38741f.m2591b(mo2582m.charAt(i));
                        i6 = i2 + 1;
                        bArr[i2] = (byte) ((m2591b3 | m2591b4) & 255);
                        i7 = i8;
                    }
                }
                int i9 = i6;
                i = i7;
                i2 = i9;
            }
            return i2;
        }

        @Override // com.google.common.p291io.BaseEncoding.C8826d, com.google.common.p291io.BaseEncoding
        /* renamed from: h */
        void mo2586h(Appendable appendable, byte[] bArr, int i, int i2) {
            C8756j.m2789l(appendable);
            int i3 = i + i2;
            C8756j.m2784q(i, i3, bArr.length);
            while (i2 >= 3) {
                int i4 = i + 1;
                int i5 = i4 + 1;
                int i6 = ((bArr[i] & 255) << 16) | ((bArr[i4] & 255) << 8) | (bArr[i5] & 255);
                appendable.append(this.f38741f.m2590c(i6 >>> 18));
                appendable.append(this.f38741f.m2590c((i6 >>> 12) & 63));
                appendable.append(this.f38741f.m2590c((i6 >>> 6) & 63));
                appendable.append(this.f38741f.m2590c(i6 & 63));
                i2 -= 3;
                i = i5 + 1;
            }
            if (i < i3) {
                m2581n(appendable, bArr, i, i3 - i);
            }
        }

        @Override // com.google.common.p291io.BaseEncoding.C8826d
        /* renamed from: o */
        BaseEncoding mo2580o(C8823a c8823a, Character ch) {
            return new C8825c(c8823a, ch);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.common.io.BaseEncoding$d */
    /* loaded from: classes2-dex2jar.jar:com/google/common/io/BaseEncoding$d.class */
    public static class C8826d extends BaseEncoding {

        /* renamed from: f */
        final C8823a f38741f;

        /* renamed from: g */
        final Character f38742g;

        C8826d(C8823a c8823a, Character ch) {
            this.f38741f = (C8823a) C8756j.m2789l(c8823a);
            C8756j.m2793h(ch == null || !c8823a.m2588e(ch.charValue()), "Padding character %s was already in alphabet", ch);
            this.f38742g = ch;
        }

        C8826d(String str, String str2, Character ch) {
            this(new C8823a(str, str2.toCharArray()), ch);
        }

        /* JADX WARN: Type inference failed for: r0v36, types: [long] */
        /* JADX WARN: Type inference failed for: r0v43, types: [long] */
        @Override // com.google.common.p291io.BaseEncoding
        /* renamed from: e */
        int mo2587e(byte[] bArr, CharSequence charSequence) {
            int i;
            C8823a c8823a;
            C8756j.m2789l(bArr);
            CharSequence mo2582m = mo2582m(charSequence);
            if (!this.f38741f.m2589d(mo2582m.length())) {
                throw new DecodingException("Invalid input length " + mo2582m.length());
            }
            int i2 = 0;
            int i3 = 0;
            while (i2 < mo2582m.length()) {
                int i4 = 0;
                int i5 = 0;
                int i6 = 0;
                while (true) {
                    i = i6;
                    c8823a = this.f38741f;
                    if (i5 >= c8823a.f38736e) {
                        break;
                    }
                    ?? r0 = i4 << c8823a.f38735d;
                    i4 = r0;
                    int i7 = i;
                    if (i2 + i5 < mo2582m.length()) {
                        i4 = r0 | this.f38741f.m2591b(mo2582m.charAt(i + i2));
                        i7 = i + 1;
                    }
                    i5++;
                    i6 = i7;
                }
                int i8 = c8823a.f38737f;
                int i9 = c8823a.f38735d;
                int i10 = (i8 - 1) * 8;
                while (i10 >= (i8 * 8) - (i * i9)) {
                    bArr[i3] = (byte) ((i4 >>> i10) & 255);
                    i10 -= 8;
                    i3++;
                }
                i2 += this.f38741f.f38736e;
            }
            return i3;
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof C8826d) {
                C8826d c8826d = (C8826d) obj;
                z = false;
                if (this.f38741f.equals(c8826d.f38741f)) {
                    z = false;
                    if (C8751g.m2804a(this.f38742g, c8826d.f38742g)) {
                        z = true;
                    }
                }
            }
            return z;
        }

        @Override // com.google.common.p291io.BaseEncoding
        /* renamed from: h */
        void mo2586h(Appendable appendable, byte[] bArr, int i, int i2) {
            C8756j.m2789l(appendable);
            C8756j.m2784q(i, i + i2, bArr.length);
            int i3 = 0;
            while (true) {
                int i4 = i3;
                if (i4 < i2) {
                    m2581n(appendable, bArr, i + i4, Math.min(this.f38741f.f38737f, i2 - i4));
                    i3 = i4 + this.f38741f.f38737f;
                } else {
                    return;
                }
            }
        }

        public int hashCode() {
            return this.f38741f.hashCode() ^ C8751g.m2803b(this.f38742g);
        }

        @Override // com.google.common.p291io.BaseEncoding
        /* renamed from: j */
        int mo2585j(int i) {
            return (int) (((this.f38741f.f38735d * i) + 7) / 8);
        }

        @Override // com.google.common.p291io.BaseEncoding
        /* renamed from: k */
        int mo2584k(int i) {
            C8823a c8823a = this.f38741f;
            return c8823a.f38736e * C1971a.m28426a(i, c8823a.f38737f, RoundingMode.CEILING);
        }

        @Override // com.google.common.p291io.BaseEncoding
        /* renamed from: l */
        public BaseEncoding mo2583l() {
            return this.f38742g == null ? this : mo2580o(this.f38741f, null);
        }

        @Override // com.google.common.p291io.BaseEncoding
        /* renamed from: m */
        CharSequence mo2582m(CharSequence charSequence) {
            C8756j.m2789l(charSequence);
            Character ch = this.f38742g;
            if (ch == null) {
                return charSequence;
            }
            char charValue = ch.charValue();
            int length = charSequence.length() - 1;
            while (length >= 0 && charSequence.charAt(length) == charValue) {
                length--;
            }
            return charSequence.subSequence(0, length + 1);
        }

        /* JADX WARN: Type inference failed for: r0v36, types: [long] */
        /* renamed from: n */
        void m2581n(Appendable appendable, byte[] bArr, int i, int i2) {
            int i3;
            C8756j.m2789l(appendable);
            C8756j.m2784q(i, i + i2, bArr.length);
            C8756j.m2797d(i2 <= this.f38741f.f38737f);
            int i4 = 0;
            for (int i5 = 0; i5 < i2; i5++) {
                i4 = (i4 | (bArr[i + i5] & 255)) << 8;
            }
            int i6 = this.f38741f.f38735d;
            int i7 = 0;
            while (true) {
                i3 = i7;
                if (i3 >= i2 * 8) {
                    break;
                }
                int i8 = (int) (i4 >>> ((((i2 + 1) * 8) - i6) - i3));
                C8823a c8823a = this.f38741f;
                appendable.append(c8823a.m2590c(i8 & c8823a.f38734c));
                i7 = i3 + this.f38741f.f38735d;
            }
            if (this.f38742g != null) {
                while (i3 < this.f38741f.f38737f * 8) {
                    appendable.append(this.f38742g.charValue());
                    i3 += this.f38741f.f38735d;
                }
            }
        }

        /* renamed from: o */
        BaseEncoding mo2580o(C8823a c8823a, Character ch) {
            return new C8826d(c8823a, ch);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("BaseEncoding.");
            sb.append(this.f38741f.toString());
            if (8 % this.f38741f.f38735d != 0) {
                if (this.f38742g == null) {
                    sb.append(".omitPadding()");
                } else {
                    sb.append(".withPadChar('");
                    sb.append(this.f38742g);
                    sb.append("')");
                }
            }
            return sb.toString();
        }
    }

    BaseEncoding() {
    }

    /* renamed from: a */
    public static BaseEncoding m2599a() {
        return f38727a;
    }

    /* renamed from: b */
    public static BaseEncoding m2598b() {
        return f38728b;
    }

    /* renamed from: i */
    private static byte[] m2593i(byte[] bArr, int i) {
        if (i == bArr.length) {
            return bArr;
        }
        byte[] bArr2 = new byte[i];
        System.arraycopy(bArr, 0, bArr2, 0, i);
        return bArr2;
    }

    /* renamed from: c */
    public final byte[] m2597c(CharSequence charSequence) {
        try {
            return m2596d(charSequence);
        } catch (DecodingException e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: d */
    final byte[] m2596d(CharSequence charSequence) {
        CharSequence mo2582m = mo2582m(charSequence);
        byte[] bArr = new byte[mo2585j(mo2582m.length())];
        return m2593i(bArr, mo2587e(bArr, mo2582m));
    }

    /* renamed from: e */
    abstract int mo2587e(byte[] bArr, CharSequence charSequence);

    /* renamed from: f */
    public String m2595f(byte[] bArr) {
        return m2594g(bArr, 0, bArr.length);
    }

    /* renamed from: g */
    public final String m2594g(byte[] bArr, int i, int i2) {
        C8756j.m2784q(i, i + i2, bArr.length);
        StringBuilder sb = new StringBuilder(mo2584k(i2));
        try {
            mo2586h(sb, bArr, i, i2);
            return sb.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: h */
    abstract void mo2586h(Appendable appendable, byte[] bArr, int i, int i2);

    /* renamed from: j */
    abstract int mo2585j(int i);

    /* renamed from: k */
    abstract int mo2584k(int i);

    /* renamed from: l */
    public abstract BaseEncoding mo2583l();

    /* renamed from: m */
    abstract CharSequence mo2582m(CharSequence charSequence);
}
