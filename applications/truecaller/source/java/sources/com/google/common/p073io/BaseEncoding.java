package com.google.common.p073io;

import com.google.common.math.IntMath;
import java.io.IOException;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.Objects;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.google.common.io.BaseEncoding */
/* loaded from: classes3-dex2jar.jar:com/google/common/io/BaseEncoding.class */
public abstract class BaseEncoding {
    public static final BaseEncoding BASE64 = new Base64Encoding("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", '=');

    /* renamed from: com.google.common.io.BaseEncoding$Alphabet */
    /* loaded from: classes3-dex2jar.jar:com/google/common/io/BaseEncoding$Alphabet.class */
    public static final class Alphabet {
        public final int bitsPerChar;
        public final int bytesPerChunk;
        public final char[] chars;
        public final int charsPerChunk;
        public final byte[] decodabet;
        public final int mask;
        public final String name;
        public final boolean[] validPadding;

        public Alphabet(String str, char[] cArr) {
            Objects.requireNonNull(str);
            this.name = str;
            Objects.requireNonNull(cArr);
            this.chars = cArr;
            try {
                int log2 = IntMath.log2(cArr.length, RoundingMode.UNNECESSARY);
                this.bitsPerChar = log2;
                int min = Math.min(8, Integer.lowestOneBit(log2));
                try {
                    this.charsPerChunk = 8 / min;
                    this.bytesPerChunk = log2 / min;
                    this.mask = cArr.length - 1;
                    byte[] bArr = new byte[128];
                    Arrays.fill(bArr, (byte) -1);
                    for (int i = 0; i < cArr.length; i++) {
                        char c = cArr[i];
                        C26232y.checkArgument(c < 128, "Non-ASCII character: %s", c);
                        C26232y.checkArgument(bArr[c] == -1, "Duplicate character: %s", c);
                        bArr[c] = (byte) i;
                    }
                    this.decodabet = bArr;
                    boolean[] zArr = new boolean[this.charsPerChunk];
                    for (int i2 = 0; i2 < this.bytesPerChunk; i2++) {
                        zArr[IntMath.divide(i2 * 8, this.bitsPerChar, RoundingMode.CEILING)] = true;
                    }
                    this.validPadding = zArr;
                } catch (ArithmeticException e) {
                    String str2 = new String(cArr);
                    throw new IllegalArgumentException(str2.length() != 0 ? "Illegal alphabet ".concat(str2) : new String("Illegal alphabet "), e);
                }
            } catch (ArithmeticException e2) {
                throw new IllegalArgumentException(C22128a.m8690L1(35, "Illegal alphabet length ", cArr.length), e2);
            }
        }

        public int decode(char c) throws DecodingException {
            if (c > 127) {
                String valueOf = String.valueOf(Integer.toHexString(c));
                throw new DecodingException(valueOf.length() != 0 ? "Unrecognized character: 0x".concat(valueOf) : new String("Unrecognized character: 0x"));
            }
            byte b = this.decodabet[c];
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

        public boolean equals(Object obj) {
            if (obj instanceof Alphabet) {
                return Arrays.equals(this.chars, ((Alphabet) obj).chars);
            }
            return false;
        }

        public int hashCode() {
            return Arrays.hashCode(this.chars);
        }

        public String toString() {
            return this.name;
        }
    }

    /* renamed from: com.google.common.io.BaseEncoding$DecodingException */
    /* loaded from: classes3-dex2jar.jar:com/google/common/io/BaseEncoding$DecodingException.class */
    public static final class DecodingException extends IOException {
        public DecodingException(String str) {
            super(str);
        }
    }

    static {
        new Base64Encoding("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_", '=');
        new StandardBaseEncoding(new Alphabet("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567".toCharArray()), '=');
        new StandardBaseEncoding(new Alphabet("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV".toCharArray()), '=');
        new Base16Encoding(new Alphabet("base16()", "0123456789ABCDEF".toCharArray()));
    }

    public final byte[] decode(CharSequence charSequence) {
        try {
            CharSequence trimTrailingPadding = trimTrailingPadding(charSequence);
            int length = (int) (((((StandardBaseEncoding) this).alphabet.bitsPerChar * trimTrailingPadding.length()) + 7) / 8);
            byte[] bArr = new byte[length];
            int decodeTo = decodeTo(bArr, trimTrailingPadding);
            if (decodeTo != length) {
                byte[] bArr2 = new byte[decodeTo];
                System.arraycopy(bArr, 0, bArr2, 0, decodeTo);
                bArr = bArr2;
            }
            return bArr;
        } catch (DecodingException e) {
            throw new IllegalArgumentException(e);
        }
    }

    public abstract int decodeTo(byte[] bArr, CharSequence charSequence) throws DecodingException;

    public String encode(byte[] bArr) {
        int length = bArr.length;
        C26232y.checkPositionIndexes(0, 0 + length, bArr.length);
        Alphabet alphabet = ((StandardBaseEncoding) this).alphabet;
        StringBuilder sb = new StringBuilder(IntMath.divide(length, alphabet.bytesPerChunk, RoundingMode.CEILING) * alphabet.charsPerChunk);
        try {
            encodeTo(sb, bArr, 0, length);
            return sb.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    public abstract void encodeTo(Appendable appendable, byte[] bArr, int i, int i2) throws IOException;

    public abstract CharSequence trimTrailingPadding(CharSequence charSequence);
}
