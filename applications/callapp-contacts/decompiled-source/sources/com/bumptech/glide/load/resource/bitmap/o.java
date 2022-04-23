package com.bumptech.glide.load.resource.bitmap;

import androidx.f.a.a;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.engine.a.b;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/o.class */
public final class o implements ImageHeaderParser {
    @Override // com.bumptech.glide.load.ImageHeaderParser
    public final int a(InputStream inputStream, b bVar) throws IOException {
        int a2 = new a(inputStream).a("Orientation");
        int i = a2;
        if (a2 == 0) {
            i = -1;
        }
        return i;
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public final ImageHeaderParser.ImageType a(InputStream inputStream) {
        return ImageHeaderParser.ImageType.UNKNOWN;
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    public final ImageHeaderParser.ImageType a(ByteBuffer byteBuffer) {
        return ImageHeaderParser.ImageType.UNKNOWN;
    }
}
