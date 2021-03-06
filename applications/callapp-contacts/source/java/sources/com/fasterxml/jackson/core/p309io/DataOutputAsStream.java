package com.fasterxml.jackson.core.p309io;

import java.io.DataOutput;
import java.io.IOException;
import java.io.OutputStream;
/* renamed from: com.fasterxml.jackson.core.io.DataOutputAsStream */
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/io/DataOutputAsStream.class */
public class DataOutputAsStream extends OutputStream {
    protected final DataOutput _output;

    public DataOutputAsStream(DataOutput dataOutput) {
        this._output = dataOutput;
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        this._output.write(i);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        this._output.write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this._output.write(bArr, i, i2);
    }
}
