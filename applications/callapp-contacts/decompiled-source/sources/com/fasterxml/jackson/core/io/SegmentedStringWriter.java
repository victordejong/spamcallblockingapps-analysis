package com.fasterxml.jackson.core.io;

import com.fasterxml.jackson.core.util.BufferRecycler;
import com.fasterxml.jackson.core.util.TextBuffer;
import java.io.Writer;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/io/SegmentedStringWriter.class */
public final class SegmentedStringWriter extends Writer {
    private final TextBuffer _buffer;

    public SegmentedStringWriter(BufferRecycler bufferRecycler) {
        this._buffer = new TextBuffer(bufferRecycler);
    }

    @Override // java.io.Writer, java.lang.Appendable
    public final Writer append(char c2) {
        write(c2);
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public final Writer append(CharSequence charSequence) {
        String charSequence2 = charSequence.toString();
        this._buffer.append(charSequence2, 0, charSequence2.length());
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public final Writer append(CharSequence charSequence, int i, int i2) {
        String charSequence2 = charSequence.subSequence(i, i2).toString();
        this._buffer.append(charSequence2, 0, charSequence2.length());
        return this;
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // java.io.Writer, java.io.Flushable
    public final void flush() {
    }

    public final String getAndClear() {
        String contentsAsString = this._buffer.contentsAsString();
        this._buffer.releaseBuffers();
        return contentsAsString;
    }

    @Override // java.io.Writer
    public final void write(int i) {
        this._buffer.append((char) i);
    }

    @Override // java.io.Writer
    public final void write(String str) {
        this._buffer.append(str, 0, str.length());
    }

    @Override // java.io.Writer
    public final void write(String str, int i, int i2) {
        this._buffer.append(str, i, i2);
    }

    @Override // java.io.Writer
    public final void write(char[] cArr) {
        this._buffer.append(cArr, 0, cArr.length);
    }

    @Override // java.io.Writer
    public final void write(char[] cArr, int i, int i2) {
        this._buffer.append(cArr, i, i2);
    }
}
