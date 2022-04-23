package com.bumptech.glide.load.resource.bitmap;

import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.VisibleForTesting;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/VideoDecoder.class */
public class VideoDecoder<T> implements ResourceDecoder<T, Bitmap> {
    public static final long DEFAULT_FRAME = -1;
    @VisibleForTesting
    static final int DEFAULT_FRAME_OPTION = 2;
    private static final String TAG = "VideoDecoder";
    private final BitmapPool bitmapPool;
    private final MediaMetadataRetrieverFactory factory;
    private final MediaMetadataRetrieverInitializer<T> initializer;
    public static final Option<Long> TARGET_FRAME = Option.disk("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame", -1L, new Option.CacheKeyUpdater<Long>() { // from class: com.bumptech.glide.load.resource.bitmap.VideoDecoder.1
        private final ByteBuffer buffer = ByteBuffer.allocate(8);

        public void update(@NonNull byte[] bArr, @NonNull Long l, @NonNull MessageDigest messageDigest) {
            messageDigest.update(bArr);
            synchronized (this.buffer) {
                this.buffer.position(0);
                messageDigest.update(this.buffer.putLong(l.longValue()).array());
            }
        }
    });
    public static final Option<Integer> FRAME_OPTION = Option.disk("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption", 2, new Option.CacheKeyUpdater<Integer>() { // from class: com.bumptech.glide.load.resource.bitmap.VideoDecoder.2
        private final ByteBuffer buffer = ByteBuffer.allocate(4);

        public void update(@NonNull byte[] bArr, @NonNull Integer num, @NonNull MessageDigest messageDigest) {
            if (num != null) {
                messageDigest.update(bArr);
                synchronized (this.buffer) {
                    this.buffer.position(0);
                    messageDigest.update(this.buffer.putInt(num.intValue()).array());
                }
            }
        }
    });
    private static final MediaMetadataRetrieverFactory DEFAULT_FACTORY = new MediaMetadataRetrieverFactory();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/VideoDecoder$AssetFileDescriptorInitializer.class */
    public static final class AssetFileDescriptorInitializer implements MediaMetadataRetrieverInitializer<AssetFileDescriptor> {
        private AssetFileDescriptorInitializer() {
        }

        public void initialize(MediaMetadataRetriever mediaMetadataRetriever, AssetFileDescriptor assetFileDescriptor) {
            mediaMetadataRetriever.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
        }
    }

    @VisibleForTesting
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaMetadataRetrieverFactory.class */
    static class MediaMetadataRetrieverFactory {
        MediaMetadataRetrieverFactory() {
        }

        public MediaMetadataRetriever build() {
            return new MediaMetadataRetriever();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/VideoDecoder$MediaMetadataRetrieverInitializer.class */
    public interface MediaMetadataRetrieverInitializer<T> {
        void initialize(MediaMetadataRetriever mediaMetadataRetriever, T t);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/VideoDecoder$ParcelFileDescriptorInitializer.class */
    public static final class ParcelFileDescriptorInitializer implements MediaMetadataRetrieverInitializer<ParcelFileDescriptor> {
        public void initialize(MediaMetadataRetriever mediaMetadataRetriever, ParcelFileDescriptor parcelFileDescriptor) {
            mediaMetadataRetriever.setDataSource(parcelFileDescriptor.getFileDescriptor());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public VideoDecoder(BitmapPool bitmapPool, MediaMetadataRetrieverInitializer<T> mediaMetadataRetrieverInitializer) {
        this(bitmapPool, mediaMetadataRetrieverInitializer, DEFAULT_FACTORY);
    }

    @VisibleForTesting
    VideoDecoder(BitmapPool bitmapPool, MediaMetadataRetrieverInitializer<T> mediaMetadataRetrieverInitializer, MediaMetadataRetrieverFactory mediaMetadataRetrieverFactory) {
        this.bitmapPool = bitmapPool;
        this.initializer = mediaMetadataRetrieverInitializer;
        this.factory = mediaMetadataRetrieverFactory;
    }

    public static ResourceDecoder<AssetFileDescriptor, Bitmap> asset(BitmapPool bitmapPool) {
        return new VideoDecoder(bitmapPool, new AssetFileDescriptorInitializer());
    }

    @Nullable
    private static Bitmap decodeFrame(MediaMetadataRetriever mediaMetadataRetriever, long j, int i, int i2, int i3, DownsampleStrategy downsampleStrategy) {
        Bitmap decodeScaledFrame = (Build.VERSION.SDK_INT < 27 || i2 == Integer.MIN_VALUE || i3 == Integer.MIN_VALUE || downsampleStrategy == DownsampleStrategy.NONE) ? null : decodeScaledFrame(mediaMetadataRetriever, j, i, i2, i3, downsampleStrategy);
        Bitmap bitmap = decodeScaledFrame;
        if (decodeScaledFrame == null) {
            bitmap = decodeOriginalFrame(mediaMetadataRetriever, j, i);
        }
        return bitmap;
    }

    private static Bitmap decodeOriginalFrame(MediaMetadataRetriever mediaMetadataRetriever, long j, int i) {
        return mediaMetadataRetriever.getFrameAtTime(j, i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0035, code lost:
        if (r0 == 270) goto L_0x0038;
     */
    @android.annotation.TargetApi(27)
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.graphics.Bitmap decodeScaledFrame(android.media.MediaMetadataRetriever r8, long r9, int r11, int r12, int r13, com.bumptech.glide.load.resource.bitmap.DownsampleStrategy r14) {
        /*
            r0 = r8
            r1 = 18
            java.lang.String r0 = r0.extractMetadata(r1)     // Catch: Throwable -> 0x006a
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: Throwable -> 0x006a
            r15 = r0
            r0 = r8
            r1 = 19
            java.lang.String r0 = r0.extractMetadata(r1)     // Catch: Throwable -> 0x006a
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: Throwable -> 0x006a
            r16 = r0
            r0 = r8
            r1 = 24
            java.lang.String r0 = r0.extractMetadata(r1)     // Catch: Throwable -> 0x006a
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: Throwable -> 0x006a
            r17 = r0
            r0 = r17
            r1 = 90
            if (r0 == r1) goto L_0x0038
            r0 = r15
            r18 = r0
            r0 = r16
            r19 = r0
            r0 = r17
            r1 = 270(0x10e, float:3.78E-43)
            if (r0 != r1) goto L_0x0040
        L_0x0038:
            r0 = r15
            r19 = r0
            r0 = r16
            r18 = r0
        L_0x0040:
            r0 = r14
            r1 = r18
            r2 = r19
            r3 = r12
            r4 = r13
            float r0 = r0.getScaleFactor(r1, r2, r3, r4)     // Catch: Throwable -> 0x006a
            r20 = r0
            r0 = r8
            r1 = r9
            r2 = r11
            r3 = r18
            float r3 = (float) r3     // Catch: Throwable -> 0x006a
            r4 = r20
            float r3 = r3 * r4
            int r3 = java.lang.Math.round(r3)     // Catch: Throwable -> 0x006a
            r4 = r20
            r5 = r19
            float r5 = (float) r5     // Catch: Throwable -> 0x006a
            float r4 = r4 * r5
            int r4 = java.lang.Math.round(r4)     // Catch: Throwable -> 0x006a
            android.graphics.Bitmap r0 = r0.getScaledFrameAtTime(r1, r2, r3, r4)     // Catch: Throwable -> 0x006a
            r8 = r0
            r0 = r8
            return r0
        L_0x006a:
            r8 = move-exception
            java.lang.String r0 = "VideoDecoder"
            r1 = 3
            boolean r0 = android.util.Log.isLoggable(r0, r1)
            if (r0 == 0) goto L_0x007d
            java.lang.String r0 = "VideoDecoder"
            java.lang.String r1 = "Exception trying to decode frame on oreo+"
            r2 = r8
            int r0 = android.util.Log.d(r0, r1, r2)
        L_0x007d:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.bitmap.VideoDecoder.decodeScaledFrame(android.media.MediaMetadataRetriever, long, int, int, int, com.bumptech.glide.load.resource.bitmap.DownsampleStrategy):android.graphics.Bitmap");
    }

    public static ResourceDecoder<ParcelFileDescriptor, Bitmap> parcel(BitmapPool bitmapPool) {
        return new VideoDecoder(bitmapPool, new ParcelFileDescriptorInitializer());
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public Resource<Bitmap> decode(@NonNull T t, int i, int i2, @NonNull Options options) throws IOException {
        long longValue = ((Long) options.get(TARGET_FRAME)).longValue();
        if (longValue >= 0 || longValue == -1) {
            Integer num = (Integer) options.get(FRAME_OPTION);
            Integer num2 = num;
            if (num == null) {
                num2 = 2;
            }
            DownsampleStrategy downsampleStrategy = (DownsampleStrategy) options.get(DownsampleStrategy.OPTION);
            DownsampleStrategy downsampleStrategy2 = downsampleStrategy;
            if (downsampleStrategy == null) {
                downsampleStrategy2 = DownsampleStrategy.DEFAULT;
            }
            MediaMetadataRetriever build = this.factory.build();
            try {
                try {
                    this.initializer.initialize(build, t);
                    Bitmap decodeFrame = decodeFrame(build, longValue, num2.intValue(), i, i2, downsampleStrategy2);
                    build.release();
                    return BitmapResource.obtain(decodeFrame, this.bitmapPool);
                } catch (RuntimeException e) {
                    throw new IOException(e);
                }
            } catch (Throwable th) {
                build.release();
                throw th;
            }
        } else {
            throw new IllegalArgumentException("Requested frame must be non-negative, or DEFAULT_FRAME, given: " + longValue);
        }
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public boolean handles(@NonNull T t, @NonNull Options options) {
        return true;
    }
}
