package com.bumptech.glide.load.p083c.p084a;

import android.media.ExifInterface;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.engine.p090a.AbstractC1673b;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* renamed from: com.bumptech.glide.load.c.a.o */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/o.class */
public final class C1608o implements ImageHeaderParser {
    @Override // com.bumptech.glide.load.ImageHeaderParser
    /* renamed from: a */
    public int mo16746a(InputStream inputStream, AbstractC1673b abstractC1673b) {
        int attributeInt = new ExifInterface(inputStream).getAttributeInt("Orientation", 1);
        int i = attributeInt;
        if (attributeInt == 0) {
            i = -1;
        }
        return i;
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    /* renamed from: a */
    public ImageHeaderParser.ImageType mo16747a(InputStream inputStream) {
        return ImageHeaderParser.ImageType.UNKNOWN;
    }

    @Override // com.bumptech.glide.load.ImageHeaderParser
    /* renamed from: a */
    public ImageHeaderParser.ImageType mo16745a(ByteBuffer byteBuffer) {
        return ImageHeaderParser.ImageType.UNKNOWN;
    }
}
