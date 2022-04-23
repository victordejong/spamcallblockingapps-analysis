package okio;

import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:okio/SegmentedByteString.class */
final class SegmentedByteString extends ByteString {
    final transient int[] directory;
    final transient byte[][] segments;

    /* JADX WARN: Type inference failed for: r1v4, types: [byte[], byte[][]] */
    SegmentedByteString(Buffer buffer, int i) {
        super((byte[]) null);
        Util.checkOffsetAndCount(buffer.size, 0L, i);
        Segment segment = buffer.head;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            int i5 = segment.limit;
            int i6 = segment.pos;
            if (i5 != i6) {
                i3 += i5 - i6;
                i4++;
                segment = segment.next;
            } else {
                throw new AssertionError("s.limit == s.pos");
            }
        }
        this.segments = new byte[i4];
        this.directory = new int[i4 * 2];
        Segment segment2 = buffer.head;
        int i7 = 0;
        while (i2 < i) {
            byte[][] bArr = this.segments;
            bArr[i7] = segment2.data;
            int i8 = segment2.limit;
            int i9 = segment2.pos;
            int i10 = i2 + (i8 - i9);
            i2 = i10;
            if (i10 > i) {
                i2 = i;
            }
            int[] iArr = this.directory;
            iArr[i7] = i2;
            iArr[bArr.length + i7] = i9;
            segment2.shared = true;
            i7++;
            segment2 = segment2.next;
        }
    }

    private int segment(int i) {
        int binarySearch = Arrays.binarySearch(this.directory, 0, this.segments.length, i + 1);
        if (binarySearch < 0) {
            binarySearch ^= -1;
        }
        return binarySearch;
    }

    private ByteString toByteString() {
        return new ByteString(toByteArray());
    }

    private Object writeReplace() {
        return toByteString();
    }

    public ByteBuffer asByteBuffer() {
        return ByteBuffer.wrap(toByteArray()).asReadOnlyBuffer();
    }

    public String base64() {
        return toByteString().base64();
    }

    public String base64Url() {
        return toByteString().base64Url();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002b, code lost:
        if (rangeEquals(0, r0, 0, size()) != false) goto L_0x0033;
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
            if (r0 != r1) goto L_0x0009
            r0 = 1
            return r0
        L_0x0009:
            r0 = r7
            boolean r0 = r0 instanceof okio.ByteString
            if (r0 == 0) goto L_0x0031
            r0 = r7
            okio.ByteString r0 = (okio.ByteString) r0
            r7 = r0
            r0 = r7
            int r0 = r0.size()
            r1 = r6
            int r1 = r1.size()
            if (r0 != r1) goto L_0x0031
            r0 = r6
            r1 = 0
            r2 = r7
            r3 = 0
            r4 = r6
            int r4 = r4.size()
            boolean r0 = r0.rangeEquals(r1, r2, r3, r4)
            if (r0 == 0) goto L_0x0031
            goto L_0x0033
        L_0x0031:
            r0 = 0
            r8 = r0
        L_0x0033:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.SegmentedByteString.equals(java.lang.Object):boolean");
    }

    public byte getByte(int i) {
        Util.checkOffsetAndCount(this.directory[this.segments.length - 1], i, 1L);
        int segment = segment(i);
        int i2 = segment == 0 ? 0 : this.directory[segment - 1];
        int[] iArr = this.directory;
        byte[][] bArr = this.segments;
        return bArr[segment][(i - i2) + iArr[bArr.length + segment]];
    }

    public int hashCode() {
        int i = ((ByteString) this).hashCode;
        if (i != 0) {
            return i;
        }
        int length = this.segments.length;
        int i2 = 0;
        int i3 = 0;
        int i4 = 1;
        while (i2 < length) {
            byte[] bArr = this.segments[i2];
            int[] iArr = this.directory;
            int i5 = iArr[length + i2];
            int i6 = iArr[i2];
            for (int i7 = i5; i7 < (i6 - i3) + i5; i7++) {
                i4 = (i4 * 31) + bArr[i7];
            }
            i2++;
            i3 = i6;
        }
        ((ByteString) this).hashCode = i4;
        return i4;
    }

    public String hex() {
        return toByteString().hex();
    }

    public ByteString hmacSha1(ByteString byteString) {
        return toByteString().hmacSha1(byteString);
    }

    public ByteString hmacSha256(ByteString byteString) {
        return toByteString().hmacSha256(byteString);
    }

    public int indexOf(byte[] bArr, int i) {
        return toByteString().indexOf(bArr, i);
    }

    byte[] internalArray() {
        return toByteArray();
    }

    public int lastIndexOf(byte[] bArr, int i) {
        return toByteString().lastIndexOf(bArr, i);
    }

    public ByteString md5() {
        return toByteString().md5();
    }

    public boolean rangeEquals(int i, ByteString byteString, int i2, int i3) {
        if (i < 0 || i > size() - i3) {
            return false;
        }
        int segment = segment(i);
        int i4 = i;
        while (i3 > 0) {
            int i5 = segment == 0 ? 0 : this.directory[segment - 1];
            int min = Math.min(i3, ((this.directory[segment] - i5) + i5) - i4);
            int[] iArr = this.directory;
            byte[][] bArr = this.segments;
            if (!byteString.rangeEquals(i2, bArr[segment], (i4 - i5) + iArr[bArr.length + segment], min)) {
                return false;
            }
            i4 += min;
            i2 += min;
            i3 -= min;
            segment++;
        }
        return true;
    }

    public boolean rangeEquals(int i, byte[] bArr, int i2, int i3) {
        if (i < 0 || i > size() - i3 || i2 < 0 || i2 > bArr.length - i3) {
            return false;
        }
        int segment = segment(i);
        int i4 = i;
        while (i3 > 0) {
            int i5 = segment == 0 ? 0 : this.directory[segment - 1];
            int min = Math.min(i3, ((this.directory[segment] - i5) + i5) - i4);
            int[] iArr = this.directory;
            byte[][] bArr2 = this.segments;
            if (!Util.arrayRangeEquals(bArr2[segment], (i4 - i5) + iArr[bArr2.length + segment], bArr, i2, min)) {
                return false;
            }
            i4 += min;
            i2 += min;
            i3 -= min;
            segment++;
        }
        return true;
    }

    public ByteString sha1() {
        return toByteString().sha1();
    }

    public ByteString sha256() {
        return toByteString().sha256();
    }

    public int size() {
        return this.directory[this.segments.length - 1];
    }

    public String string(Charset charset) {
        return toByteString().string(charset);
    }

    public ByteString substring(int i) {
        return toByteString().substring(i);
    }

    public ByteString substring(int i, int i2) {
        return toByteString().substring(i, i2);
    }

    public ByteString toAsciiLowercase() {
        return toByteString().toAsciiLowercase();
    }

    public ByteString toAsciiUppercase() {
        return toByteString().toAsciiUppercase();
    }

    public byte[] toByteArray() {
        int[] iArr = this.directory;
        byte[][] bArr = this.segments;
        byte[] bArr2 = new byte[iArr[bArr.length - 1]];
        int length = bArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int[] iArr2 = this.directory;
            int i3 = iArr2[length + i];
            int i4 = iArr2[i];
            System.arraycopy(this.segments[i], i3, bArr2, i2, i4 - i2);
            i++;
            i2 = i4;
        }
        return bArr2;
    }

    public String toString() {
        return toByteString().toString();
    }

    public String utf8() {
        return toByteString().utf8();
    }

    public void write(OutputStream outputStream) {
        if (outputStream != null) {
            int length = this.segments.length;
            int i = 0;
            int i2 = 0;
            while (i < length) {
                int[] iArr = this.directory;
                int i3 = iArr[length + i];
                int i4 = iArr[i];
                outputStream.write(this.segments[i], i3, i4 - i2);
                i++;
                i2 = i4;
            }
            return;
        }
        throw new IllegalArgumentException("out == null");
    }

    void write(Buffer buffer) {
        int length = this.segments.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int[] iArr = this.directory;
            int i3 = iArr[length + i];
            int i4 = iArr[i];
            Segment segment = new Segment(this.segments[i], i3, (i3 + i4) - i2, true, false);
            Segment segment2 = buffer.head;
            if (segment2 == null) {
                segment.prev = segment;
                segment.next = segment;
                buffer.head = segment;
            } else {
                segment2.prev.push(segment);
            }
            i++;
            i2 = i4;
        }
        buffer.size += i2;
    }
}
