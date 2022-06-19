package com.bumptech.glide.load;

import com.bumptech.glide.load.engine.p119a.AbstractC3707b;
import java.io.IOException;
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
        
        private final boolean hasAlpha;

        ImageType(boolean z) {
            this.hasAlpha = z;
        }

        public final boolean hasAlpha() {
            return this.hasAlpha;
        }
    }

    /* renamed from: a */
    int mo37264a(InputStream inputStream, AbstractC3707b abstractC3707b) throws IOException;

    /* renamed from: a */
    ImageType mo37265a(InputStream inputStream) throws IOException;

    /* renamed from: a */
    ImageType mo37263a(ByteBuffer byteBuffer) throws IOException;
}
