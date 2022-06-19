package okio;

import java.io.EOFException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes2-dex2jar.jar:okio/ByteString.class */
public class ByteString implements Serializable, Comparable<ByteString> {
    private static final long serialVersionUID = 1;
    final byte[] data;
    transient int hashCode;
    transient String utf8;
    static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    public static final ByteString EMPTY = m363of(new byte[0]);

    public ByteString(byte[] bArr) {
        this.data = bArr;
    }

    static int codePointIndexToCharIndex(String str, int i) {
        int length = str.length();
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            if (i3 == i) {
                return i2;
            }
            int codePointAt = str.codePointAt(i2);
            if ((Character.isISOControl(codePointAt) && codePointAt != 10 && codePointAt != 13) || codePointAt == 65533) {
                return -1;
            }
            i3++;
            i2 += Character.charCount(codePointAt);
        }
        return str.length();
    }

    public static ByteString decodeBase64(String str) {
        if (str != null) {
            byte[] decode = Base64.decode(str);
            return decode != null ? new ByteString(decode) : null;
        }
        throw new IllegalArgumentException("base64 == null");
    }

    public static ByteString decodeHex(String str) {
        if (str != null) {
            if (str.length() % 2 != 0) {
                throw new IllegalArgumentException("Unexpected hex string: " + str);
            }
            int length = str.length() / 2;
            byte[] bArr = new byte[length];
            for (int i = 0; i < length; i++) {
                int i2 = i * 2;
                bArr[i] = (byte) ((decodeHexDigit(str.charAt(i2)) << 4) + decodeHexDigit(str.charAt(i2 + 1)));
            }
            return m363of(bArr);
        }
        throw new IllegalArgumentException("hex == null");
    }

    private static int decodeHexDigit(char c) {
        if (c < '0' || c > '9') {
            char c2 = 'a';
            if (c < 'a' || c > 'f') {
                c2 = 'A';
                if (c < 'A' || c > 'F') {
                    throw new IllegalArgumentException("Unexpected hex digit: " + c);
                }
            }
            return (c - c2) + 10;
        }
        return c - '0';
    }

    private ByteString digest(String str) {
        try {
            return m363of(MessageDigest.getInstance(str).digest(this.data));
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError(e);
        }
    }

    public static ByteString encodeString(String str, Charset charset) {
        if (str != null) {
            if (charset == null) {
                throw new IllegalArgumentException("charset == null");
            }
            return new ByteString(str.getBytes(charset));
        }
        throw new IllegalArgumentException("s == null");
    }

    public static ByteString encodeUtf8(String str) {
        if (str != null) {
            ByteString byteString = new ByteString(str.getBytes(Util.UTF_8));
            byteString.utf8 = str;
            return byteString;
        }
        throw new IllegalArgumentException("s == null");
    }

    private ByteString hmac(String str, ByteString byteString) {
        try {
            Mac mac = Mac.getInstance(str);
            mac.init(new SecretKeySpec(byteString.toByteArray(), str));
            return m363of(mac.doFinal(this.data));
        } catch (InvalidKeyException e) {
            throw new IllegalArgumentException(e);
        } catch (NoSuchAlgorithmException e2) {
            throw new AssertionError(e2);
        }
    }

    /* renamed from: of */
    public static ByteString m364of(ByteBuffer byteBuffer) {
        if (byteBuffer != null) {
            byte[] bArr = new byte[byteBuffer.remaining()];
            byteBuffer.get(bArr);
            return new ByteString(bArr);
        }
        throw new IllegalArgumentException("data == null");
    }

    /* renamed from: of */
    public static ByteString m363of(byte... bArr) {
        if (bArr != null) {
            return new ByteString((byte[]) bArr.clone());
        }
        throw new IllegalArgumentException("data == null");
    }

    /* renamed from: of */
    public static ByteString m362of(byte[] bArr, int i, int i2) {
        if (bArr != null) {
            Util.checkOffsetAndCount(bArr.length, i, i2);
            byte[] bArr2 = new byte[i2];
            System.arraycopy(bArr, i, bArr2, 0, i2);
            return new ByteString(bArr2);
        }
        throw new IllegalArgumentException("data == null");
    }

    public static ByteString read(InputStream inputStream, int i) {
        if (inputStream != null) {
            if (i < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + i);
            }
            byte[] bArr = new byte[i];
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 >= i) {
                    return new ByteString(bArr);
                }
                int read = inputStream.read(bArr, i3, i - i3);
                if (read == -1) {
                    throw new EOFException();
                }
                i2 = i3 + read;
            }
        } else {
            throw new IllegalArgumentException("in == null");
        }
    }

    private void readObject(ObjectInputStream objectInputStream) {
        ByteString read = read(objectInputStream, objectInputStream.readInt());
        try {
            Field declaredField = ByteString.class.getDeclaredField("data");
            declaredField.setAccessible(true);
            declaredField.set(this, read.data);
        } catch (IllegalAccessException e) {
            throw new AssertionError();
        } catch (NoSuchFieldException e2) {
            throw new AssertionError();
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) {
        objectOutputStream.writeInt(this.data.length);
        objectOutputStream.write(this.data);
    }

    public ByteBuffer asByteBuffer() {
        return ByteBuffer.wrap(this.data).asReadOnlyBuffer();
    }

    public String base64() {
        return Base64.encode(this.data);
    }

    public String base64Url() {
        return Base64.encodeUrl(this.data);
    }

    public int compareTo(ByteString byteString) {
        int size = size();
        int size2 = byteString.size();
        int min = Math.min(size, size2);
        int i = 0;
        while (true) {
            int i2 = -1;
            if (i >= min) {
                if (size == size2) {
                    return 0;
                }
                if (size >= size2) {
                    i2 = 1;
                }
                return i2;
            }
            int i3 = getByte(i) & 255;
            int i4 = byteString.getByte(i) & 255;
            if (i3 != i4) {
                if (i3 >= i4) {
                    i2 = 1;
                }
                return i2;
            }
            i++;
        }
    }

    public final boolean endsWith(ByteString byteString) {
        return rangeEquals(size() - byteString.size(), byteString, 0, byteString.size());
    }

    public final boolean endsWith(byte[] bArr) {
        return rangeEquals(size() - bArr.length, bArr, 0, bArr.length);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0032, code lost:
        if (r0.rangeEquals(0, r0, 0, r0.length) != false) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r7) {
        /*
            r6 = this;
            r0 = 1
            r8 = r0
            r0 = r7
            r1 = r6
            if (r0 != r1) goto L9
            r0 = 1
            return r0
        L9:
            r0 = r7
            boolean r0 = r0 instanceof okio.ByteString
            if (r0 == 0) goto L38
            r0 = r7
            okio.ByteString r0 = (okio.ByteString) r0
            r7 = r0
            r0 = r7
            int r0 = r0.size()
            r9 = r0
            r0 = r6
            byte[] r0 = r0.data
            r10 = r0
            r0 = r9
            r1 = r10
            int r1 = r1.length
            if (r0 != r1) goto L38
            r0 = r7
            r1 = 0
            r2 = r10
            r3 = 0
            r4 = r10
            int r4 = r4.length
            boolean r0 = r0.rangeEquals(r1, r2, r3, r4)
            if (r0 == 0) goto L38
            goto L3a
        L38:
            r0 = 0
            r8 = r0
        L3a:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.ByteString.equals(java.lang.Object):boolean");
    }

    public byte getByte(int i) {
        return this.data[i];
    }

    public int hashCode() {
        int i = this.hashCode;
        if (i == 0) {
            i = Arrays.hashCode(this.data);
            this.hashCode = i;
        }
        return i;
    }

    public String hex() {
        byte[] bArr = this.data;
        char[] cArr = new char[bArr.length * 2];
        int i = 0;
        for (byte b : bArr) {
            int i2 = i + 1;
            char[] cArr2 = HEX_DIGITS;
            cArr[i] = cArr2[(b >> 4) & 15];
            i = i2 + 1;
            cArr[i2] = cArr2[b & 15];
        }
        return new String(cArr);
    }

    public ByteString hmacSha1(ByteString byteString) {
        return hmac("HmacSHA1", byteString);
    }

    public ByteString hmacSha256(ByteString byteString) {
        return hmac("HmacSHA256", byteString);
    }

    public ByteString hmacSha512(ByteString byteString) {
        return hmac("HmacSHA512", byteString);
    }

    public final int indexOf(ByteString byteString) {
        return indexOf(byteString.internalArray(), 0);
    }

    public final int indexOf(ByteString byteString, int i) {
        return indexOf(byteString.internalArray(), i);
    }

    public final int indexOf(byte[] bArr) {
        return indexOf(bArr, 0);
    }

    public int indexOf(byte[] bArr, int i) {
        int length = this.data.length;
        int length2 = bArr.length;
        for (int max = Math.max(i, 0); max <= length - length2; max++) {
            if (Util.arrayRangeEquals(this.data, max, bArr, 0, bArr.length)) {
                return max;
            }
        }
        return -1;
    }

    public byte[] internalArray() {
        return this.data;
    }

    public final int lastIndexOf(ByteString byteString) {
        return lastIndexOf(byteString.internalArray(), size());
    }

    public final int lastIndexOf(ByteString byteString, int i) {
        return lastIndexOf(byteString.internalArray(), i);
    }

    public final int lastIndexOf(byte[] bArr) {
        return lastIndexOf(bArr, size());
    }

    public int lastIndexOf(byte[] bArr, int i) {
        for (int min = Math.min(i, this.data.length - bArr.length); min >= 0; min--) {
            if (Util.arrayRangeEquals(this.data, min, bArr, 0, bArr.length)) {
                return min;
            }
        }
        return -1;
    }

    public ByteString md5() {
        return digest("MD5");
    }

    public boolean rangeEquals(int i, ByteString byteString, int i2, int i3) {
        return byteString.rangeEquals(i2, this.data, i, i3);
    }

    public boolean rangeEquals(int i, byte[] bArr, int i2, int i3) {
        boolean z;
        if (i >= 0) {
            byte[] bArr2 = this.data;
            if (i <= bArr2.length - i3 && i2 >= 0 && i2 <= bArr.length - i3 && Util.arrayRangeEquals(bArr2, i, bArr, i2, i3)) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    public ByteString sha1() {
        return digest("SHA-1");
    }

    public ByteString sha256() {
        return digest("SHA-256");
    }

    public ByteString sha512() {
        return digest("SHA-512");
    }

    public int size() {
        return this.data.length;
    }

    public final boolean startsWith(ByteString byteString) {
        return rangeEquals(0, byteString, 0, byteString.size());
    }

    public final boolean startsWith(byte[] bArr) {
        return rangeEquals(0, bArr, 0, bArr.length);
    }

    public String string(Charset charset) {
        if (charset != null) {
            return new String(this.data, charset);
        }
        throw new IllegalArgumentException("charset == null");
    }

    public ByteString substring(int i) {
        return substring(i, this.data.length);
    }

    public ByteString substring(int i, int i2) {
        if (i >= 0) {
            byte[] bArr = this.data;
            if (i2 > bArr.length) {
                throw new IllegalArgumentException("endIndex > length(" + this.data.length + ")");
            }
            int i3 = i2 - i;
            if (i3 < 0) {
                throw new IllegalArgumentException("endIndex < beginIndex");
            }
            if (i == 0 && i2 == bArr.length) {
                return this;
            }
            byte[] bArr2 = new byte[i3];
            System.arraycopy(bArr, i, bArr2, 0, i3);
            return new ByteString(bArr2);
        }
        throw new IllegalArgumentException("beginIndex < 0");
    }

    public ByteString toAsciiLowercase() {
        int i = 0;
        while (true) {
            byte[] bArr = this.data;
            if (i < bArr.length) {
                byte b = bArr[i];
                if (b >= 65 && b <= 90) {
                    byte[] bArr2 = (byte[]) bArr.clone();
                    bArr2[i] = (byte) (b + 32);
                    for (int i2 = i + 1; i2 < bArr2.length; i2++) {
                        byte b2 = bArr2[i2];
                        if (b2 >= 65 && b2 <= 90) {
                            bArr2[i2] = (byte) (b2 + 32);
                        }
                    }
                    return new ByteString(bArr2);
                }
                i++;
            } else {
                return this;
            }
        }
    }

    public ByteString toAsciiUppercase() {
        int i = 0;
        while (true) {
            byte[] bArr = this.data;
            if (i < bArr.length) {
                byte b = bArr[i];
                if (b >= 97 && b <= 122) {
                    byte[] bArr2 = (byte[]) bArr.clone();
                    bArr2[i] = (byte) (b - 32);
                    for (int i2 = i + 1; i2 < bArr2.length; i2++) {
                        byte b2 = bArr2[i2];
                        if (b2 >= 97 && b2 <= 122) {
                            bArr2[i2] = (byte) (b2 - 32);
                        }
                    }
                    return new ByteString(bArr2);
                }
                i++;
            } else {
                return this;
            }
        }
    }

    public byte[] toByteArray() {
        return (byte[]) this.data.clone();
    }

    public String toString() {
        String str;
        String str2;
        if (this.data.length == 0) {
            return "[size=0]";
        }
        String utf8 = utf8();
        int codePointIndexToCharIndex = codePointIndexToCharIndex(utf8, 64);
        if (codePointIndexToCharIndex == -1) {
            if (this.data.length <= 64) {
                str2 = "[hex=" + hex() + "]";
            } else {
                str2 = "[size=" + this.data.length + " hex=" + substring(0, 64).hex() + "…]";
            }
            return str2;
        }
        String replace = utf8.substring(0, codePointIndexToCharIndex).replace("\\", "\\\\").replace("\n", "\\n").replace("\r", "\\r");
        if (codePointIndexToCharIndex < utf8.length()) {
            str = "[size=" + this.data.length + " text=" + replace + "…]";
        } else {
            str = "[text=" + replace + "]";
        }
        return str;
    }

    public String utf8() {
        String str = this.utf8;
        if (str == null) {
            str = new String(this.data, Util.UTF_8);
            this.utf8 = str;
        }
        return str;
    }

    public void write(OutputStream outputStream) {
        if (outputStream != null) {
            outputStream.write(this.data);
            return;
        }
        throw new IllegalArgumentException("out == null");
    }

    public void write(Buffer buffer) {
        byte[] bArr = this.data;
        buffer.write(bArr, 0, bArr.length);
    }
}
