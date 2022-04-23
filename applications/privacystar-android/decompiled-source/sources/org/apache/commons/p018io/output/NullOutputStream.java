package org.apache.commons.p018io.output;

import java.io.IOException;
import java.io.OutputStream;
/* renamed from: org.apache.commons.io.output.NullOutputStream */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/output/NullOutputStream.class */
public class NullOutputStream extends OutputStream {
    public static final NullOutputStream NULL_OUTPUT_STREAM = new NullOutputStream();

    @Override // java.io.OutputStream
    public void write(int i) {
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
    }
}
