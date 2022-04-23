package com.explorestack.protobuf;

import com.appsflyer.AppsFlyerProperties;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.ref.SoftReference;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/ByteBufferWriter.class */
final class ByteBufferWriter {
    private static final ThreadLocal<SoftReference<byte[]>> BUFFER = new ThreadLocal<>();
    private static final float BUFFER_REALLOCATION_THRESHOLD = 0.5f;
    private static final long CHANNEL_FIELD_OFFSET;
    private static final Class<?> FILE_OUTPUT_STREAM_CLASS;
    private static final int MAX_CACHED_BUFFER_SIZE = 16384;
    private static final int MIN_CACHED_BUFFER_SIZE = 1024;

    static {
        Class<?> safeGetClass = safeGetClass("java.io.FileOutputStream");
        FILE_OUTPUT_STREAM_CLASS = safeGetClass;
        CHANNEL_FIELD_OFFSET = getChannelFieldOffset(safeGetClass);
    }

    private ByteBufferWriter() {
    }

    static void clearCachedBuffer() {
        BUFFER.set(null);
    }

    private static byte[] getBuffer() {
        SoftReference<byte[]> softReference = BUFFER.get();
        if (softReference == null) {
            return null;
        }
        return softReference.get();
    }

    private static long getChannelFieldOffset(Class<?> cls) {
        if (cls == null) {
            return -1L;
        }
        try {
            if (UnsafeUtil.hasUnsafeArrayOperations()) {
                return UnsafeUtil.objectFieldOffset(cls.getDeclaredField(AppsFlyerProperties.CHANNEL));
            }
            return -1L;
        } catch (Throwable th) {
            return -1L;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0018, code lost:
        if (needToReallocate(r0, r0.length) != false) goto L_0x001b;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static byte[] getOrCreateBuffer(int r3) {
        /*
            r0 = r3
            r1 = 1024(0x400, float:1.435E-42)
            int r0 = java.lang.Math.max(r0, r1)
            r3 = r0
            byte[] r0 = getBuffer()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x001b
            r0 = r4
            r5 = r0
            r0 = r3
            r1 = r4
            int r1 = r1.length
            boolean r0 = needToReallocate(r0, r1)
            if (r0 == 0) goto L_0x002e
        L_0x001b:
            r0 = r3
            byte[] r0 = new byte[r0]
            r4 = r0
            r0 = r4
            r5 = r0
            r0 = r3
            r1 = 16384(0x4000, float:2.2959E-41)
            if (r0 > r1) goto L_0x002e
            r0 = r4
            setBuffer(r0)
            r0 = r4
            r5 = r0
        L_0x002e:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.explorestack.protobuf.ByteBufferWriter.getOrCreateBuffer(int):byte[]");
    }

    private static boolean needToReallocate(int i, int i2) {
        return i2 < i && ((float) i2) < ((float) i) * BUFFER_REALLOCATION_THRESHOLD;
    }

    private static Class<?> safeGetClass(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            return null;
        }
    }

    private static void setBuffer(byte[] bArr) {
        BUFFER.set(new SoftReference<>(bArr));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void write(ByteBuffer byteBuffer, OutputStream outputStream) throws IOException {
        int position = byteBuffer.position();
        try {
            if (byteBuffer.hasArray()) {
                outputStream.write(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
            } else if (!writeToChannel(byteBuffer, outputStream)) {
                byte[] orCreateBuffer = getOrCreateBuffer(byteBuffer.remaining());
                while (byteBuffer.hasRemaining()) {
                    int min = Math.min(byteBuffer.remaining(), orCreateBuffer.length);
                    byteBuffer.get(orCreateBuffer, 0, min);
                    outputStream.write(orCreateBuffer, 0, min);
                }
            }
        } finally {
            byteBuffer.position(position);
        }
    }

    private static boolean writeToChannel(ByteBuffer byteBuffer, OutputStream outputStream) throws IOException {
        long j = CHANNEL_FIELD_OFFSET;
        if (j < 0 || !FILE_OUTPUT_STREAM_CLASS.isInstance(outputStream)) {
            return false;
        }
        WritableByteChannel writableByteChannel = null;
        try {
            writableByteChannel = (WritableByteChannel) UnsafeUtil.getObject(outputStream, j);
        } catch (ClassCastException e) {
        }
        if (writableByteChannel == null) {
            return false;
        }
        writableByteChannel.write(byteBuffer);
        return true;
    }
}
