package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.support.annotation.NonNull;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/RoundedCorners.class */
public final class RoundedCorners extends BitmapTransformation {

    /* renamed from: ID */
    private static final String f108ID = "com.bumptech.glide.load.resource.bitmap.RoundedCorners";
    private static final byte[] ID_BYTES = f108ID.getBytes(CHARSET);
    private final int roundingRadius;

    public RoundedCorners(int i) {
        Preconditions.checkArgument(i > 0, "roundingRadius must be greater than 0.");
        this.roundingRadius = i;
    }

    @Override // com.bumptech.glide.load.Key
    public boolean equals(Object obj) {
        boolean z = false;
        if (!(obj instanceof RoundedCorners)) {
            return false;
        }
        if (this.roundingRadius == ((RoundedCorners) obj).roundingRadius) {
            z = true;
        }
        return z;
    }

    @Override // com.bumptech.glide.load.Key
    public int hashCode() {
        return Util.hashCode(f108ID.hashCode(), Util.hashCode(this.roundingRadius));
    }

    @Override // com.bumptech.glide.load.resource.bitmap.BitmapTransformation
    protected Bitmap transform(@NonNull BitmapPool bitmapPool, @NonNull Bitmap bitmap, int i, int i2) {
        return TransformationUtils.roundedCorners(bitmapPool, bitmap, this.roundingRadius);
    }

    @Override // com.bumptech.glide.load.Key
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        messageDigest.update(ID_BYTES);
        messageDigest.update(ByteBuffer.allocate(4).putInt(this.roundingRadius).array());
    }
}
