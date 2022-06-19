package com.google.common.p387io;

import com.google.common.base.C15386j;
import com.google.common.base.C15391m;
import com.google.common.p385a.C15357a;
import io.objectbox.model.PropertyFlags;
import java.io.IOException;
import java.math.RoundingMode;
import java.util.Arrays;
/* renamed from: com.google.common.io.BaseEncoding */
/* loaded from: classes4-dex2jar.jar:com/google/common/io/BaseEncoding.class */
public abstract class BaseEncoding {

    /* renamed from: a */
    private static final BaseEncoding f55887a = new C15570c("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", '=');

    /* renamed from: b */
    private static final BaseEncoding f55888b = new C15570c("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_", '=');

    /* renamed from: c */
    private static final BaseEncoding f55889c = new C15571d("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567", '=');

    /* renamed from: d */
    private static final BaseEncoding f55890d = new C15571d("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV", '=');

    /* renamed from: e */
    private static final BaseEncoding f55891e = new C15569b("base16()", "0123456789ABCDEF");

    /* renamed from: com.google.common.io.BaseEncoding$DecodingException */
    /* loaded from: classes4-dex2jar.jar:com/google/common/io/BaseEncoding$DecodingException.class */
    public static final class DecodingException extends IOException {
        DecodingException(String str) {
            super(str);
        }

        DecodingException(Throwable th) {
            super(th);
        }
    }

    /* renamed from: com.google.common.io.BaseEncoding$a */
    /* loaded from: classes4-dex2jar.jar:com/google/common/io/BaseEncoding$a.class */
    public static final class C15568a {

        /* renamed from: a */
        final char[] f55892a;

        /* renamed from: b */
        final int f55893b;

        /* renamed from: c */
        final int f55894c;

        /* renamed from: d */
        final int f55895d;

        /* renamed from: e */
        final int f55896e;

        /* renamed from: f */
        final byte[] f55897f;

        /* renamed from: g */
        private final String f55898g;

        /* renamed from: h */
        private final boolean[] f55899h;

        C15568a(String str, char[] cArr) {
            this.f55898g = (String) C15391m.m8946a(str);
            this.f55892a = (char[]) C15391m.m8946a(cArr);
            try {
                int m8984a = C15357a.m8984a(cArr.length, RoundingMode.UNNECESSARY);
                this.f55894c = m8984a;
                int min = Math.min(8, Integer.lowestOneBit(m8984a));
                try {
                    this.f55895d = 8 / min;
                    this.f55896e = m8984a / min;
                    this.f55893b = cArr.length - 1;
                    byte[] bArr = new byte[128];
                    Arrays.fill(bArr, (byte) -1);
                    for (int i = 0; i < cArr.length; i++) {
                        char c = cArr[i];
                        C15391m.m8941a(c < 128, "Non-ASCII character: %s", c);
                        C15391m.m8941a(bArr[c] == -1, "Duplicate character: %s", c);
                        bArr[c] = (byte) i;
                    }
                    this.f55897f = bArr;
                    boolean[] zArr = new boolean[this.f55895d];
                    for (int i2 = 0; i2 < this.f55896e; i2++) {
                        zArr[C15357a.m8985a(i2 * 8, this.f55894c, RoundingMode.CEILING)] = true;
                    }
                    this.f55899h = zArr;
                } catch (ArithmeticException e) {
                    String str2 = new String(cArr);
                    throw new IllegalArgumentException(str2.length() != 0 ? "Illegal alphabet ".concat(str2) : new String("Illegal alphabet "), e);
                }
            } catch (ArithmeticException e2) {
                int length = cArr.length;
                StringBuilder sb = new StringBuilder(35);
                sb.append("Illegal alphabet length ");
                sb.append(length);
                throw new IllegalArgumentException(sb.toString(), e2);
            }
        }

        /* renamed from: a */
        final int m8649a(char c) throws DecodingException {
            if (c > 127) {
                String valueOf = String.valueOf(Integer.toHexString(c));
                throw new DecodingException(valueOf.length() != 0 ? "Unrecognized character: 0x".concat(valueOf) : new String("Unrecognized character: 0x"));
            }
            byte b = this.f55897f[c];
            if (b != -1) {
                return b;
            }
            if (c <= ' ' || c == 127) {
                String valueOf2 = String.valueOf(Integer.toHexString(c));
                throw new DecodingException(valueOf2.length() != 0 ? "Unrecognized character: 0x".concat(valueOf2) : new String("Unrecognized character: 0x"));
            }
            StringBuilder sb = new StringBuilder(25);
            sb.append("Unrecognized character: ");
            sb.append(c);
            throw new DecodingException(sb.toString());
        }

        /* renamed from: a */
        final boolean m8648a(int i) {
            return this.f55899h[i % this.f55895d];
        }

        public final boolean equals(Object obj) {
            if (obj instanceof C15568a) {
                return Arrays.equals(this.f55892a, ((C15568a) obj).f55892a);
            }
            return false;
        }

        public final int hashCode() {
            return Arrays.hashCode(this.f55892a);
        }

        public final String toString() {
            return this.f55898g;
        }
    }

    /* renamed from: com.google.common.io.BaseEncoding$b */
    /* loaded from: classes4-dex2jar.jar:com/google/common/io/BaseEncoding$b.class */
    static final class C15569b extends C15571d {

        /* renamed from: a */
        final char[] f55900a;

        private C15569b(C15568a c15568a) {
            super(c15568a, null);
            this.f55900a = new char[512];
            C15391m.m8943a(c15568a.f55892a.length == 16);
            for (int i = 0; i < 256; i++) {
                this.f55900a[i] = c15568a.f55892a[i >>> 4];
                this.f55900a[i | PropertyFlags.INDEX_PARTIAL_SKIP_NULL] = c15568a.f55892a[i & 15];
            }
        }

        C15569b(String str, String str2) {
            this(new C15568a(str, str2.toCharArray()));
        }

        @Override // com.google.common.p387io.BaseEncoding.C15571d, com.google.common.p387io.BaseEncoding
        /* renamed from: a */
        final int mo8643a(byte[] bArr, CharSequence charSequence) throws DecodingException {
            C15391m.m8946a(bArr);
            if (charSequence.length() % 2 == 1) {
                int length = charSequence.length();
                StringBuilder sb = new StringBuilder(32);
                sb.append("Invalid input length ");
                sb.append(length);
                throw new DecodingException(sb.toString());
            }
            int i = 0;
            int i2 = 0;
            while (i < charSequence.length()) {
                bArr[i2] = (byte) ((this.f55901b.m8649a(charSequence.charAt(i)) << 4) | this.f55901b.m8649a(charSequence.charAt(i + 1)));
                i += 2;
                i2++;
            }
            return i2;
        }

        @Override // com.google.common.p387io.BaseEncoding.C15571d
        /* renamed from: a */
        final BaseEncoding mo8645a(C15568a c15568a) {
            return new C15569b(c15568a);
        }

        @Override // com.google.common.p387io.BaseEncoding.C15571d, com.google.common.p387io.BaseEncoding
        /* renamed from: a */
        final void mo8644a(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
            C15391m.m8946a(appendable);
            C15391m.m8948a(0, i2 + 0, bArr.length);
            for (int i3 = 0; i3 < i2; i3++) {
                int i4 = bArr[i3 + 0] & 255;
                appendable.append(this.f55900a[i4]);
                appendable.append(this.f55900a[i4 | PropertyFlags.INDEX_PARTIAL_SKIP_NULL]);
            }
        }
    }

    /* renamed from: com.google.common.io.BaseEncoding$c */
    /* loaded from: classes4-dex2jar.jar:com/google/common/io/BaseEncoding$c.class */
    static final class C15570c extends C15571d {
        private C15570c(C15568a c15568a, Character ch) {
            super(c15568a, ch);
            C15391m.m8943a(c15568a.f55892a.length == 64);
        }

        C15570c(String str, String str2, Character ch) {
            this(new C15568a(str, str2.toCharArray()), ch);
        }

        @Override // com.google.common.p387io.BaseEncoding.C15571d, com.google.common.p387io.BaseEncoding
        /* renamed from: a */
        final int mo8643a(byte[] bArr, CharSequence charSequence) throws DecodingException {
            C15391m.m8946a(bArr);
            CharSequence b = mo8640b(charSequence);
            if (!this.f55901b.m8648a(b.length())) {
                int length = b.length();
                StringBuilder sb = new StringBuilder(32);
                sb.append("Invalid input length ");
                sb.append(length);
                throw new DecodingException(sb.toString());
            }
            int i = 0;
            int i2 = 0;
            while (i < b.length()) {
                int i3 = i + 1;
                int m8649a = this.f55901b.m8649a(b.charAt(i));
                int i4 = i3 + 1;
                int m8649a2 = (m8649a << 18) | (this.f55901b.m8649a(b.charAt(i3)) << 12);
                int i5 = i2 + 1;
                bArr[i2] = (byte) (m8649a2 >>> 16);
                int i6 = i5;
                int i7 = i4;
                if (i4 < b.length()) {
                    i = i4 + 1;
                    int m8649a3 = m8649a2 | (this.f55901b.m8649a(b.charAt(i4)) << 6);
                    i2 = i5 + 1;
                    bArr[i5] = (byte) ((m8649a3 >>> 8) & 255);
                    if (i < b.length()) {
                        int i8 = i + 1;
                        int m8649a4 = this.f55901b.m8649a(b.charAt(i));
                        i6 = i2 + 1;
                        bArr[i2] = (byte) ((m8649a3 | m8649a4) & 255);
                        i7 = i8;
                    }
                }
                int i9 = i6;
                i = i7;
                i2 = i9;
            }
            return i2;
        }

        @Override // com.google.common.p387io.BaseEncoding.C15571d
        /* renamed from: a */
        final BaseEncoding mo8645a(C15568a c15568a) {
            return new C15570c(c15568a, null);
        }

        @Override // com.google.common.p387io.BaseEncoding.C15571d, com.google.common.p387io.BaseEncoding
        /* renamed from: a */
        final void mo8644a(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
            C15391m.m8946a(appendable);
            int i3 = i2 + 0;
            int i4 = 0;
            C15391m.m8948a(0, i3, bArr.length);
            while (i2 >= 3) {
                int i5 = i4 + 1;
                byte b = bArr[i4];
                int i6 = i5 + 1;
                i4 = i6 + 1;
                int i7 = ((bArr[i5] & 255) << 8) | ((b & 255) << 16) | (bArr[i6] & 255);
                appendable.append(this.f55901b.f55892a[i7 >>> 18]);
                appendable.append(this.f55901b.f55892a[(i7 >>> 12) & 63]);
                appendable.append(this.f55901b.f55892a[(i7 >>> 6) & 63]);
                appendable.append(this.f55901b.f55892a[i7 & 63]);
                i2 -= 3;
            }
            if (i4 < i3) {
                m8641b(appendable, bArr, i4, i3 - i4);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.common.io.BaseEncoding$d */
    /* loaded from: classes4-dex2jar.jar:com/google/common/io/BaseEncoding$d.class */
    public static class C15571d extends BaseEncoding {

        /* renamed from: b */
        final C15568a f55901b;

        /* renamed from: c */
        final Character f55902c;

        /* JADX WARN: Code restructure failed: missing block: B:11:0x003b, code lost:
            if ((r0 < r5.f55897f.length && r5.f55897f[r0] != -1) == false) goto L12;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        C15571d(com.google.common.p387io.BaseEncoding.C15568a r5, java.lang.Character r6) {
            /*
                r4 = this;
                r0 = r4
                r0.<init>()
                r0 = r4
                r1 = r5
                java.lang.Object r1 = com.google.common.base.C15391m.m8946a(r1)
                com.google.common.io.BaseEncoding$a r1 = (com.google.common.p387io.BaseEncoding.C15568a) r1
                r0.f55901b = r1
                r0 = 0
                r7 = r0
                r0 = r6
                if (r0 == 0) goto L3e
                r0 = r6
                char r0 = r0.charValue()
                r8 = r0
                r0 = r8
                r1 = r5
                byte[] r1 = r1.f55897f
                int r1 = r1.length
                if (r0 >= r1) goto L36
                r0 = r5
                byte[] r0 = r0.f55897f
                r1 = r8
                r0 = r0[r1]
                r1 = -1
                if (r0 == r1) goto L36
                r0 = 1
                r8 = r0
                goto L39
            L36:
                r0 = 0
                r8 = r0
            L39:
                r0 = r8
                if (r0 != 0) goto L40
            L3e:
                r0 = 1
                r7 = r0
            L40:
                r0 = r7
                java.lang.String r1 = "Padding character %s was already in alphabet"
                r2 = r6
                com.google.common.base.C15391m.m8937a(r0, r1, r2)
                r0 = r4
                r1 = r6
                r0.f55902c = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.p387io.BaseEncoding.C15571d.<init>(com.google.common.io.BaseEncoding$a, java.lang.Character):void");
        }

        C15571d(String str, String str2, Character ch) {
            this(new C15568a(str, str2.toCharArray()), ch);
        }

        @Override // com.google.common.p387io.BaseEncoding
        /* renamed from: a */
        final int mo8646a(int i) {
            return this.f55901b.f55895d * C15357a.m8985a(i, this.f55901b.f55896e, RoundingMode.CEILING);
        }

        /* JADX WARN: Type inference failed for: r0v40, types: [long] */
        /* JADX WARN: Type inference failed for: r0v47, types: [long] */
        @Override // com.google.common.p387io.BaseEncoding
        /* renamed from: a */
        int mo8643a(byte[] bArr, CharSequence charSequence) throws DecodingException {
            int i;
            C15391m.m8946a(bArr);
            CharSequence mo8640b = mo8640b(charSequence);
            if (!this.f55901b.m8648a(mo8640b.length())) {
                int length = mo8640b.length();
                StringBuilder sb = new StringBuilder(32);
                sb.append("Invalid input length ");
                sb.append(length);
                throw new DecodingException(sb.toString());
            }
            int i2 = 0;
            int i3 = 0;
            while (i2 < mo8640b.length()) {
                int i4 = 0;
                int i5 = 0;
                int i6 = 0;
                while (true) {
                    i = i6;
                    if (i5 >= this.f55901b.f55895d) {
                        break;
                    }
                    ?? r0 = i4 << this.f55901b.f55894c;
                    i4 = r0;
                    int i7 = i;
                    if (i2 + i5 < mo8640b.length()) {
                        i4 = r0 | this.f55901b.m8649a(mo8640b.charAt(i + i2));
                        i7 = i + 1;
                    }
                    i5++;
                    i6 = i7;
                }
                int i8 = this.f55901b.f55896e;
                int i9 = this.f55901b.f55894c;
                int i10 = (this.f55901b.f55896e - 1) * 8;
                while (i10 >= (i8 * 8) - (i * i9)) {
                    bArr[i3] = (byte) ((i4 >>> i10) & 255);
                    i10 -= 8;
                    i3++;
                }
                i2 += this.f55901b.f55895d;
            }
            return i3;
        }

        @Override // com.google.common.p387io.BaseEncoding
        /* renamed from: a */
        public final BaseEncoding mo8647a() {
            return this.f55902c == null ? this : mo8645a(this.f55901b);
        }

        /* renamed from: a */
        BaseEncoding mo8645a(C15568a c15568a) {
            return new C15571d(c15568a, null);
        }

        @Override // com.google.common.p387io.BaseEncoding
        /* renamed from: a */
        void mo8644a(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
            C15391m.m8946a(appendable);
            int i3 = 0;
            C15391m.m8948a(0, i2 + 0, bArr.length);
            while (i3 < i2) {
                m8641b(appendable, bArr, i3 + 0, Math.min(this.f55901b.f55896e, i2 - i3));
                i3 += this.f55901b.f55896e;
            }
        }

        @Override // com.google.common.p387io.BaseEncoding
        /* renamed from: b */
        final int mo8642b(int i) {
            return (int) (((this.f55901b.f55894c * i) + 7) / 8);
        }

        @Override // com.google.common.p387io.BaseEncoding
        /* renamed from: b */
        final CharSequence mo8640b(CharSequence charSequence) {
            C15391m.m8946a(charSequence);
            Character ch = this.f55902c;
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

        /* JADX WARN: Type inference failed for: r0v37, types: [long] */
        /* renamed from: b */
        final void m8641b(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
            int i3;
            C15391m.m8946a(appendable);
            C15391m.m8948a(i, i + i2, bArr.length);
            C15391m.m8943a(i2 <= this.f55901b.f55896e);
            int i4 = 0;
            for (int i5 = 0; i5 < i2; i5++) {
                i4 = (i4 | (bArr[i + i5] & 255)) << 8;
            }
            int i6 = this.f55901b.f55894c;
            int i7 = 0;
            while (true) {
                i3 = i7;
                if (i3 >= i2 * 8) {
                    break;
                }
                appendable.append(this.f55901b.f55892a[((int) (i4 >>> ((((i2 + 1) * 8) - i6) - i3))) & this.f55901b.f55893b]);
                i7 = i3 + this.f55901b.f55894c;
            }
            if (this.f55902c != null) {
                while (i3 < this.f55901b.f55896e * 8) {
                    appendable.append(this.f55902c.charValue());
                    i3 += this.f55901b.f55894c;
                }
            }
        }

        public boolean equals(Object obj) {
            if (obj instanceof C15571d) {
                C15571d c15571d = (C15571d) obj;
                return this.f55901b.equals(c15571d.f55901b) && C15386j.m8951a(this.f55902c, c15571d.f55902c);
            }
            return false;
        }

        public int hashCode() {
            return this.f55901b.hashCode() ^ Arrays.hashCode(new Object[]{this.f55902c});
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("BaseEncoding.");
            sb.append(this.f55901b.toString());
            if (8 % this.f55901b.f55894c != 0) {
                if (this.f55902c == null) {
                    sb.append(".omitPadding()");
                } else {
                    sb.append(".withPadChar('");
                    sb.append(this.f55902c);
                    sb.append("')");
                }
            }
            return sb.toString();
        }
    }

    BaseEncoding() {
    }

    /* renamed from: b */
    public static BaseEncoding m8651b() {
        return f55887a;
    }

    /* renamed from: c */
    public static BaseEncoding m8650c() {
        return f55888b;
    }

    /* renamed from: a */
    abstract int mo8646a(int i);

    /* renamed from: a */
    abstract int mo8643a(byte[] bArr, CharSequence charSequence) throws DecodingException;

    /* renamed from: a */
    public abstract BaseEncoding mo8647a();

    /* renamed from: a */
    public String m8652a(byte[] bArr, int i) {
        C15391m.m8948a(0, i + 0, bArr.length);
        StringBuilder sb = new StringBuilder(mo8646a(i));
        try {
            mo8644a(sb, bArr, 0, i);
            return sb.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: a */
    abstract void mo8644a(Appendable appendable, byte[] bArr, int i, int i2) throws IOException;

    /* renamed from: a */
    public final byte[] m8653a(CharSequence charSequence) {
        try {
            CharSequence mo8640b = mo8640b(charSequence);
            int mo8642b = mo8642b(mo8640b.length());
            byte[] bArr = new byte[mo8642b];
            int mo8643a = mo8643a(bArr, mo8640b);
            if (mo8643a == mo8642b) {
                return bArr;
            }
            byte[] bArr2 = new byte[mo8643a];
            System.arraycopy(bArr, 0, bArr2, 0, mo8643a);
            return bArr2;
        } catch (DecodingException e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: b */
    abstract int mo8642b(int i);

    /* renamed from: b */
    CharSequence mo8640b(CharSequence charSequence) {
        return (CharSequence) C15391m.m8946a(charSequence);
    }
}
