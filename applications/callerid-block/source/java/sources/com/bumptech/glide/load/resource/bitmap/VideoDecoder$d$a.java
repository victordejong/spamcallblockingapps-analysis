package com.bumptech.glide.load.resource.bitmap;

import android.media.MediaDataSource;
import com.bumptech.glide.load.resource.bitmap.VideoDecoder;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/VideoDecoder$d$a.class */
class VideoDecoder$d$a extends MediaDataSource {

    /* renamed from: b */
    final /* synthetic */ ByteBuffer f3740b;

    VideoDecoder$d$a(VideoDecoder.d dVar, ByteBuffer byteBuffer) {
        this.f3740b = byteBuffer;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // android.media.MediaDataSource
    public long getSize() {
        return this.f3740b.limit();
    }

    @Override // android.media.MediaDataSource
    public int readAt(long j, byte[] bArr, int i, int i2) {
        if (j >= this.f3740b.limit()) {
            return -1;
        }
        this.f3740b.position((int) j);
        int min = Math.min(i2, this.f3740b.remaining());
        this.f3740b.get(bArr, i, min);
        return min;
    }
}
