package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.util.Util;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/UnitBitmapDecoder.class */
public final class UnitBitmapDecoder implements ResourceDecoder<Bitmap, Bitmap> {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/UnitBitmapDecoder$NonOwnedBitmapResource.class */
    public static final class NonOwnedBitmapResource implements Resource<Bitmap> {
        private final Bitmap bitmap;

        NonOwnedBitmapResource(@NonNull Bitmap bitmap) {
            this.bitmap = bitmap;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.bumptech.glide.load.engine.Resource
        @NonNull
        public Bitmap get() {
            return this.bitmap;
        }

        @Override // com.bumptech.glide.load.engine.Resource
        @NonNull
        public Class<Bitmap> getResourceClass() {
            return Bitmap.class;
        }

        @Override // com.bumptech.glide.load.engine.Resource
        public int getSize() {
            return Util.getBitmapByteSize(this.bitmap);
        }

        @Override // com.bumptech.glide.load.engine.Resource
        public void recycle() {
        }
    }

    public Resource<Bitmap> decode(@NonNull Bitmap bitmap, int i, int i2, @NonNull Options options) {
        return new NonOwnedBitmapResource(bitmap);
    }

    public boolean handles(@NonNull Bitmap bitmap, @NonNull Options options) {
        return true;
    }
}
