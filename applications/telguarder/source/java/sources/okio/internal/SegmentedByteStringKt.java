package okio.internal;

import com.pubmatic.sdk.openwrap.core.POBConstants;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;
import okio.ByteString;
import okio.Segment;
import okio.SegmentedByteString;
import okio._Util;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��R\n��\n\u0002\u0010\b\n\u0002\u0010\u0015\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a$\u0010��\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0001H��\u001a\u0017\u0010\u0006\u001a\u00020\u0007*\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0080\b\u001a\r\u0010\u000b\u001a\u00020\u0001*\u00020\bH\u0080\b\u001a\r\u0010\f\u001a\u00020\u0001*\u00020\bH\u0080\b\u001a\u0015\u0010\r\u001a\u00020\u000e*\u00020\b2\u0006\u0010\u000f\u001a\u00020\u0001H\u0080\b\u001a-\u0010\u0010\u001a\u00020\u0007*\u00020\b2\u0006\u0010\u0011\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00012\u0006\u0010\u0014\u001a\u00020\u0001H\u0080\b\u001a-\u0010\u0010\u001a\u00020\u0007*\u00020\b2\u0006\u0010\u0011\u001a\u00020\u00012\u0006\u0010\t\u001a\u00020\u00152\u0006\u0010\u0013\u001a\u00020\u00012\u0006\u0010\u0014\u001a\u00020\u0001H\u0080\b\u001a\u001d\u0010\u0016\u001a\u00020\u0015*\u00020\b2\u0006\u0010\u0017\u001a\u00020\u00012\u0006\u0010\u0018\u001a\u00020\u0001H\u0080\b\u001a\r\u0010\u0019\u001a\u00020\u0012*\u00020\bH\u0080\b\u001a%\u0010\u001a\u001a\u00020\u001b*\u00020\b2\u0006\u0010\u001c\u001a\u00020\u001d2\u0006\u0010\u0011\u001a\u00020\u00012\u0006\u0010\u0014\u001a\u00020\u0001H\u0080\b\u001a]\u0010\u001e\u001a\u00020\u001b*\u00020\b2K\u0010\u001f\u001aG\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b!\u0012\b\b\"\u0012\u0004\b\b(#\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b!\u0012\b\b\"\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b!\u0012\b\b\"\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\u001b0 H\u0080\bø\u0001��\u001aj\u0010\u001e\u001a\u00020\u001b*\u00020\b2\u0006\u0010\u0017\u001a\u00020\u00012\u0006\u0010\u0018\u001a\u00020\u00012K\u0010\u001f\u001aG\u0012\u0013\u0012\u00110\u0012¢\u0006\f\b!\u0012\b\b\"\u0012\u0004\b\b(#\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b!\u0012\b\b\"\u0012\u0004\b\b(\u0011\u0012\u0013\u0012\u00110\u0001¢\u0006\f\b!\u0012\b\b\"\u0012\u0004\b\b(\u0014\u0012\u0004\u0012\u00020\u001b0 H\u0082\b\u001a\u0014\u0010$\u001a\u00020\u0001*\u00020\b2\u0006\u0010\u000f\u001a\u00020\u0001H��\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006%"}, m400d2 = {"binarySearch", "", "", "value", "fromIndex", "toIndex", "commonEquals", "", "Lokio/SegmentedByteString;", "other", "", "commonGetSize", "commonHashCode", "commonInternalGet", "", POBConstants.KEY_POSITION, "commonRangeEquals", "offset", "", "otherOffset", "byteCount", "Lokio/ByteString;", "commonSubstring", "beginIndex", "endIndex", "commonToByteArray", "commonWrite", "", "buffer", "Lokio/Buffer;", "forEachSegment", "action", "Lkotlin/Function3;", "Lkotlin/ParameterName;", "name", "data", "segment", "okio"}, m399k = 2, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:okio/internal/SegmentedByteStringKt.class */
public final class SegmentedByteStringKt {
    public static final int binarySearch(int[] binarySearch, int i, int i2, int i3) {
        Intrinsics.checkNotNullParameter(binarySearch, "$this$binarySearch");
        int i4 = i3 - 1;
        while (i2 <= i4) {
            int i5 = (i2 + i4) >>> 1;
            int i6 = binarySearch[i5];
            if (i6 < i) {
                i2 = i5 + 1;
            } else if (i6 <= i) {
                return i5;
            } else {
                i4 = i5 - 1;
            }
        }
        return (-i2) - 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0032, code lost:
        if (r6.rangeEquals(0, r0, 0, r6.size()) != false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean commonEquals(okio.SegmentedByteString r6, java.lang.Object r7) {
        /*
            r0 = r6
            java.lang.String r1 = "$this$commonEquals"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r1)
            r0 = 1
            r8 = r0
            r0 = r7
            r1 = r6
            if (r0 != r1) goto L10
            goto L3a
        L10:
            r0 = r7
            boolean r0 = r0 instanceof okio.ByteString
            if (r0 == 0) goto L38
            r0 = r7
            okio.ByteString r0 = (okio.ByteString) r0
            r7 = r0
            r0 = r7
            int r0 = r0.size()
            r1 = r6
            int r1 = r1.size()
            if (r0 != r1) goto L38
            r0 = r6
            r1 = 0
            r2 = r7
            r3 = 0
            r4 = r6
            int r4 = r4.size()
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
        throw new UnsupportedOperationException("Method not decompiled: okio.internal.SegmentedByteStringKt.commonEquals(okio.SegmentedByteString, java.lang.Object):boolean");
    }

    public static final int commonGetSize(SegmentedByteString commonGetSize) {
        Intrinsics.checkNotNullParameter(commonGetSize, "$this$commonGetSize");
        return commonGetSize.getDirectory$okio()[commonGetSize.getSegments$okio().length - 1];
    }

    public static final int commonHashCode(SegmentedByteString commonHashCode) {
        Intrinsics.checkNotNullParameter(commonHashCode, "$this$commonHashCode");
        int hashCode$okio = commonHashCode.getHashCode$okio();
        if (hashCode$okio != 0) {
            return hashCode$okio;
        }
        int length = commonHashCode.getSegments$okio().length;
        int i = 0;
        int i2 = 0;
        int i3 = 1;
        while (i < length) {
            int i4 = commonHashCode.getDirectory$okio()[length + i];
            int i5 = commonHashCode.getDirectory$okio()[i];
            byte[] bArr = commonHashCode.getSegments$okio()[i];
            for (int i6 = i4; i6 < (i5 - i2) + i4; i6++) {
                i3 = (i3 * 31) + bArr[i6];
            }
            i++;
            i2 = i5;
        }
        commonHashCode.setHashCode$okio(i3);
        return i3;
    }

    public static final byte commonInternalGet(SegmentedByteString commonInternalGet, int i) {
        Intrinsics.checkNotNullParameter(commonInternalGet, "$this$commonInternalGet");
        _Util.checkOffsetAndCount(commonInternalGet.getDirectory$okio()[commonInternalGet.getSegments$okio().length - 1], i, 1L);
        int segment = segment(commonInternalGet, i);
        return commonInternalGet.getSegments$okio()[segment][(i - (segment == 0 ? 0 : commonInternalGet.getDirectory$okio()[segment - 1])) + commonInternalGet.getDirectory$okio()[commonInternalGet.getSegments$okio().length + segment]];
    }

    public static final boolean commonRangeEquals(SegmentedByteString commonRangeEquals, int i, ByteString other, int i2, int i3) {
        Intrinsics.checkNotNullParameter(commonRangeEquals, "$this$commonRangeEquals");
        Intrinsics.checkNotNullParameter(other, "other");
        if (i < 0 || i > commonRangeEquals.size() - i3) {
            return false;
        }
        int i4 = i3 + i;
        int i5 = i;
        int segment = segment(commonRangeEquals, i);
        while (i5 < i4) {
            int i6 = segment == 0 ? 0 : commonRangeEquals.getDirectory$okio()[segment - 1];
            int i7 = commonRangeEquals.getDirectory$okio()[segment];
            int i8 = commonRangeEquals.getDirectory$okio()[commonRangeEquals.getSegments$okio().length + segment];
            int min = Math.min(i4, (i7 - i6) + i6) - i5;
            if (!other.rangeEquals(i2, commonRangeEquals.getSegments$okio()[segment], i8 + (i5 - i6), min)) {
                return false;
            }
            i2 += min;
            i5 += min;
            segment++;
        }
        return true;
    }

    public static final boolean commonRangeEquals(SegmentedByteString commonRangeEquals, int i, byte[] other, int i2, int i3) {
        Intrinsics.checkNotNullParameter(commonRangeEquals, "$this$commonRangeEquals");
        Intrinsics.checkNotNullParameter(other, "other");
        if (i < 0 || i > commonRangeEquals.size() - i3 || i2 < 0 || i2 > other.length - i3) {
            return false;
        }
        int i4 = i3 + i;
        int i5 = i;
        int segment = segment(commonRangeEquals, i);
        while (i5 < i4) {
            int i6 = segment == 0 ? 0 : commonRangeEquals.getDirectory$okio()[segment - 1];
            int i7 = commonRangeEquals.getDirectory$okio()[segment];
            int i8 = commonRangeEquals.getDirectory$okio()[commonRangeEquals.getSegments$okio().length + segment];
            int min = Math.min(i4, (i7 - i6) + i6) - i5;
            if (!_Util.arrayRangeEquals(commonRangeEquals.getSegments$okio()[segment], i8 + (i5 - i6), other, i2, min)) {
                return false;
            }
            i2 += min;
            i5 += min;
            segment++;
        }
        return true;
    }

    public static final ByteString commonSubstring(SegmentedByteString commonSubstring, int i, int i2) {
        Intrinsics.checkNotNullParameter(commonSubstring, "$this$commonSubstring");
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("beginIndex=" + i + " < 0").toString());
        }
        if (!(i2 <= commonSubstring.size())) {
            throw new IllegalArgumentException(("endIndex=" + i2 + " > length(" + commonSubstring.size() + ')').toString());
        }
        int i3 = i2 - i;
        if (!(i3 >= 0)) {
            throw new IllegalArgumentException(("endIndex=" + i2 + " < beginIndex=" + i).toString());
        } else if (i == 0 && i2 == commonSubstring.size()) {
            return commonSubstring;
        } else {
            if (i == i2) {
                return ByteString.EMPTY;
            }
            int segment = segment(commonSubstring, i);
            int segment2 = segment(commonSubstring, i2 - 1);
            byte[][] bArr = (byte[][]) ArraysKt.copyOfRange(commonSubstring.getSegments$okio(), segment, segment2 + 1);
            byte[][] bArr2 = bArr;
            int[] iArr = new int[bArr2.length * 2];
            if (segment <= segment2) {
                int i4 = segment;
                int i5 = 0;
                while (true) {
                    iArr[i5] = Math.min(commonSubstring.getDirectory$okio()[i4] - i, i3);
                    iArr[i5 + bArr2.length] = commonSubstring.getDirectory$okio()[commonSubstring.getSegments$okio().length + i4];
                    if (i4 == segment2) {
                        break;
                    }
                    i4++;
                    i5++;
                }
            }
            int i6 = segment == 0 ? 0 : commonSubstring.getDirectory$okio()[segment - 1];
            int length = bArr2.length;
            iArr[length] = iArr[length] + (i - i6);
            return new SegmentedByteString(bArr, iArr);
        }
    }

    public static final byte[] commonToByteArray(SegmentedByteString commonToByteArray) {
        Intrinsics.checkNotNullParameter(commonToByteArray, "$this$commonToByteArray");
        byte[] bArr = new byte[commonToByteArray.size()];
        int length = commonToByteArray.getSegments$okio().length;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i < length) {
            int i4 = commonToByteArray.getDirectory$okio()[length + i];
            int i5 = commonToByteArray.getDirectory$okio()[i];
            int i6 = i5 - i2;
            ArraysKt.copyInto(commonToByteArray.getSegments$okio()[i], bArr, i3, i4, i4 + i6);
            i3 += i6;
            i++;
            i2 = i5;
        }
        return bArr;
    }

    public static final void commonWrite(SegmentedByteString commonWrite, Buffer buffer, int i, int i2) {
        Intrinsics.checkNotNullParameter(commonWrite, "$this$commonWrite");
        Intrinsics.checkNotNullParameter(buffer, "buffer");
        int i3 = i2 + i;
        int i4 = i;
        int segment = segment(commonWrite, i);
        while (i4 < i3) {
            int i5 = segment == 0 ? 0 : commonWrite.getDirectory$okio()[segment - 1];
            int i6 = commonWrite.getDirectory$okio()[segment];
            int i7 = commonWrite.getDirectory$okio()[commonWrite.getSegments$okio().length + segment];
            int min = Math.min(i3, (i6 - i5) + i5) - i4;
            int i8 = i7 + (i4 - i5);
            Segment segment2 = new Segment(commonWrite.getSegments$okio()[segment], i8, i8 + min, true, false);
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
        buffer.setSize$okio(buffer.size() + commonWrite.size());
    }

    public static final void forEachSegment(SegmentedByteString segmentedByteString, int i, int i2, Function3<? super byte[], ? super Integer, ? super Integer, Unit> function3) {
        int i3 = i;
        int segment = segment(segmentedByteString, i);
        while (i3 < i2) {
            int i4 = segment == 0 ? 0 : segmentedByteString.getDirectory$okio()[segment - 1];
            int i5 = segmentedByteString.getDirectory$okio()[segment];
            int i6 = segmentedByteString.getDirectory$okio()[segmentedByteString.getSegments$okio().length + segment];
            int min = Math.min(i2, (i5 - i4) + i4) - i3;
            function3.invoke(segmentedByteString.getSegments$okio()[segment], Integer.valueOf(i6 + (i3 - i4)), Integer.valueOf(min));
            i3 += min;
            segment++;
        }
    }

    public static final void forEachSegment(SegmentedByteString forEachSegment, Function3<? super byte[], ? super Integer, ? super Integer, Unit> action) {
        Intrinsics.checkNotNullParameter(forEachSegment, "$this$forEachSegment");
        Intrinsics.checkNotNullParameter(action, "action");
        int length = forEachSegment.getSegments$okio().length;
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i < length) {
                int i4 = forEachSegment.getDirectory$okio()[length + i];
                int i5 = forEachSegment.getDirectory$okio()[i];
                action.invoke(forEachSegment.getSegments$okio()[i], Integer.valueOf(i4), Integer.valueOf(i5 - i3));
                i++;
                i2 = i5;
            } else {
                return;
            }
        }
    }

    public static final int segment(SegmentedByteString segment, int i) {
        Intrinsics.checkNotNullParameter(segment, "$this$segment");
        int binarySearch = binarySearch(segment.getDirectory$okio(), i + 1, 0, segment.getSegments$okio().length);
        if (binarySearch < 0) {
            binarySearch ^= -1;
        }
        return binarySearch;
    }
}
