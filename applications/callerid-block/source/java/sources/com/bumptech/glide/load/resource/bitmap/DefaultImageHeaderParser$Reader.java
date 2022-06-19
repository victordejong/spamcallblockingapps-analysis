package com.bumptech.glide.load.resource.bitmap;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader.class */
interface DefaultImageHeaderParser$Reader {

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/DefaultImageHeaderParser$Reader$EndOfFileException.class */
    public static final class EndOfFileException extends IOException {
        private static final long serialVersionUID = 1;

        EndOfFileException() {
            super("Unexpectedly reached end of a file");
        }
    }

    /* renamed from: a */
    int m10925a(byte[] bArr, int i);

    /* renamed from: b */
    short m10924b();

    /* renamed from: c */
    int m10923c();

    long skip(long j);
}
