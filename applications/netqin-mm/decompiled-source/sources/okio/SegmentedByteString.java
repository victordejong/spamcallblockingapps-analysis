package okio;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Arrays;
import p610i.C10260c;
import p610i.C10278n;
import p610i.C10284s;
/* loaded from: classes2-dex2jar.jar:okio/SegmentedByteString.class */
public final class SegmentedByteString extends ByteString {
    public final transient int[] directory;
    public final transient byte[][] segments;

    /* JADX WARN: Type inference failed for: r1v4, types: [byte[], byte[][]] */
    public SegmentedByteString(C10260c cVar, int i) {
        super(null);
        C10284s.m693a(cVar.f37889b, 0L, i);
        C10278n nVar = cVar.f37888a;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            int i5 = nVar.f37919c;
            int i6 = nVar.f37918b;
            if (i5 != i6) {
                i3 += i5 - i6;
                i4++;
                nVar = nVar.f37922f;
            } else {
                throw new AssertionError("s.limit == s.pos");
            }
        }
        this.segments = new byte[i4];
        this.directory = new int[i4 * 2];
        C10278n nVar2 = cVar.f37888a;
        int i7 = 0;
        while (i2 < i) {
            this.segments[i7] = nVar2.f37917a;
            int i8 = i2 + (nVar2.f37919c - nVar2.f37918b);
            i2 = i8;
            if (i8 > i) {
                i2 = i;
            }
            int[] iArr = this.directory;
            iArr[i7] = i2;
            iArr[this.segments.length + i7] = nVar2.f37918b;
            nVar2.f37920d = true;
            i7++;
            nVar2 = nVar2.f37922f;
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

    @Override // okio.ByteString
    public ByteBuffer asByteBuffer() {
        return ByteBuffer.wrap(toByteArray()).asReadOnlyBuffer();
    }

    @Override // okio.ByteString
    public String base64() {
        return toByteString().base64();
    }

    @Override // okio.ByteString
    public String base64Url() {
        return toByteString().base64Url();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x002b, code lost:
        if (rangeEquals(0, r0, 0, size()) != false) goto L_0x0033;
     */
    @Override // okio.ByteString
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

    @Override // okio.ByteString
    public byte getByte(int i) {
        C10284s.m693a(this.directory[this.segments.length - 1], i, 1L);
        int segment = segment(i);
        int i2 = segment == 0 ? 0 : this.directory[segment - 1];
        int[] iArr = this.directory;
        byte[][] bArr = this.segments;
        return bArr[segment][(i - i2) + iArr[bArr.length + segment]];
    }

    @Override // okio.ByteString
    public int hashCode() {
        int i = this.hashCode;
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
        this.hashCode = i4;
        return i4;
    }

    @Override // okio.ByteString
    public String hex() {
        return toByteString().hex();
    }

    @Override // okio.ByteString
    public ByteString hmacSha1(ByteString byteString) {
        return toByteString().hmacSha1(byteString);
    }

    @Override // okio.ByteString
    public ByteString hmacSha256(ByteString byteString) {
        return toByteString().hmacSha256(byteString);
    }

    @Override // okio.ByteString
    public int indexOf(byte[] bArr, int i) {
        return toByteString().indexOf(bArr, i);
    }

    @Override // okio.ByteString
    public byte[] internalArray() {
        return toByteArray();
    }

    @Override // okio.ByteString
    public int lastIndexOf(byte[] bArr, int i) {
        return toByteString().lastIndexOf(bArr, i);
    }

    @Override // okio.ByteString
    public ByteString md5() {
        return toByteString().md5();
    }

    @Override // okio.ByteString
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

    @Override // okio.ByteString
    public boolean rangeEquals(int i, byte[] bArr, int i2, int i3) {
        if (i < 0 || i > size() - i3 || i2 < 0 || i2 > bArr.length - i3) {
            return false;
        }
        int segment = segment(i);
        while (i3 > 0) {
            int i4 = segment == 0 ? 0 : this.directory[segment - 1];
            int min = Math.min(i3, ((this.directory[segment] - i4) + i4) - i);
            int[] iArr = this.directory;
            byte[][] bArr2 = this.segments;
            if (!C10284s.m690a(bArr2[segment], (i - i4) + iArr[bArr2.length + segment], bArr, i2, min)) {
                return false;
            }
            i += min;
            i2 += min;
            i3 -= min;
            segment++;
        }
        return true;
    }

    @Override // okio.ByteString
    public ByteString sha1() {
        return toByteString().sha1();
    }

    @Override // okio.ByteString
    public ByteString sha256() {
        return toByteString().sha256();
    }

    @Override // okio.ByteString
    public int size() {
        return this.directory[this.segments.length - 1];
    }

    @Override // okio.ByteString
    public String string(Charset charset) {
        return toByteString().string(charset);
    }

    @Override // okio.ByteString
    public ByteString substring(int i) {
        return toByteString().substring(i);
    }

    @Override // okio.ByteString
    public ByteString substring(int i, int i2) {
        return toByteString().substring(i, i2);
    }

    @Override // okio.ByteString
    public ByteString toAsciiLowercase() {
        return toByteString().toAsciiLowercase();
    }

    @Override // okio.ByteString
    public ByteString toAsciiUppercase() {
        return toByteString().toAsciiUppercase();
    }

    @Override // okio.ByteString
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

    @Override // okio.ByteString
    public String toString() {
        return toByteString().toString();
    }

    @Override // okio.ByteString
    public String utf8() {
        return toByteString().utf8();
    }

    @Override // okio.ByteString
    public void write(C10260c cVar) {
        int length = this.segments.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int[] iArr = this.directory;
            int i3 = iArr[length + i];
            int i4 = iArr[i];
            C10278n nVar = new C10278n(this.segments[i], i3, (i3 + i4) - i2, true, false);
            C10278n nVar2 = cVar.f37888a;
            if (nVar2 == null) {
                nVar.f37923g = nVar;
                nVar.f37922f = nVar;
                cVar.f37888a = nVar;
            } else {
                nVar2.f37923g.m712a(nVar);
            }
            i++;
            i2 = i4;
        }
        cVar.f37889b += i2;
    }

    @Override // okio.ByteString
    public void write(OutputStream outputStream) throws IOException {
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
}
