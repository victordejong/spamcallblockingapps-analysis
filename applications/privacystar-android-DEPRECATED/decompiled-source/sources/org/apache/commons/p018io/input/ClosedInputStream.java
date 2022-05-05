package org.apache.commons.p018io.input;

import java.io.InputStream;
/* renamed from: org.apache.commons.io.input.ClosedInputStream */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/input/ClosedInputStream.class */
public class ClosedInputStream extends InputStream {
    public static final ClosedInputStream CLOSED_INPUT_STREAM = new ClosedInputStream();

    @Override // java.io.InputStream
    public int read() {
        return -1;
    }
}
