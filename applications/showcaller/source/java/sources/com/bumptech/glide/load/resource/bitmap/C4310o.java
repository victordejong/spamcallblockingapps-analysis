package com.bumptech.glide.load.resource.bitmap;

import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.engine.p209x.AbstractC4091b;
import java.io.InputStream;
import java.nio.ByteBuffer;
import p020b.p059l.p060a.C1744a;
/* renamed from: com.bumptech.glide.load.resource.bitmap.o */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/o.class */
public final class C4310o implements ImageHeaderParser {
    @Override // com.bumptech.glide.load.ImageHeaderParser
    /* renamed from: a */
    public ImageHeaderParser.ImageType mo22907a(ByteBuffer byteBuffer) {
        return ImageHeaderParser.ImageType.UNKNOWN;
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    /* renamed from: b */
    public ImageHeaderParser.ImageType mo22906b(InputStream inputStream) {
        return ImageHeaderParser.ImageType.UNKNOWN;
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    /* renamed from: c */
    public int mo22905c(InputStream inputStream, AbstractC4091b abstractC4091b) {
        int m29009e = new C1744a(inputStream).m29009e("Orientation", 1);
        int i = m29009e;
        if (m29009e == 0) {
            i = -1;
        }
        return i;
    }
}
