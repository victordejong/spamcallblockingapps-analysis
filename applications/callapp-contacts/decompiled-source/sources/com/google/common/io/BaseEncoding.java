package com.google.common.io;

import com.google.common.base.j;
import com.google.common.base.m;
import io.objectbox.model.PropertyFlags;
import java.io.IOException;
import java.math.RoundingMode;
import java.util.Arrays;
/* loaded from: classes4-dex2jar.jar:com/google/common/io/BaseEncoding.class */
public abstract class BaseEncoding {

    /* renamed from: a  reason: collision with root package name */
    private static final BaseEncoding f32147a = new c("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", '=');

    /* renamed from: b  reason: collision with root package name */
    private static final BaseEncoding f32148b = new c("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_", '=');

    /* renamed from: c  reason: collision with root package name */
    private static final BaseEncoding f32149c = new d("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567", '=');

    /* renamed from: d  reason: collision with root package name */
    private static final BaseEncoding f32150d = new d("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV", '=');
    private static final BaseEncoding e = new b("base16()", "0123456789ABCDEF");

    /* loaded from: classes4-dex2jar.jar:com/google/common/io/BaseEncoding$DecodingException.class */
    public static final class DecodingException extends IOException {
        DecodingException(String str) {
            super(str);
        }

        DecodingException(Throwable th) {
            super(th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/google/common/io/BaseEncoding$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final char[] f32151a;

        /* renamed from: b  reason: collision with root package name */
        final int f32152b;

        /* renamed from: c  reason: collision with root package name */
        final int f32153c;

        /* renamed from: d  reason: collision with root package name */
        final int f32154d;
        final int e;
        final byte[] f;
        private final String g;
        private final boolean[] h;

        a(String str, char[] cArr) {
            this.g = (String) m.a(str);
            this.f32151a = (char[]) m.a(cArr);
            try {
                int a2 = com.google.common.a.a.a(cArr.length, RoundingMode.UNNECESSARY);
                this.f32153c = a2;
                int min = Math.min(8, Integer.lowestOneBit(a2));
                try {
                    this.f32154d = 8 / min;
                    this.e = a2 / min;
                    this.f32152b = cArr.length - 1;
                    byte[] bArr = new byte[128];
                    Arrays.fill(bArr, (byte) -1);
                    for (int i = 0; i < cArr.length; i++) {
                        char c2 = cArr[i];
                        m.a(c2 < 128, "Non-ASCII character: %s", c2);
                        m.a(bArr[c2] == -1, "Duplicate character: %s", c2);
                        bArr[c2] = (byte) i;
                    }
                    this.f = bArr;
                    boolean[] zArr = new boolean[this.f32154d];
                    for (int i2 = 0; i2 < this.e; i2++) {
                        zArr[com.google.common.a.a.a(i2 * 8, this.f32153c, RoundingMode.CEILING)] = true;
                    }
                    this.h = zArr;
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

        final int a(char c2) throws DecodingException {
            if (c2 > 127) {
                String valueOf = String.valueOf(Integer.toHexString(c2));
                throw new DecodingException(valueOf.length() != 0 ? "Unrecognized character: 0x".concat(valueOf) : new String("Unrecognized character: 0x"));
            }
            byte b2 = this.f[c2];
            if (b2 != -1) {
                return b2;
            }
            if (c2 <= ' ' || c2 == 127) {
                String valueOf2 = String.valueOf(Integer.toHexString(c2));
                throw new DecodingException(valueOf2.length() != 0 ? "Unrecognized character: 0x".concat(valueOf2) : new String("Unrecognized character: 0x"));
            }
            StringBuilder sb = new StringBuilder(25);
            sb.append("Unrecognized character: ");
            sb.append(c2);
            throw new DecodingException(sb.toString());
        }

        final boolean a(int i) {
            return this.h[i % this.f32154d];
        }

        public final boolean equals(Object obj) {
            if (obj instanceof a) {
                return Arrays.equals(this.f32151a, ((a) obj).f32151a);
            }
            return false;
        }

        public final int hashCode() {
            return Arrays.hashCode(this.f32151a);
        }

        public final String toString() {
            return this.g;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/io/BaseEncoding$b.class */
    static final class b extends d {

        /* renamed from: a  reason: collision with root package name */
        final char[] f32155a;

        private b(a aVar) {
            super(aVar, null);
            this.f32155a = new char[512];
            m.a(aVar.f32151a.length == 16);
            for (int i = 0; i < 256; i++) {
                this.f32155a[i] = aVar.f32151a[i >>> 4];
                this.f32155a[i | PropertyFlags.INDEX_PARTIAL_SKIP_NULL] = aVar.f32151a[i & 15];
            }
        }

        b(String str, String str2) {
            this(new a(str, str2.toCharArray()));
        }

        @Override // com.google.common.io.BaseEncoding.d, com.google.common.io.BaseEncoding
        final int a(byte[] bArr, CharSequence charSequence) throws DecodingException {
            m.a(bArr);
            if (charSequence.length() % 2 != 1) {
                int i = 0;
                int i2 = 0;
                while (i < charSequence.length()) {
                    bArr[i2] = (byte) ((this.f32156b.a(charSequence.charAt(i)) << 4) | this.f32156b.a(charSequence.charAt(i + 1)));
                    i += 2;
                    i2++;
                }
                return i2;
            }
            int length = charSequence.length();
            StringBuilder sb = new StringBuilder(32);
            sb.append("Invalid input length ");
            sb.append(length);
            throw new DecodingException(sb.toString());
        }

        @Override // com.google.common.io.BaseEncoding.d
        final BaseEncoding a(a aVar) {
            return new b(aVar);
        }

        @Override // com.google.common.io.BaseEncoding.d, com.google.common.io.BaseEncoding
        final void a(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
            m.a(appendable);
            m.a(0, i2 + 0, bArr.length);
            for (int i3 = 0; i3 < i2; i3++) {
                int i4 = bArr[i3 + 0] & 255;
                appendable.append(this.f32155a[i4]);
                appendable.append(this.f32155a[i4 | PropertyFlags.INDEX_PARTIAL_SKIP_NULL]);
            }
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/io/BaseEncoding$c.class */
    static final class c extends d {
        private c(a aVar, Character ch) {
            super(aVar, ch);
            m.a(aVar.f32151a.length == 64);
        }

        c(String str, String str2, Character ch) {
            this(new a(str, str2.toCharArray()), ch);
        }

        @Override // com.google.common.io.BaseEncoding.d, com.google.common.io.BaseEncoding
        final int a(byte[] bArr, CharSequence charSequence) throws DecodingException {
            m.a(bArr);
            CharSequence b2 = b(charSequence);
            if (this.f32156b.a(b2.length())) {
                int i = 0;
                int i2 = 0;
                while (i < b2.length()) {
                    int i3 = i + 1;
                    int a2 = this.f32156b.a(b2.charAt(i));
                    int i4 = i3 + 1;
                    int a3 = (a2 << 18) | (this.f32156b.a(b2.charAt(i3)) << 12);
                    int i5 = i2 + 1;
                    bArr[i2] = (byte) (a3 >>> 16);
                    i2 = i5;
                    i = i4;
                    if (i4 < b2.length()) {
                        i = i4 + 1;
                        int a4 = a3 | (this.f32156b.a(b2.charAt(i4)) << 6);
                        i2 = i5 + 1;
                        bArr[i5] = (byte) ((a4 >>> 8) & 255);
                        if (i < b2.length()) {
                            i++;
                            i2++;
                            bArr[i2] = (byte) ((a4 | this.f32156b.a(b2.charAt(i))) & 255);
                        }
                    }
                }
                return i2;
            }
            int length = b2.length();
            StringBuilder sb = new StringBuilder(32);
            sb.append("Invalid input length ");
            sb.append(length);
            throw new DecodingException(sb.toString());
        }

        @Override // com.google.common.io.BaseEncoding.d
        final BaseEncoding a(a aVar) {
            return new c(aVar, null);
        }

        @Override // com.google.common.io.BaseEncoding.d, com.google.common.io.BaseEncoding
        final void a(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
            m.a(appendable);
            int i3 = i2 + 0;
            int i4 = 0;
            m.a(0, i3, bArr.length);
            while (i2 >= 3) {
                int i5 = i4 + 1;
                byte b2 = bArr[i4];
                int i6 = i5 + 1;
                i4 = i6 + 1;
                int i7 = ((bArr[i5] & 255) << 8) | ((b2 & 255) << 16) | (bArr[i6] & 255);
                appendable.append(this.f32156b.f32151a[i7 >>> 18]);
                appendable.append(this.f32156b.f32151a[(i7 >>> 12) & 63]);
                appendable.append(this.f32156b.f32151a[(i7 >>> 6) & 63]);
                appendable.append(this.f32156b.f32151a[i7 & 63]);
                i2 -= 3;
            }
            if (i4 < i3) {
                b(appendable, bArr, i4, i3 - i4);
            }
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/google/common/io/BaseEncoding$d.class */
    static class d extends BaseEncoding {

        /* renamed from: b  reason: collision with root package name */
        final a f32156b;

        /* renamed from: c  reason: collision with root package name */
        final Character f32157c;

        /* JADX WARN: Code restructure failed: missing block: B:11:0x003b, code lost:
            if ((r0 < r5.f.length && r5.f[r0] != -1) == false) goto L_0x003e;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        d(com.google.common.io.BaseEncoding.a r5, java.lang.Character r6) {
            /*
                r4 = this;
                r0 = r4
                r0.<init>()
                r0 = r4
                r1 = r5
                java.lang.Object r1 = com.google.common.base.m.a(r1)
                com.google.common.io.BaseEncoding$a r1 = (com.google.common.io.BaseEncoding.a) r1
                r0.f32156b = r1
                r0 = 0
                r7 = r0
                r0 = r6
                if (r0 == 0) goto L_0x003e
                r0 = r6
                char r0 = r0.charValue()
                r8 = r0
                r0 = r8
                r1 = r5
                byte[] r1 = r1.f
                int r1 = r1.length
                if (r0 >= r1) goto L_0x0036
                r0 = r5
                byte[] r0 = r0.f
                r1 = r8
                r0 = r0[r1]
                r1 = -1
                if (r0 == r1) goto L_0x0036
                r0 = 1
                r8 = r0
                goto L_0x0039
            L_0x0036:
                r0 = 0
                r8 = r0
            L_0x0039:
                r0 = r8
                if (r0 != 0) goto L_0x0040
            L_0x003e:
                r0 = 1
                r7 = r0
            L_0x0040:
                r0 = r7
                java.lang.String r1 = "Padding character %s was already in alphabet"
                r2 = r6
                com.google.common.base.m.a(r0, r1, r2)
                r0 = r4
                r1 = r6
                r0.f32157c = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.io.BaseEncoding.d.<init>(com.google.common.io.BaseEncoding$a, java.lang.Character):void");
        }

        d(String str, String str2, Character ch) {
            this(new a(str, str2.toCharArray()), ch);
        }

        @Override // com.google.common.io.BaseEncoding
        final int a(int i) {
            return this.f32156b.f32154d * com.google.common.a.a.a(i, this.f32156b.e, RoundingMode.CEILING);
        }

        /* JADX WARN: Type inference failed for: r0v40, types: [long] */
        /* JADX WARN: Type inference failed for: r12v2 */
        /* JADX WARN: Type inference failed for: r12v3 */
        /* JADX WARN: Type inference failed for: r12v4, types: [long] */
        /* JADX WARN: Unknown variable types count: 2 */
        @Override // com.google.common.io.BaseEncoding
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        int a(byte[] r8, java.lang.CharSequence r9) throws com.google.common.io.BaseEncoding.DecodingException {
            /*
                Method dump skipped, instructions count: 266
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.io.BaseEncoding.d.a(byte[], java.lang.CharSequence):int");
        }

        @Override // com.google.common.io.BaseEncoding
        public final BaseEncoding a() {
            return this.f32157c == null ? this : a(this.f32156b);
        }

        BaseEncoding a(a aVar) {
            return new d(aVar, null);
        }

        @Override // com.google.common.io.BaseEncoding
        void a(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
            m.a(appendable);
            int i3 = 0;
            m.a(0, i2 + 0, bArr.length);
            while (i3 < i2) {
                b(appendable, bArr, i3 + 0, Math.min(this.f32156b.e, i2 - i3));
                i3 += this.f32156b.e;
            }
        }

        @Override // com.google.common.io.BaseEncoding
        final int b(int i) {
            return (int) (((this.f32156b.f32153c * i) + 7) / 8);
        }

        @Override // com.google.common.io.BaseEncoding
        final CharSequence b(CharSequence charSequence) {
            m.a(charSequence);
            Character ch = this.f32157c;
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

        final void b(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
            m.a(appendable);
            m.a(i, i + i2, bArr.length);
            int i3 = 0;
            m.a(i2 <= this.f32156b.e);
            long j = 0;
            for (int i4 = 0; i4 < i2; i4++) {
                j = (j | (bArr[i + i4] & 255)) << 8;
            }
            int i5 = this.f32156b.f32153c;
            while (i3 < i2 * 8) {
                appendable.append(this.f32156b.f32151a[((int) (j >>> ((((i2 + 1) * 8) - i5) - i3))) & this.f32156b.f32152b]);
                i3 += this.f32156b.f32153c;
            }
            if (this.f32157c != null) {
                while (i3 < this.f32156b.e * 8) {
                    appendable.append(this.f32157c.charValue());
                    i3 += this.f32156b.f32153c;
                }
            }
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof d)) {
                return false;
            }
            d dVar = (d) obj;
            return this.f32156b.equals(dVar.f32156b) && j.a(this.f32157c, dVar.f32157c);
        }

        public int hashCode() {
            return this.f32156b.hashCode() ^ Arrays.hashCode(new Object[]{this.f32157c});
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("BaseEncoding.");
            sb.append(this.f32156b.toString());
            if (8 % this.f32156b.f32153c != 0) {
                if (this.f32157c == null) {
                    sb.append(".omitPadding()");
                } else {
                    sb.append(".withPadChar('");
                    sb.append(this.f32157c);
                    sb.append("')");
                }
            }
            return sb.toString();
        }
    }

    BaseEncoding() {
    }

    public static BaseEncoding b() {
        return f32147a;
    }

    public static BaseEncoding c() {
        return f32148b;
    }

    abstract int a(int i);

    abstract int a(byte[] bArr, CharSequence charSequence) throws DecodingException;

    public abstract BaseEncoding a();

    public String a(byte[] bArr, int i) {
        m.a(0, i + 0, bArr.length);
        StringBuilder sb = new StringBuilder(a(i));
        try {
            a(sb, bArr, 0, i);
            return sb.toString();
        } catch (IOException e2) {
            throw new AssertionError(e2);
        }
    }

    abstract void a(Appendable appendable, byte[] bArr, int i, int i2) throws IOException;

    public final byte[] a(CharSequence charSequence) {
        try {
            CharSequence b2 = b(charSequence);
            int b3 = b(b2.length());
            byte[] bArr = new byte[b3];
            int a2 = a(bArr, b2);
            if (a2 == b3) {
                return bArr;
            }
            byte[] bArr2 = new byte[a2];
            System.arraycopy(bArr, 0, bArr2, 0, a2);
            return bArr2;
        } catch (DecodingException e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    abstract int b(int i);

    CharSequence b(CharSequence charSequence) {
        return (CharSequence) m.a(charSequence);
    }
}
