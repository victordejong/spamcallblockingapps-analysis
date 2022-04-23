package com.google.common.io;

import com.google.common.base.m;
import io.objectbox.model.PropertyFlags;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes4-dex2jar.jar:com/google/common/io/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final OutputStream f32158a = new OutputStream() { // from class: com.google.common.io.a.1
        public final String toString() {
            return "ByteStreams.nullOutputStream()";
        }

        @Override // java.io.OutputStream
        public final void write(int i) {
        }

        @Override // java.io.OutputStream
        public final void write(byte[] bArr) {
            m.a(bArr);
        }

        @Override // java.io.OutputStream
        public final void write(byte[] bArr, int i, int i2) {
            m.a(bArr);
        }
    };

    private a() {
    }

    public static long a(InputStream inputStream) throws IOException {
        byte[] bArr = new byte[PropertyFlags.UNSIGNED];
        long j = 0;
        while (true) {
            long read = inputStream.read(bArr);
            if (read == -1) {
                return j;
            }
            j += read;
        }
    }
}
