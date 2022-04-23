package com.google.common.p493io;

import androidx.recyclerview.widget.RecyclerView;
import java.io.IOException;
import java.math.RoundingMode;
import java.util.Arrays;
import p131c.p161d.p266c.p267a.C4908a;
import p131c.p161d.p266c.p267a.C4928k;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p272f.C5058c;
/* renamed from: com.google.common.io.BaseEncoding */
/* loaded from: classes2-dex2jar.jar:com/google/common/io/BaseEncoding.class */
public abstract class BaseEncoding {

    /* renamed from: a */
    public static final BaseEncoding f30861a = new C7701c("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", '=');

    /* renamed from: b */
    public static final BaseEncoding f30862b = new C7700b("base16()", "0123456789ABCDEF");

    /* renamed from: com.google.common.io.BaseEncoding$DecodingException */
    /* loaded from: classes2-dex2jar.jar:com/google/common/io/BaseEncoding$DecodingException.class */
    public static final class DecodingException extends IOException {
        public DecodingException(String str) {
            super(str);
        }

        public DecodingException(Throwable th) {
            super(th);
        }
    }

    /* renamed from: com.google.common.io.BaseEncoding$a */
    /* loaded from: classes2-dex2jar.jar:com/google/common/io/BaseEncoding$a.class */
    public static final class C7699a {

        /* renamed from: a */
        public final String f30863a;

        /* renamed from: b */
        public final char[] f30864b;

        /* renamed from: c */
        public final int f30865c;

        /* renamed from: d */
        public final int f30866d;

        /* renamed from: e */
        public final int f30867e;

        /* renamed from: f */
        public final int f30868f;

        /* renamed from: g */
        public final byte[] f30869g;

        /* renamed from: h */
        public final boolean[] f30870h;

        public C7699a(String str, char[] cArr) {
            C4933n.m24795a(str);
            this.f30863a = str;
            C4933n.m24795a(cArr);
            this.f30864b = cArr;
            try {
                int a = C5058c.m24586a(cArr.length, RoundingMode.UNNECESSARY);
                this.f30866d = a;
                int min = Math.min(8, Integer.lowestOneBit(a));
                try {
                    this.f30867e = 8 / min;
                    this.f30868f = this.f30866d / min;
                    this.f30865c = cArr.length - 1;
                    byte[] bArr = new byte[128];
                    Arrays.fill(bArr, (byte) -1);
                    for (int i = 0; i < cArr.length; i++) {
                        char c = cArr[i];
                        C4933n.m24789a(c < 128, "Non-ASCII character: %s", c);
                        C4933n.m24789a(bArr[c] == -1, "Duplicate character: %s", c);
                        bArr[c] = (byte) i;
                    }
                    this.f30869g = bArr;
                    boolean[] zArr = new boolean[this.f30867e];
                    for (int i2 = 0; i2 < this.f30868f; i2++) {
                        zArr[C5058c.m24587a(i2 * 8, this.f30866d, RoundingMode.CEILING)] = true;
                    }
                    this.f30870h = zArr;
                } catch (ArithmeticException e) {
                    throw new IllegalArgumentException("Illegal alphabet " + new String(cArr), e);
                }
            } catch (ArithmeticException e2) {
                throw new IllegalArgumentException("Illegal alphabet length " + cArr.length, e2);
            }
        }

        /* renamed from: a */
        public char m7909a(int i) {
            return this.f30864b[i];
        }

        /* renamed from: a */
        public int m7910a(char c) throws DecodingException {
            if (c <= 127) {
                byte b = this.f30869g[c];
                if (b != -1) {
                    return b;
                }
                if (c <= ' ' || c == 127) {
                    throw new DecodingException("Unrecognized character: 0x" + Integer.toHexString(c));
                }
                throw new DecodingException("Unrecognized character: " + c);
            }
            throw new DecodingException("Unrecognized character: 0x" + Integer.toHexString(c));
        }

        /* renamed from: a */
        public final boolean m7911a() {
            for (char c : this.f30864b) {
                if (C4908a.m24844a(c)) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: b */
        public final boolean m7907b() {
            for (char c : this.f30864b) {
                if (C4908a.m24842b(c)) {
                    return true;
                }
            }
            return false;
        }

        /* renamed from: b */
        public boolean m7906b(char c) {
            byte[] bArr = this.f30869g;
            return c < bArr.length && bArr[c] != -1;
        }

        /* renamed from: b */
        public boolean m7905b(int i) {
            return this.f30870h[i % this.f30867e];
        }

        /* renamed from: c */
        public C7699a m7904c() {
            if (!m7911a()) {
                return this;
            }
            C4933n.m24775b(!m7907b(), "Cannot call upperCase() on a mixed-case alphabet");
            char[] cArr = new char[this.f30864b.length];
            int i = 0;
            while (true) {
                char[] cArr2 = this.f30864b;
                if (i < cArr2.length) {
                    cArr[i] = C4908a.m24840c(cArr2[i]);
                    i++;
                } else {
                    return new C7699a(this.f30863a + ".upperCase()", cArr);
                }
            }
        }

        public boolean equals(Object obj) {
            if (obj instanceof C7699a) {
                return Arrays.equals(this.f30864b, ((C7699a) obj).f30864b);
            }
            return false;
        }

        public int hashCode() {
            return Arrays.hashCode(this.f30864b);
        }

        public String toString() {
            return this.f30863a;
        }
    }

    /* renamed from: com.google.common.io.BaseEncoding$b */
    /* loaded from: classes2-dex2jar.jar:com/google/common/io/BaseEncoding$b.class */
    public static final class C7700b extends C7702d {

        /* renamed from: f */
        public final char[] f30871f;

        public C7700b(C7699a aVar) {
            super(aVar, null);
            this.f30871f = new char[RecyclerView.AbstractC0495b0.FLAG_ADAPTER_POSITION_UNKNOWN];
            C4933n.m24791a(aVar.f30864b.length == 16);
            for (int i = 0; i < 256; i++) {
                this.f30871f[i] = aVar.m7909a(i >>> 4);
                this.f30871f[i | 256] = aVar.m7909a(i & 15);
            }
        }

        public C7700b(String str, String str2) {
            this(new C7699a(str, str2.toCharArray()));
        }

        @Override // com.google.common.p493io.BaseEncoding.C7702d, com.google.common.p493io.BaseEncoding
        /* renamed from: a */
        public int mo7899a(byte[] bArr, CharSequence charSequence) throws DecodingException {
            C4933n.m24795a(bArr);
            if (charSequence.length() % 2 != 1) {
                int i = 0;
                int i2 = 0;
                while (i < charSequence.length()) {
                    bArr[i2] = (byte) ((this.f30872c.m7910a(charSequence.charAt(i)) << 4) | this.f30872c.m7910a(charSequence.charAt(i + 1)));
                    i += 2;
                    i2++;
                }
                return i2;
            }
            throw new DecodingException("Invalid input length " + charSequence.length());
        }

        @Override // com.google.common.p493io.BaseEncoding.C7702d
        /* renamed from: a */
        public BaseEncoding mo7901a(C7699a aVar, Character ch) {
            return new C7700b(aVar);
        }

        @Override // com.google.common.p493io.BaseEncoding.C7702d, com.google.common.p493io.BaseEncoding
        /* renamed from: a */
        public void mo7900a(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
            C4933n.m24795a(appendable);
            C4933n.m24778b(i, i + i2, bArr.length);
            for (int i3 = 0; i3 < i2; i3++) {
                int i4 = bArr[i + i3] & 255;
                appendable.append(this.f30871f[i4]);
                appendable.append(this.f30871f[i4 | 256]);
            }
        }
    }

    /* renamed from: com.google.common.io.BaseEncoding$c */
    /* loaded from: classes2-dex2jar.jar:com/google/common/io/BaseEncoding$c.class */
    public static final class C7701c extends C7702d {
        public C7701c(C7699a aVar, Character ch) {
            super(aVar, ch);
            C4933n.m24791a(aVar.f30864b.length == 64);
        }

        public C7701c(String str, String str2, Character ch) {
            this(new C7699a(str, str2.toCharArray()), ch);
        }

        @Override // com.google.common.p493io.BaseEncoding.C7702d, com.google.common.p493io.BaseEncoding
        /* renamed from: a */
        public int mo7899a(byte[] bArr, CharSequence charSequence) throws DecodingException {
            C4933n.m24795a(bArr);
            CharSequence c = mo7895c(charSequence);
            if (this.f30872c.m7905b(c.length())) {
                int i = 0;
                int i2 = 0;
                while (i < c.length()) {
                    int i3 = i + 1;
                    int a = this.f30872c.m7910a(c.charAt(i));
                    int i4 = i3 + 1;
                    int a2 = (a << 18) | (this.f30872c.m7910a(c.charAt(i3)) << 12);
                    int i5 = i2 + 1;
                    bArr[i2] = (byte) (a2 >>> 16);
                    i2 = i5;
                    i = i4;
                    if (i4 < c.length()) {
                        int i6 = i4 + 1;
                        int a3 = a2 | (this.f30872c.m7910a(c.charAt(i4)) << 6);
                        i2 = i5 + 1;
                        bArr[i5] = (byte) ((a3 >>> 8) & 255);
                        if (i6 < c.length()) {
                            i = i6 + 1;
                            i2++;
                            bArr[i2] = (byte) ((a3 | this.f30872c.m7910a(c.charAt(i6))) & 255);
                        } else {
                            i = i6;
                        }
                    }
                }
                return i2;
            }
            throw new DecodingException("Invalid input length " + c.length());
        }

        @Override // com.google.common.p493io.BaseEncoding.C7702d
        /* renamed from: a */
        public BaseEncoding mo7901a(C7699a aVar, Character ch) {
            return new C7701c(aVar, ch);
        }

        @Override // com.google.common.p493io.BaseEncoding.C7702d, com.google.common.p493io.BaseEncoding
        /* renamed from: a */
        public void mo7900a(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
            C4933n.m24795a(appendable);
            int i3 = i + i2;
            C4933n.m24778b(i, i3, bArr.length);
            while (i2 >= 3) {
                int i4 = i + 1;
                int i5 = i4 + 1;
                int i6 = ((bArr[i] & 255) << 16) | ((bArr[i4] & 255) << 8) | (bArr[i5] & 255);
                appendable.append(this.f30872c.m7909a(i6 >>> 18));
                appendable.append(this.f30872c.m7909a((i6 >>> 12) & 63));
                appendable.append(this.f30872c.m7909a((i6 >>> 6) & 63));
                appendable.append(this.f30872c.m7909a(i6 & 63));
                i2 -= 3;
                i = i5 + 1;
            }
            if (i < i3) {
                m7896b(appendable, bArr, i, i3 - i);
            }
        }
    }

    /* renamed from: com.google.common.io.BaseEncoding$d */
    /* loaded from: classes2-dex2jar.jar:com/google/common/io/BaseEncoding$d.class */
    public static class C7702d extends BaseEncoding {

        /* renamed from: c */
        public final C7699a f30872c;

        /* renamed from: d */
        public final Character f30873d;

        /* renamed from: e */
        public transient BaseEncoding f30874e;

        public C7702d(C7699a aVar, Character ch) {
            C4933n.m24795a(aVar);
            this.f30872c = aVar;
            C4933n.m24782a(ch == null || !aVar.m7906b(ch.charValue()), "Padding character %s was already in alphabet", ch);
            this.f30873d = ch;
        }

        public C7702d(String str, String str2, Character ch) {
            this(new C7699a(str, str2.toCharArray()), ch);
        }

        @Override // com.google.common.p493io.BaseEncoding
        /* renamed from: a */
        public int mo7902a(int i) {
            return (int) (((this.f30872c.f30866d * i) + 7) / 8);
        }

        /* JADX WARN: Type inference failed for: r0v37, types: [long] */
        /* JADX WARN: Type inference failed for: r12v2 */
        /* JADX WARN: Type inference failed for: r12v3 */
        /* JADX WARN: Type inference failed for: r12v4, types: [long] */
        /* JADX WARN: Unknown variable types count: 2 */
        @Override // com.google.common.p493io.BaseEncoding
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int mo7899a(byte[] r8, java.lang.CharSequence r9) throws com.google.common.p493io.BaseEncoding.DecodingException {
            /*
                Method dump skipped, instructions count: 263
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.common.p493io.BaseEncoding.C7702d.mo7899a(byte[], java.lang.CharSequence):int");
        }

        @Override // com.google.common.p493io.BaseEncoding
        /* renamed from: a */
        public BaseEncoding mo7903a() {
            return this.f30873d == null ? this : mo7901a(this.f30872c, (Character) null);
        }

        /* renamed from: a */
        public BaseEncoding mo7901a(C7699a aVar, Character ch) {
            return new C7702d(aVar, ch);
        }

        @Override // com.google.common.p493io.BaseEncoding
        /* renamed from: a */
        public void mo7900a(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
            C4933n.m24795a(appendable);
            C4933n.m24778b(i, i + i2, bArr.length);
            int i3 = 0;
            while (i3 < i2) {
                m7896b(appendable, bArr, i + i3, Math.min(this.f30872c.f30868f, i2 - i3));
                i3 += this.f30872c.f30868f;
            }
        }

        @Override // com.google.common.p493io.BaseEncoding
        /* renamed from: b */
        public int mo7897b(int i) {
            C7699a aVar = this.f30872c;
            return aVar.f30867e * C5058c.m24587a(i, aVar.f30868f, RoundingMode.CEILING);
        }

        @Override // com.google.common.p493io.BaseEncoding
        /* renamed from: b */
        public BaseEncoding mo7898b() {
            BaseEncoding baseEncoding = this.f30874e;
            BaseEncoding baseEncoding2 = baseEncoding;
            if (baseEncoding == null) {
                C7699a c = this.f30872c.m7904c();
                baseEncoding2 = c == this.f30872c ? this : mo7901a(c, this.f30873d);
                this.f30874e = baseEncoding2;
            }
            return baseEncoding2;
        }

        /* renamed from: b */
        public void m7896b(Appendable appendable, byte[] bArr, int i, int i2) throws IOException {
            C4933n.m24795a(appendable);
            C4933n.m24778b(i, i + i2, bArr.length);
            int i3 = 0;
            C4933n.m24791a(i2 <= this.f30872c.f30868f);
            long j = 0;
            for (int i4 = 0; i4 < i2; i4++) {
                j = (j | (bArr[i + i4] & 255)) << 8;
            }
            int i5 = this.f30872c.f30866d;
            while (i3 < i2 * 8) {
                int i6 = (int) (j >>> ((((i2 + 1) * 8) - i5) - i3));
                C7699a aVar = this.f30872c;
                appendable.append(aVar.m7909a(i6 & aVar.f30865c));
                i3 += this.f30872c.f30866d;
            }
            if (this.f30873d != null) {
                while (i3 < this.f30872c.f30868f * 8) {
                    appendable.append(this.f30873d.charValue());
                    i3 += this.f30872c.f30866d;
                }
            }
        }

        @Override // com.google.common.p493io.BaseEncoding
        /* renamed from: c */
        public CharSequence mo7895c(CharSequence charSequence) {
            C4933n.m24795a(charSequence);
            Character ch = this.f30873d;
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

        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof C7702d) {
                C7702d dVar = (C7702d) obj;
                z = false;
                if (this.f30872c.equals(dVar.f30872c)) {
                    z = false;
                    if (C4928k.m24808a(this.f30873d, dVar.f30873d)) {
                        z = true;
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            return this.f30872c.hashCode() ^ C4928k.m24807a(this.f30873d);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("BaseEncoding.");
            sb.append(this.f30872c.toString());
            if (8 % this.f30872c.f30866d != 0) {
                if (this.f30873d == null) {
                    sb.append(".omitPadding()");
                } else {
                    sb.append(".withPadChar('");
                    sb.append(this.f30873d);
                    sb.append("')");
                }
            }
            return sb.toString();
        }
    }

    static {
        new C7701c("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_", '=');
        new C7702d("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567", '=');
        new C7702d("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV", '=');
    }

    /* renamed from: a */
    public static byte[] m7916a(byte[] bArr, int i) {
        if (i == bArr.length) {
            return bArr;
        }
        byte[] bArr2 = new byte[i];
        System.arraycopy(bArr, 0, bArr2, 0, i);
        return bArr2;
    }

    /* renamed from: c */
    public static BaseEncoding m7913c() {
        return f30862b;
    }

    /* renamed from: d */
    public static BaseEncoding m7912d() {
        return f30861a;
    }

    /* renamed from: a */
    public abstract int mo7902a(int i);

    /* renamed from: a */
    public abstract int mo7899a(byte[] bArr, CharSequence charSequence) throws DecodingException;

    /* renamed from: a */
    public abstract BaseEncoding mo7903a();

    /* renamed from: a */
    public String m7917a(byte[] bArr) {
        return m7915a(bArr, 0, bArr.length);
    }

    /* renamed from: a */
    public final String m7915a(byte[] bArr, int i, int i2) {
        C4933n.m24778b(i, i + i2, bArr.length);
        StringBuilder sb = new StringBuilder(mo7897b(i2));
        try {
            mo7900a(sb, bArr, i, i2);
            return sb.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    /* renamed from: a */
    public abstract void mo7900a(Appendable appendable, byte[] bArr, int i, int i2) throws IOException;

    /* renamed from: a */
    public final byte[] m7918a(CharSequence charSequence) {
        try {
            return m7914b(charSequence);
        } catch (DecodingException e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: b */
    public abstract int mo7897b(int i);

    /* renamed from: b */
    public abstract BaseEncoding mo7898b();

    /* renamed from: b */
    public final byte[] m7914b(CharSequence charSequence) throws DecodingException {
        CharSequence c = mo7895c(charSequence);
        byte[] bArr = new byte[mo7902a(c.length())];
        return m7916a(bArr, mo7899a(bArr, c));
    }

    /* renamed from: c */
    public abstract CharSequence mo7895c(CharSequence charSequence);
}
