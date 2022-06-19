package com.fasterxml.jackson.core.p309io;

import java.io.DataInput;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.io.Serializable;
/* renamed from: com.fasterxml.jackson.core.io.InputDecorator */
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/io/InputDecorator.class */
public abstract class InputDecorator implements Serializable {
    public DataInput decorate(IOContext iOContext, DataInput dataInput) throws IOException {
        throw new UnsupportedOperationException();
    }

    public abstract InputStream decorate(IOContext iOContext, InputStream inputStream) throws IOException;

    public abstract InputStream decorate(IOContext iOContext, byte[] bArr, int i, int i2) throws IOException;

    public abstract Reader decorate(IOContext iOContext, Reader reader) throws IOException;
}
