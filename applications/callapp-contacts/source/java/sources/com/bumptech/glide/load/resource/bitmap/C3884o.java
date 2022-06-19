package com.bumptech.glide.load.resource.bitmap;

import androidx.p044f.p045a.C1022a;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.engine.p119a.AbstractC3707b;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* renamed from: com.bumptech.glide.load.resource.bitmap.o */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/o.class */
public final class C3884o implements ImageHeaderParser {
    @Override // com.bumptech.glide.load.ImageHeaderParser
    /* renamed from: a */
    public final int mo37264a(InputStream inputStream, AbstractC3707b abstractC3707b) throws IOException {
        int m43810a = new C1022a(inputStream).m43810a("Orientation");
        int i = m43810a;
        if (m43810a == 0) {
            i = -1;
        }
        return i;
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    /* renamed from: a */
    public final ImageHeaderParser.ImageType mo37265a(InputStream inputStream) {
        return ImageHeaderParser.ImageType.UNKNOWN;
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    /* renamed from: a */
    public final ImageHeaderParser.ImageType mo37263a(ByteBuffer byteBuffer) {
        return ImageHeaderParser.ImageType.UNKNOWN;
    }
}
