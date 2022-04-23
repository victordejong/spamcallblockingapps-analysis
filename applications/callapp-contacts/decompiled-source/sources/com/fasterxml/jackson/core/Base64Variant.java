package com.fasterxml.jackson.core;

import com.fasterxml.jackson.core.util.ByteArrayBuilder;
import java.io.Serializable;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/Base64Variant.class */
public final class Base64Variant implements Serializable {
    private final transient int[] _asciiToBase64;
    private final transient byte[] _base64ToAsciiB;
    private final transient char[] _base64ToAsciiC;
    private final int _maxLineLength;
    final String _name;
    private final char _paddingChar;
    private final PaddingReadBehaviour _paddingReadBehaviour;
    private final boolean _writePadding;

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/Base64Variant$PaddingReadBehaviour.class */
    public enum PaddingReadBehaviour {
        PADDING_FORBIDDEN,
        PADDING_REQUIRED,
        PADDING_ALLOWED
    }

    private Base64Variant(Base64Variant base64Variant, PaddingReadBehaviour paddingReadBehaviour) {
        this(base64Variant, base64Variant._name, base64Variant._writePadding, base64Variant._paddingChar, paddingReadBehaviour, base64Variant._maxLineLength);
    }

    public Base64Variant(Base64Variant base64Variant, String str, int i) {
        this(base64Variant, str, base64Variant._writePadding, base64Variant._paddingChar, i);
    }

    public Base64Variant(Base64Variant base64Variant, String str, boolean z, char c2, int i) {
        this(base64Variant, str, z, c2, base64Variant._paddingReadBehaviour, i);
    }

    private Base64Variant(Base64Variant base64Variant, String str, boolean z, char c2, PaddingReadBehaviour paddingReadBehaviour, int i) {
        int[] iArr = new int[128];
        this._asciiToBase64 = iArr;
        char[] cArr = new char[64];
        this._base64ToAsciiC = cArr;
        byte[] bArr = new byte[64];
        this._base64ToAsciiB = bArr;
        this._name = str;
        byte[] bArr2 = base64Variant._base64ToAsciiB;
        System.arraycopy(bArr2, 0, bArr, 0, bArr2.length);
        char[] cArr2 = base64Variant._base64ToAsciiC;
        System.arraycopy(cArr2, 0, cArr, 0, cArr2.length);
        int[] iArr2 = base64Variant._asciiToBase64;
        System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
        this._writePadding = z;
        this._paddingChar = c2;
        this._maxLineLength = i;
        this._paddingReadBehaviour = paddingReadBehaviour;
    }

    public Base64Variant(String str, String str2, boolean z, char c2, int i) {
        int[] iArr = new int[128];
        this._asciiToBase64 = iArr;
        char[] cArr = new char[64];
        this._base64ToAsciiC = cArr;
        this._base64ToAsciiB = new byte[64];
        this._name = str;
        this._writePadding = z;
        this._paddingChar = c2;
        this._maxLineLength = i;
        int length = str2.length();
        if (length == 64) {
            str2.getChars(0, length, cArr, 0);
            Arrays.fill(iArr, -1);
            for (int i2 = 0; i2 < length; i2++) {
                char c3 = this._base64ToAsciiC[i2];
                this._base64ToAsciiB[i2] = (byte) c3;
                this._asciiToBase64[c3] = i2;
            }
            if (z) {
                this._asciiToBase64[c2] = -2;
            }
            this._paddingReadBehaviour = z ? PaddingReadBehaviour.PADDING_REQUIRED : PaddingReadBehaviour.PADDING_FORBIDDEN;
            return;
        }
        throw new IllegalArgumentException("Base64Alphabet length must be exactly 64 (was " + length + ")");
    }

    protected final void _reportBase64EOF() throws IllegalArgumentException {
        throw new IllegalArgumentException(missingPaddingMessage());
    }

    protected final void _reportBase64UnexpectedPadding() throws IllegalArgumentException {
        throw new IllegalArgumentException(unexpectedPaddingMessage());
    }

    protected final void _reportInvalidBase64(char c2, int i, String str) throws IllegalArgumentException {
        String str2;
        if (c2 <= ' ') {
            str2 = "Illegal white space character (code 0x" + Integer.toHexString(c2) + ") as character #" + (i + 1) + " of 4-char base64 unit: can only used between units";
        } else if (usesPaddingChar(c2)) {
            str2 = "Unexpected padding character ('" + getPaddingChar() + "') as character #" + (i + 1) + " of 4-char base64 unit: padding only legal as 3rd or 4th character";
        } else if (!Character.isDefined(c2) || Character.isISOControl(c2)) {
            str2 = "Illegal character (code 0x" + Integer.toHexString(c2) + ") in base64 content";
        } else {
            str2 = "Illegal character '" + c2 + "' (code 0x" + Integer.toHexString(c2) + ") in base64 content";
        }
        String str3 = str2;
        if (str != null) {
            str3 = str2 + ": " + str;
        }
        throw new IllegalArgumentException(str3);
    }

    public final boolean acceptsPaddingOnRead() {
        return this._paddingReadBehaviour != PaddingReadBehaviour.PADDING_FORBIDDEN;
    }

    public final void decode(String str, ByteArrayBuilder byteArrayBuilder) throws IllegalArgumentException {
        int length = str.length();
        int i = 0;
        while (i < length) {
            int i2 = i + 1;
            char charAt = str.charAt(i);
            i = i2;
            if (charAt > ' ') {
                int decodeBase64Char = decodeBase64Char(charAt);
                if (decodeBase64Char < 0) {
                    _reportInvalidBase64(charAt, 0, null);
                }
                if (i2 >= length) {
                    _reportBase64EOF();
                }
                int i3 = i2 + 1;
                char charAt2 = str.charAt(i2);
                int decodeBase64Char2 = decodeBase64Char(charAt2);
                if (decodeBase64Char2 < 0) {
                    _reportInvalidBase64(charAt2, 1, null);
                }
                int i4 = (decodeBase64Char << 6) | decodeBase64Char2;
                if (i3 >= length) {
                    if (!requiresPaddingOnRead()) {
                        byteArrayBuilder.append(i4 >> 4);
                        return;
                    }
                    _reportBase64EOF();
                }
                int i5 = i3 + 1;
                char charAt3 = str.charAt(i3);
                int decodeBase64Char3 = decodeBase64Char(charAt3);
                if (decodeBase64Char3 < 0) {
                    if (decodeBase64Char3 != -2) {
                        _reportInvalidBase64(charAt3, 2, null);
                    }
                    if (!acceptsPaddingOnRead()) {
                        _reportBase64UnexpectedPadding();
                    }
                    if (i5 >= length) {
                        _reportBase64EOF();
                    }
                    i = i5 + 1;
                    char charAt4 = str.charAt(i5);
                    if (!usesPaddingChar(charAt4)) {
                        _reportInvalidBase64(charAt4, 3, "expected padding character '" + getPaddingChar() + "'");
                    }
                    byteArrayBuilder.append(i4 >> 4);
                } else {
                    int i6 = (i4 << 6) | decodeBase64Char3;
                    if (i5 >= length) {
                        if (!requiresPaddingOnRead()) {
                            byteArrayBuilder.appendTwoBytes(i6 >> 2);
                            return;
                        }
                        _reportBase64EOF();
                    }
                    i = i5 + 1;
                    char charAt5 = str.charAt(i5);
                    int decodeBase64Char4 = decodeBase64Char(charAt5);
                    if (decodeBase64Char4 < 0) {
                        if (decodeBase64Char4 != -2) {
                            _reportInvalidBase64(charAt5, 3, null);
                        }
                        if (!acceptsPaddingOnRead()) {
                            _reportBase64UnexpectedPadding();
                        }
                        byteArrayBuilder.appendTwoBytes(i6 >> 2);
                    } else {
                        byteArrayBuilder.appendThreeBytes((i6 << 6) | decodeBase64Char4);
                    }
                }
            }
        }
    }

    public final byte[] decode(String str) throws IllegalArgumentException {
        ByteArrayBuilder byteArrayBuilder = new ByteArrayBuilder();
        decode(str, byteArrayBuilder);
        return byteArrayBuilder.toByteArray();
    }

    public final int decodeBase64Char(char c2) {
        if (c2 <= 127) {
            return this._asciiToBase64[c2];
        }
        return -1;
    }

    public final int decodeBase64Char(int i) {
        if (i <= 127) {
            return this._asciiToBase64[i];
        }
        return -1;
    }

    public final String encode(byte[] bArr) {
        return encode(bArr, false);
    }

    public final String encode(byte[] bArr, boolean z) {
        int length = bArr.length;
        StringBuilder sb = new StringBuilder((length >> 2) + length + (length >> 3));
        if (z) {
            sb.append('\"');
        }
        int maxLineLength = getMaxLineLength() >> 2;
        int i = 0;
        while (i <= length - 3) {
            int i2 = i + 1;
            byte b2 = bArr[i];
            int i3 = i2 + 1;
            encodeBase64Chunk(sb, (((b2 << 8) | (bArr[i2] & 255)) << 8) | (bArr[i3] & 255));
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

    public final int encodeBase64Chunk(int i, byte[] bArr, int i2) {
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

    public final int encodeBase64Chunk(int i, char[] cArr, int i2) {
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

    public final void encodeBase64Chunk(StringBuilder sb, int i) {
        sb.append(this._base64ToAsciiC[(i >> 18) & 63]);
        sb.append(this._base64ToAsciiC[(i >> 12) & 63]);
        sb.append(this._base64ToAsciiC[(i >> 6) & 63]);
        sb.append(this._base64ToAsciiC[i & 63]);
    }

    public final int encodeBase64Partial(int i, int i2, byte[] bArr, int i3) {
        int i4;
        int i5 = i3 + 1;
        byte[] bArr2 = this._base64ToAsciiB;
        bArr[i3] = bArr2[(i >> 18) & 63];
        int i6 = i5 + 1;
        bArr[i5] = bArr2[(i >> 12) & 63];
        if (usesPadding()) {
            byte b2 = (byte) this._paddingChar;
            int i7 = i6 + 1;
            bArr[i6] = i2 == 2 ? this._base64ToAsciiB[(i >> 6) & 63] : b2;
            i4 = i7 + 1;
            bArr[i7] = b2;
        } else {
            i4 = i6;
            if (i2 == 2) {
                bArr[i6] = this._base64ToAsciiB[(i >> 6) & 63];
                i4 = i6 + 1;
            }
        }
        return i4;
    }

    public final int encodeBase64Partial(int i, int i2, char[] cArr, int i3) {
        int i4;
        int i5 = i3 + 1;
        char[] cArr2 = this._base64ToAsciiC;
        cArr[i3] = cArr2[(i >> 18) & 63];
        int i6 = i5 + 1;
        cArr[i5] = cArr2[(i >> 12) & 63];
        if (usesPadding()) {
            int i7 = i6 + 1;
            cArr[i6] = i2 == 2 ? this._base64ToAsciiC[(i >> 6) & 63] : this._paddingChar;
            i4 = i7 + 1;
            cArr[i7] = this._paddingChar;
        } else {
            i4 = i6;
            if (i2 == 2) {
                cArr[i6] = this._base64ToAsciiC[(i >> 6) & 63];
                i4 = i6 + 1;
            }
        }
        return i4;
    }

    public final void encodeBase64Partial(StringBuilder sb, int i, int i2) {
        sb.append(this._base64ToAsciiC[(i >> 18) & 63]);
        sb.append(this._base64ToAsciiC[(i >> 12) & 63]);
        if (usesPadding()) {
            sb.append(i2 == 2 ? this._base64ToAsciiC[(i >> 6) & 63] : this._paddingChar);
            sb.append(this._paddingChar);
        } else if (i2 == 2) {
            sb.append(this._base64ToAsciiC[(i >> 6) & 63]);
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        Base64Variant base64Variant = (Base64Variant) obj;
        return base64Variant._paddingChar == this._paddingChar && base64Variant._maxLineLength == this._maxLineLength && base64Variant._writePadding == this._writePadding && base64Variant._paddingReadBehaviour == this._paddingReadBehaviour && this._name.equals(base64Variant._name);
    }

    public final int getMaxLineLength() {
        return this._maxLineLength;
    }

    public final String getName() {
        return this._name;
    }

    public final char getPaddingChar() {
        return this._paddingChar;
    }

    public final int hashCode() {
        return this._name.hashCode();
    }

    public final String missingPaddingMessage() {
        return String.format("Unexpected end of base64-encoded String: base64 variant '%s' expects padding (one or more '%c' characters) at the end. This Base64Variant might have been incorrectly configured", getName(), Character.valueOf(getPaddingChar()));
    }

    protected final Object readResolve() {
        Base64Variant valueOf = Base64Variants.valueOf(this._name);
        boolean z = this._writePadding;
        boolean z2 = valueOf._writePadding;
        return (z == z2 && this._paddingChar == valueOf._paddingChar && this._paddingReadBehaviour == valueOf._paddingReadBehaviour && this._maxLineLength == valueOf._maxLineLength && z == z2) ? valueOf : new Base64Variant(valueOf, this._name, z, this._paddingChar, this._paddingReadBehaviour, this._maxLineLength);
    }

    public final boolean requiresPaddingOnRead() {
        return this._paddingReadBehaviour == PaddingReadBehaviour.PADDING_REQUIRED;
    }

    public final String toString() {
        return this._name;
    }

    protected final String unexpectedPaddingMessage() {
        return String.format("Unexpected end of base64-encoded String: base64 variant '%s' expects no padding at the end while decoding. This Base64Variant might have been incorrectly configured", getName());
    }

    public final boolean usesPadding() {
        return this._writePadding;
    }

    public final boolean usesPaddingChar(char c2) {
        return c2 == this._paddingChar;
    }

    public final boolean usesPaddingChar(int i) {
        return i == this._paddingChar;
    }
}
