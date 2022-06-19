package okio;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.pubmatic.sdk.openwrap.core.POBConstants;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.util.Objects;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import okio.internal.SegmentedByteStringKt;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\u0010\u0012\n��\n\u0002\u0010\u0015\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n��\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u0005\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\b��\u0018��2\u00020\u0001B\u001d\b��\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0010H\u0016J\u0015\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u0010H\u0010¢\u0006\u0002\b\u0014J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\r\u0010\u0019\u001a\u00020\u001aH\u0010¢\u0006\u0002\b\u001bJ\b\u0010\u001c\u001a\u00020\u001aH\u0016J\b\u0010\u001d\u001a\u00020\u0010H\u0016J\u001d\u0010\u001e\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020\u0001H\u0010¢\u0006\u0002\b J\u0018\u0010!\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u001aH\u0016J\r\u0010#\u001a\u00020\u0004H\u0010¢\u0006\u0002\b$J\u0015\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020\u001aH\u0010¢\u0006\u0002\b(J\u0018\u0010)\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u001aH\u0016J(\u0010*\u001a\u00020\u00162\u0006\u0010+\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u001a2\u0006\u0010-\u001a\u00020\u001aH\u0016J(\u0010*\u001a\u00020\u00162\u0006\u0010+\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u00012\u0006\u0010,\u001a\u00020\u001a2\u0006\u0010-\u001a\u00020\u001aH\u0016J\u0010\u0010.\u001a\u00020\u00102\u0006\u0010/\u001a\u000200H\u0016J\u0018\u00101\u001a\u00020\u00012\u0006\u00102\u001a\u00020\u001a2\u0006\u00103\u001a\u00020\u001aH\u0016J\b\u00104\u001a\u00020\u0001H\u0016J\b\u00105\u001a\u00020\u0001H\u0016J\b\u00106\u001a\u00020\u0004H\u0016J\b\u00107\u001a\u00020\u0001H\u0002J\b\u00108\u001a\u00020\u0010H\u0016J\u0010\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020<H\u0016J%\u00109\u001a\u00020:2\u0006\u0010=\u001a\u00020>2\u0006\u0010+\u001a\u00020\u001a2\u0006\u0010-\u001a\u00020\u001aH\u0010¢\u0006\u0002\b?J\b\u0010@\u001a\u00020AH\u0002R\u0014\u0010\u0005\u001a\u00020\u0006X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u001c\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0080\u0004¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000b¨\u0006B"}, m400d2 = {"Lokio/SegmentedByteString;", "Lokio/ByteString;", "segments", "", "", "directory", "", "([[B[I)V", "getDirectory$okio", "()[I", "getSegments$okio", "()[[B", "[[B", "asByteBuffer", "Ljava/nio/ByteBuffer;", "base64", "", "base64Url", "digest", "algorithm", "digest$okio", "equals", "", "other", "", "getSize", "", "getSize$okio", "hashCode", "hex", "hmac", SDKConstants.PARAM_KEY, "hmac$okio", "indexOf", "fromIndex", "internalArray", "internalArray$okio", "internalGet", "", POBConstants.KEY_POSITION, "internalGet$okio", "lastIndexOf", "rangeEquals", "offset", "otherOffset", "byteCount", "string", "charset", "Ljava/nio/charset/Charset;", "substring", "beginIndex", "endIndex", "toAsciiLowercase", "toAsciiUppercase", "toByteArray", "toByteString", "toString", "write", "", "out", "Ljava/io/OutputStream;", "buffer", "Lokio/Buffer;", "write$okio", "writeReplace", "Ljava/lang/Object;", "okio"}, m399k = 1, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:okio/SegmentedByteString.class */
public final class SegmentedByteString extends ByteString {
    private final transient int[] directory;
    private final transient byte[][] segments;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SegmentedByteString(byte[][] segments, int[] directory) {
        super(ByteString.EMPTY.getData$okio());
        Intrinsics.checkNotNullParameter(segments, "segments");
        Intrinsics.checkNotNullParameter(directory, "directory");
        this.segments = segments;
        this.directory = directory;
    }

    private final ByteString toByteString() {
        return new ByteString(toByteArray());
    }

    private final Object writeReplace() {
        ByteString byteString = toByteString();
        Objects.requireNonNull(byteString, "null cannot be cast to non-null type java.lang.Object");
        return byteString;
    }

    @Override // okio.ByteString
    public ByteBuffer asByteBuffer() {
        ByteBuffer asReadOnlyBuffer = ByteBuffer.wrap(toByteArray()).asReadOnlyBuffer();
        Intrinsics.checkNotNullExpressionValue(asReadOnlyBuffer, "ByteBuffer.wrap(toByteArray()).asReadOnlyBuffer()");
        return asReadOnlyBuffer;
    }

    @Override // okio.ByteString
    public String base64() {
        return toByteString().base64();
    }

    @Override // okio.ByteString
    public String base64Url() {
        return toByteString().base64Url();
    }

    @Override // okio.ByteString
    public ByteString digest$okio(String algorithm) {
        Intrinsics.checkNotNullParameter(algorithm, "algorithm");
        MessageDigest messageDigest = MessageDigest.getInstance(algorithm);
        int length = getSegments$okio().length;
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i >= length) {
                byte[] digest = messageDigest.digest();
                Intrinsics.checkNotNullExpressionValue(digest, "digest.digest()");
                return new ByteString(digest);
            }
            int i4 = getDirectory$okio()[length + i];
            int i5 = getDirectory$okio()[i];
            messageDigest.update(getSegments$okio()[i], i4, i5 - i3);
            i++;
            i2 = i5;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x002c, code lost:
        if (rangeEquals(0, r0, 0, size()) != false) goto L11;
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
            if (r0 != r1) goto La
            goto L34
        La:
            r0 = r7
            boolean r0 = r0 instanceof okio.ByteString
            if (r0 == 0) goto L32
            r0 = r7
            okio.ByteString r0 = (okio.ByteString) r0
            r7 = r0
            r0 = r7
            int r0 = r0.size()
            r1 = r6
            int r1 = r1.size()
            if (r0 != r1) goto L32
            r0 = r6
            r1 = 0
            r2 = r7
            r3 = 0
            r4 = r6
            int r4 = r4.size()
            boolean r0 = r0.rangeEquals(r1, r2, r3, r4)
            if (r0 == 0) goto L32
            goto L34
        L32:
            r0 = 0
            r8 = r0
        L34:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.SegmentedByteString.equals(java.lang.Object):boolean");
    }

    public final int[] getDirectory$okio() {
        return this.directory;
    }

    public final byte[][] getSegments$okio() {
        return this.segments;
    }

    @Override // okio.ByteString
    public int getSize$okio() {
        return getDirectory$okio()[getSegments$okio().length - 1];
    }

    @Override // okio.ByteString
    public int hashCode() {
        int hashCode$okio = getHashCode$okio();
        if (hashCode$okio == 0) {
            int length = getSegments$okio().length;
            int i = 0;
            hashCode$okio = 1;
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i >= length) {
                    break;
                }
                int i4 = getDirectory$okio()[length + i];
                int i5 = getDirectory$okio()[i];
                byte[] bArr = getSegments$okio()[i];
                for (int i6 = i4; i6 < (i5 - i3) + i4; i6++) {
                    hashCode$okio = (hashCode$okio * 31) + bArr[i6];
                }
                i++;
                i2 = i5;
            }
            setHashCode$okio(hashCode$okio);
        }
        return hashCode$okio;
    }

    @Override // okio.ByteString
    public String hex() {
        return toByteString().hex();
    }

    @Override // okio.ByteString
    public ByteString hmac$okio(String algorithm, ByteString key) {
        Intrinsics.checkNotNullParameter(algorithm, "algorithm");
        Intrinsics.checkNotNullParameter(key, "key");
        try {
            Mac mac = Mac.getInstance(algorithm);
            mac.init(new SecretKeySpec(key.toByteArray(), algorithm));
            int length = getSegments$okio().length;
            int i = 0;
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i >= length) {
                    byte[] doFinal = mac.doFinal();
                    Intrinsics.checkNotNullExpressionValue(doFinal, "mac.doFinal()");
                    return new ByteString(doFinal);
                }
                int i4 = getDirectory$okio()[length + i];
                int i5 = getDirectory$okio()[i];
                mac.update(getSegments$okio()[i], i4, i5 - i3);
                i++;
                i2 = i5;
            }
        } catch (InvalidKeyException e) {
            throw new IllegalArgumentException(e);
        }
    }

    @Override // okio.ByteString
    public int indexOf(byte[] other, int i) {
        Intrinsics.checkNotNullParameter(other, "other");
        return toByteString().indexOf(other, i);
    }

    @Override // okio.ByteString
    public byte[] internalArray$okio() {
        return toByteArray();
    }

    @Override // okio.ByteString
    public byte internalGet$okio(int i) {
        _Util.checkOffsetAndCount(getDirectory$okio()[getSegments$okio().length - 1], i, 1L);
        int segment = SegmentedByteStringKt.segment(this, i);
        return getSegments$okio()[segment][(i - (segment == 0 ? 0 : getDirectory$okio()[segment - 1])) + getDirectory$okio()[getSegments$okio().length + segment]];
    }

    @Override // okio.ByteString
    public int lastIndexOf(byte[] other, int i) {
        Intrinsics.checkNotNullParameter(other, "other");
        return toByteString().lastIndexOf(other, i);
    }

    @Override // okio.ByteString
    public boolean rangeEquals(int i, ByteString other, int i2, int i3) {
        Intrinsics.checkNotNullParameter(other, "other");
        boolean z = false;
        if (i >= 0) {
            if (i <= size() - i3) {
                int i4 = i3 + i;
                int i5 = i2;
                int i6 = i;
                int segment = SegmentedByteStringKt.segment(this, i);
                while (true) {
                    if (i6 >= i4) {
                        z = true;
                        break;
                    }
                    int i7 = segment == 0 ? 0 : getDirectory$okio()[segment - 1];
                    int i8 = getDirectory$okio()[segment];
                    int i9 = getDirectory$okio()[getSegments$okio().length + segment];
                    int min = Math.min(i4, (i8 - i7) + i7) - i6;
                    if (!other.rangeEquals(i5, getSegments$okio()[segment], i9 + (i6 - i7), min)) {
                        z = false;
                        break;
                    }
                    i5 += min;
                    i6 += min;
                    segment++;
                }
            } else {
                z = false;
            }
        }
        return z;
    }

    @Override // okio.ByteString
    public boolean rangeEquals(int i, byte[] other, int i2, int i3) {
        Intrinsics.checkNotNullParameter(other, "other");
        boolean z = false;
        if (i >= 0) {
            z = false;
            if (i <= size() - i3) {
                z = false;
                if (i2 >= 0) {
                    if (i2 <= other.length - i3) {
                        int i4 = i3 + i;
                        int i5 = i;
                        int segment = SegmentedByteStringKt.segment(this, i);
                        while (true) {
                            if (i5 >= i4) {
                                z = true;
                                break;
                            }
                            int i6 = segment == 0 ? 0 : getDirectory$okio()[segment - 1];
                            int i7 = getDirectory$okio()[segment];
                            int i8 = getDirectory$okio()[getSegments$okio().length + segment];
                            int min = Math.min(i4, (i7 - i6) + i6) - i5;
                            if (!_Util.arrayRangeEquals(getSegments$okio()[segment], i8 + (i5 - i6), other, i2, min)) {
                                z = false;
                                break;
                            }
                            i2 += min;
                            i5 += min;
                            segment++;
                        }
                    } else {
                        z = false;
                    }
                }
            }
        }
        return z;
    }

    @Override // okio.ByteString
    public String string(Charset charset) {
        Intrinsics.checkNotNullParameter(charset, "charset");
        return toByteString().string(charset);
    }

    @Override // okio.ByteString
    public ByteString substring(int i, int i2) {
        SegmentedByteString segmentedByteString;
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("beginIndex=" + i + " < 0").toString());
        }
        if (!(i2 <= size())) {
            throw new IllegalArgumentException(("endIndex=" + i2 + " > length(" + size() + ')').toString());
        }
        int i3 = i2 - i;
        if (!(i3 >= 0)) {
            throw new IllegalArgumentException(("endIndex=" + i2 + " < beginIndex=" + i).toString());
        }
        if (i == 0 && i2 == size()) {
            segmentedByteString = this;
        } else if (i == i2) {
            segmentedByteString = ByteString.EMPTY;
        } else {
            int segment = SegmentedByteStringKt.segment(this, i);
            int segment2 = SegmentedByteStringKt.segment(this, i2 - 1);
            byte[][] bArr = (byte[][]) ArraysKt.copyOfRange(getSegments$okio(), segment, segment2 + 1);
            byte[][] bArr2 = bArr;
            int[] iArr = new int[bArr2.length * 2];
            if (segment <= segment2) {
                int i4 = segment;
                int i5 = 0;
                while (true) {
                    iArr[i5] = Math.min(getDirectory$okio()[i4] - i, i3);
                    iArr[i5 + bArr2.length] = getDirectory$okio()[getSegments$okio().length + i4];
                    if (i4 == segment2) {
                        break;
                    }
                    i4++;
                    i5++;
                }
            }
            int i6 = segment == 0 ? 0 : getDirectory$okio()[segment - 1];
            int length = bArr2.length;
            iArr[length] = iArr[length] + (i - i6);
            segmentedByteString = new SegmentedByteString(bArr, iArr);
        }
        return segmentedByteString;
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
        byte[] bArr = new byte[size()];
        int length = getSegments$okio().length;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i < length) {
            int i4 = getDirectory$okio()[length + i];
            int i5 = getDirectory$okio()[i];
            int i6 = i5 - i2;
            ArraysKt.copyInto(getSegments$okio()[i], bArr, i3, i4, i4 + i6);
            i3 += i6;
            i++;
            i2 = i5;
        }
        return bArr;
    }

    @Override // okio.ByteString
    public String toString() {
        return toByteString().toString();
    }

    @Override // okio.ByteString
    public void write(OutputStream out) throws IOException {
        Intrinsics.checkNotNullParameter(out, "out");
        int length = getSegments$okio().length;
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i < length) {
                int i4 = getDirectory$okio()[length + i];
                int i5 = getDirectory$okio()[i];
                out.write(getSegments$okio()[i], i4, i5 - i3);
                i++;
                i2 = i5;
            } else {
                return;
            }
        }
    }

    @Override // okio.ByteString
    public void write$okio(Buffer buffer, int i, int i2) {
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        int i3 = i2 + i;
        int i4 = i;
        int segment = SegmentedByteStringKt.segment(this, i);
        while (i4 < i3) {
            int i5 = segment == 0 ? 0 : getDirectory$okio()[segment - 1];
            int i6 = getDirectory$okio()[segment];
            int i7 = getDirectory$okio()[getSegments$okio().length + segment];
            int min = Math.min(i3, (i6 - i5) + i5) - i4;
            int i8 = i7 + (i4 - i5);
            Segment segment2 = new Segment(getSegments$okio()[segment], i8, i8 + min, true, false);
            if (buffer.head == null) {
                segment2.prev = segment2;
                segment2.next = segment2.prev;
                buffer.head = segment2.next;
            } else {
                Segment segment3 = buffer.head;
                Intrinsics.checkNotNull(segment3);
                Segment segment4 = segment3.prev;
                Intrinsics.checkNotNull(segment4);
                segment4.push(segment2);
            }
            i4 += min;
            segment++;
        }
        buffer.setSize$okio(buffer.size() + size());
    }
}
