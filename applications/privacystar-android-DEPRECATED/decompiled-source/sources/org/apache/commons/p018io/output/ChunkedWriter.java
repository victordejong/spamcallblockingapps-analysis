package org.apache.commons.p018io.output;

import java.io.FilterWriter;
import java.io.IOException;
import java.io.Writer;
/* renamed from: org.apache.commons.io.output.ChunkedWriter */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/output/ChunkedWriter.class */
public class ChunkedWriter extends FilterWriter {
    private static final int DEFAULT_CHUNK_SIZE = 4096;
    private final int chunkSize;

    public ChunkedWriter(Writer writer) {
        this(writer, 4096);
    }

    public ChunkedWriter(Writer writer, int i) {
        super(writer);
        if (i <= 0) {
            throw new IllegalArgumentException();
        }
        this.chunkSize = i;
    }

    @Override // java.io.FilterWriter, java.io.Writer
    public void write(char[] cArr, int i, int i2) throws IOException {
        while (i2 > 0) {
            int min = Math.min(i2, this.chunkSize);
            this.out.write(cArr, i, min);
            i2 -= min;
            i += min;
        }
    }
}
