package com.bumptech.glide.load.resource.gif;

import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.BitmapResource;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/gif/GifFrameResourceDecoder.class */
public final class GifFrameResourceDecoder implements ResourceDecoder<GifDecoder, Bitmap> {
    private final BitmapPool bitmapPool;

    public GifFrameResourceDecoder(BitmapPool bitmapPool) {
        this.bitmapPool = bitmapPool;
    }

    public Resource<Bitmap> decode(@NonNull GifDecoder gifDecoder, int i, int i2, @NonNull Options options) {
        return BitmapResource.obtain(gifDecoder.getNextFrame(), this.bitmapPool);
    }

    public boolean handles(@NonNull GifDecoder gifDecoder, @NonNull Options options) {
        return true;
    }
}
