package okio.internal;

import androidx.work.WorkRequest;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.pubmatic.sdk.openwrap.core.POBConstants;
import java.io.EOFException;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.LongCompanionObject;
import okhttp3.internal.connection.RealConnection;
import okio.Buffer;
import okio.ByteString;
import okio.Options;
import okio.Segment;
import okio.SegmentPool;
import okio.SegmentedByteString;
import okio.Sink;
import okio.Source;
import okio._Platform;
import okio._Util;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��v\n��\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010��\n��\n\u0002\u0010\u0005\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\n\n��\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a0\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0010\u001a\u00020\bH��\u001a\r\u0010\u0011\u001a\u00020\u0012*\u00020\u0013H\u0080\b\u001a\r\u0010\u0014\u001a\u00020\u0005*\u00020\u0013H\u0080\b\u001a\r\u0010\u0015\u001a\u00020\u0013*\u00020\u0013H\u0080\b\u001a%\u0010\u0016\u001a\u00020\u0013*\u00020\u00132\u0006\u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u0019\u001a\u00020\u0005H\u0080\b\u001a\u0017\u0010\u001a\u001a\u00020\n*\u00020\u00132\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cH\u0080\b\u001a\u0015\u0010\u001d\u001a\u00020\u001e*\u00020\u00132\u0006\u0010\u001f\u001a\u00020\u0005H\u0080\b\u001a\r\u0010 \u001a\u00020\b*\u00020\u0013H\u0080\b\u001a%\u0010!\u001a\u00020\u0005*\u00020\u00132\u0006\u0010\"\u001a\u00020\u001e2\u0006\u0010#\u001a\u00020\u00052\u0006\u0010$\u001a\u00020\u0005H\u0080\b\u001a\u001d\u0010!\u001a\u00020\u0005*\u00020\u00132\u0006\u0010\u000e\u001a\u00020%2\u0006\u0010#\u001a\u00020\u0005H\u0080\b\u001a\u001d\u0010&\u001a\u00020\u0005*\u00020\u00132\u0006\u0010'\u001a\u00020%2\u0006\u0010#\u001a\u00020\u0005H\u0080\b\u001a-\u0010(\u001a\u00020\n*\u00020\u00132\u0006\u0010\u0018\u001a\u00020\u00052\u0006\u0010\u000e\u001a\u00020%2\u0006\u0010\u000f\u001a\u00020\b2\u0006\u0010\u0019\u001a\u00020\bH\u0080\b\u001a\u0015\u0010)\u001a\u00020\b*\u00020\u00132\u0006\u0010*\u001a\u00020\u0001H\u0080\b\u001a%\u0010)\u001a\u00020\b*\u00020\u00132\u0006\u0010*\u001a\u00020\u00012\u0006\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0019\u001a\u00020\bH\u0080\b\u001a\u001d\u0010)\u001a\u00020\u0005*\u00020\u00132\u0006\u0010*\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0005H\u0080\b\u001a\u0015\u0010+\u001a\u00020\u0005*\u00020\u00132\u0006\u0010*\u001a\u00020,H\u0080\b\u001a\r\u0010-\u001a\u00020\u001e*\u00020\u0013H\u0080\b\u001a\r\u0010.\u001a\u00020\u0001*\u00020\u0013H\u0080\b\u001a\u0015\u0010.\u001a\u00020\u0001*\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0005H\u0080\b\u001a\r\u0010/\u001a\u00020%*\u00020\u0013H\u0080\b\u001a\u0015\u0010/\u001a\u00020%*\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0005H\u0080\b\u001a\r\u00100\u001a\u00020\u0005*\u00020\u0013H\u0080\b\u001a\u0015\u00101\u001a\u00020\u0012*\u00020\u00132\u0006\u0010*\u001a\u00020\u0001H\u0080\b\u001a\u001d\u00101\u001a\u00020\u0012*\u00020\u00132\u0006\u0010*\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0005H\u0080\b\u001a\r\u00102\u001a\u00020\u0005*\u00020\u0013H\u0080\b\u001a\r\u00103\u001a\u00020\b*\u00020\u0013H\u0080\b\u001a\r\u00104\u001a\u00020\u0005*\u00020\u0013H\u0080\b\u001a\r\u00105\u001a\u000206*\u00020\u0013H\u0080\b\u001a\u0015\u00107\u001a\u000208*\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0005H\u0080\b\u001a\r\u00109\u001a\u00020\b*\u00020\u0013H\u0080\b\u001a\u000f\u0010:\u001a\u0004\u0018\u000108*\u00020\u0013H\u0080\b\u001a\u0015\u0010;\u001a\u000208*\u00020\u00132\u0006\u0010<\u001a\u00020\u0005H\u0080\b\u001a\u0015\u0010=\u001a\u00020\b*\u00020\u00132\u0006\u0010>\u001a\u00020?H\u0080\b\u001a\u0015\u0010@\u001a\u00020\u0012*\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0005H\u0080\b\u001a\r\u0010A\u001a\u00020%*\u00020\u0013H\u0080\b\u001a\u0015\u0010A\u001a\u00020%*\u00020\u00132\u0006\u0010\u0019\u001a\u00020\bH\u0080\b\u001a\u0015\u0010B\u001a\u00020\f*\u00020\u00132\u0006\u0010C\u001a\u00020\bH\u0080\b\u001a\u0015\u0010D\u001a\u00020\u0013*\u00020\u00132\u0006\u0010E\u001a\u00020\u0001H\u0080\b\u001a%\u0010D\u001a\u00020\u0013*\u00020\u00132\u0006\u0010E\u001a\u00020\u00012\u0006\u0010\u0018\u001a\u00020\b2\u0006\u0010\u0019\u001a\u00020\bH\u0080\b\u001a\u001d\u0010D\u001a\u00020\u0012*\u00020\u00132\u0006\u0010E\u001a\u00020\u00132\u0006\u0010\u0019\u001a\u00020\u0005H\u0080\b\u001a)\u0010D\u001a\u00020\u0013*\u00020\u00132\u0006\u0010F\u001a\u00020%2\b\b\u0002\u0010\u0018\u001a\u00020\b2\b\b\u0002\u0010\u0019\u001a\u00020\bH\u0080\b\u001a\u001d\u0010D\u001a\u00020\u0013*\u00020\u00132\u0006\u0010E\u001a\u00020G2\u0006\u0010\u0019\u001a\u00020\u0005H\u0080\b\u001a\u0015\u0010H\u001a\u00020\u0005*\u00020\u00132\u0006\u0010E\u001a\u00020GH\u0080\b\u001a\u0015\u0010I\u001a\u00020\u0013*\u00020\u00132\u0006\u0010\"\u001a\u00020\bH\u0080\b\u001a\u0015\u0010J\u001a\u00020\u0013*\u00020\u00132\u0006\u0010K\u001a\u00020\u0005H\u0080\b\u001a\u0015\u0010L\u001a\u00020\u0013*\u00020\u00132\u0006\u0010K\u001a\u00020\u0005H\u0080\b\u001a\u0015\u0010M\u001a\u00020\u0013*\u00020\u00132\u0006\u0010N\u001a\u00020\bH\u0080\b\u001a\u0015\u0010O\u001a\u00020\u0013*\u00020\u00132\u0006\u0010K\u001a\u00020\u0005H\u0080\b\u001a\u0015\u0010P\u001a\u00020\u0013*\u00020\u00132\u0006\u0010Q\u001a\u00020\bH\u0080\b\u001a%\u0010R\u001a\u00020\u0013*\u00020\u00132\u0006\u0010S\u001a\u0002082\u0006\u0010T\u001a\u00020\b2\u0006\u0010U\u001a\u00020\bH\u0080\b\u001a\u0015\u0010V\u001a\u00020\u0013*\u00020\u00132\u0006\u0010W\u001a\u00020\bH\u0080\b\u001a\u0014\u0010X\u001a\u000208*\u00020\u00132\u0006\u0010Y\u001a\u00020\u0005H��\u001a?\u0010Z\u001a\u0002H[\"\u0004\b��\u0010[*\u00020\u00132\u0006\u0010#\u001a\u00020\u00052\u001a\u0010\\\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\f\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u0002H[0]H\u0080\bø\u0001��¢\u0006\u0002\u0010^\u001a\u001e\u0010_\u001a\u00020\b*\u00020\u00132\u0006\u0010>\u001a\u00020?2\b\b\u0002\u0010`\u001a\u00020\nH��\"\u0014\u0010��\u001a\u00020\u0001X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0002\u0010\u0003\"\u000e\u0010\u0004\u001a\u00020\u0005X\u0080T¢\u0006\u0002\n��\"\u000e\u0010\u0006\u001a\u00020\u0005X\u0080T¢\u0006\u0002\n��\"\u000e\u0010\u0007\u001a\u00020\bX\u0080T¢\u0006\u0002\n��\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006a"}, m400d2 = {"HEX_DIGIT_BYTES", "", "getHEX_DIGIT_BYTES", "()[B", "OVERFLOW_DIGIT_START", "", "OVERFLOW_ZONE", "SEGMENTING_THRESHOLD", "", "rangeEquals", "", "segment", "Lokio/Segment;", "segmentPos", "bytes", "bytesOffset", "bytesLimit", "commonClear", "", "Lokio/Buffer;", "commonCompleteSegmentByteCount", "commonCopy", "commonCopyTo", "out", "offset", "byteCount", "commonEquals", "other", "", "commonGet", "", POBConstants.KEY_POSITION, "commonHashCode", "commonIndexOf", "b", "fromIndex", "toIndex", "Lokio/ByteString;", "commonIndexOfElement", "targetBytes", "commonRangeEquals", "commonRead", "sink", "commonReadAll", "Lokio/Sink;", "commonReadByte", "commonReadByteArray", "commonReadByteString", "commonReadDecimalLong", "commonReadFully", "commonReadHexadecimalUnsignedLong", "commonReadInt", "commonReadLong", "commonReadShort", "", "commonReadUtf8", "", "commonReadUtf8CodePoint", "commonReadUtf8Line", "commonReadUtf8LineStrict", "limit", "commonSelect", SDKConstants.PARAM_GAME_REQUESTS_OPTIONS, "Lokio/Options;", "commonSkip", "commonSnapshot", "commonWritableSegment", "minimumCapacity", "commonWrite", "source", "byteString", "Lokio/Source;", "commonWriteAll", "commonWriteByte", "commonWriteDecimalLong", "v", "commonWriteHexadecimalUnsignedLong", "commonWriteInt", "i", "commonWriteLong", "commonWriteShort", "s", "commonWriteUtf8", "string", "beginIndex", "endIndex", "commonWriteUtf8CodePoint", "codePoint", "readUtf8Line", "newline", "seek", "T", "lambda", "Lkotlin/Function2;", "(Lokio/Buffer;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "selectPrefix", "selectTruncated", "okio"}, m399k = 2, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:okio/internal/BufferKt.class */
public final class BufferKt {
    private static final byte[] HEX_DIGIT_BYTES = _Platform.asUtf8ToByteArray("0123456789abcdef");
    public static final long OVERFLOW_DIGIT_START = -7;
    public static final long OVERFLOW_ZONE = -922337203685477580L;
    public static final int SEGMENTING_THRESHOLD = 4096;

    public static final void commonClear(Buffer commonClear) {
        Intrinsics.checkNotNullParameter(commonClear, "$this$commonClear");
        commonClear.skip(commonClear.size());
    }

    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    public static final long commonCompleteSegmentByteCount(Buffer commonCompleteSegmentByteCount) {
        Intrinsics.checkNotNullParameter(commonCompleteSegmentByteCount, "$this$commonCompleteSegmentByteCount");
        ?? size = commonCompleteSegmentByteCount.size();
        if (size == 0) {
            return 0L;
        }
        Segment segment = commonCompleteSegmentByteCount.head;
        Intrinsics.checkNotNull(segment);
        Segment segment2 = segment.prev;
        Intrinsics.checkNotNull(segment2);
        char c = size;
        if (segment2.limit < 8192) {
            c = size;
            if (segment2.owner) {
                c = size - (segment2.limit - segment2.pos);
            }
        }
        return c;
    }

    public static final Buffer commonCopy(Buffer commonCopy) {
        Intrinsics.checkNotNullParameter(commonCopy, "$this$commonCopy");
        Buffer buffer = new Buffer();
        if (commonCopy.size() == 0) {
            return buffer;
        }
        Segment segment = commonCopy.head;
        Intrinsics.checkNotNull(segment);
        Segment sharedCopy = segment.sharedCopy();
        buffer.head = sharedCopy;
        sharedCopy.prev = buffer.head;
        sharedCopy.next = sharedCopy.prev;
        Segment segment2 = segment.next;
        while (true) {
            Segment segment3 = segment2;
            if (segment3 == segment) {
                buffer.setSize$okio(commonCopy.size());
                return buffer;
            }
            Segment segment4 = sharedCopy.prev;
            Intrinsics.checkNotNull(segment4);
            Intrinsics.checkNotNull(segment3);
            segment4.push(segment3.sharedCopy());
            segment2 = segment3.next;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    public static final Buffer commonCopyTo(Buffer commonCopyTo, Buffer out, long j, long j2) {
        Segment segment;
        char c;
        char c2;
        Intrinsics.checkNotNullParameter(commonCopyTo, "$this$commonCopyTo");
        Intrinsics.checkNotNullParameter(out, "out");
        _Util.checkOffsetAndCount(commonCopyTo.size(), j, j2);
        if (j2 == 0) {
            return commonCopyTo;
        }
        out.setSize$okio(out.size() + j2);
        Segment segment2 = commonCopyTo.head;
        ?? r9 = j;
        while (true) {
            Segment segment3 = segment2;
            Intrinsics.checkNotNull(segment3);
            segment = segment3;
            c = r9;
            c2 = j2;
            if (r9 >= segment3.limit - segment3.pos) {
                r9 -= segment3.limit - segment3.pos;
                segment2 = segment3.next;
            }
        }
        while (c2 > 0) {
            Intrinsics.checkNotNull(segment);
            Segment sharedCopy = segment.sharedCopy();
            sharedCopy.pos += c;
            sharedCopy.limit = Math.min(sharedCopy.pos + c2, sharedCopy.limit);
            if (out.head == null) {
                sharedCopy.prev = sharedCopy;
                sharedCopy.next = sharedCopy.prev;
                out.head = sharedCopy.next;
            } else {
                Segment segment4 = out.head;
                Intrinsics.checkNotNull(segment4);
                Segment segment5 = segment4.prev;
                Intrinsics.checkNotNull(segment5);
                segment5.push(sharedCopy);
            }
            c2 -= sharedCopy.limit - sharedCopy.pos;
            segment = segment.next;
            c = 0;
        }
        return commonCopyTo;
    }

    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* JADX WARN: Type inference failed for: r0v62, types: [long] */
    public static final boolean commonEquals(Buffer commonEquals, Object obj) {
        Intrinsics.checkNotNullParameter(commonEquals, "$this$commonEquals");
        if (commonEquals == obj) {
            return true;
        }
        if (!(obj instanceof Buffer)) {
            return false;
        }
        Buffer buffer = (Buffer) obj;
        if (commonEquals.size() != buffer.size()) {
            return false;
        }
        if (commonEquals.size() == 0) {
            return true;
        }
        Segment segment = commonEquals.head;
        Intrinsics.checkNotNull(segment);
        Segment segment2 = buffer.head;
        Intrinsics.checkNotNull(segment2);
        int i = segment.pos;
        int i2 = segment2.pos;
        char c = 0;
        while (c < commonEquals.size()) {
            long min = Math.min(segment.limit - i, segment2.limit - i2);
            char c2 = 0;
            int i3 = i;
            while (c2 < min) {
                if (segment.data[i3] != segment2.data[i2]) {
                    return false;
                }
                c2++;
                i3++;
                i2++;
            }
            Segment segment3 = segment;
            i = i3;
            if (i3 == segment.limit) {
                segment3 = segment.next;
                Intrinsics.checkNotNull(segment3);
                i = segment3.pos;
            }
            Segment segment4 = segment2;
            int i4 = i2;
            if (i2 == segment2.limit) {
                segment4 = segment2.next;
                Intrinsics.checkNotNull(segment4);
                i4 = segment4.pos;
            }
            c += min;
            segment2 = segment4;
            segment = segment3;
            i2 = i4;
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v32 */
    /* JADX WARN: Type inference failed for: r0v35 */
    /* JADX WARN: Type inference failed for: r0v47 */
    /* JADX WARN: Type inference failed for: r0v48 */
    public static final byte commonGet(Buffer commonGet, long j) {
        Intrinsics.checkNotNullParameter(commonGet, "$this$commonGet");
        _Util.checkOffsetAndCount(commonGet.size(), j, 1L);
        Segment segment = commonGet.head;
        if (segment == null) {
            Segment segment2 = null;
            Intrinsics.checkNotNull(segment2);
            return segment2.data[(int) (segment2.pos + j + 1)];
        } else if (commonGet.size() - j < j) {
            ?? r0 = commonGet.size();
            while (true) {
                char c = r0;
                if (c <= j) {
                    Intrinsics.checkNotNull(segment);
                    return segment.data[(int) ((segment.pos + j) - c)];
                }
                segment = segment.prev;
                Intrinsics.checkNotNull(segment);
                r0 = c - (segment.limit - segment.pos);
            }
        } else {
            ?? r02 = 0;
            while (true) {
                char c2 = r02;
                ?? r03 = (segment.limit - segment.pos) + c2;
                if (r03 > j) {
                    Intrinsics.checkNotNull(segment);
                    return segment.data[(int) ((segment.pos + j) - c2)];
                }
                segment = segment.next;
                Intrinsics.checkNotNull(segment);
                r02 = r03;
            }
        }
    }

    public static final int commonHashCode(Buffer commonHashCode) {
        int i;
        Segment segment;
        Intrinsics.checkNotNullParameter(commonHashCode, "$this$commonHashCode");
        Segment segment2 = commonHashCode.head;
        if (segment2 != null) {
            int i2 = 1;
            do {
                int i3 = segment2.limit;
                i = i2;
                for (int i4 = segment2.pos; i4 < i3; i4++) {
                    i = (i * 31) + segment2.data[i4];
                }
                segment = segment2.next;
                Intrinsics.checkNotNull(segment);
                segment2 = segment;
                i2 = i;
            } while (segment != commonHashCode.head);
            return i;
        }
        return 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v104, types: [long] */
    /* JADX WARN: Type inference failed for: r0v105, types: [long] */
    /* JADX WARN: Type inference failed for: r0v115, types: [long] */
    /* JADX WARN: Type inference failed for: r0v116, types: [long] */
    /* JADX WARN: Type inference failed for: r0v119, types: [long] */
    /* JADX WARN: Type inference failed for: r0v41, types: [long] */
    /* JADX WARN: Type inference failed for: r0v46, types: [long] */
    /* JADX WARN: Type inference failed for: r0v63, types: [long] */
    /* JADX WARN: Type inference failed for: r0v64, types: [long] */
    /* JADX WARN: Type inference failed for: r0v81, types: [long] */
    /* JADX WARN: Type inference failed for: r0v83, types: [long] */
    /* JADX WARN: Type inference failed for: r0v87, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0, types: [long] */
    /* JADX WARN: Type inference failed for: r1v18, types: [long] */
    /* JADX WARN: Type inference failed for: r1v27, types: [long] */
    /* JADX WARN: Type inference failed for: r1v37, types: [long] */
    /* JADX WARN: Type inference failed for: r1v46, types: [long] */
    /* JADX WARN: Type inference failed for: r2v4, types: [long] */
    /* JADX WARN: Type inference failed for: r2v8, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6 */
    public static final long commonIndexOf(Buffer commonIndexOf, byte b, long j, long j2) {
        Segment segment;
        int i;
        Segment segment2;
        Intrinsics.checkNotNullParameter(commonIndexOf, "$this$commonIndexOf");
        if (!(0 <= j && j2 >= j)) {
            throw new IllegalArgumentException(("size=" + commonIndexOf.size() + " fromIndex=" + j + " toIndex=" + ((long) j2)).toString());
        }
        char c = j2;
        if (j2 > commonIndexOf.size()) {
            c = commonIndexOf.size();
        }
        if (j != c && (segment = commonIndexOf.head) != null) {
            boolean z = false;
            Segment segment3 = segment;
            if (commonIndexOf.size() - j < j) {
                z = commonIndexOf.size();
                segment2 = segment;
                while (z > j) {
                    segment2 = segment2.prev;
                    Intrinsics.checkNotNull(segment2);
                    z -= segment2.limit - segment2.pos;
                }
                boolean z2 = j;
                if (segment2 == null) {
                    return -1L;
                }
                while (z < c) {
                    byte[] bArr = segment2.data;
                    int min = (int) Math.min(segment2.limit, (segment2.pos + c) - z);
                    i = (int) ((segment2.pos + z2) - z);
                    while (i < min) {
                        if (bArr[i] != b) {
                            i++;
                        }
                    }
                    z += segment2.limit - segment2.pos;
                    segment2 = segment2.next;
                    Intrinsics.checkNotNull(segment2);
                    z2 = z;
                }
                return -1L;
            }
            while (true) {
                ?? r0 = (segment3.limit - segment3.pos) + z;
                if (r0 > j) {
                    break;
                }
                segment3 = segment3.next;
                Intrinsics.checkNotNull(segment3);
                z = r0;
            }
            boolean z3 = j;
            if (segment3 == null) {
                return -1L;
            }
            while (z < c) {
                byte[] bArr2 = segment3.data;
                int min2 = (int) Math.min(segment3.limit, (segment3.pos + c) - z);
                i = (int) ((segment3.pos + z3) - z);
                while (i < min2) {
                    if (bArr2[i] == b) {
                        segment2 = segment3;
                    } else {
                        i++;
                    }
                }
                z += segment3.limit - segment3.pos;
                segment3 = segment3.next;
                Intrinsics.checkNotNull(segment3);
                z3 = z;
            }
            return -1L;
            return (i - segment2.pos) + z;
        }
        return -1L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v104, types: [long] */
    /* JADX WARN: Type inference failed for: r0v125, types: [long] */
    /* JADX WARN: Type inference failed for: r0v126, types: [long] */
    /* JADX WARN: Type inference failed for: r0v138, types: [long] */
    /* JADX WARN: Type inference failed for: r0v139, types: [long] */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r0v48, types: [long] */
    /* JADX WARN: Type inference failed for: r0v69, types: [long] */
    /* JADX WARN: Type inference failed for: r0v70, types: [long] */
    /* JADX WARN: Type inference failed for: r0v88, types: [long] */
    /* JADX WARN: Type inference failed for: r0v90, types: [long] */
    /* JADX WARN: Type inference failed for: r1v12, types: [long] */
    /* JADX WARN: Type inference failed for: r1v23, types: [long] */
    /* JADX WARN: Type inference failed for: r1v35, types: [long] */
    /* JADX WARN: Type inference failed for: r1v46, types: [long] */
    /* JADX WARN: Type inference failed for: r2v12, types: [long] */
    /* JADX WARN: Type inference failed for: r2v6, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6 */
    public static final long commonIndexOf(Buffer commonIndexOf, ByteString bytes, long j) {
        int i;
        Intrinsics.checkNotNullParameter(commonIndexOf, "$this$commonIndexOf");
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        if (bytes.size() > 0) {
            boolean z = false;
            if (!(j >= 0)) {
                throw new IllegalArgumentException(("fromIndex < 0: " + j).toString());
            }
            Segment segment = commonIndexOf.head;
            if (segment == null) {
                return -1L;
            }
            Segment segment2 = segment;
            if (commonIndexOf.size() - j < j) {
                z = commonIndexOf.size();
                segment2 = segment;
                while (z > j) {
                    segment2 = segment2.prev;
                    Intrinsics.checkNotNull(segment2);
                    z -= segment2.limit - segment2.pos;
                }
                if (segment2 == null) {
                    return -1L;
                }
                byte[] internalArray$okio = bytes.internalArray$okio();
                byte b = internalArray$okio[0];
                int size = bytes.size();
                long size2 = (commonIndexOf.size() - size) + 1;
                boolean z2 = j;
                while (z < size2) {
                    byte[] bArr = segment2.data;
                    int min = (int) Math.min(segment2.limit, (segment2.pos + size2) - z);
                    i = (int) ((segment2.pos + z2) - z);
                    while (i < min) {
                        if (bArr[i] != b || !rangeEquals(segment2, i + 1, internalArray$okio, 1, size)) {
                            i++;
                        }
                    }
                    z += segment2.limit - segment2.pos;
                    segment2 = segment2.next;
                    Intrinsics.checkNotNull(segment2);
                    z2 = z;
                }
                return -1L;
            }
            while (true) {
                ?? r0 = (segment2.limit - segment2.pos) + z;
                if (r0 > j) {
                    break;
                }
                segment2 = segment2.next;
                Intrinsics.checkNotNull(segment2);
                z = r0;
            }
            if (segment2 == null) {
                return -1L;
            }
            byte[] internalArray$okio2 = bytes.internalArray$okio();
            byte b2 = internalArray$okio2[0];
            int size3 = bytes.size();
            long size4 = (commonIndexOf.size() - size3) + 1;
            boolean z3 = j;
            while (z < size4) {
                byte[] bArr2 = segment2.data;
                int min2 = (int) Math.min(segment2.limit, (segment2.pos + size4) - z);
                i = (int) ((segment2.pos + z3) - z);
                while (i < min2) {
                    if (bArr2[i] != b2 || !rangeEquals(segment2, i + 1, internalArray$okio2, 1, size3)) {
                        i++;
                    }
                }
                z += segment2.limit - segment2.pos;
                segment2 = segment2.next;
                Intrinsics.checkNotNull(segment2);
                z3 = z;
            }
            return -1L;
            return (i - segment2.pos) + z;
        }
        throw new IllegalArgumentException("bytes is empty".toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v112, types: [long] */
    /* JADX WARN: Type inference failed for: r0v114, types: [long] */
    /* JADX WARN: Type inference failed for: r0v122, types: [long] */
    /* JADX WARN: Type inference failed for: r0v136, types: [long] */
    /* JADX WARN: Type inference failed for: r0v137, types: [long] */
    /* JADX WARN: Type inference failed for: r0v153, types: [long] */
    /* JADX WARN: Type inference failed for: r0v167, types: [long] */
    /* JADX WARN: Type inference failed for: r0v168, types: [long] */
    /* JADX WARN: Type inference failed for: r0v186, types: [long] */
    /* JADX WARN: Type inference failed for: r0v187, types: [long] */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    /* JADX WARN: Type inference failed for: r0v37, types: [long] */
    /* JADX WARN: Type inference failed for: r0v51, types: [long] */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /* JADX WARN: Type inference failed for: r0v68, types: [long] */
    /* JADX WARN: Type inference failed for: r0v82, types: [long] */
    /* JADX WARN: Type inference failed for: r0v83, types: [long] */
    /* JADX WARN: Type inference failed for: r1v11, types: [long] */
    /* JADX WARN: Type inference failed for: r1v17, types: [long] */
    /* JADX WARN: Type inference failed for: r1v32, types: [long] */
    /* JADX WARN: Type inference failed for: r1v42, types: [long] */
    /* JADX WARN: Type inference failed for: r1v48, types: [long] */
    /* JADX WARN: Type inference failed for: r1v63, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v16 */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* JADX WARN: Type inference failed for: r7v18 */
    /* JADX WARN: Type inference failed for: r7v19 */
    /* JADX WARN: Type inference failed for: r7v3 */
    public static final long commonIndexOfElement(Buffer commonIndexOfElement, ByteString targetBytes, long j) {
        int i;
        boolean z;
        Segment segment;
        int i2;
        Intrinsics.checkNotNullParameter(commonIndexOfElement, "$this$commonIndexOfElement");
        Intrinsics.checkNotNullParameter(targetBytes, "targetBytes");
        boolean z2 = false;
        if (!(j >= 0)) {
            throw new IllegalArgumentException(("fromIndex < 0: " + j).toString());
        }
        Segment segment2 = commonIndexOfElement.head;
        if (segment2 == null) {
            return -1L;
        }
        Segment segment3 = segment2;
        if (commonIndexOfElement.size() - j < j) {
            z2 = commonIndexOfElement.size();
            segment3 = segment2;
            while (z2 > j) {
                segment3 = segment3.prev;
                Intrinsics.checkNotNull(segment3);
                z2 -= segment3.limit - segment3.pos;
            }
            if (segment3 == null) {
                return -1L;
            }
            if (targetBytes.size() != 2) {
                byte[] internalArray$okio = targetBytes.internalArray$okio();
                boolean z3 = j;
                while (z2 < commonIndexOfElement.size()) {
                    byte[] bArr = segment3.data;
                    i = (int) ((segment3.pos + z3) - z2);
                    int i3 = segment3.limit;
                    while (i < i3) {
                        byte b = bArr[i];
                        for (byte b2 : internalArray$okio) {
                            if (b == b2) {
                                i2 = segment3.pos;
                                z = z2;
                            }
                        }
                        i++;
                    }
                    z2 += segment3.limit - segment3.pos;
                    segment3 = segment3.next;
                    Intrinsics.checkNotNull(segment3);
                    z3 = z2;
                }
                return -1L;
            }
            byte b3 = targetBytes.getByte(0);
            byte b4 = targetBytes.getByte(1);
            boolean z4 = j;
            while (z2 < commonIndexOfElement.size()) {
                byte[] bArr2 = segment3.data;
                int i4 = segment3.limit;
                for (int i5 = (int) ((segment3.pos + z4) - z2); i5 < i4; i5++) {
                    byte b5 = bArr2[i5];
                    z = z2;
                    segment = segment3;
                    i = i5;
                    if (b5 != b3) {
                        if (b5 == b4) {
                            z = z2;
                            segment = segment3;
                            i = i5;
                        }
                    }
                    i2 = segment.pos;
                }
                z2 += segment3.limit - segment3.pos;
                segment3 = segment3.next;
                Intrinsics.checkNotNull(segment3);
                z4 = z2;
            }
            return -1L;
        }
        while (true) {
            ?? r0 = (segment3.limit - segment3.pos) + z2;
            if (r0 > j) {
                break;
            }
            segment3 = segment3.next;
            Intrinsics.checkNotNull(segment3);
            z2 = r0;
        }
        if (segment3 == null) {
            return -1L;
        }
        if (targetBytes.size() != 2) {
            byte[] internalArray$okio2 = targetBytes.internalArray$okio();
            boolean z5 = j;
            while (z2 < commonIndexOfElement.size()) {
                byte[] bArr3 = segment3.data;
                i = (int) ((segment3.pos + z5) - z2);
                int i6 = segment3.limit;
                while (i < i6) {
                    byte b6 = bArr3[i];
                    for (byte b7 : internalArray$okio2) {
                        if (b6 == b7) {
                            i2 = segment3.pos;
                            z = z2;
                        }
                    }
                    i++;
                }
                z2 += segment3.limit - segment3.pos;
                segment3 = segment3.next;
                Intrinsics.checkNotNull(segment3);
                z5 = z2;
            }
            return -1L;
        }
        byte b8 = targetBytes.getByte(0);
        byte b9 = targetBytes.getByte(1);
        boolean z6 = j;
        while (z2 < commonIndexOfElement.size()) {
            byte[] bArr4 = segment3.data;
            int i7 = segment3.limit;
            for (int i8 = (int) ((segment3.pos + z6) - z2); i8 < i7; i8++) {
                byte b10 = bArr4[i8];
                z = z2;
                segment = segment3;
                i = i8;
                if (b10 != b8) {
                    if (b10 == b9) {
                        z = z2;
                        segment = segment3;
                        i = i8;
                    }
                }
                i2 = segment.pos;
            }
            z2 += segment3.limit - segment3.pos;
            segment3 = segment3.next;
            Intrinsics.checkNotNull(segment3);
            z6 = z2;
        }
        return -1L;
        return (i - i2) + z;
    }

    public static final boolean commonRangeEquals(Buffer commonRangeEquals, long j, ByteString bytes, int i, int i2) {
        Intrinsics.checkNotNullParameter(commonRangeEquals, "$this$commonRangeEquals");
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        if (j < 0 || i < 0 || i2 < 0 || commonRangeEquals.size() - j < i2 || bytes.size() - i < i2) {
            return false;
        }
        for (int i3 = 0; i3 < i2; i3++) {
            if (commonRangeEquals.getByte(i3 + j) != bytes.getByte(i + i3)) {
                return false;
            }
        }
        return true;
    }

    public static final int commonRead(Buffer commonRead, byte[] sink) {
        Intrinsics.checkNotNullParameter(commonRead, "$this$commonRead");
        Intrinsics.checkNotNullParameter(sink, "sink");
        return commonRead.read(sink, 0, sink.length);
    }

    public static final int commonRead(Buffer commonRead, byte[] sink, int i, int i2) {
        Intrinsics.checkNotNullParameter(commonRead, "$this$commonRead");
        Intrinsics.checkNotNullParameter(sink, "sink");
        _Util.checkOffsetAndCount(sink.length, i, i2);
        Segment segment = commonRead.head;
        if (segment != null) {
            int min = Math.min(i2, segment.limit - segment.pos);
            ArraysKt.copyInto(segment.data, sink, i, segment.pos, segment.pos + min);
            segment.pos += min;
            commonRead.setSize$okio(commonRead.size() - min);
            if (segment.pos == segment.limit) {
                commonRead.head = segment.pop();
                SegmentPool.recycle(segment);
            }
            return min;
        }
        return -1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    public static final long commonRead(Buffer commonRead, Buffer sink, long j) {
        Intrinsics.checkNotNullParameter(commonRead, "$this$commonRead");
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (!(j >= 0)) {
            throw new IllegalArgumentException(("byteCount < 0: " + j).toString());
        } else if (commonRead.size() == 0) {
            return -1L;
        } else {
            char c = j;
            if (j > commonRead.size()) {
                c = commonRead.size();
            }
            sink.write(commonRead, (long) c);
            return c;
        }
    }

    public static final long commonReadAll(Buffer commonReadAll, Sink sink) {
        Intrinsics.checkNotNullParameter(commonReadAll, "$this$commonReadAll");
        Intrinsics.checkNotNullParameter(sink, "sink");
        long size = commonReadAll.size();
        if (size > 0) {
            sink.write(commonReadAll, size);
        }
        return size;
    }

    public static final byte commonReadByte(Buffer commonReadByte) {
        Intrinsics.checkNotNullParameter(commonReadByte, "$this$commonReadByte");
        if (commonReadByte.size() != 0) {
            Segment segment = commonReadByte.head;
            Intrinsics.checkNotNull(segment);
            int i = segment.pos;
            int i2 = segment.limit;
            byte[] bArr = segment.data;
            int i3 = i + 1;
            byte b = bArr[i];
            commonReadByte.setSize$okio(commonReadByte.size() - 1);
            if (i3 == i2) {
                commonReadByte.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i3;
            }
            return b;
        }
        throw new EOFException();
    }

    public static final byte[] commonReadByteArray(Buffer commonReadByteArray) {
        Intrinsics.checkNotNullParameter(commonReadByteArray, "$this$commonReadByteArray");
        return commonReadByteArray.readByteArray(commonReadByteArray.size());
    }

    public static final byte[] commonReadByteArray(Buffer commonReadByteArray, long j) {
        Intrinsics.checkNotNullParameter(commonReadByteArray, "$this$commonReadByteArray");
        if (!(j >= 0 && j <= ((long) Integer.MAX_VALUE))) {
            throw new IllegalArgumentException(("byteCount: " + j).toString());
        } else if (commonReadByteArray.size() < j) {
            throw new EOFException();
        } else {
            byte[] bArr = new byte[(int) j];
            commonReadByteArray.readFully(bArr);
            return bArr;
        }
    }

    public static final ByteString commonReadByteString(Buffer commonReadByteString) {
        Intrinsics.checkNotNullParameter(commonReadByteString, "$this$commonReadByteString");
        return commonReadByteString.readByteString(commonReadByteString.size());
    }

    public static final ByteString commonReadByteString(Buffer commonReadByteString, long j) {
        Intrinsics.checkNotNullParameter(commonReadByteString, "$this$commonReadByteString");
        if (!(j >= 0 && j <= ((long) Integer.MAX_VALUE))) {
            throw new IllegalArgumentException(("byteCount: " + j).toString());
        } else if (commonReadByteString.size() < j) {
            throw new EOFException();
        } else {
            if (j < 4096) {
                return new ByteString(commonReadByteString.readByteArray(j));
            }
            ByteString snapshot = commonReadByteString.snapshot((int) j);
            commonReadByteString.skip(j);
            return snapshot;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0151  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0171 A[EDGE_INSN: B:53:0x0171->B:43:0x0171 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v32, types: [long] */
    /* JADX WARN: Type inference failed for: r0v59, types: [long] */
    /* JADX WARN: Type inference failed for: r0v83, types: [long] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final long commonReadDecimalLong(okio.Buffer r6) {
        /*
            Method dump skipped, instructions count: 405
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.internal.BufferKt.commonReadDecimalLong(okio.Buffer):long");
    }

    public static final void commonReadFully(Buffer commonReadFully, Buffer sink, long j) {
        Intrinsics.checkNotNullParameter(commonReadFully, "$this$commonReadFully");
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (commonReadFully.size() >= j) {
            sink.write(commonReadFully, j);
        } else {
            sink.write(commonReadFully, commonReadFully.size());
            throw new EOFException();
        }
    }

    public static final void commonReadFully(Buffer commonReadFully, byte[] sink) {
        Intrinsics.checkNotNullParameter(commonReadFully, "$this$commonReadFully");
        Intrinsics.checkNotNullParameter(sink, "sink");
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < sink.length) {
                int read = commonReadFully.read(sink, i2, sink.length - i2);
                if (read == -1) {
                    throw new EOFException();
                }
                i = i2 + read;
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v54, types: [long] */
    public static final long commonReadHexadecimalUnsignedLong(Buffer commonReadHexadecimalUnsignedLong) {
        char c;
        int i;
        boolean z;
        byte b;
        int i2;
        Intrinsics.checkNotNullParameter(commonReadHexadecimalUnsignedLong, "$this$commonReadHexadecimalUnsignedLong");
        if (commonReadHexadecimalUnsignedLong.size() != 0) {
            int i3 = 0;
            char c2 = 0;
            boolean z2 = false;
            do {
                Segment segment = commonReadHexadecimalUnsignedLong.head;
                Intrinsics.checkNotNull(segment);
                byte[] bArr = segment.data;
                int i4 = segment.pos;
                int i5 = segment.limit;
                c = c2;
                i = i3;
                while (true) {
                    z = z2;
                    if (i4 >= i5) {
                        break;
                    }
                    b = bArr[i4];
                    byte b2 = (byte) 48;
                    if (b < b2 || b > ((byte) 57)) {
                        byte b3 = (byte) 97;
                        if (b < b3 || b > ((byte) 102)) {
                            b3 = (byte) 65;
                            if (b < b3 || b > ((byte) 70)) {
                                break;
                            }
                        }
                        i2 = (b - b3) + 10;
                    } else {
                        i2 = b - b2;
                    }
                    if ((0 & c) != 0) {
                        Buffer writeByte = new Buffer().writeHexadecimalUnsignedLong((long) c).writeByte((int) b);
                        throw new NumberFormatException("Number too large: " + writeByte.readUtf8());
                    }
                    c = (c << 4) | i2;
                    i4++;
                    i++;
                }
                if (i == 0) {
                    throw new NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x" + _Util.toHexString(b));
                }
                z = true;
                if (i4 == i5) {
                    commonReadHexadecimalUnsignedLong.head = segment.pop();
                    SegmentPool.recycle(segment);
                } else {
                    segment.pos = i4;
                }
                if (z) {
                    break;
                }
                i3 = i;
                z2 = z;
                c2 = c;
            } while (commonReadHexadecimalUnsignedLong.head != null);
            commonReadHexadecimalUnsignedLong.setSize$okio(commonReadHexadecimalUnsignedLong.size() - i);
            return c;
        }
        throw new EOFException();
    }

    public static final int commonReadInt(Buffer commonReadInt) {
        Intrinsics.checkNotNullParameter(commonReadInt, "$this$commonReadInt");
        if (commonReadInt.size() >= 4) {
            Segment segment = commonReadInt.head;
            Intrinsics.checkNotNull(segment);
            int i = segment.pos;
            int i2 = segment.limit;
            if (i2 - i < 4) {
                return (commonReadInt.readByte() & 255) | ((commonReadInt.readByte() & 255) << 24) | ((commonReadInt.readByte() & 255) << 16) | ((commonReadInt.readByte() & 255) << 8);
            }
            byte[] bArr = segment.data;
            int i3 = i + 1;
            byte b = bArr[i];
            int i4 = i3 + 1;
            byte b2 = bArr[i3];
            int i5 = i4 + 1;
            byte b3 = bArr[i4];
            int i6 = i5 + 1;
            byte b4 = bArr[i5];
            commonReadInt.setSize$okio(commonReadInt.size() - 4);
            if (i6 == i2) {
                commonReadInt.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i6;
            }
            return ((b & 255) << 24) | ((b2 & 255) << 16) | ((b3 & 255) << 8) | (b4 & 255);
        }
        throw new EOFException();
    }

    public static final long commonReadLong(Buffer commonReadLong) {
        Intrinsics.checkNotNullParameter(commonReadLong, "$this$commonReadLong");
        if (commonReadLong.size() >= 8) {
            Segment segment = commonReadLong.head;
            Intrinsics.checkNotNull(segment);
            int i = segment.pos;
            int i2 = segment.limit;
            if (i2 - i < 8) {
                return ((commonReadLong.readInt() & 4294967295L) << 32) | (4294967295L & commonReadLong.readInt());
            }
            byte[] bArr = segment.data;
            int i3 = i + 1;
            long j = bArr[i];
            int i4 = i3 + 1;
            long j2 = bArr[i3];
            int i5 = i4 + 1;
            long j3 = bArr[i4];
            int i6 = i5 + 1;
            long j4 = bArr[i5];
            int i7 = i6 + 1;
            long j5 = bArr[i6];
            int i8 = i7 + 1;
            long j6 = bArr[i7];
            int i9 = i8 + 1;
            long j7 = bArr[i8];
            int i10 = i9 + 1;
            long j8 = bArr[i9];
            commonReadLong.setSize$okio(commonReadLong.size() - 8);
            if (i10 == i2) {
                commonReadLong.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i10;
            }
            return ((j4 & 255) << 32) | ((j & 255) << 56) | ((j2 & 255) << 48) | ((j3 & 255) << 40) | ((j5 & 255) << 24) | ((j6 & 255) << 16) | ((j7 & 255) << 8) | (j8 & 255);
        }
        throw new EOFException();
    }

    public static final short commonReadShort(Buffer commonReadShort) {
        Intrinsics.checkNotNullParameter(commonReadShort, "$this$commonReadShort");
        if (commonReadShort.size() >= 2) {
            Segment segment = commonReadShort.head;
            Intrinsics.checkNotNull(segment);
            int i = segment.pos;
            int i2 = segment.limit;
            if (i2 - i < 2) {
                return (short) ((commonReadShort.readByte() & 255) | ((commonReadShort.readByte() & 255) << 8));
            }
            byte[] bArr = segment.data;
            int i3 = i + 1;
            byte b = bArr[i];
            int i4 = i3 + 1;
            byte b2 = bArr[i3];
            commonReadShort.setSize$okio(commonReadShort.size() - 2);
            if (i4 == i2) {
                commonReadShort.head = segment.pop();
                SegmentPool.recycle(segment);
            } else {
                segment.pos = i4;
            }
            return (short) (((b & 255) << 8) | (b2 & 255));
        }
        throw new EOFException();
    }

    public static final String commonReadUtf8(Buffer commonReadUtf8, long j) {
        Intrinsics.checkNotNullParameter(commonReadUtf8, "$this$commonReadUtf8");
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (!(i >= 0 && j <= ((long) Integer.MAX_VALUE))) {
            throw new IllegalArgumentException(("byteCount: " + j).toString());
        } else if (commonReadUtf8.size() < j) {
            throw new EOFException();
        } else {
            if (i == 0) {
                return "";
            }
            Segment segment = commonReadUtf8.head;
            Intrinsics.checkNotNull(segment);
            if (segment.pos + j > segment.limit) {
                return _Utf8Kt.commonToUtf8String$default(commonReadUtf8.readByteArray(j), 0, 0, 3, null);
            }
            byte[] bArr = segment.data;
            int i2 = segment.pos;
            int i3 = segment.pos;
            int i4 = (int) j;
            String commonToUtf8String = _Utf8Kt.commonToUtf8String(bArr, i2, i3 + i4);
            segment.pos += i4;
            commonReadUtf8.setSize$okio(commonReadUtf8.size() - j);
            if (segment.pos == segment.limit) {
                commonReadUtf8.head = segment.pop();
                SegmentPool.recycle(segment);
            }
            return commonToUtf8String;
        }
    }

    public static final int commonReadUtf8CodePoint(Buffer commonReadUtf8CodePoint) {
        int i;
        int i2;
        int i3;
        Intrinsics.checkNotNullParameter(commonReadUtf8CodePoint, "$this$commonReadUtf8CodePoint");
        if (commonReadUtf8CodePoint.size() != 0) {
            byte b = commonReadUtf8CodePoint.getByte(0L);
            if ((b & 128) == 0) {
                i3 = b & Byte.MAX_VALUE;
                i2 = 1;
                i = 0;
            } else if ((b & 224) == 192) {
                i3 = b & 31;
                i2 = 2;
                i = 128;
            } else if ((b & 240) == 224) {
                i3 = b & 15;
                i2 = 3;
                i = 2048;
            } else if ((b & 248) != 240) {
                commonReadUtf8CodePoint.skip(1L);
                return 65533;
            } else {
                i3 = b & 7;
                i2 = 4;
                i = 65536;
            }
            long j = i2;
            if (commonReadUtf8CodePoint.size() < j) {
                throw new EOFException("size < " + i2 + ": " + commonReadUtf8CodePoint.size() + " (to read code point prefixed 0x" + _Util.toHexString(b) + ')');
            }
            for (int i4 = 1; i4 < i2; i4++) {
                long j2 = i4;
                byte b2 = commonReadUtf8CodePoint.getByte(j2);
                if ((b2 & 192) != 128) {
                    commonReadUtf8CodePoint.skip(j2);
                    return 65533;
                }
                i3 = (i3 << 6) | (b2 & 63);
            }
            commonReadUtf8CodePoint.skip(j);
            if (i3 > 1114111) {
                i3 = 65533;
            } else if (55296 <= i3 && 57343 >= i3) {
                i3 = 65533;
            } else if (i3 < i) {
                i3 = 65533;
            }
            return i3;
        }
        throw new EOFException();
    }

    public static final String commonReadUtf8Line(Buffer commonReadUtf8Line) {
        Intrinsics.checkNotNullParameter(commonReadUtf8Line, "$this$commonReadUtf8Line");
        long indexOf = commonReadUtf8Line.indexOf((byte) 10);
        return indexOf != -1 ? readUtf8Line(commonReadUtf8Line, indexOf) : commonReadUtf8Line.size() != 0 ? commonReadUtf8Line.readUtf8(commonReadUtf8Line.size()) : null;
    }

    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    public static final String commonReadUtf8LineStrict(Buffer commonReadUtf8LineStrict, long j) {
        Buffer buffer;
        Intrinsics.checkNotNullParameter(commonReadUtf8LineStrict, "$this$commonReadUtf8LineStrict");
        if (!(j >= 0)) {
            throw new IllegalArgumentException(("limit < 0: " + j).toString());
        }
        char c = 65535;
        if (j != LongCompanionObject.MAX_VALUE) {
            c = j + 1;
        }
        byte b = (byte) 10;
        long indexOf = commonReadUtf8LineStrict.indexOf(b, 0L, c);
        if (indexOf != -1) {
            return readUtf8Line(commonReadUtf8LineStrict, indexOf);
        }
        if (c < commonReadUtf8LineStrict.size() && commonReadUtf8LineStrict.getByte(c - 1) == ((byte) 13) && commonReadUtf8LineStrict.getByte(c) == b) {
            return readUtf8Line(commonReadUtf8LineStrict, c);
        }
        commonReadUtf8LineStrict.copyTo(new Buffer(), 0L, Math.min(32, commonReadUtf8LineStrict.size()));
        throw new EOFException("\\n not found: limit=" + Math.min(commonReadUtf8LineStrict.size(), j) + " content=" + buffer.readByteString().hex() + (char) 8230);
    }

    public static final int commonSelect(Buffer commonSelect, Options options) {
        Intrinsics.checkNotNullParameter(commonSelect, "$this$commonSelect");
        Intrinsics.checkNotNullParameter(options, "options");
        int selectPrefix$default = selectPrefix$default(commonSelect, options, false, 2, null);
        if (selectPrefix$default == -1) {
            return -1;
        }
        commonSelect.skip(options.getByteStrings$okio()[selectPrefix$default].size());
        return selectPrefix$default;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r7v0, types: [long] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    public static final void commonSkip(Buffer commonSkip, long j) {
        Intrinsics.checkNotNullParameter(commonSkip, "$this$commonSkip");
        while (j > 0) {
            Segment segment = commonSkip.head;
            if (segment == null) {
                throw new EOFException();
            }
            int min = (int) Math.min((long) j, segment.limit - segment.pos);
            long j2 = min;
            commonSkip.setSize$okio(commonSkip.size() - j2);
            ?? r0 = j - j2;
            segment.pos += min;
            j = r0;
            if (segment.pos == segment.limit) {
                commonSkip.head = segment.pop();
                SegmentPool.recycle(segment);
                j = r0;
            }
        }
    }

    public static final ByteString commonSnapshot(Buffer commonSnapshot) {
        Intrinsics.checkNotNullParameter(commonSnapshot, "$this$commonSnapshot");
        if (commonSnapshot.size() <= ((long) Integer.MAX_VALUE)) {
            return commonSnapshot.snapshot((int) commonSnapshot.size());
        }
        throw new IllegalStateException(("size > Int.MAX_VALUE: " + commonSnapshot.size()).toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final ByteString commonSnapshot(Buffer commonSnapshot, int i) {
        Intrinsics.checkNotNullParameter(commonSnapshot, "$this$commonSnapshot");
        if (i == 0) {
            return ByteString.EMPTY;
        }
        _Util.checkOffsetAndCount(commonSnapshot.size(), 0L, i);
        Segment segment = commonSnapshot.head;
        int i2 = 0;
        int i3 = 0;
        while (i2 < i) {
            Intrinsics.checkNotNull(segment);
            if (segment.limit == segment.pos) {
                throw new AssertionError("s.limit == s.pos");
            }
            i2 += segment.limit - segment.pos;
            i3++;
            segment = segment.next;
        }
        byte[] bArr = new byte[i3];
        int[] iArr = new int[i3 * 2];
        Segment segment2 = commonSnapshot.head;
        int i4 = 0;
        int i5 = 0;
        while (i5 < i) {
            Intrinsics.checkNotNull(segment2);
            bArr[i4] = segment2.data;
            i5 += segment2.limit - segment2.pos;
            iArr[i4] = Math.min(i5, i);
            iArr[((Object[]) bArr).length + i4] = segment2.pos;
            segment2.shared = true;
            i4++;
            segment2 = segment2.next;
        }
        return new SegmentedByteString((byte[][]) bArr, iArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x005e, code lost:
        if (r0.owner == false) goto L17;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final okio.Segment commonWritableSegment(okio.Buffer r4, int r5) {
        /*
            r0 = r4
            java.lang.String r1 = "$this$commonWritableSegment"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r1)
            r0 = 1
            r6 = r0
            r0 = r5
            r1 = 1
            if (r0 < r1) goto L18
            r0 = r5
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 > r1) goto L18
            goto L1a
        L18:
            r0 = 0
            r6 = r0
        L1a:
            r0 = r6
            if (r0 == 0) goto L6b
            r0 = r4
            okio.Segment r0 = r0.head
            if (r0 != 0) goto L3a
            okio.Segment r0 = okio.SegmentPool.take()
            r7 = r0
            r0 = r4
            r1 = r7
            r0.head = r1
            r0 = r7
            r1 = r7
            r0.prev = r1
            r0 = r7
            r1 = r7
            r0.next = r1
            r0 = r7
            return r0
        L3a:
            r0 = r4
            okio.Segment r0 = r0.head
            r4 = r0
            r0 = r4
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            r0 = r4
            okio.Segment r0 = r0.prev
            r7 = r0
            r0 = r7
            kotlin.jvm.internal.Intrinsics.checkNotNull(r0)
            r0 = r7
            int r0 = r0.limit
            r1 = r5
            int r0 = r0 + r1
            r1 = 8192(0x2000, float:1.14794E-41)
            if (r0 > r1) goto L61
            r0 = r7
            r4 = r0
            r0 = r7
            boolean r0 = r0.owner
            if (r0 != 0) goto L69
        L61:
            r0 = r7
            okio.Segment r1 = okio.SegmentPool.take()
            okio.Segment r0 = r0.push(r1)
            r4 = r0
        L69:
            r0 = r4
            return r0
        L6b:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "unexpected capacity"
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.internal.BufferKt.commonWritableSegment(okio.Buffer, int):okio.Segment");
    }

    public static final Buffer commonWrite(Buffer commonWrite, ByteString byteString, int i, int i2) {
        Intrinsics.checkNotNullParameter(commonWrite, "$this$commonWrite");
        Intrinsics.checkNotNullParameter(byteString, "byteString");
        byteString.write$okio(commonWrite, i, i2);
        return commonWrite;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r6v0, types: [okio.Source, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    public static final Buffer commonWrite(Buffer commonWrite, Source source, long j) {
        Intrinsics.checkNotNullParameter(commonWrite, "$this$commonWrite");
        Intrinsics.checkNotNullParameter(source, "source");
        ?? r7 = j;
        while (r7 > 0) {
            long read = source.read(commonWrite, r7);
            if (read == -1) {
                throw new EOFException();
            }
            r7 -= read;
        }
        return commonWrite;
    }

    public static final Buffer commonWrite(Buffer commonWrite, byte[] source) {
        Intrinsics.checkNotNullParameter(commonWrite, "$this$commonWrite");
        Intrinsics.checkNotNullParameter(source, "source");
        return commonWrite.write(source, 0, source.length);
    }

    public static final Buffer commonWrite(Buffer commonWrite, byte[] source, int i, int i2) {
        Intrinsics.checkNotNullParameter(commonWrite, "$this$commonWrite");
        Intrinsics.checkNotNullParameter(source, "source");
        long j = i2;
        _Util.checkOffsetAndCount(source.length, i, j);
        int i3 = i2 + i;
        while (i < i3) {
            Segment writableSegment$okio = commonWrite.writableSegment$okio(1);
            int min = Math.min(i3 - i, 8192 - writableSegment$okio.limit);
            byte[] bArr = writableSegment$okio.data;
            int i4 = writableSegment$okio.limit;
            int i5 = i + min;
            ArraysKt.copyInto(source, bArr, i4, i, i5);
            writableSegment$okio.limit += min;
            i = i5;
        }
        commonWrite.setSize$okio(commonWrite.size() + j);
        return commonWrite;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    public static final void commonWrite(Buffer commonWrite, Buffer source, long j) {
        Segment segment;
        Segment segment2;
        Intrinsics.checkNotNullParameter(commonWrite, "$this$commonWrite");
        Intrinsics.checkNotNullParameter(source, "source");
        if (source != commonWrite) {
            _Util.checkOffsetAndCount(source.size(), 0L, j);
            ?? r9 = j;
            while (r9 > 0) {
                Segment segment3 = source.head;
                Intrinsics.checkNotNull(segment3);
                int i = segment3.limit;
                Intrinsics.checkNotNull(source.head);
                if (r9 < i - segment.pos) {
                    if (commonWrite.head != null) {
                        Segment segment4 = commonWrite.head;
                        Intrinsics.checkNotNull(segment4);
                        segment2 = segment4.prev;
                    } else {
                        segment2 = null;
                    }
                    if (segment2 != null && segment2.owner) {
                        if ((segment2.limit + r9) - (segment2.shared ? 0 : segment2.pos) <= 8192) {
                            Segment segment5 = source.head;
                            Intrinsics.checkNotNull(segment5);
                            segment5.writeTo(segment2, (int) r9);
                            source.setSize$okio(source.size() - r9);
                            commonWrite.setSize$okio(commonWrite.size() + r9);
                            return;
                        }
                    }
                    Segment segment6 = source.head;
                    Intrinsics.checkNotNull(segment6);
                    source.head = segment6.split((int) r9);
                }
                Segment segment7 = source.head;
                Intrinsics.checkNotNull(segment7);
                long j2 = segment7.limit - segment7.pos;
                source.head = segment7.pop();
                if (commonWrite.head == null) {
                    commonWrite.head = segment7;
                    segment7.prev = segment7;
                    segment7.next = segment7.prev;
                } else {
                    Segment segment8 = commonWrite.head;
                    Intrinsics.checkNotNull(segment8);
                    Segment segment9 = segment8.prev;
                    Intrinsics.checkNotNull(segment9);
                    segment9.push(segment7).compact();
                }
                source.setSize$okio(source.size() - j2);
                commonWrite.setSize$okio(commonWrite.size() + j2);
                r9 -= j2;
            }
            return;
        }
        throw new IllegalArgumentException("source == this".toString());
    }

    public static /* synthetic */ Buffer commonWrite$default(Buffer commonWrite, ByteString byteString, int i, int i2, int i3, Object obj) {
        if ((i3 & 2) != 0) {
            i = 0;
        }
        if ((i3 & 4) != 0) {
            i2 = byteString.size();
        }
        Intrinsics.checkNotNullParameter(commonWrite, "$this$commonWrite");
        Intrinsics.checkNotNullParameter(byteString, "byteString");
        byteString.write$okio(commonWrite, i, i2);
        return commonWrite;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3 */
    public static final long commonWriteAll(Buffer commonWriteAll, Source source) {
        Intrinsics.checkNotNullParameter(commonWriteAll, "$this$commonWriteAll");
        Intrinsics.checkNotNullParameter(source, "source");
        ?? r0 = 0;
        while (true) {
            char c = r0;
            long read = source.read(commonWriteAll, 8192);
            if (read == -1) {
                return c;
            }
            r0 = c + read;
        }
    }

    public static final Buffer commonWriteByte(Buffer commonWriteByte, int i) {
        Intrinsics.checkNotNullParameter(commonWriteByte, "$this$commonWriteByte");
        Segment writableSegment$okio = commonWriteByte.writableSegment$okio(1);
        byte[] bArr = writableSegment$okio.data;
        int i2 = writableSegment$okio.limit;
        writableSegment$okio.limit = i2 + 1;
        bArr[i2] = (byte) i;
        commonWriteByte.setSize$okio(commonWriteByte.size() + 1);
        return commonWriteByte;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v33, types: [long] */
    /* JADX WARN: Type inference failed for: r0v89, types: [long] */
    public static final Buffer commonWriteDecimalLong(Buffer commonWriteDecimalLong, long j) {
        long j2;
        Intrinsics.checkNotNullParameter(commonWriteDecimalLong, "$this$commonWriteDecimalLong");
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (i == 0) {
            return commonWriteDecimalLong.writeByte(48);
        }
        boolean z = false;
        int i2 = 1;
        char c = j;
        if (i < 0) {
            c = -j;
            if (c < 0) {
                return commonWriteDecimalLong.writeUtf8("-9223372036854775808");
            }
            z = true;
        }
        if (c >= 100000000) {
            i2 = c < 1000000000000L ? c < RealConnection.IDLE_CONNECTION_HEALTHY_NS ? c < 1000000000 ? 9 : 10 : c < 100000000000L ? 11 : 12 : c < 1000000000000000L ? c < 10000000000000L ? 13 : c < 100000000000000L ? 14 : 15 : c < 100000000000000000L ? c < 10000000000000000L ? 16 : 17 : c < 1000000000000000000L ? 18 : 19;
        } else if (c >= WorkRequest.MIN_BACKOFF_MILLIS) {
            i2 = c < 1000000 ? c < 100000 ? 5 : 6 : c < 10000000 ? 7 : 8;
        } else if (c >= 100) {
            i2 = c < 1000 ? 3 : 4;
        } else if (c >= 10) {
            i2 = 2;
        }
        int i3 = i2;
        if (z) {
            i3 = i2 + 1;
        }
        Segment writableSegment$okio = commonWriteDecimalLong.writableSegment$okio(i3);
        byte[] bArr = writableSegment$okio.data;
        int i4 = writableSegment$okio.limit + i3;
        while (c != 0) {
            i4--;
            bArr[i4] = getHEX_DIGIT_BYTES()[(int) (c % j2)];
            c /= 10;
        }
        if (z) {
            bArr[i4 - 1] = (byte) 45;
        }
        writableSegment$okio.limit += i3;
        commonWriteDecimalLong.setSize$okio(commonWriteDecimalLong.size() + i3);
        return commonWriteDecimalLong;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v52, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    public static final Buffer commonWriteHexadecimalUnsignedLong(Buffer commonWriteHexadecimalUnsignedLong, long j) {
        Intrinsics.checkNotNullParameter(commonWriteHexadecimalUnsignedLong, "$this$commonWriteHexadecimalUnsignedLong");
        if (j == 0) {
            return commonWriteHexadecimalUnsignedLong.writeByte(48);
        }
        long j2 = (j >>> 1) | j;
        long j3 = j2 | (j2 >>> 2);
        long j4 = j3 | (j3 >>> 4);
        long j5 = j4 | (j4 >>> 8);
        long j6 = j5 | (j5 >>> 16);
        long j7 = j6 | (j6 >>> 32);
        long j8 = j7 - ((j7 >>> 1) & 6148914691236517205L);
        long j9 = ((j8 >>> 2) & 3689348814741910323L) + (j8 & 3689348814741910323L);
        long j10 = ((j9 >>> 4) + j9) & 1085102592571150095L;
        long j11 = j10 + (j10 >>> 8);
        long j12 = j11 + (j11 >>> 16);
        int i = (int) ((((j12 & 63) + ((j12 >>> 32) & 63)) + 3) / 4);
        Segment writableSegment$okio = commonWriteHexadecimalUnsignedLong.writableSegment$okio(i);
        byte[] bArr = writableSegment$okio.data;
        int i2 = writableSegment$okio.limit;
        ?? r9 = j;
        for (int i3 = (writableSegment$okio.limit + i) - 1; i3 >= i2; i3--) {
            bArr[i3] = getHEX_DIGIT_BYTES()[(int) (15 & r9)];
            r9 >>>= 4;
        }
        writableSegment$okio.limit += i;
        commonWriteHexadecimalUnsignedLong.setSize$okio(commonWriteHexadecimalUnsignedLong.size() + i);
        return commonWriteHexadecimalUnsignedLong;
    }

    public static final Buffer commonWriteInt(Buffer commonWriteInt, int i) {
        Intrinsics.checkNotNullParameter(commonWriteInt, "$this$commonWriteInt");
        Segment writableSegment$okio = commonWriteInt.writableSegment$okio(4);
        byte[] bArr = writableSegment$okio.data;
        int i2 = writableSegment$okio.limit;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i >>> 16) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((i >>> 8) & 255);
        bArr[i5] = (byte) (i & 255);
        writableSegment$okio.limit = i5 + 1;
        commonWriteInt.setSize$okio(commonWriteInt.size() + 4);
        return commonWriteInt;
    }

    public static final Buffer commonWriteLong(Buffer commonWriteLong, long j) {
        Intrinsics.checkNotNullParameter(commonWriteLong, "$this$commonWriteLong");
        Segment writableSegment$okio = commonWriteLong.writableSegment$okio(8);
        byte[] bArr = writableSegment$okio.data;
        int i = writableSegment$okio.limit;
        int i2 = i + 1;
        bArr[i] = (byte) ((j >>> 56) & 255);
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((j >>> 48) & 255);
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((j >>> 40) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((j >>> 32) & 255);
        int i6 = i5 + 1;
        bArr[i5] = (byte) ((j >>> 24) & 255);
        int i7 = i6 + 1;
        bArr[i6] = (byte) ((j >>> 16) & 255);
        int i8 = i7 + 1;
        bArr[i7] = (byte) ((j >>> 8) & 255);
        bArr[i8] = (byte) (j & 255);
        writableSegment$okio.limit = i8 + 1;
        commonWriteLong.setSize$okio(commonWriteLong.size() + 8);
        return commonWriteLong;
    }

    public static final Buffer commonWriteShort(Buffer commonWriteShort, int i) {
        Intrinsics.checkNotNullParameter(commonWriteShort, "$this$commonWriteShort");
        Segment writableSegment$okio = commonWriteShort.writableSegment$okio(2);
        byte[] bArr = writableSegment$okio.data;
        int i2 = writableSegment$okio.limit;
        int i3 = i2 + 1;
        bArr[i2] = (byte) ((i >>> 8) & 255);
        bArr[i3] = (byte) (i & 255);
        writableSegment$okio.limit = i3 + 1;
        commonWriteShort.setSize$okio(commonWriteShort.size() + 2);
        return commonWriteShort;
    }

    public static final Buffer commonWriteUtf8(Buffer commonWriteUtf8, String string, int i, int i2) {
        char charAt;
        Intrinsics.checkNotNullParameter(commonWriteUtf8, "$this$commonWriteUtf8");
        Intrinsics.checkNotNullParameter(string, "string");
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("beginIndex < 0: " + i).toString());
        }
        if (!(i2 >= i)) {
            throw new IllegalArgumentException(("endIndex < beginIndex: " + i2 + " < " + i).toString());
        }
        if (!(i2 <= string.length())) {
            throw new IllegalArgumentException(("endIndex > string.length: " + i2 + " > " + string.length()).toString());
        }
        while (i < i2) {
            char charAt2 = string.charAt(i);
            if (charAt2 < 128) {
                Segment writableSegment$okio = commonWriteUtf8.writableSegment$okio(1);
                byte[] bArr = writableSegment$okio.data;
                int i3 = writableSegment$okio.limit - i;
                int min = Math.min(i2, 8192 - i3);
                bArr[i + i3] = (byte) charAt2;
                i++;
                while (i < min && (charAt = string.charAt(i)) < 128) {
                    bArr[i + i3] = (byte) charAt;
                    i++;
                }
                int i4 = (i3 + i) - writableSegment$okio.limit;
                writableSegment$okio.limit += i4;
                commonWriteUtf8.setSize$okio(commonWriteUtf8.size() + i4);
            } else {
                if (charAt2 < 2048) {
                    Segment writableSegment$okio2 = commonWriteUtf8.writableSegment$okio(2);
                    writableSegment$okio2.data[writableSegment$okio2.limit] = (byte) ((charAt2 >> 6) | 192);
                    writableSegment$okio2.data[writableSegment$okio2.limit + 1] = (byte) ((charAt2 & '?') | 128);
                    writableSegment$okio2.limit += 2;
                    commonWriteUtf8.setSize$okio(commonWriteUtf8.size() + 2);
                } else if (charAt2 < 55296 || charAt2 > 57343) {
                    Segment writableSegment$okio3 = commonWriteUtf8.writableSegment$okio(3);
                    writableSegment$okio3.data[writableSegment$okio3.limit] = (byte) ((charAt2 >> '\f') | 224);
                    writableSegment$okio3.data[writableSegment$okio3.limit + 1] = (byte) ((63 & (charAt2 >> 6)) | 128);
                    writableSegment$okio3.data[writableSegment$okio3.limit + 2] = (byte) ((charAt2 & '?') | 128);
                    writableSegment$okio3.limit += 3;
                    commonWriteUtf8.setSize$okio(commonWriteUtf8.size() + 3);
                } else {
                    int i5 = i + 1;
                    char charAt3 = i5 < i2 ? string.charAt(i5) : (char) 0;
                    if (charAt2 > 56319 || 56320 > charAt3 || 57343 < charAt3) {
                        commonWriteUtf8.writeByte(63);
                        i = i5;
                    } else {
                        int i6 = (((charAt2 & 1023) << 10) | (charAt3 & 1023)) + 65536;
                        Segment writableSegment$okio4 = commonWriteUtf8.writableSegment$okio(4);
                        writableSegment$okio4.data[writableSegment$okio4.limit] = (byte) ((i6 >> 18) | 240);
                        writableSegment$okio4.data[writableSegment$okio4.limit + 1] = (byte) (((i6 >> 12) & 63) | 128);
                        writableSegment$okio4.data[writableSegment$okio4.limit + 2] = (byte) (((i6 >> 6) & 63) | 128);
                        writableSegment$okio4.data[writableSegment$okio4.limit + 3] = (byte) ((i6 & 63) | 128);
                        writableSegment$okio4.limit += 4;
                        commonWriteUtf8.setSize$okio(commonWriteUtf8.size() + 4);
                        i += 2;
                    }
                }
                i++;
            }
        }
        return commonWriteUtf8;
    }

    public static final Buffer commonWriteUtf8CodePoint(Buffer commonWriteUtf8CodePoint, int i) {
        Intrinsics.checkNotNullParameter(commonWriteUtf8CodePoint, "$this$commonWriteUtf8CodePoint");
        if (i < 128) {
            commonWriteUtf8CodePoint.writeByte(i);
        } else if (i < 2048) {
            Segment writableSegment$okio = commonWriteUtf8CodePoint.writableSegment$okio(2);
            writableSegment$okio.data[writableSegment$okio.limit] = (byte) ((i >> 6) | 192);
            writableSegment$okio.data[writableSegment$okio.limit + 1] = (byte) ((i & 63) | 128);
            writableSegment$okio.limit += 2;
            commonWriteUtf8CodePoint.setSize$okio(commonWriteUtf8CodePoint.size() + 2);
        } else if (55296 <= i && 57343 >= i) {
            commonWriteUtf8CodePoint.writeByte(63);
        } else if (i < 65536) {
            Segment writableSegment$okio2 = commonWriteUtf8CodePoint.writableSegment$okio(3);
            writableSegment$okio2.data[writableSegment$okio2.limit] = (byte) ((i >> 12) | 224);
            writableSegment$okio2.data[writableSegment$okio2.limit + 1] = (byte) (((i >> 6) & 63) | 128);
            writableSegment$okio2.data[writableSegment$okio2.limit + 2] = (byte) ((i & 63) | 128);
            writableSegment$okio2.limit += 3;
            commonWriteUtf8CodePoint.setSize$okio(commonWriteUtf8CodePoint.size() + 3);
        } else if (i > 1114111) {
            throw new IllegalArgumentException("Unexpected code point: 0x" + _Util.toHexString(i));
        } else {
            Segment writableSegment$okio3 = commonWriteUtf8CodePoint.writableSegment$okio(4);
            writableSegment$okio3.data[writableSegment$okio3.limit] = (byte) ((i >> 18) | 240);
            writableSegment$okio3.data[writableSegment$okio3.limit + 1] = (byte) (((i >> 12) & 63) | 128);
            writableSegment$okio3.data[writableSegment$okio3.limit + 2] = (byte) (((i >> 6) & 63) | 128);
            writableSegment$okio3.data[writableSegment$okio3.limit + 3] = (byte) ((i & 63) | 128);
            writableSegment$okio3.limit += 4;
            commonWriteUtf8CodePoint.setSize$okio(commonWriteUtf8CodePoint.size() + 4);
        }
        return commonWriteUtf8CodePoint;
    }

    public static final byte[] getHEX_DIGIT_BYTES() {
        return HEX_DIGIT_BYTES;
    }

    public static final boolean rangeEquals(Segment segment, int i, byte[] bytes, int i2, int i3) {
        Intrinsics.checkNotNullParameter(segment, "segment");
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        int i4 = segment.limit;
        byte[] bArr = segment.data;
        while (i2 < i3) {
            int i5 = i4;
            Segment segment2 = segment;
            int i6 = i;
            if (i == i4) {
                segment2 = segment.next;
                Intrinsics.checkNotNull(segment2);
                byte[] bArr2 = segment2.data;
                i6 = segment2.pos;
                i5 = segment2.limit;
                bArr = bArr2;
            }
            if (bArr[i6] != bytes[i2]) {
                return false;
            }
            i = i6 + 1;
            i2++;
            i4 = i5;
            segment = segment2;
        }
        return true;
    }

    public static final String readUtf8Line(Buffer readUtf8Line, long j) {
        String str;
        Intrinsics.checkNotNullParameter(readUtf8Line, "$this$readUtf8Line");
        if (j > 0) {
            long j2 = j - 1;
            if (readUtf8Line.getByte(j2) == ((byte) 13)) {
                String readUtf8 = readUtf8Line.readUtf8(j2);
                readUtf8Line.skip(2L);
                str = readUtf8;
                return str;
            }
        }
        String readUtf82 = readUtf8Line.readUtf8(j);
        readUtf8Line.skip(1L);
        str = readUtf82;
        return str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v28 */
    /* JADX WARN: Type inference failed for: r0v38 */
    /* JADX WARN: Type inference failed for: r0v39 */
    public static final <T> T seek(Buffer seek, long j, Function2<? super Segment, ? super Long, ? extends T> lambda) {
        Intrinsics.checkNotNullParameter(seek, "$this$seek");
        Intrinsics.checkNotNullParameter(lambda, "lambda");
        Segment segment = seek.head;
        if (segment != null) {
            if (seek.size() - j < j) {
                ?? r0 = seek.size();
                while (true) {
                    char c = r0;
                    if (c <= j) {
                        return lambda.invoke(segment, Long.valueOf(c));
                    }
                    segment = segment.prev;
                    Intrinsics.checkNotNull(segment);
                    r0 = c - (segment.limit - segment.pos);
                }
            } else {
                ?? r02 = 0;
                while (true) {
                    char c2 = r02;
                    ?? r03 = (segment.limit - segment.pos) + c2;
                    if (r03 > j) {
                        return lambda.invoke(segment, Long.valueOf(c2));
                    }
                    segment = segment.next;
                    Intrinsics.checkNotNull(segment);
                    r02 = r03;
                }
            }
        } else {
            return lambda.invoke(null, -1L);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00e3, code lost:
        if (r7 == false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00e6, code lost:
        return -2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00eb, code lost:
        return r14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final int selectPrefix(okio.Buffer r5, okio.Options r6, boolean r7) {
        /*
            Method dump skipped, instructions count: 462
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.internal.BufferKt.selectPrefix(okio.Buffer, okio.Options, boolean):int");
    }

    public static /* synthetic */ int selectPrefix$default(Buffer buffer, Options options, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return selectPrefix(buffer, options, z);
    }
}
