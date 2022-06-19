package okio.internal;

import java.io.EOFException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import okio.Buffer;
import okio.BufferedSink;
import okio.ByteString;
import okio.RealBufferedSink;
import okio.Source;
import okio.Timeout;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��D\n��\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0012\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0015\u001a\r\u0010��\u001a\u00020\u0001*\u00020\u0002H\u0080\b\u001a\r\u0010\u0003\u001a\u00020\u0004*\u00020\u0002H\u0080\b\u001a\r\u0010\u0005\u001a\u00020\u0004*\u00020\u0002H\u0080\b\u001a\r\u0010\u0006\u001a\u00020\u0001*\u00020\u0002H\u0080\b\u001a\r\u0010\u0007\u001a\u00020\b*\u00020\u0002H\u0080\b\u001a\r\u0010\t\u001a\u00020\n*\u00020\u0002H\u0080\b\u001a\u0015\u0010\u000b\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\f\u001a\u00020\rH\u0080\b\u001a%\u0010\u000b\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0080\b\u001a\u001d\u0010\u000b\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\f\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u0012H\u0080\b\u001a\u0015\u0010\u000b\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0014H\u0080\b\u001a%\u0010\u000b\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0080\b\u001a\u001d\u0010\u000b\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\f\u001a\u00020\u00152\u0006\u0010\u0010\u001a\u00020\u0012H\u0080\b\u001a\u0015\u0010\u0016\u001a\u00020\u0012*\u00020\u00022\u0006\u0010\f\u001a\u00020\u0015H\u0080\b\u001a\u0015\u0010\u0017\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u0018\u001a\u00020\u000fH\u0080\b\u001a\u0015\u0010\u0019\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0012H\u0080\b\u001a\u0015\u0010\u001b\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0012H\u0080\b\u001a\u0015\u0010\u001c\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u000fH\u0080\b\u001a\u0015\u0010\u001e\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u001d\u001a\u00020\u000fH\u0080\b\u001a\u0015\u0010\u001f\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0012H\u0080\b\u001a\u0015\u0010 \u001a\u00020\u0004*\u00020\u00022\u0006\u0010\u001a\u001a\u00020\u0012H\u0080\b\u001a\u0015\u0010!\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\"\u001a\u00020\u000fH\u0080\b\u001a\u0015\u0010#\u001a\u00020\u0004*\u00020\u00022\u0006\u0010\"\u001a\u00020\u000fH\u0080\b\u001a\u0015\u0010$\u001a\u00020\u0004*\u00020\u00022\u0006\u0010%\u001a\u00020\nH\u0080\b\u001a%\u0010$\u001a\u00020\u0004*\u00020\u00022\u0006\u0010%\u001a\u00020\n2\u0006\u0010&\u001a\u00020\u000f2\u0006\u0010'\u001a\u00020\u000fH\u0080\b\u001a\u0015\u0010(\u001a\u00020\u0004*\u00020\u00022\u0006\u0010)\u001a\u00020\u000fH\u0080\b¨\u0006*"}, m400d2 = {"commonClose", "", "Lokio/RealBufferedSink;", "commonEmit", "Lokio/BufferedSink;", "commonEmitCompleteSegments", "commonFlush", "commonTimeout", "Lokio/Timeout;", "commonToString", "", "commonWrite", "source", "", "offset", "", "byteCount", "Lokio/Buffer;", "", "byteString", "Lokio/ByteString;", "Lokio/Source;", "commonWriteAll", "commonWriteByte", "b", "commonWriteDecimalLong", "v", "commonWriteHexadecimalUnsignedLong", "commonWriteInt", "i", "commonWriteIntLe", "commonWriteLong", "commonWriteLongLe", "commonWriteShort", "s", "commonWriteShortLe", "commonWriteUtf8", "string", "beginIndex", "endIndex", "commonWriteUtf8CodePoint", "codePoint", "okio"}, m399k = 2, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:okio/internal/RealBufferedSinkKt.class */
public final class RealBufferedSinkKt {
    public static final void commonClose(RealBufferedSink commonClose) {
        Throwable th;
        Intrinsics.checkNotNullParameter(commonClose, "$this$commonClose");
        if (commonClose.closed) {
            return;
        }
        Throwable th2 = null;
        Throwable th3 = th2;
        try {
            if (commonClose.bufferField.size() > 0) {
                commonClose.sink.write(commonClose.bufferField, commonClose.bufferField.size());
                th3 = th2;
            }
        } catch (Throwable th4) {
            th3 = th4;
        }
        try {
            commonClose.sink.close();
            th = th3;
        } catch (Throwable th5) {
            th = th3;
            if (th3 == null) {
                th = th5;
            }
        }
        commonClose.closed = true;
        if (th != null) {
            throw th;
        }
    }

    public static final BufferedSink commonEmit(RealBufferedSink commonEmit) {
        Intrinsics.checkNotNullParameter(commonEmit, "$this$commonEmit");
        if (!commonEmit.closed) {
            long size = commonEmit.bufferField.size();
            if (size > 0) {
                commonEmit.sink.write(commonEmit.bufferField, size);
            }
            return commonEmit;
        }
        throw new IllegalStateException("closed".toString());
    }

    public static final BufferedSink commonEmitCompleteSegments(RealBufferedSink commonEmitCompleteSegments) {
        Intrinsics.checkNotNullParameter(commonEmitCompleteSegments, "$this$commonEmitCompleteSegments");
        if (!commonEmitCompleteSegments.closed) {
            long completeSegmentByteCount = commonEmitCompleteSegments.bufferField.completeSegmentByteCount();
            if (completeSegmentByteCount > 0) {
                commonEmitCompleteSegments.sink.write(commonEmitCompleteSegments.bufferField, completeSegmentByteCount);
            }
            return commonEmitCompleteSegments;
        }
        throw new IllegalStateException("closed".toString());
    }

    public static final void commonFlush(RealBufferedSink commonFlush) {
        Intrinsics.checkNotNullParameter(commonFlush, "$this$commonFlush");
        if (!commonFlush.closed) {
            if (commonFlush.bufferField.size() > 0) {
                commonFlush.sink.write(commonFlush.bufferField, commonFlush.bufferField.size());
            }
            commonFlush.sink.flush();
            return;
        }
        throw new IllegalStateException("closed".toString());
    }

    public static final Timeout commonTimeout(RealBufferedSink commonTimeout) {
        Intrinsics.checkNotNullParameter(commonTimeout, "$this$commonTimeout");
        return commonTimeout.sink.timeout();
    }

    public static final String commonToString(RealBufferedSink commonToString) {
        Intrinsics.checkNotNullParameter(commonToString, "$this$commonToString");
        return "buffer(" + commonToString.sink + ')';
    }

    public static final BufferedSink commonWrite(RealBufferedSink commonWrite, ByteString byteString) {
        Intrinsics.checkNotNullParameter(commonWrite, "$this$commonWrite");
        Intrinsics.checkNotNullParameter(byteString, "byteString");
        if (!commonWrite.closed) {
            commonWrite.bufferField.write(byteString);
            return commonWrite.emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    public static final BufferedSink commonWrite(RealBufferedSink commonWrite, ByteString byteString, int i, int i2) {
        Intrinsics.checkNotNullParameter(commonWrite, "$this$commonWrite");
        Intrinsics.checkNotNullParameter(byteString, "byteString");
        if (!commonWrite.closed) {
            commonWrite.bufferField.write(byteString, i, i2);
            return commonWrite.emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r6v0, types: [okio.Source, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    public static final BufferedSink commonWrite(RealBufferedSink commonWrite, Source source, long j) {
        Intrinsics.checkNotNullParameter(commonWrite, "$this$commonWrite");
        Intrinsics.checkNotNullParameter(source, "source");
        ?? r7 = j;
        while (r7 > 0) {
            long read = source.read(commonWrite.bufferField, r7);
            if (read == -1) {
                throw new EOFException();
            }
            r7 -= read;
            commonWrite.emitCompleteSegments();
        }
        return commonWrite;
    }

    public static final BufferedSink commonWrite(RealBufferedSink commonWrite, byte[] source) {
        Intrinsics.checkNotNullParameter(commonWrite, "$this$commonWrite");
        Intrinsics.checkNotNullParameter(source, "source");
        if (!commonWrite.closed) {
            commonWrite.bufferField.write(source);
            return commonWrite.emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    public static final BufferedSink commonWrite(RealBufferedSink commonWrite, byte[] source, int i, int i2) {
        Intrinsics.checkNotNullParameter(commonWrite, "$this$commonWrite");
        Intrinsics.checkNotNullParameter(source, "source");
        if (!commonWrite.closed) {
            commonWrite.bufferField.write(source, i, i2);
            return commonWrite.emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    public static final void commonWrite(RealBufferedSink commonWrite, Buffer source, long j) {
        Intrinsics.checkNotNullParameter(commonWrite, "$this$commonWrite");
        Intrinsics.checkNotNullParameter(source, "source");
        if (!commonWrite.closed) {
            commonWrite.bufferField.write(source, j);
            commonWrite.emitCompleteSegments();
            return;
        }
        throw new IllegalStateException("closed".toString());
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    public static final long commonWriteAll(RealBufferedSink commonWriteAll, Source source) {
        Intrinsics.checkNotNullParameter(commonWriteAll, "$this$commonWriteAll");
        Intrinsics.checkNotNullParameter(source, "source");
        char c = 0;
        while (true) {
            long read = source.read(commonWriteAll.bufferField, 8192);
            if (read == -1) {
                return c;
            }
            c += read;
            commonWriteAll.emitCompleteSegments();
        }
    }

    public static final BufferedSink commonWriteByte(RealBufferedSink commonWriteByte, int i) {
        Intrinsics.checkNotNullParameter(commonWriteByte, "$this$commonWriteByte");
        if (!commonWriteByte.closed) {
            commonWriteByte.bufferField.writeByte(i);
            return commonWriteByte.emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    public static final BufferedSink commonWriteDecimalLong(RealBufferedSink commonWriteDecimalLong, long j) {
        Intrinsics.checkNotNullParameter(commonWriteDecimalLong, "$this$commonWriteDecimalLong");
        if (!commonWriteDecimalLong.closed) {
            commonWriteDecimalLong.bufferField.writeDecimalLong(j);
            return commonWriteDecimalLong.emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    public static final BufferedSink commonWriteHexadecimalUnsignedLong(RealBufferedSink commonWriteHexadecimalUnsignedLong, long j) {
        Intrinsics.checkNotNullParameter(commonWriteHexadecimalUnsignedLong, "$this$commonWriteHexadecimalUnsignedLong");
        if (!commonWriteHexadecimalUnsignedLong.closed) {
            commonWriteHexadecimalUnsignedLong.bufferField.writeHexadecimalUnsignedLong(j);
            return commonWriteHexadecimalUnsignedLong.emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    public static final BufferedSink commonWriteInt(RealBufferedSink commonWriteInt, int i) {
        Intrinsics.checkNotNullParameter(commonWriteInt, "$this$commonWriteInt");
        if (!commonWriteInt.closed) {
            commonWriteInt.bufferField.writeInt(i);
            return commonWriteInt.emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    public static final BufferedSink commonWriteIntLe(RealBufferedSink commonWriteIntLe, int i) {
        Intrinsics.checkNotNullParameter(commonWriteIntLe, "$this$commonWriteIntLe");
        if (!commonWriteIntLe.closed) {
            commonWriteIntLe.bufferField.writeIntLe(i);
            return commonWriteIntLe.emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    public static final BufferedSink commonWriteLong(RealBufferedSink commonWriteLong, long j) {
        Intrinsics.checkNotNullParameter(commonWriteLong, "$this$commonWriteLong");
        if (!commonWriteLong.closed) {
            commonWriteLong.bufferField.writeLong(j);
            return commonWriteLong.emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    public static final BufferedSink commonWriteLongLe(RealBufferedSink commonWriteLongLe, long j) {
        Intrinsics.checkNotNullParameter(commonWriteLongLe, "$this$commonWriteLongLe");
        if (!commonWriteLongLe.closed) {
            commonWriteLongLe.bufferField.writeLongLe(j);
            return commonWriteLongLe.emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    public static final BufferedSink commonWriteShort(RealBufferedSink commonWriteShort, int i) {
        Intrinsics.checkNotNullParameter(commonWriteShort, "$this$commonWriteShort");
        if (!commonWriteShort.closed) {
            commonWriteShort.bufferField.writeShort(i);
            return commonWriteShort.emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    public static final BufferedSink commonWriteShortLe(RealBufferedSink commonWriteShortLe, int i) {
        Intrinsics.checkNotNullParameter(commonWriteShortLe, "$this$commonWriteShortLe");
        if (!commonWriteShortLe.closed) {
            commonWriteShortLe.bufferField.writeShortLe(i);
            return commonWriteShortLe.emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    public static final BufferedSink commonWriteUtf8(RealBufferedSink commonWriteUtf8, String string) {
        Intrinsics.checkNotNullParameter(commonWriteUtf8, "$this$commonWriteUtf8");
        Intrinsics.checkNotNullParameter(string, "string");
        if (!commonWriteUtf8.closed) {
            commonWriteUtf8.bufferField.writeUtf8(string);
            return commonWriteUtf8.emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    public static final BufferedSink commonWriteUtf8(RealBufferedSink commonWriteUtf8, String string, int i, int i2) {
        Intrinsics.checkNotNullParameter(commonWriteUtf8, "$this$commonWriteUtf8");
        Intrinsics.checkNotNullParameter(string, "string");
        if (!commonWriteUtf8.closed) {
            commonWriteUtf8.bufferField.writeUtf8(string, i, i2);
            return commonWriteUtf8.emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }

    public static final BufferedSink commonWriteUtf8CodePoint(RealBufferedSink commonWriteUtf8CodePoint, int i) {
        Intrinsics.checkNotNullParameter(commonWriteUtf8CodePoint, "$this$commonWriteUtf8CodePoint");
        if (!commonWriteUtf8CodePoint.closed) {
            commonWriteUtf8CodePoint.bufferField.writeUtf8CodePoint(i);
            return commonWriteUtf8CodePoint.emitCompleteSegments();
        }
        throw new IllegalStateException("closed".toString());
    }
}
