package org.apache.commons.p018io.output;

import java.io.FilterWriter;
import java.io.IOException;
import java.io.Writer;
/* renamed from: org.apache.commons.io.output.ProxyWriter */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/output/ProxyWriter.class */
public class ProxyWriter extends FilterWriter {
    public ProxyWriter(Writer writer) {
        super(writer);
    }

    protected void afterWrite(int i) throws IOException {
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(char c) throws IOException {
        try {
            beforeWrite(1);
            this.out.append(c);
            afterWrite(1);
        } catch (IOException e) {
            handleIOException(e);
        }
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(CharSequence charSequence) throws IOException {
        int i = 0;
        if (charSequence != null) {
            try {
                i = charSequence.length();
            } catch (IOException e) {
                handleIOException(e);
            }
        }
        beforeWrite(i);
        this.out.append(charSequence);
        afterWrite(i);
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public Writer append(CharSequence charSequence, int i, int i2) throws IOException {
        int i3 = i2 - i;
        try {
            beforeWrite(i3);
            this.out.append(charSequence, i, i2);
            afterWrite(i3);
        } catch (IOException e) {
            handleIOException(e);
        }
        return this;
    }

    protected void beforeWrite(int i) throws IOException {
    }

    @Override // java.io.FilterWriter, java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            this.out.close();
        } catch (IOException e) {
            handleIOException(e);
        }
    }

    @Override // java.io.FilterWriter, java.io.Writer, java.io.Flushable
    public void flush() throws IOException {
        try {
            this.out.flush();
        } catch (IOException e) {
            handleIOException(e);
        }
    }

    protected void handleIOException(IOException iOException) throws IOException {
        throw iOException;
    }

    @Override // java.io.FilterWriter, java.io.Writer
    public void write(int i) throws IOException {
        try {
            beforeWrite(1);
            this.out.write(i);
            afterWrite(1);
        } catch (IOException e) {
            handleIOException(e);
        }
    }

    @Override // java.io.Writer
    public void write(String str) throws IOException {
        int i = 0;
        if (str != null) {
            try {
                i = str.length();
            } catch (IOException e) {
                handleIOException(e);
                return;
            }
        }
        beforeWrite(i);
        this.out.write(str);
        afterWrite(i);
    }

    @Override // java.io.FilterWriter, java.io.Writer
    public void write(String str, int i, int i2) throws IOException {
        try {
            beforeWrite(i2);
            this.out.write(str, i, i2);
            afterWrite(i2);
        } catch (IOException e) {
            handleIOException(e);
        }
    }

    @Override // java.io.Writer
    public void write(char[] cArr) throws IOException {
        int i = 0;
        if (cArr != null) {
            try {
                i = cArr.length;
            } catch (IOException e) {
                handleIOException(e);
                return;
            }
        }
        beforeWrite(i);
        this.out.write(cArr);
        afterWrite(i);
    }

    @Override // java.io.FilterWriter, java.io.Writer
    public void write(char[] cArr, int i, int i2) throws IOException {
        try {
            beforeWrite(i2);
            this.out.write(cArr, i, i2);
            afterWrite(i2);
        } catch (IOException e) {
            handleIOException(e);
        }
    }
}
