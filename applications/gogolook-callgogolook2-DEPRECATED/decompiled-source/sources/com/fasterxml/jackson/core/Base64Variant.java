package com.fasterxml.jackson.core;

import com.fasterxml.jackson.core.util.ByteArrayBuilder;
import java.io.Serializable;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/core/Base64Variant.class */
public final class Base64Variant implements Serializable {
    public final transient int[] _asciiToBase64;
    public final transient byte[] _base64ToAsciiB;
    public final transient char[] _base64ToAsciiC;
    public final transient int _maxLineLength;
    public final String _name;
    public final transient char _paddingChar;
    public final transient boolean _usesPadding;

    public Base64Variant(Base64Variant base64Variant, String str, int i) {
        this(base64Variant, str, base64Variant._usesPadding, base64Variant._paddingChar, i);
    }

    public Base64Variant(Base64Variant base64Variant, String str, boolean z, char c, int i) {
        this._asciiToBase64 = new int[128];
        this._base64ToAsciiC = new char[64];
        this._base64ToAsciiB = new byte[64];
        this._name = str;
        byte[] bArr = base64Variant._base64ToAsciiB;
        System.arraycopy(bArr, 0, this._base64ToAsciiB, 0, bArr.length);
        char[] cArr = base64Variant._base64ToAsciiC;
        System.arraycopy(cArr, 0, this._base64ToAsciiC, 0, cArr.length);
        int[] iArr = base64Variant._asciiToBase64;
        System.arraycopy(iArr, 0, this._asciiToBase64, 0, iArr.length);
        this._usesPadding = z;
        this._paddingChar = c;
        this._maxLineLength = i;
    }

    public Base64Variant(String str, String str2, boolean z, char c, int i) {
        this._asciiToBase64 = new int[128];
        this._base64ToAsciiC = new char[64];
        this._base64ToAsciiB = new byte[64];
        this._name = str;
        this._usesPadding = z;
        this._paddingChar = c;
        this._maxLineLength = i;
        int length = str2.length();
        if (length == 64) {
            str2.getChars(0, length, this._base64ToAsciiC, 0);
            Arrays.fill(this._asciiToBase64, -1);
            for (int i2 = 0; i2 < length; i2++) {
                char c2 = this._base64ToAsciiC[i2];
                this._base64ToAsciiB[i2] = (byte) c2;
                this._asciiToBase64[c2] = i2;
            }
            if (z) {
                this._asciiToBase64[c] = -2;
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Base64Alphabet length must be exactly 64 (was " + length + ")");
    }

    public void _reportBase64EOF() throws IllegalArgumentException {
        throw new IllegalArgumentException("Unexpected end-of-String in base64 content");
    }

    public void _reportInvalidBase64(char c, int i, String str) throws IllegalArgumentException {
        String str2;
        if (c <= ' ') {
            str2 = "Illegal white space character (code 0x" + Integer.toHexString(c) + ") as character #" + (i + 1) + " of 4-char base64 unit: can only used between units";
        } else if (usesPaddingChar(c)) {
            str2 = "Unexpected padding character ('" + getPaddingChar() + "') as character #" + (i + 1) + " of 4-char base64 unit: padding only legal as 3rd or 4th character";
        } else if (!Character.isDefined(c) || Character.isISOControl(c)) {
            str2 = "Illegal character (code 0x" + Integer.toHexString(c) + ") in base64 content";
        } else {
            str2 = "Illegal character '" + c + "' (code 0x" + Integer.toHexString(c) + ") in base64 content";
        }
        String str3 = str2;
        if (str != null) {
            str3 = str2 + ": " + str;
        }
        throw new IllegalArgumentException(str3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0036, code lost:
        if (r0 >= 0) goto L_0x0041;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0039, code lost:
        _reportInvalidBase64(r0, 0, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0044, code lost:
        if (r0 < r0) goto L_0x004b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0047, code lost:
        _reportBase64EOF();
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x004b, code lost:
        r0 = r0 + 1;
        r0 = r6.charAt(r0);
        r0 = decodeBase64Char(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0063, code lost:
        if (r0 >= 0) goto L_0x006e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0066, code lost:
        _reportInvalidBase64(r0, 1, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x006e, code lost:
        r0 = (r0 << 6) | r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x007b, code lost:
        if (r0 < r0) goto L_0x0094;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0082, code lost:
        if (usesPadding() != false) goto L_0x0090;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0085, code lost:
        r7.append(r0 >> 4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0090, code lost:
        _reportBase64EOF();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0094, code lost:
        r0 = r0 + 1;
        r0 = r6.charAt(r0);
        r0 = decodeBase64Char(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00ac, code lost:
        if (r0 >= 0) goto L_0x0119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00b3, code lost:
        if (r0 == (-2)) goto L_0x00be;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00b6, code lost:
        _reportInvalidBase64(r0, 2, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00c1, code lost:
        if (r0 < r0) goto L_0x00c8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00c4, code lost:
        _reportBase64EOF();
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00c8, code lost:
        r9 = r0 + 1;
        r0 = r6.charAt(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00dc, code lost:
        if (usesPaddingChar(r0) != false) goto L_0x010e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00df, code lost:
        _reportInvalidBase64(r0, 3, "expected padding character '" + getPaddingChar() + "'");
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x010e, code lost:
        r7.append(r0 >> 4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0119, code lost:
        r0 = (r0 << 6) | r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0126, code lost:
        if (r0 < r0) goto L_0x013f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x012d, code lost:
        if (usesPadding() != false) goto L_0x013b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0130, code lost:
        r7.appendTwoBytes(r0 >> 2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x013b, code lost:
        _reportBase64EOF();
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x013f, code lost:
        r0 = r6.charAt(r0);
        r0 = decodeBase64Char(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0151, code lost:
        if (r0 >= 0) goto L_0x016e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0158, code lost:
        if (r0 == (-2)) goto L_0x0163;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x015b, code lost:
        _reportInvalidBase64(r0, 3, null);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0163, code lost:
        r7.appendTwoBytes(r0 >> 2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x016e, code lost:
        r7.appendThreeBytes((r0 << 6) | r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x017a, code lost:
        r9 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x018a, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x002c, code lost:
        r0 = decodeBase64Char(r0);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void decode(java.lang.String r6, com.fasterxml.jackson.core.util.ByteArrayBuilder r7) throws java.lang.IllegalArgumentException {
        /*
            Method dump skipped, instructions count: 395
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.core.Base64Variant.decode(java.lang.String, com.fasterxml.jackson.core.util.ByteArrayBuilder):void");
    }

    public byte[] decode(String str) throws IllegalArgumentException {
        ByteArrayBuilder byteArrayBuilder = new ByteArrayBuilder();
        decode(str, byteArrayBuilder);
        return byteArrayBuilder.toByteArray();
    }

    public int decodeBase64Char(char c) {
        return c <= 127 ? this._asciiToBase64[c] : -1;
    }

    public int decodeBase64Char(int i) {
        return i <= 127 ? this._asciiToBase64[i] : -1;
    }

    public String encode(byte[] bArr, boolean z) {
        int length = bArr.length;
        StringBuilder sb = new StringBuilder((length >> 2) + length + (length >> 3));
        if (z) {
            sb.append('\"');
        }
        int maxLineLength = getMaxLineLength() >> 2;
        int i = 0;
        while (i <= length - 3) {
            int i2 = i + 1;
            byte b = bArr[i];
            int i3 = i2 + 1;
            encodeBase64Chunk(sb, (((b << 8) | (bArr[i2] & 255)) << 8) | (bArr[i3] & 255));
            int i4 = maxLineLength - 1;
            maxLineLength = i4;
            if (i4 <= 0) {
                sb.append('\\');
                sb.append('n');
                maxLineLength = getMaxLineLength() >> 2;
            }
            i = i3 + 1;
        }
        int i5 = length - i;
        if (i5 > 0) {
            int i6 = bArr[i] << 16;
            int i7 = i6;
            if (i5 == 2) {
                i7 = i6 | ((bArr[i + 1] & 255) << 8);
            }
            encodeBase64Partial(sb, i7, i5);
        }
        if (z) {
            sb.append('\"');
        }
        return sb.toString();
    }

    public int encodeBase64Chunk(int i, byte[] bArr, int i2) {
        int i3 = i2 + 1;
        byte[] bArr2 = this._base64ToAsciiB;
        bArr[i2] = bArr2[(i >> 18) & 63];
        int i4 = i3 + 1;
        bArr[i3] = bArr2[(i >> 12) & 63];
        int i5 = i4 + 1;
        bArr[i4] = bArr2[(i >> 6) & 63];
        bArr[i5] = bArr2[i & 63];
        return i5 + 1;
    }

    public int encodeBase64Chunk(int i, char[] cArr, int i2) {
        int i3 = i2 + 1;
        char[] cArr2 = this._base64ToAsciiC;
        cArr[i2] = cArr2[(i >> 18) & 63];
        int i4 = i3 + 1;
        cArr[i3] = cArr2[(i >> 12) & 63];
        int i5 = i4 + 1;
        cArr[i4] = cArr2[(i >> 6) & 63];
        cArr[i5] = cArr2[i & 63];
        return i5 + 1;
    }

    public void encodeBase64Chunk(StringBuilder sb, int i) {
        sb.append(this._base64ToAsciiC[(i >> 18) & 63]);
        sb.append(this._base64ToAsciiC[(i >> 12) & 63]);
        sb.append(this._base64ToAsciiC[(i >> 6) & 63]);
        sb.append(this._base64ToAsciiC[i & 63]);
    }

    public int encodeBase64Partial(int i, int i2, byte[] bArr, int i3) {
        int i4;
        int i5 = i3 + 1;
        byte[] bArr2 = this._base64ToAsciiB;
        bArr[i3] = bArr2[(i >> 18) & 63];
        int i6 = i5 + 1;
        bArr[i5] = bArr2[(i >> 12) & 63];
        if (this._usesPadding) {
            byte b = (byte) this._paddingChar;
            int i7 = i6 + 1;
            bArr[i6] = i2 == 2 ? bArr2[(i >> 6) & 63] : b;
            i4 = i7 + 1;
            bArr[i7] = b;
        } else {
            i4 = i6;
            if (i2 == 2) {
                bArr[i6] = bArr2[(i >> 6) & 63];
                i4 = i6 + 1;
            }
        }
        return i4;
    }

    public int encodeBase64Partial(int i, int i2, char[] cArr, int i3) {
        int i4;
        int i5 = i3 + 1;
        char[] cArr2 = this._base64ToAsciiC;
        cArr[i3] = cArr2[(i >> 18) & 63];
        int i6 = i5 + 1;
        cArr[i5] = cArr2[(i >> 12) & 63];
        if (this._usesPadding) {
            int i7 = i6 + 1;
            cArr[i6] = i2 == 2 ? cArr2[(i >> 6) & 63] : this._paddingChar;
            i4 = i7 + 1;
            cArr[i7] = this._paddingChar;
        } else {
            i4 = i6;
            if (i2 == 2) {
                cArr[i6] = cArr2[(i >> 6) & 63];
                i4 = i6 + 1;
            }
        }
        return i4;
    }

    public void encodeBase64Partial(StringBuilder sb, int i, int i2) {
        sb.append(this._base64ToAsciiC[(i >> 18) & 63]);
        sb.append(this._base64ToAsciiC[(i >> 12) & 63]);
        if (this._usesPadding) {
            sb.append(i2 == 2 ? this._base64ToAsciiC[(i >> 6) & 63] : this._paddingChar);
            sb.append(this._paddingChar);
        } else if (i2 == 2) {
            sb.append(this._base64ToAsciiC[(i >> 6) & 63]);
        }
    }

    public boolean equals(Object obj) {
        return obj == this;
    }

    public int getMaxLineLength() {
        return this._maxLineLength;
    }

    public char getPaddingChar() {
        return this._paddingChar;
    }

    public int hashCode() {
        return this._name.hashCode();
    }

    public Object readResolve() {
        return Base64Variants.valueOf(this._name);
    }

    public String toString() {
        return this._name;
    }

    public boolean usesPadding() {
        return this._usesPadding;
    }

    public boolean usesPaddingChar(char c) {
        return c == this._paddingChar;
    }

    public boolean usesPaddingChar(int i) {
        return i == this._paddingChar;
    }
}
