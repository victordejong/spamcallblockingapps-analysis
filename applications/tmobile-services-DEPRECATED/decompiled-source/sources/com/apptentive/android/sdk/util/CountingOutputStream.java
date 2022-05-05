package com.apptentive.android.sdk.util;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes-dex2jar.jar:com/apptentive/android/sdk/util/CountingOutputStream.class */
public class CountingOutputStream extends BufferedOutputStream {
    private int bytesWritten = 0;

    public CountingOutputStream(OutputStream outputStream) {
        super(outputStream);
    }

    public int getBytesWritten() {
        return this.bytesWritten;
    }

    @Override // java.io.BufferedOutputStream, java.io.FilterOutputStream, java.io.OutputStream
    public void write(int i) throws IOException {
        this.bytesWritten++;
        super.write(i);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        this.bytesWritten += bArr.length;
        super.write(bArr);
    }

    @Override // java.io.BufferedOutputStream, java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.bytesWritten += i2;
        super.write(bArr, i, i2);
    }
}
