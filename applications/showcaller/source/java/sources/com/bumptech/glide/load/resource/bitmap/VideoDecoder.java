package com.bumptech.glide.load.resource.bitmap;

import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.media.MediaDataSource;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.AbstractC4146f;
import com.bumptech.glide.load.C4000d;
import com.bumptech.glide.load.C4032e;
import com.bumptech.glide.load.engine.AbstractC4083s;
import com.bumptech.glide.load.engine.p209x.AbstractC4096e;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/VideoDecoder.class */
public class VideoDecoder<T> implements AbstractC4146f<T, Bitmap> {

    /* renamed from: a */
    public static final C4000d<Long> f13230a = C4000d.m23515a("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame", -1L, new C4285a());

    /* renamed from: b */
    public static final C4000d<Integer> f13231b = C4000d.m23515a("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption", 2, new C4286b());

    /* renamed from: c */
    private static final C4290e f13232c = new C4290e();

    /* renamed from: d */
    private final AbstractC4291f<T> f13233d;

    /* renamed from: e */
    private final AbstractC4096e f13234e;

    /* renamed from: f */
    private final C4290e f13235f;

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/VideoDecoder$VideoDecoderException.class */
    public static final class VideoDecoderException extends RuntimeException {
        private static final long serialVersionUID = -2556382523004027815L;

        VideoDecoderException() {
            super("MediaMetadataRetriever failed to retrieve a frame without throwing, check the adb logs for .*MetadataRetriever.* prior to this exception for details");
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.VideoDecoder$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/VideoDecoder$a.class */
    public class C4285a implements C4000d.AbstractC4002b<Long> {

        /* renamed from: a */
        private final ByteBuffer f13236a = ByteBuffer.allocate(8);

        C4285a() {
        }

        /* renamed from: b */
        public void mo22958a(byte[] bArr, Long l, MessageDigest messageDigest) {
            messageDigest.update(bArr);
            synchronized (this.f13236a) {
                this.f13236a.position(0);
                messageDigest.update(this.f13236a.putLong(l.longValue()).array());
            }
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.VideoDecoder$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/VideoDecoder$b.class */
    class C4286b implements C4000d.AbstractC4002b<Integer> {

        /* renamed from: a */
        private final ByteBuffer f13237a = ByteBuffer.allocate(4);

        C4286b() {
        }

        /* renamed from: b */
        public void mo22958a(byte[] bArr, Integer num, MessageDigest messageDigest) {
            if (num == null) {
                return;
            }
            messageDigest.update(bArr);
            synchronized (this.f13237a) {
                this.f13237a.position(0);
                messageDigest.update(this.f13237a.putInt(num.intValue()).array());
            }
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.VideoDecoder$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/VideoDecoder$c.class */
    public static final class C4287c implements AbstractC4291f<AssetFileDescriptor> {
        private C4287c() {
        }

        /* synthetic */ C4287c(C4285a c4285a) {
            this();
        }

        /* renamed from: b */
        public void mo22953a(MediaMetadataRetriever mediaMetadataRetriever, AssetFileDescriptor assetFileDescriptor) {
            mediaMetadataRetriever.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.VideoDecoder$d */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/VideoDecoder$d.class */
    public static final class C4288d implements AbstractC4291f<ByteBuffer> {

        /* renamed from: com.bumptech.glide.load.resource.bitmap.VideoDecoder$d$a */
        /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/VideoDecoder$d$a.class */
        public class C4289a extends MediaDataSource {

            /* renamed from: d */
            final /* synthetic */ ByteBuffer f13238d;

            C4289a(ByteBuffer byteBuffer) {
                C4288d.this = r4;
                this.f13238d = byteBuffer;
            }

            @Override // java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // android.media.MediaDataSource
            public long getSize() {
                return this.f13238d.limit();
            }

            @Override // android.media.MediaDataSource
            public int readAt(long j, byte[] bArr, int i, int i2) {
                if (j >= this.f13238d.limit()) {
                    return -1;
                }
                this.f13238d.position((int) j);
                int min = Math.min(i2, this.f13238d.remaining());
                this.f13238d.get(bArr, i, min);
                return min;
            }
        }

        C4288d() {
        }

        /* renamed from: b */
        public void mo22953a(MediaMetadataRetriever mediaMetadataRetriever, ByteBuffer byteBuffer) {
            mediaMetadataRetriever.setDataSource(new C4289a(byteBuffer));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.resource.bitmap.VideoDecoder$e */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/VideoDecoder$e.class */
    public static class C4290e {
        C4290e() {
        }

        /* renamed from: a */
        public MediaMetadataRetriever m22954a() {
            return new MediaMetadataRetriever();
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.VideoDecoder$f */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/VideoDecoder$f.class */
    public interface AbstractC4291f<T> {
        /* renamed from: a */
        void mo22953a(MediaMetadataRetriever mediaMetadataRetriever, T t);
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.VideoDecoder$g */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/VideoDecoder$g.class */
    public static final class C4292g implements AbstractC4291f<ParcelFileDescriptor> {
        C4292g() {
        }

        /* renamed from: b */
        public void mo22953a(MediaMetadataRetriever mediaMetadataRetriever, ParcelFileDescriptor parcelFileDescriptor) {
            mediaMetadataRetriever.setDataSource(parcelFileDescriptor.getFileDescriptor());
        }
    }

    VideoDecoder(AbstractC4096e abstractC4096e, AbstractC4291f<T> abstractC4291f) {
        this(abstractC4096e, abstractC4291f, f13232c);
    }

    VideoDecoder(AbstractC4096e abstractC4096e, AbstractC4291f<T> abstractC4291f, C4290e c4290e) {
        this.f13234e = abstractC4096e;
        this.f13233d = abstractC4291f;
        this.f13235f = c4290e;
    }

    /* renamed from: c */
    public static AbstractC4146f<AssetFileDescriptor, Bitmap> m22965c(AbstractC4096e abstractC4096e) {
        return new VideoDecoder(abstractC4096e, new C4287c(null));
    }

    /* renamed from: d */
    public static AbstractC4146f<ByteBuffer, Bitmap> m22964d(AbstractC4096e abstractC4096e) {
        return new VideoDecoder(abstractC4096e, new C4288d());
    }

    /* renamed from: e */
    private static Bitmap m22963e(MediaMetadataRetriever mediaMetadataRetriever, long j, int i, int i2, int i3, DownsampleStrategy downsampleStrategy) {
        Bitmap m22961g = (Build.VERSION.SDK_INT < 27 || i2 == Integer.MIN_VALUE || i3 == Integer.MIN_VALUE || downsampleStrategy == DownsampleStrategy.f13217f) ? null : m22961g(mediaMetadataRetriever, j, i, i2, i3, downsampleStrategy);
        Bitmap bitmap = m22961g;
        if (m22961g == null) {
            bitmap = m22962f(mediaMetadataRetriever, j, i);
        }
        if (bitmap != null) {
            return bitmap;
        }
        throw new VideoDecoderException();
    }

    /* renamed from: f */
    private static Bitmap m22962f(MediaMetadataRetriever mediaMetadataRetriever, long j, int i) {
        return mediaMetadataRetriever.getFrameAtTime(j, i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0035, code lost:
        if (r0 == 270) goto L7;
     */
    @android.annotation.TargetApi(27)
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.graphics.Bitmap m22961g(android.media.MediaMetadataRetriever r8, long r9, int r11, int r12, int r13, com.bumptech.glide.load.resource.bitmap.DownsampleStrategy r14) {
        /*
            r0 = r8
            r1 = 18
            java.lang.String r0 = r0.extractMetadata(r1)     // Catch: java.lang.Throwable -> L6a
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: java.lang.Throwable -> L6a
            r15 = r0
            r0 = r8
            r1 = 19
            java.lang.String r0 = r0.extractMetadata(r1)     // Catch: java.lang.Throwable -> L6a
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: java.lang.Throwable -> L6a
            r16 = r0
            r0 = r8
            r1 = 24
            java.lang.String r0 = r0.extractMetadata(r1)     // Catch: java.lang.Throwable -> L6a
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: java.lang.Throwable -> L6a
            r17 = r0
            r0 = r17
            r1 = 90
            if (r0 == r1) goto L38
            r0 = r15
            r18 = r0
            r0 = r16
            r19 = r0
            r0 = r17
            r1 = 270(0x10e, float:3.78E-43)
            if (r0 != r1) goto L40
        L38:
            r0 = r15
            r19 = r0
            r0 = r16
            r18 = r0
        L40:
            r0 = r14
            r1 = r18
            r2 = r19
            r3 = r12
            r4 = r13
            float r0 = r0.mo22970b(r1, r2, r3, r4)     // Catch: java.lang.Throwable -> L6a
            r20 = r0
            r0 = r8
            r1 = r9
            r2 = r11
            r3 = r18
            float r3 = (float) r3     // Catch: java.lang.Throwable -> L6a
            r4 = r20
            float r3 = r3 * r4
            int r3 = java.lang.Math.round(r3)     // Catch: java.lang.Throwable -> L6a
            r4 = r20
            r5 = r19
            float r5 = (float) r5     // Catch: java.lang.Throwable -> L6a
            float r4 = r4 * r5
            int r4 = java.lang.Math.round(r4)     // Catch: java.lang.Throwable -> L6a
            android.graphics.Bitmap r0 = r0.getScaledFrameAtTime(r1, r2, r3, r4)     // Catch: java.lang.Throwable -> L6a
            r8 = r0
            r0 = r8
            return r0
        L6a:
            r8 = move-exception
            java.lang.String r0 = "VideoDecoder"
            r1 = 3
            boolean r0 = android.util.Log.isLoggable(r0, r1)
            if (r0 == 0) goto L7d
            java.lang.String r0 = "VideoDecoder"
            java.lang.String r1 = "Exception trying to decode a scaled frame on oreo+, falling back to a fullsize frame"
            r2 = r8
            int r0 = android.util.Log.d(r0, r1, r2)
        L7d:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.bitmap.VideoDecoder.m22961g(android.media.MediaMetadataRetriever, long, int, int, int, com.bumptech.glide.load.resource.bitmap.DownsampleStrategy):android.graphics.Bitmap");
    }

    /* renamed from: h */
    public static AbstractC4146f<ParcelFileDescriptor, Bitmap> m22960h(AbstractC4096e abstractC4096e) {
        return new VideoDecoder(abstractC4096e, new C4292g());
    }

    @Override // com.bumptech.glide.load.AbstractC4146f
    /* renamed from: a */
    public boolean mo22862a(T t, C4032e c4032e) {
        return true;
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.bumptech.glide.load.AbstractC4146f
    /* renamed from: b */
    public AbstractC4083s<Bitmap> mo22861b(T t, int i, int i2, C4032e c4032e) {
        long longValue = ((Long) c4032e.m23457c(f13230a)).longValue();
        if (longValue < 0 && longValue != -1) {
            throw new IllegalArgumentException("Requested frame must be non-negative, or DEFAULT_FRAME, given: " + longValue);
        }
        Integer num = (Integer) c4032e.m23457c(f13231b);
        Integer num2 = num;
        if (num == null) {
            num2 = 2;
        }
        DownsampleStrategy downsampleStrategy = (DownsampleStrategy) c4032e.m23457c(DownsampleStrategy.f13219h);
        DownsampleStrategy downsampleStrategy2 = downsampleStrategy;
        if (downsampleStrategy == null) {
            downsampleStrategy2 = DownsampleStrategy.f13218g;
        }
        MediaMetadataRetriever m22954a = this.f13235f.m22954a();
        try {
            this.f13233d.mo22953a(m22954a, t);
            Bitmap m22963e = m22963e(m22954a, longValue, num2.intValue(), i, i2, downsampleStrategy2);
            m22954a.release();
            return C4297e.m22944f(m22963e, this.f13234e);
        } catch (Throwable th) {
            m22954a.release();
            throw th;
        }
    }
}
