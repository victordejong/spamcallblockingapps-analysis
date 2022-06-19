package com.google.common.p073io;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayDeque;
import java.util.Objects;
import java.util.Queue;
import p1727n3.p1789g0.C26232y;
/* renamed from: com.google.common.io.ByteStreams */
/* loaded from: classes3-dex2jar.jar:com/google/common/io/ByteStreams.class */
public final class ByteStreams {

    /* renamed from: a */
    public static final /* synthetic */ int f7027a = 0;

    static {
        new OutputStream() { // from class: com.google.common.io.ByteStreams.1
            public String toString() {
                return "ByteStreams.nullOutputStream()";
            }

            @Override // java.io.OutputStream
            public void write(int i) {
            }

            @Override // java.io.OutputStream
            public void write(byte[] bArr) {
                Objects.requireNonNull(bArr);
            }

            @Override // java.io.OutputStream
            public void write(byte[] bArr, int i, int i2) {
                Objects.requireNonNull(bArr);
            }
        };
    }

    public static byte[] combineBuffers(Queue<byte[]> queue, int i) {
        byte[] bArr = new byte[i];
        int i2 = i;
        while (true) {
            int i3 = i2;
            if (i3 > 0) {
                byte[] remove = queue.remove();
                int min = Math.min(i3, remove.length);
                System.arraycopy(remove, 0, bArr, i - i3, min);
                i2 = i3 - min;
            } else {
                return bArr;
            }
        }
    }

    public static byte[] toByteArray(InputStream inputStream) throws IOException {
        byte[] combineBuffers;
        Objects.requireNonNull(inputStream);
        ArrayDeque arrayDeque = new ArrayDeque(20);
        int i = 8192;
        int i2 = 0;
        loop0: while (true) {
            if (i2 < 2147483639) {
                int min = Math.min(i, 2147483639 - i2);
                byte[] bArr = new byte[min];
                arrayDeque.add(bArr);
                int i3 = 0;
                while (i3 < min) {
                    int read = inputStream.read(bArr, i3, min - i3);
                    if (read == -1) {
                        combineBuffers = combineBuffers(arrayDeque, i2);
                        break loop0;
                    }
                    i3 += read;
                    i2 += read;
                }
                i = C26232y.saturatedCast(i * 2);
            } else if (inputStream.read() != -1) {
                throw new OutOfMemoryError("input is too large to fit in a byte array");
            } else {
                combineBuffers = combineBuffers(arrayDeque, 2147483639);
            }
        }
        return combineBuffers;
    }
}
