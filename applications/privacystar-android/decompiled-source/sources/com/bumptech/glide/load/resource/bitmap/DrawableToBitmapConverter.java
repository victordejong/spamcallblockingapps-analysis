package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.support.annotation.Nullable;
import android.util.Log;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPoolAdapter;
import java.util.concurrent.locks.Lock;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/DrawableToBitmapConverter.class */
final class DrawableToBitmapConverter {
    private static final BitmapPool NO_RECYCLE_BITMAP_POOL = new BitmapPoolAdapter() { // from class: com.bumptech.glide.load.resource.bitmap.DrawableToBitmapConverter.1
        @Override // com.bumptech.glide.load.engine.bitmap_recycle.BitmapPoolAdapter, com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool
        public void put(Bitmap bitmap) {
        }
    };
    private static final String TAG = "DrawableToBitmap";

    private DrawableToBitmapConverter() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public static Resource<Bitmap> convert(BitmapPool bitmapPool, Drawable drawable, int i, int i2) {
        boolean z;
        Bitmap bitmap;
        Drawable current = drawable.getCurrent();
        if (current instanceof BitmapDrawable) {
            bitmap = ((BitmapDrawable) current).getBitmap();
            z = false;
        } else if (!(current instanceof Animatable)) {
            bitmap = drawToBitmap(bitmapPool, current, i, i2);
            z = true;
        } else {
            bitmap = null;
            z = false;
        }
        if (!z) {
            bitmapPool = NO_RECYCLE_BITMAP_POOL;
        }
        return BitmapResource.obtain(bitmap, bitmapPool);
    }

    @Nullable
    private static Bitmap drawToBitmap(BitmapPool bitmapPool, Drawable drawable, int i, int i2) {
        if (i != Integer.MIN_VALUE || drawable.getIntrinsicWidth() > 0) {
            if (i2 != Integer.MIN_VALUE || drawable.getIntrinsicHeight() > 0) {
                if (drawable.getIntrinsicWidth() > 0) {
                    i = drawable.getIntrinsicWidth();
                }
                if (drawable.getIntrinsicHeight() > 0) {
                    i2 = drawable.getIntrinsicHeight();
                }
                Lock bitmapDrawableLock = TransformationUtils.getBitmapDrawableLock();
                bitmapDrawableLock.lock();
                Bitmap bitmap = bitmapPool.get(i, i2, Bitmap.Config.ARGB_8888);
                try {
                    Canvas canvas = new Canvas(bitmap);
                    drawable.setBounds(0, 0, i, i2);
                    drawable.draw(canvas);
                    canvas.setBitmap(null);
                    return bitmap;
                } finally {
                    bitmapDrawableLock.unlock();
                }
            } else if (!Log.isLoggable(TAG, 5)) {
                return null;
            } else {
                Log.w(TAG, "Unable to draw " + drawable + " to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic height");
                return null;
            }
        } else if (!Log.isLoggable(TAG, 5)) {
            return null;
        } else {
            Log.w(TAG, "Unable to draw " + drawable + " to Bitmap with Target.SIZE_ORIGINAL because the Drawable has no intrinsic width");
            return null;
        }
    }
}
