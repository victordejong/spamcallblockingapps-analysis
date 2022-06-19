package okio.internal;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.io.EOFException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.text.CharsKt;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.Okio;
import okio.Options;
import okio.PeekSource;
import okio.RealBufferedSource;
import okio.Sink;
import okio.Timeout;
import okio._Util;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��j\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0010\t\n��\n\u0002\u0010\u0005\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\n\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\r\u0010��\u001a\u00020\u0001*\u00020\u0002H\u0080\b\u001a\r\u0010\u0003\u001a\u00020\u0004*\u00020\u0002H\u0080\b\u001a%\u0010\u0005\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\n\u001a\u00020\u0006H\u0080\b\u001a\u001d\u0010\u0005\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\u0006H\u0080\b\u001a\u001d\u0010\r\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u000e\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\u0006H\u0080\b\u001a\r\u0010\u000f\u001a\u00020\u0010*\u00020\u0002H\u0080\b\u001a-\u0010\u0011\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0080\b\u001a%\u0010\u0016\u001a\u00020\u0014*\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0012\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00020\u0014H\u0080\b\u001a\u001d\u0010\u0016\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u00192\u0006\u0010\u0015\u001a\u00020\u0006H\u0080\b\u001a\u0015\u0010\u001a\u001a\u00020\u0006*\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u001bH\u0080\b\u001a\r\u0010\u001c\u001a\u00020\b*\u00020\u0002H\u0080\b\u001a\r\u0010\u001d\u001a\u00020\u0018*\u00020\u0002H\u0080\b\u001a\u0015\u0010\u001d\u001a\u00020\u0018*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0006H\u0080\b\u001a\r\u0010\u001e\u001a\u00020\f*\u00020\u0002H\u0080\b\u001a\u0015\u0010\u001e\u001a\u00020\f*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0006H\u0080\b\u001a\r\u0010\u001f\u001a\u00020\u0006*\u00020\u0002H\u0080\b\u001a\u0015\u0010 \u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0018H\u0080\b\u001a\u001d\u0010 \u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u00192\u0006\u0010\u0015\u001a\u00020\u0006H\u0080\b\u001a\r\u0010!\u001a\u00020\u0006*\u00020\u0002H\u0080\b\u001a\r\u0010\"\u001a\u00020\u0014*\u00020\u0002H\u0080\b\u001a\r\u0010#\u001a\u00020\u0014*\u00020\u0002H\u0080\b\u001a\r\u0010$\u001a\u00020\u0006*\u00020\u0002H\u0080\b\u001a\r\u0010%\u001a\u00020\u0006*\u00020\u0002H\u0080\b\u001a\r\u0010&\u001a\u00020'*\u00020\u0002H\u0080\b\u001a\r\u0010(\u001a\u00020'*\u00020\u0002H\u0080\b\u001a\r\u0010)\u001a\u00020**\u00020\u0002H\u0080\b\u001a\u0015\u0010)\u001a\u00020**\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0006H\u0080\b\u001a\r\u0010+\u001a\u00020\u0014*\u00020\u0002H\u0080\b\u001a\u000f\u0010,\u001a\u0004\u0018\u00010**\u00020\u0002H\u0080\b\u001a\u0015\u0010-\u001a\u00020**\u00020\u00022\u0006\u0010.\u001a\u00020\u0006H\u0080\b\u001a\u0015\u0010/\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0006H\u0080\b\u001a\u0015\u00100\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0006H\u0080\b\u001a\u0015\u00101\u001a\u00020\u0014*\u00020\u00022\u0006\u00102\u001a\u000203H\u0080\b\u001a\u0015\u00104\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0015\u001a\u00020\u0006H\u0080\b\u001a\r\u00105\u001a\u000206*\u00020\u0002H\u0080\b\u001a\r\u00107\u001a\u00020**\u00020\u0002H\u0080\b¨\u00068"}, m400d2 = {"commonClose", "", "Lokio/RealBufferedSource;", "commonExhausted", "", "commonIndexOf", "", "b", "", "fromIndex", "toIndex", "bytes", "Lokio/ByteString;", "commonIndexOfElement", "targetBytes", "commonPeek", "Lokio/BufferedSource;", "commonRangeEquals", "offset", "bytesOffset", "", "byteCount", "commonRead", "sink", "", "Lokio/Buffer;", "commonReadAll", "Lokio/Sink;", "commonReadByte", "commonReadByteArray", "commonReadByteString", "commonReadDecimalLong", "commonReadFully", "commonReadHexadecimalUnsignedLong", "commonReadInt", "commonReadIntLe", "commonReadLong", "commonReadLongLe", "commonReadShort", "", "commonReadShortLe", "commonReadUtf8", "", "commonReadUtf8CodePoint", "commonReadUtf8Line", "commonReadUtf8LineStrict", "limit", "commonRequest", "commonRequire", "commonSelect", SDKConstants.PARAM_GAME_REQUESTS_OPTIONS, "Lokio/Options;", "commonSkip", "commonTimeout", "Lokio/Timeout;", "commonToString", "okio"}, m399k = 2, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:okio/internal/RealBufferedSourceKt.class */
public final class RealBufferedSourceKt {
    public static final void commonClose(RealBufferedSource commonClose) {
        Intrinsics.checkNotNullParameter(commonClose, "$this$commonClose");
        if (commonClose.closed) {
            return;
        }
        commonClose.closed = true;
        commonClose.source.close();
        commonClose.bufferField.clear();
    }

    public static final boolean commonExhausted(RealBufferedSource commonExhausted) {
        Intrinsics.checkNotNullParameter(commonExhausted, "$this$commonExhausted");
        boolean z = true;
        if (!commonExhausted.closed) {
            if (!commonExhausted.bufferField.exhausted() || commonExhausted.source.read(commonExhausted.bufferField, 8192) != -1) {
                z = false;
            }
            return z;
        }
        throw new IllegalStateException("closed".toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v26, types: [okio.Buffer] */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    public static final long commonIndexOf(RealBufferedSource commonIndexOf, byte b, long j, long j2) {
        Intrinsics.checkNotNullParameter(commonIndexOf, "$this$commonIndexOf");
        boolean z = true;
        if (!commonIndexOf.closed) {
            if (0 > j || j2 < j) {
                z = false;
            }
            ?? r9 = j;
            if (!z) {
                throw new IllegalArgumentException(("fromIndex=" + j + " toIndex=" + j2).toString());
            }
            while (r9 < j2) {
                long indexOf = commonIndexOf.bufferField.indexOf(b, r9, j2);
                if (indexOf != -1) {
                    return indexOf;
                }
                long size = commonIndexOf.bufferField.size();
                if (size >= j2 || commonIndexOf.source.read(commonIndexOf.bufferField, 8192) == -1) {
                    return -1L;
                }
                r9 = Math.max((long) r9, size);
            }
            return -1L;
        }
        throw new IllegalStateException("closed".toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [okio.Buffer] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    public static final long commonIndexOf(RealBufferedSource commonIndexOf, ByteString bytes, long j) {
        Intrinsics.checkNotNullParameter(commonIndexOf, "$this$commonIndexOf");
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        ?? r9 = j;
        if (!commonIndexOf.closed) {
            while (true) {
                long indexOf = commonIndexOf.bufferField.indexOf(bytes, r9);
                if (indexOf != -1) {
                    return indexOf;
                }
                long size = commonIndexOf.bufferField.size();
                if (commonIndexOf.source.read(commonIndexOf.bufferField, 8192) == -1) {
                    return -1L;
                }
                r9 = Math.max((long) r9, (size - bytes.size()) + 1);
            }
        } else {
            throw new IllegalStateException("closed".toString());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [okio.Buffer] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    public static final long commonIndexOfElement(RealBufferedSource commonIndexOfElement, ByteString targetBytes, long j) {
        Intrinsics.checkNotNullParameter(commonIndexOfElement, "$this$commonIndexOfElement");
        Intrinsics.checkNotNullParameter(targetBytes, "targetBytes");
        ?? r7 = j;
        if (!commonIndexOfElement.closed) {
            while (true) {
                long indexOfElement = commonIndexOfElement.bufferField.indexOfElement(targetBytes, r7);
                if (indexOfElement != -1) {
                    return indexOfElement;
                }
                long size = commonIndexOfElement.bufferField.size();
                if (commonIndexOfElement.source.read(commonIndexOfElement.bufferField, 8192) == -1) {
                    return -1L;
                }
                r7 = Math.max((long) r7, size);
            }
        } else {
            throw new IllegalStateException("closed".toString());
        }
    }

    public static final BufferedSource commonPeek(RealBufferedSource commonPeek) {
        Intrinsics.checkNotNullParameter(commonPeek, "$this$commonPeek");
        return Okio.buffer(new PeekSource(commonPeek));
    }

    public static final boolean commonRangeEquals(RealBufferedSource commonRangeEquals, long j, ByteString bytes, int i, int i2) {
        Intrinsics.checkNotNullParameter(commonRangeEquals, "$this$commonRangeEquals");
        Intrinsics.checkNotNullParameter(bytes, "bytes");
        if (!commonRangeEquals.closed) {
            if (j < 0 || i < 0 || i2 < 0 || bytes.size() - i < i2) {
                return false;
            }
            for (int i3 = 0; i3 < i2; i3++) {
                long j2 = i3 + j;
                if (!commonRangeEquals.request(1 + j2) || commonRangeEquals.bufferField.getByte(j2) != bytes.getByte(i + i3)) {
                    return false;
                }
            }
            return true;
        }
        throw new IllegalStateException("closed".toString());
    }

    public static final int commonRead(RealBufferedSource commonRead, byte[] sink, int i, int i2) {
        Intrinsics.checkNotNullParameter(commonRead, "$this$commonRead");
        Intrinsics.checkNotNullParameter(sink, "sink");
        long j = i2;
        _Util.checkOffsetAndCount(sink.length, i, j);
        if (commonRead.bufferField.size() == 0 && commonRead.source.read(commonRead.bufferField, 8192) == -1) {
            return -1;
        }
        return commonRead.bufferField.read(sink, i, (int) Math.min(j, commonRead.bufferField.size()));
    }

    public static final long commonRead(RealBufferedSource commonRead, Buffer sink, long j) {
        Intrinsics.checkNotNullParameter(commonRead, "$this$commonRead");
        Intrinsics.checkNotNullParameter(sink, "sink");
        if (!(j >= 0)) {
            throw new IllegalArgumentException(("byteCount < 0: " + j).toString());
        } else if (!(true ^ commonRead.closed)) {
            throw new IllegalStateException("closed".toString());
        } else {
            if (commonRead.bufferField.size() == 0 && commonRead.source.read(commonRead.bufferField, 8192) == -1) {
                return -1L;
            }
            return commonRead.bufferField.read(sink, Math.min(j, commonRead.bufferField.size()));
        }
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    public static final long commonReadAll(RealBufferedSource commonReadAll, Sink sink) {
        Intrinsics.checkNotNullParameter(commonReadAll, "$this$commonReadAll");
        Intrinsics.checkNotNullParameter(sink, "sink");
        char c = 0;
        while (commonReadAll.source.read(commonReadAll.bufferField, 8192) != -1) {
            long completeSegmentByteCount = commonReadAll.bufferField.completeSegmentByteCount();
            if (completeSegmentByteCount > 0) {
                c += completeSegmentByteCount;
                sink.write(commonReadAll.bufferField, completeSegmentByteCount);
            }
        }
        char c2 = c;
        if (commonReadAll.bufferField.size() > 0) {
            c2 = c + commonReadAll.bufferField.size();
            sink.write(commonReadAll.bufferField, commonReadAll.bufferField.size());
        }
        return c2;
    }

    public static final byte commonReadByte(RealBufferedSource commonReadByte) {
        Intrinsics.checkNotNullParameter(commonReadByte, "$this$commonReadByte");
        commonReadByte.require(1L);
        return commonReadByte.bufferField.readByte();
    }

    public static final byte[] commonReadByteArray(RealBufferedSource commonReadByteArray) {
        Intrinsics.checkNotNullParameter(commonReadByteArray, "$this$commonReadByteArray");
        commonReadByteArray.bufferField.writeAll(commonReadByteArray.source);
        return commonReadByteArray.bufferField.readByteArray();
    }

    public static final byte[] commonReadByteArray(RealBufferedSource commonReadByteArray, long j) {
        Intrinsics.checkNotNullParameter(commonReadByteArray, "$this$commonReadByteArray");
        commonReadByteArray.require(j);
        return commonReadByteArray.bufferField.readByteArray(j);
    }

    public static final ByteString commonReadByteString(RealBufferedSource commonReadByteString) {
        Intrinsics.checkNotNullParameter(commonReadByteString, "$this$commonReadByteString");
        commonReadByteString.bufferField.writeAll(commonReadByteString.source);
        return commonReadByteString.bufferField.readByteString();
    }

    public static final ByteString commonReadByteString(RealBufferedSource commonReadByteString, long j) {
        Intrinsics.checkNotNullParameter(commonReadByteString, "$this$commonReadByteString");
        commonReadByteString.require(j);
        return commonReadByteString.bufferField.readByteString(j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r5v0, types: [okio.RealBufferedSource, java.lang.Object] */
    public static final long commonReadDecimalLong(RealBufferedSource commonReadDecimalLong) {
        byte b;
        int i;
        Intrinsics.checkNotNullParameter(commonReadDecimalLong, "$this$commonReadDecimalLong");
        commonReadDecimalLong.require(1L);
        ?? r0 = 0;
        while (true) {
            char c = r0;
            ?? r02 = c + 1;
            if (!commonReadDecimalLong.request(r02)) {
                break;
            }
            b = commonReadDecimalLong.bufferField.getByte(c);
            if ((b < ((byte) 48) || b > ((byte) 57)) && !(c == 0 && b == ((byte) 45))) {
                break;
            }
            r0 = r02;
        }
        if (i == 0) {
            StringBuilder sb = new StringBuilder();
            sb.append("Expected leading [0-9] or '-' character but was 0x");
            String num = Integer.toString(b, CharsKt.checkRadix(CharsKt.checkRadix(16)));
            Intrinsics.checkNotNullExpressionValue(num, "java.lang.Integer.toStri…(this, checkRadix(radix))");
            sb.append(num);
            throw new NumberFormatException(sb.toString());
        }
        return commonReadDecimalLong.bufferField.readDecimalLong();
    }

    public static final void commonReadFully(RealBufferedSource commonReadFully, Buffer sink, long j) {
        Intrinsics.checkNotNullParameter(commonReadFully, "$this$commonReadFully");
        Intrinsics.checkNotNullParameter(sink, "sink");
        try {
            commonReadFully.require(j);
            commonReadFully.bufferField.readFully(sink, j);
        } catch (EOFException e) {
            sink.writeAll(commonReadFully.bufferField);
            throw e;
        }
    }

    public static final void commonReadFully(RealBufferedSource commonReadFully, byte[] sink) {
        Intrinsics.checkNotNullParameter(commonReadFully, "$this$commonReadFully");
        Intrinsics.checkNotNullParameter(sink, "sink");
        try {
            commonReadFully.require(sink.length);
            commonReadFully.bufferField.readFully(sink);
        } catch (EOFException e) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (commonReadFully.bufferField.size() <= 0) {
                    throw e;
                }
                int read = commonReadFully.bufferField.read(sink, i2, (int) commonReadFully.bufferField.size());
                if (read == -1) {
                    throw new AssertionError();
                }
                i = i2 + read;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0058, code lost:
        if (r5 == 0) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x005e, code lost:
        r0 = new java.lang.StringBuilder();
        r0.append("Expected leading [0-9a-fA-F] character but was 0x");
        r0 = java.lang.Integer.toString(r0, kotlin.text.CharsKt.checkRadix(kotlin.text.CharsKt.checkRadix(16)));
        kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, "java.lang.Integer.toStri…(this, checkRadix(radix))");
        r0.append(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x009a, code lost:
        throw new java.lang.NumberFormatException(r0.toString());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final long commonReadHexadecimalUnsignedLong(okio.RealBufferedSource r4) {
        /*
            r0 = r4
            java.lang.String r1 = "$this$commonReadHexadecimalUnsignedLong"
            kotlin.jvm.internal.Intrinsics.checkNotNullParameter(r0, r1)
            r0 = r4
            r1 = 1
            r0.require(r1)
            r0 = 0
            r5 = r0
        Le:
            r0 = r5
            r1 = 1
            int r0 = r0 + r1
            r6 = r0
            r0 = r4
            r1 = r6
            long r1 = (long) r1
            boolean r0 = r0.request(r1)
            if (r0 == 0) goto L9b
            r0 = r4
            okio.Buffer r0 = r0.bufferField
            r1 = r5
            long r1 = (long) r1
            byte r0 = r0.getByte(r1)
            r7 = r0
            r0 = r7
            r1 = 48
            byte r1 = (byte) r1
            if (r0 < r1) goto L33
            r0 = r7
            r1 = 57
            byte r1 = (byte) r1
            if (r0 <= r1) goto L52
        L33:
            r0 = r7
            r1 = 97
            byte r1 = (byte) r1
            if (r0 < r1) goto L41
            r0 = r7
            r1 = 102(0x66, float:1.43E-43)
            byte r1 = (byte) r1
            if (r0 <= r1) goto L52
        L41:
            r0 = r7
            r1 = 65
            byte r1 = (byte) r1
            if (r0 < r1) goto L57
            r0 = r7
            r1 = 70
            byte r1 = (byte) r1
            if (r0 <= r1) goto L52
            goto L57
        L52:
            r0 = r6
            r5 = r0
            goto Le
        L57:
            r0 = r5
            if (r0 == 0) goto L5e
            goto L9b
        L5e:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r8
            java.lang.String r1 = "Expected leading [0-9a-fA-F] character but was 0x"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = 16
            int r1 = kotlin.text.CharsKt.checkRadix(r1)
            int r1 = kotlin.text.CharsKt.checkRadix(r1)
            java.lang.String r0 = java.lang.Integer.toString(r0, r1)
            r4 = r0
            r0 = r4
            java.lang.String r1 = "java.lang.Integer.toStri…(this, checkRadix(radix))"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
            r0 = r8
            r1 = r4
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            r1 = r0
            r2 = r8
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            java.lang.Throwable r0 = (java.lang.Throwable) r0
            throw r0
        L9b:
            r0 = r4
            okio.Buffer r0 = r0.bufferField
            long r0 = r0.readHexadecimalUnsignedLong()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.internal.RealBufferedSourceKt.commonReadHexadecimalUnsignedLong(okio.RealBufferedSource):long");
    }

    public static final int commonReadInt(RealBufferedSource commonReadInt) {
        Intrinsics.checkNotNullParameter(commonReadInt, "$this$commonReadInt");
        commonReadInt.require(4L);
        return commonReadInt.bufferField.readInt();
    }

    public static final int commonReadIntLe(RealBufferedSource commonReadIntLe) {
        Intrinsics.checkNotNullParameter(commonReadIntLe, "$this$commonReadIntLe");
        commonReadIntLe.require(4L);
        return commonReadIntLe.bufferField.readIntLe();
    }

    public static final long commonReadLong(RealBufferedSource commonReadLong) {
        Intrinsics.checkNotNullParameter(commonReadLong, "$this$commonReadLong");
        commonReadLong.require(8L);
        return commonReadLong.bufferField.readLong();
    }

    public static final long commonReadLongLe(RealBufferedSource commonReadLongLe) {
        Intrinsics.checkNotNullParameter(commonReadLongLe, "$this$commonReadLongLe");
        commonReadLongLe.require(8L);
        return commonReadLongLe.bufferField.readLongLe();
    }

    public static final short commonReadShort(RealBufferedSource commonReadShort) {
        Intrinsics.checkNotNullParameter(commonReadShort, "$this$commonReadShort");
        commonReadShort.require(2L);
        return commonReadShort.bufferField.readShort();
    }

    public static final short commonReadShortLe(RealBufferedSource commonReadShortLe) {
        Intrinsics.checkNotNullParameter(commonReadShortLe, "$this$commonReadShortLe");
        commonReadShortLe.require(2L);
        return commonReadShortLe.bufferField.readShortLe();
    }

    public static final String commonReadUtf8(RealBufferedSource commonReadUtf8) {
        Intrinsics.checkNotNullParameter(commonReadUtf8, "$this$commonReadUtf8");
        commonReadUtf8.bufferField.writeAll(commonReadUtf8.source);
        return commonReadUtf8.bufferField.readUtf8();
    }

    public static final String commonReadUtf8(RealBufferedSource commonReadUtf8, long j) {
        Intrinsics.checkNotNullParameter(commonReadUtf8, "$this$commonReadUtf8");
        commonReadUtf8.require(j);
        return commonReadUtf8.bufferField.readUtf8(j);
    }

    public static final int commonReadUtf8CodePoint(RealBufferedSource commonReadUtf8CodePoint) {
        Intrinsics.checkNotNullParameter(commonReadUtf8CodePoint, "$this$commonReadUtf8CodePoint");
        commonReadUtf8CodePoint.require(1L);
        byte b = commonReadUtf8CodePoint.bufferField.getByte(0L);
        if ((b & 224) == 192) {
            commonReadUtf8CodePoint.require(2L);
        } else if ((b & 240) == 224) {
            commonReadUtf8CodePoint.require(3L);
        } else if ((b & 248) == 240) {
            commonReadUtf8CodePoint.require(4L);
        }
        return commonReadUtf8CodePoint.bufferField.readUtf8CodePoint();
    }

    public static final String commonReadUtf8Line(RealBufferedSource commonReadUtf8Line) {
        Intrinsics.checkNotNullParameter(commonReadUtf8Line, "$this$commonReadUtf8Line");
        long indexOf = commonReadUtf8Line.indexOf((byte) 10);
        return indexOf == -1 ? commonReadUtf8Line.bufferField.size() != 0 ? commonReadUtf8Line.readUtf8(commonReadUtf8Line.bufferField.size()) : null : BufferKt.readUtf8Line(commonReadUtf8Line.bufferField, indexOf);
    }

    /* JADX WARN: Type inference failed for: r0v59, types: [long] */
    public static final String commonReadUtf8LineStrict(RealBufferedSource commonReadUtf8LineStrict, long j) {
        Intrinsics.checkNotNullParameter(commonReadUtf8LineStrict, "$this$commonReadUtf8LineStrict");
        if (!(j >= 0)) {
            throw new IllegalArgumentException(("limit < 0: " + j).toString());
        }
        char c = j == LongCompanionObject.MAX_VALUE ? (char) 65535 : j + 1;
        byte b = (byte) 10;
        long indexOf = commonReadUtf8LineStrict.indexOf(b, 0L, c);
        if (indexOf != -1) {
            return BufferKt.readUtf8Line(commonReadUtf8LineStrict.bufferField, indexOf);
        }
        if (c < LongCompanionObject.MAX_VALUE && commonReadUtf8LineStrict.request(c) && commonReadUtf8LineStrict.bufferField.getByte(c - 1) == ((byte) 13) && commonReadUtf8LineStrict.request(1 + c) && commonReadUtf8LineStrict.bufferField.getByte(c) == b) {
            return BufferKt.readUtf8Line(commonReadUtf8LineStrict.bufferField, c);
        }
        Buffer buffer = new Buffer();
        commonReadUtf8LineStrict.bufferField.copyTo(buffer, 0L, Math.min(32, commonReadUtf8LineStrict.bufferField.size()));
        throw new EOFException("\\n not found: limit=" + Math.min(commonReadUtf8LineStrict.bufferField.size(), j) + " content=" + buffer.readByteString().hex() + "…");
    }

    public static final boolean commonRequest(RealBufferedSource commonRequest, long j) {
        Intrinsics.checkNotNullParameter(commonRequest, "$this$commonRequest");
        if (!(j >= 0)) {
            throw new IllegalArgumentException(("byteCount < 0: " + j).toString());
        } else if (!(!commonRequest.closed)) {
            throw new IllegalStateException("closed".toString());
        } else {
            while (commonRequest.bufferField.size() < j) {
                if (commonRequest.source.read(commonRequest.bufferField, 8192) == -1) {
                    return false;
                }
            }
            return true;
        }
    }

    public static final void commonRequire(RealBufferedSource commonRequire, long j) {
        Intrinsics.checkNotNullParameter(commonRequire, "$this$commonRequire");
        if (commonRequire.request(j)) {
            return;
        }
        throw new EOFException();
    }

    public static final int commonSelect(RealBufferedSource commonSelect, Options options) {
        Intrinsics.checkNotNullParameter(commonSelect, "$this$commonSelect");
        Intrinsics.checkNotNullParameter(options, "options");
        if (!commonSelect.closed) {
            do {
                int selectPrefix = BufferKt.selectPrefix(commonSelect.bufferField, options, true);
                if (selectPrefix != -2) {
                    if (selectPrefix == -1) {
                        return -1;
                    }
                    commonSelect.bufferField.skip(options.getByteStrings$okio()[selectPrefix].size());
                    return selectPrefix;
                }
            } while (commonSelect.source.read(commonSelect.bufferField, 8192) != -1);
            return -1;
        }
        throw new IllegalStateException("closed".toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v17, types: [long] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    public static final void commonSkip(RealBufferedSource commonSkip, long j) {
        Intrinsics.checkNotNullParameter(commonSkip, "$this$commonSkip");
        ?? r6 = j;
        if (!commonSkip.closed) {
            while (r6 > 0) {
                if (commonSkip.bufferField.size() == 0 && commonSkip.source.read(commonSkip.bufferField, 8192) == -1) {
                    throw new EOFException();
                }
                long min = Math.min((long) r6, commonSkip.bufferField.size());
                commonSkip.bufferField.skip(min);
                r6 -= min;
            }
            return;
        }
        throw new IllegalStateException("closed".toString());
    }

    public static final Timeout commonTimeout(RealBufferedSource commonTimeout) {
        Intrinsics.checkNotNullParameter(commonTimeout, "$this$commonTimeout");
        return commonTimeout.source.timeout();
    }

    public static final String commonToString(RealBufferedSource commonToString) {
        Intrinsics.checkNotNullParameter(commonToString, "$this$commonToString");
        return "buffer(" + commonToString.source + ')';
    }
}
