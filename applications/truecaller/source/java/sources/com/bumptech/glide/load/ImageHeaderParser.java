package com.bumptech.glide.load;

import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.AbstractC22301b;
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
        public final boolean f2149a;

        ImageType(boolean z) {
            this.f2149a = z;
        }

        public boolean hasAlpha() {
            return this.f2149a;
        }
    }

    /* renamed from: a */
    ImageType mo8178a(InputStream inputStream) throws IOException;

    /* renamed from: b */
    int mo8177b(InputStream inputStream, AbstractC22301b abstractC22301b) throws IOException;

    /* renamed from: c */
    ImageType mo8176c(ByteBuffer byteBuffer) throws IOException;
}
