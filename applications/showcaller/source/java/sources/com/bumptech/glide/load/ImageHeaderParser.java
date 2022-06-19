package com.bumptech.glide.load;

import com.bumptech.glide.load.engine.p209x.AbstractC4091b;
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

        public boolean hasAlpha() {
            return this.hasAlpha;
        }
    }

    /* renamed from: a */
    ImageType mo22907a(ByteBuffer byteBuffer);

    /* renamed from: b */
    ImageType mo22906b(InputStream inputStream);

    /* renamed from: c */
    int mo22905c(InputStream inputStream, AbstractC4091b abstractC4091b);
}
