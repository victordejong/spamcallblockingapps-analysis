package com.explorestack.protobuf;

import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes2-dex2jar.jar:com/explorestack/protobuf/ByteOutput.class */
public abstract class ByteOutput {
    public abstract void write(byte b2) throws IOException;

    public abstract void write(ByteBuffer byteBuffer) throws IOException;

    public abstract void write(byte[] bArr, int i, int i2) throws IOException;

    public abstract void writeLazy(ByteBuffer byteBuffer) throws IOException;

    public abstract void writeLazy(byte[] bArr, int i, int i2) throws IOException;
}
