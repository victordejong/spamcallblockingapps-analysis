package okio.internal;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;
import okio.Options;
import okio.Segment;
import okio._Platform;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��x\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u0012\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0010��\n\u0002\b\u0004\n\u0002\u0010\u0005\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\n\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0018\n\u0002\u0018\u0002\n\u0002\b\u0010\u001a7\u0010\t\u001a\u00020\b2\u0006\u0010\u0001\u001a\u00020��2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0002H��¢\u0006\u0004\b\t\u0010\n\u001a\u0014\u0010\r\u001a\u00020\f*\u00020\u000bH\u0080\b¢\u0006\u0004\b\r\u0010\u000e\u001a\u0014\u0010\u0010\u001a\u00020\u000f*\u00020\u000bH\u0080\b¢\u0006\u0004\b\u0010\u0010\u0011\u001a\u0014\u0010\u0012\u001a\u00020\u000b*\u00020\u000bH\u0080\b¢\u0006\u0004\b\u0012\u0010\u0013\u001a,\u0010\u0017\u001a\u00020\u000b*\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u000fH\u0080\b¢\u0006\u0004\b\u0017\u0010\u0018\u001a\u001e\u0010\u001b\u001a\u00020\b*\u00020\u000b2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0080\b¢\u0006\u0004\b\u001b\u0010\u001c\u001a\u001c\u0010\u001f\u001a\u00020\u001e*\u00020\u000b2\u0006\u0010\u001d\u001a\u00020\u000fH\u0080\b¢\u0006\u0004\b\u001f\u0010 \u001a\u0014\u0010!\u001a\u00020\u0002*\u00020\u000bH\u0080\b¢\u0006\u0004\b!\u0010\"\u001a,\u0010&\u001a\u00020\u000f*\u00020\u000b2\u0006\u0010#\u001a\u00020\u001e2\u0006\u0010$\u001a\u00020\u000f2\u0006\u0010%\u001a\u00020\u000fH\u0080\b¢\u0006\u0004\b&\u0010'\u001a$\u0010&\u001a\u00020\u000f*\u00020\u000b2\u0006\u0010\u0005\u001a\u00020(2\u0006\u0010$\u001a\u00020\u000fH\u0080\b¢\u0006\u0004\b&\u0010)\u001a$\u0010+\u001a\u00020\u000f*\u00020\u000b2\u0006\u0010*\u001a\u00020(2\u0006\u0010$\u001a\u00020\u000fH\u0080\b¢\u0006\u0004\b+\u0010)\u001a4\u0010,\u001a\u00020\b*\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0005\u001a\u00020(2\u0006\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0002H\u0080\b¢\u0006\u0004\b,\u0010-\u001a\u001c\u0010/\u001a\u00020\u0002*\u00020\u000b2\u0006\u0010.\u001a\u00020\u0004H\u0080\b¢\u0006\u0004\b/\u00100\u001a,\u0010/\u001a\u00020\u0002*\u00020\u000b2\u0006\u0010.\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0002H\u0080\b¢\u0006\u0004\b/\u00101\u001a$\u0010/\u001a\u00020\u000f*\u00020\u000b2\u0006\u0010.\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u000fH\u0080\b¢\u0006\u0004\b/\u00102\u001a\u001c\u00104\u001a\u00020\u000f*\u00020\u000b2\u0006\u0010.\u001a\u000203H\u0080\b¢\u0006\u0004\b4\u00105\u001a\u0014\u00106\u001a\u00020\u001e*\u00020\u000bH\u0080\b¢\u0006\u0004\b6\u00107\u001a\u0014\u00108\u001a\u00020\u0004*\u00020\u000bH\u0080\b¢\u0006\u0004\b8\u00109\u001a\u001c\u00108\u001a\u00020\u0004*\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u000fH\u0080\b¢\u0006\u0004\b8\u0010:\u001a\u0014\u0010;\u001a\u00020(*\u00020\u000bH\u0080\b¢\u0006\u0004\b;\u0010<\u001a\u001c\u0010;\u001a\u00020(*\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u000fH\u0080\b¢\u0006\u0004\b;\u0010=\u001a\u0014\u0010>\u001a\u00020\u000f*\u00020\u000bH\u0080\b¢\u0006\u0004\b>\u0010\u0011\u001a\u001c\u0010?\u001a\u00020\f*\u00020\u000b2\u0006\u0010.\u001a\u00020\u0004H\u0080\b¢\u0006\u0004\b?\u0010@\u001a$\u0010?\u001a\u00020\f*\u00020\u000b2\u0006\u0010.\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u000fH\u0080\b¢\u0006\u0004\b?\u0010A\u001a\u0014\u0010B\u001a\u00020\u000f*\u00020\u000bH\u0080\b¢\u0006\u0004\bB\u0010\u0011\u001a\u0014\u0010C\u001a\u00020\u0002*\u00020\u000bH\u0080\b¢\u0006\u0004\bC\u0010\"\u001a\u0014\u0010D\u001a\u00020\u000f*\u00020\u000bH\u0080\b¢\u0006\u0004\bD\u0010\u0011\u001a\u0014\u0010F\u001a\u00020E*\u00020\u000bH\u0080\b¢\u0006\u0004\bF\u0010G\u001a\u001c\u0010I\u001a\u00020H*\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u000fH\u0080\b¢\u0006\u0004\bI\u0010J\u001a\u0014\u0010K\u001a\u00020\u0002*\u00020\u000bH\u0080\b¢\u0006\u0004\bK\u0010\"\u001a\u0016\u0010L\u001a\u0004\u0018\u00010H*\u00020\u000bH\u0080\b¢\u0006\u0004\bL\u0010M\u001a\u001c\u0010O\u001a\u00020H*\u00020\u000b2\u0006\u0010N\u001a\u00020\u000fH\u0080\b¢\u0006\u0004\bO\u0010J\u001a\u001c\u0010R\u001a\u00020\u0002*\u00020\u000b2\u0006\u0010Q\u001a\u00020PH\u0080\b¢\u0006\u0004\bR\u0010S\u001a\u001c\u0010T\u001a\u00020\f*\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u000fH\u0080\b¢\u0006\u0004\bT\u0010U\u001a\u0014\u0010V\u001a\u00020(*\u00020\u000bH\u0080\b¢\u0006\u0004\bV\u0010<\u001a\u001c\u0010V\u001a\u00020(*\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u0002H\u0080\b¢\u0006\u0004\bV\u0010W\u001a\u001c\u0010Y\u001a\u00020��*\u00020\u000b2\u0006\u0010X\u001a\u00020\u0002H\u0080\b¢\u0006\u0004\bY\u0010Z\u001a\u001c\u0010\\\u001a\u00020\u000b*\u00020\u000b2\u0006\u0010[\u001a\u00020\u0004H\u0080\b¢\u0006\u0004\b\\\u0010]\u001a,\u0010\\\u001a\u00020\u000b*\u00020\u000b2\u0006\u0010[\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0002H\u0080\b¢\u0006\u0004\b\\\u0010^\u001a$\u0010\\\u001a\u00020\f*\u00020\u000b2\u0006\u0010[\u001a\u00020\u000b2\u0006\u0010\u0016\u001a\u00020\u000fH\u0080\b¢\u0006\u0004\b\\\u0010A\u001a0\u0010\\\u001a\u00020\u000b*\u00020\u000b2\u0006\u0010_\u001a\u00020(2\b\b\u0002\u0010\u0015\u001a\u00020\u00022\b\b\u0002\u0010\u0016\u001a\u00020\u0002H\u0080\b¢\u0006\u0004\b\\\u0010`\u001a$\u0010\\\u001a\u00020\u000b*\u00020\u000b2\u0006\u0010[\u001a\u00020a2\u0006\u0010\u0016\u001a\u00020\u000fH\u0080\b¢\u0006\u0004\b\\\u0010b\u001a\u001c\u0010c\u001a\u00020\u000f*\u00020\u000b2\u0006\u0010[\u001a\u00020aH\u0080\b¢\u0006\u0004\bc\u0010d\u001a\u001c\u0010e\u001a\u00020\u000b*\u00020\u000b2\u0006\u0010#\u001a\u00020\u0002H\u0080\b¢\u0006\u0004\be\u0010f\u001a\u001c\u0010h\u001a\u00020\u000b*\u00020\u000b2\u0006\u0010g\u001a\u00020\u000fH\u0080\b¢\u0006\u0004\bh\u0010i\u001a\u001c\u0010j\u001a\u00020\u000b*\u00020\u000b2\u0006\u0010g\u001a\u00020\u000fH\u0080\b¢\u0006\u0004\bj\u0010i\u001a\u001c\u0010l\u001a\u00020\u000b*\u00020\u000b2\u0006\u0010k\u001a\u00020\u0002H\u0080\b¢\u0006\u0004\bl\u0010f\u001a\u001c\u0010m\u001a\u00020\u000b*\u00020\u000b2\u0006\u0010g\u001a\u00020\u000fH\u0080\b¢\u0006\u0004\bm\u0010i\u001a\u001c\u0010o\u001a\u00020\u000b*\u00020\u000b2\u0006\u0010n\u001a\u00020\u0002H\u0080\b¢\u0006\u0004\bo\u0010f\u001a,\u0010s\u001a\u00020\u000b*\u00020\u000b2\u0006\u0010p\u001a\u00020H2\u0006\u0010q\u001a\u00020\u00022\u0006\u0010r\u001a\u00020\u0002H\u0080\b¢\u0006\u0004\bs\u0010t\u001a\u001c\u0010v\u001a\u00020\u000b*\u00020\u000b2\u0006\u0010u\u001a\u00020\u0002H\u0080\b¢\u0006\u0004\bv\u0010f\u001a\u001b\u0010x\u001a\u00020H*\u00020\u000b2\u0006\u0010w\u001a\u00020\u000fH��¢\u0006\u0004\bx\u0010J\u001aA\u0010|\u001a\u00028��\"\u0004\b��\u0010y*\u00020\u000b2\u0006\u0010$\u001a\u00020\u000f2\u001a\u0010{\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010��\u0012\u0004\u0012\u00020\u000f\u0012\u0004\u0012\u00028��0zH\u0080\bø\u0001��¢\u0006\u0004\b|\u0010}\u001a&\u0010\u007f\u001a\u00020\u0002*\u00020\u000b2\u0006\u0010Q\u001a\u00020P2\b\b\u0002\u0010~\u001a\u00020\bH��¢\u0006\u0005\b\u007f\u0010\u0080\u0001\"!\u0010\u0081\u0001\u001a\u00020\u00048��@��X\u0080\u0004¢\u0006\u0010\n\u0006\b\u0081\u0001\u0010\u0082\u0001\u001a\u0006\b\u0083\u0001\u0010\u0084\u0001\"\u0019\u0010\u0085\u0001\u001a\u00020\u000f8��@��X\u0080T¢\u0006\b\n\u0006\b\u0085\u0001\u0010\u0086\u0001\"\u0019\u0010\u0087\u0001\u001a\u00020\u000f8��@��X\u0080T¢\u0006\b\n\u0006\b\u0087\u0001\u0010\u0086\u0001\"\u0019\u0010\u0088\u0001\u001a\u00020\u00028��@��X\u0080T¢\u0006\b\n\u0006\b\u0088\u0001\u0010\u0089\u0001\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\u008a\u0001"}, d2 = {"Lokio/Segment;", "segment", "", "segmentPos", "", "bytes", "bytesOffset", "bytesLimit", "", "rangeEquals", "(Lokio/Segment;I[BII)Z", "Lokio/Buffer;", "", "commonClear", "(Lokio/Buffer;)V", "", "commonCompleteSegmentByteCount", "(Lokio/Buffer;)J", "commonCopy", "(Lokio/Buffer;)Lokio/Buffer;", "out", "offset", "byteCount", "commonCopyTo", "(Lokio/Buffer;Lokio/Buffer;JJ)Lokio/Buffer;", "", "other", "commonEquals", "(Lokio/Buffer;Ljava/lang/Object;)Z", "pos", "", "commonGet", "(Lokio/Buffer;J)B", "commonHashCode", "(Lokio/Buffer;)I", "b", "fromIndex", "toIndex", "commonIndexOf", "(Lokio/Buffer;BJJ)J", "Lokio/ByteString;", "(Lokio/Buffer;Lokio/ByteString;J)J", "targetBytes", "commonIndexOfElement", "commonRangeEquals", "(Lokio/Buffer;JLokio/ByteString;II)Z", "sink", "commonRead", "(Lokio/Buffer;[B)I", "(Lokio/Buffer;[BII)I", "(Lokio/Buffer;Lokio/Buffer;J)J", "Lokio/Sink;", "commonReadAll", "(Lokio/Buffer;Lokio/Sink;)J", "commonReadByte", "(Lokio/Buffer;)B", "commonReadByteArray", "(Lokio/Buffer;)[B", "(Lokio/Buffer;J)[B", "commonReadByteString", "(Lokio/Buffer;)Lokio/ByteString;", "(Lokio/Buffer;J)Lokio/ByteString;", "commonReadDecimalLong", "commonReadFully", "(Lokio/Buffer;[B)V", "(Lokio/Buffer;Lokio/Buffer;J)V", "commonReadHexadecimalUnsignedLong", "commonReadInt", "commonReadLong", "", "commonReadShort", "(Lokio/Buffer;)S", "", "commonReadUtf8", "(Lokio/Buffer;J)Ljava/lang/String;", "commonReadUtf8CodePoint", "commonReadUtf8Line", "(Lokio/Buffer;)Ljava/lang/String;", "limit", "commonReadUtf8LineStrict", "Lokio/Options;", "options", "commonSelect", "(Lokio/Buffer;Lokio/Options;)I", "commonSkip", "(Lokio/Buffer;J)V", "commonSnapshot", "(Lokio/Buffer;I)Lokio/ByteString;", "minimumCapacity", "commonWritableSegment", "(Lokio/Buffer;I)Lokio/Segment;", "source", "commonWrite", "(Lokio/Buffer;[B)Lokio/Buffer;", "(Lokio/Buffer;[BII)Lokio/Buffer;", "byteString", "(Lokio/Buffer;Lokio/ByteString;II)Lokio/Buffer;", "Lokio/Source;", "(Lokio/Buffer;Lokio/Source;J)Lokio/Buffer;", "commonWriteAll", "(Lokio/Buffer;Lokio/Source;)J", "commonWriteByte", "(Lokio/Buffer;I)Lokio/Buffer;", "v", "commonWriteDecimalLong", "(Lokio/Buffer;J)Lokio/Buffer;", "commonWriteHexadecimalUnsignedLong", "i", "commonWriteInt", "commonWriteLong", "s", "commonWriteShort", "string", "beginIndex", "endIndex", "commonWriteUtf8", "(Lokio/Buffer;Ljava/lang/String;II)Lokio/Buffer;", "codePoint", "commonWriteUtf8CodePoint", "newline", "readUtf8Line", "T", "Lkotlin/Function2;", "lambda", "seek", "(Lokio/Buffer;JLkotlin/jvm/functions/Function2;)Ljava/lang/Object;", "selectTruncated", "selectPrefix", "(Lokio/Buffer;Lokio/Options;Z)I", "HEX_DIGIT_BYTES", "[B", "getHEX_DIGIT_BYTES", "()[B", "OVERFLOW_DIGIT_START", "J", "OVERFLOW_ZONE", "SEGMENTING_THRESHOLD", "I", "okio"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okio/internal/BufferKt.class */
public final class BufferKt {
    @NotNull

    /* renamed from: a */
    private static final byte[] f24220a = _Platform.m26a("0123456789abcdef");

    @NotNull
    /* renamed from: a */
    public static final byte[] m18a() {
        return f24220a;
    }

    /* renamed from: b */
    public static final boolean m17b(@NotNull Segment segment, int i, @NotNull byte[] bytes, int i2, int i3) {
        Intrinsics.m1830e(segment, "segment");
        Intrinsics.m1830e(bytes, "bytes");
        int i4 = segment.f24198c;
        byte[] bArr = segment.f24196a;
        while (i2 < i3) {
            i4 = i4;
            segment = segment;
            int i5 = i;
            if (i == i4) {
                segment = segment.f24201f;
                Intrinsics.m1832c(segment);
                bArr = segment.f24196a;
                i5 = segment.f24197b;
                i4 = segment.f24198c;
            }
            if (bArr[i5] != bytes[i2]) {
                return false;
            }
            i = i5 + 1;
            i2++;
        }
        return true;
    }

    @NotNull
    /* renamed from: c */
    public static final String m16c(@NotNull Buffer readUtf8Line, long j) {
        String str;
        Intrinsics.m1830e(readUtf8Line, "$this$readUtf8Line");
        if (j > 0) {
            long j2 = j - 1;
            if (readUtf8Line.m192p(j2) == ((byte) 13)) {
                str = readUtf8Line.m197i0(j2);
                readUtf8Line.skip(2L);
                return str;
            }
        }
        str = readUtf8Line.m197i0(j);
        readUtf8Line.skip(1L);
        return str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00da, code lost:
        if (r7 == false) goto L_0x00e0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00dd, code lost:
        return -2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00e2, code lost:
        return r14;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final int m15d(@org.jetbrains.annotations.NotNull okio.Buffer r5, @org.jetbrains.annotations.NotNull okio.Options r6, boolean r7) {
        /*
            Method dump skipped, instructions count: 486
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.internal.BufferKt.m15d(okio.Buffer, okio.Options, boolean):int");
    }

    /* renamed from: e */
    public static /* synthetic */ int m14e(Buffer buffer, Options options, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return m15d(buffer, options, z);
    }
}
