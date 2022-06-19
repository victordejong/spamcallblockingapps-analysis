package com.nostra13.universalimageloader.core.assist;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2-dex2jar.jar:com/nostra13/universalimageloader/core/assist/FlushedInputStream.class */
public class FlushedInputStream extends FilterInputStream {
    public FlushedInputStream(InputStream inputStream) {
        super(inputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        char c;
        ?? r0 = 0;
        while (true) {
            c = r0;
            if (c >= j) {
                break;
            }
            ?? skip = this.in.skip(j - c);
            char c2 = skip;
            if (skip == 0) {
                if (read() < 0) {
                    break;
                }
                c2 = 1;
            }
            r0 = c + c2;
        }
        return c;
    }
}
