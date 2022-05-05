package org.apache.commons.p018io.input;

import java.io.Reader;
import java.io.Serializable;
/* renamed from: org.apache.commons.io.input.CharSequenceReader */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/input/CharSequenceReader.class */
public class CharSequenceReader extends Reader implements Serializable {
    private static final long serialVersionUID = 3724187752191401220L;
    private final CharSequence charSequence;
    private int idx;
    private int mark;

    public CharSequenceReader(String str) {
        this.charSequence = str == null ? "" : str;
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.idx = 0;
        this.mark = 0;
    }

    @Override // java.io.Reader
    public void mark(int i) {
        this.mark = this.idx;
    }

    @Override // java.io.Reader
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.Reader
    public int read() {
        if (this.idx >= this.charSequence.length()) {
            return -1;
        }
        CharSequence charSequence = this.charSequence;
        int i = this.idx;
        this.idx = i + 1;
        return charSequence.charAt(i);
    }

    @Override // java.io.Reader
    public int read(char[] cArr, int i, int i2) {
        int read;
        if (this.idx >= this.charSequence.length()) {
            return -1;
        }
        if (cArr == null) {
            throw new NullPointerException("Character array is missing");
        } else if (i2 < 0 || i < 0 || i + i2 > cArr.length) {
            throw new IndexOutOfBoundsException("Array Size=" + cArr.length + ", offset=" + i + ", length=" + i2);
        } else {
            int i3 = 0;
            for (int i4 = 0; i4 < i2 && (read = read()) != -1; i4++) {
                cArr[i + i4] = (char) read;
                i3++;
            }
            return i3;
        }
    }

    @Override // java.io.Reader
    public void reset() {
        this.idx = this.mark;
    }

    @Override // java.io.Reader
    public long skip(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("Number of characters to skip is less than zero: " + j);
        } else if (this.idx >= this.charSequence.length()) {
            return -1L;
        } else {
            int min = (int) Math.min(this.charSequence.length(), this.idx + j);
            int i = this.idx;
            this.idx = min;
            return min - i;
        }
    }

    public String toString() {
        return this.charSequence.toString();
    }
}
