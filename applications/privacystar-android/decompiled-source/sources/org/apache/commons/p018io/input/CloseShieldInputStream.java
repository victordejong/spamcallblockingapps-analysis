package org.apache.commons.p018io.input;

import java.io.InputStream;
/* renamed from: org.apache.commons.io.input.CloseShieldInputStream */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/input/CloseShieldInputStream.class */
public class CloseShieldInputStream extends ProxyInputStream {
    public CloseShieldInputStream(InputStream inputStream) {
        super(inputStream);
    }

    @Override // org.apache.commons.p018io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.in = new ClosedInputStream();
    }
}
