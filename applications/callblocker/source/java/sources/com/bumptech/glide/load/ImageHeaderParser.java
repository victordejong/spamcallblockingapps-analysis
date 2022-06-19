package com.bumptech.glide.load;

import com.bumptech.glide.load.engine.p090a.AbstractC1673b;
import java.io.InputStream;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/ImageHeaderParser.class */
public interface ImageHeaderParser {

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/ImageHeaderParser$ImageType.class */
    public enum ImageType {
        GIF(true),
        JPEG(false),
        RAW(false),
        PNG_A(true),
        PNG(false),
        WEBP_A(true),
        WEBP(false),
        UNKNOWN(false);
        

        /* renamed from: a */
        private final boolean f4791a;

        ImageType(boolean z) {
            this.f4791a = z;
        }

        public boolean hasAlpha() {
            return this.f4791a;
        }
    }

    /* renamed from: a */
    int mo16746a(InputStream inputStream, AbstractC1673b abstractC1673b);

    /* renamed from: a */
    ImageType mo16747a(InputStream inputStream);

    /* renamed from: a */
    ImageType mo16745a(ByteBuffer byteBuffer);
}
