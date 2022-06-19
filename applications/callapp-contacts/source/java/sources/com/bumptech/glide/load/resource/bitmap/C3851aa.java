package com.bumptech.glide.load.resource.bitmap;

import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.media.MediaDataSource;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.AbstractC3824j;
import com.bumptech.glide.load.C3819g;
import com.bumptech.glide.load.C3822h;
import com.bumptech.glide.load.engine.AbstractC3811u;
import com.bumptech.glide.load.engine.p119a.AbstractC3712e;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
/* renamed from: com.bumptech.glide.load.resource.bitmap.aa */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/aa.class */
public final class C3851aa<T> implements AbstractC3824j<T, Bitmap> {

    /* renamed from: a */
    public static final C3819g<Long> f14205a = C3819g.m37323a("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame", -1L, new C3819g.AbstractC3821a<Long>() { // from class: com.bumptech.glide.load.resource.bitmap.aa.1

        /* renamed from: a */
        private final ByteBuffer f14211a = ByteBuffer.allocate(8);

        @Override // com.bumptech.glide.load.C3819g.AbstractC3821a
        /* renamed from: a */
        public final /* synthetic */ void mo37287a(byte[] bArr, Long l, MessageDigest messageDigest) {
            Long l2 = l;
            messageDigest.update(bArr);
            synchronized (this.f14211a) {
                this.f14211a.position(0);
                messageDigest.update(this.f14211a.putLong(l2.longValue()).array());
            }
        }
    });

    /* renamed from: b */
    public static final C3819g<Integer> f14206b = C3819g.m37323a("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption", 2, new C3819g.AbstractC3821a<Integer>() { // from class: com.bumptech.glide.load.resource.bitmap.aa.2

        /* renamed from: a */
        private final ByteBuffer f14212a = ByteBuffer.allocate(4);

        @Override // com.bumptech.glide.load.C3819g.AbstractC3821a
        /* renamed from: a */
        public final /* synthetic */ void mo37287a(byte[] bArr, Integer num, MessageDigest messageDigest) {
            Integer num2 = num;
            if (num2 != null) {
                messageDigest.update(bArr);
                synchronized (this.f14212a) {
                    this.f14212a.position(0);
                    messageDigest.update(this.f14212a.putInt(num2.intValue()).array());
                }
            }
        }
    });

    /* renamed from: c */
    private static final C3857c f14207c = new C3857c();

    /* renamed from: d */
    private final AbstractC3858d<T> f14208d;

    /* renamed from: e */
    private final AbstractC3712e f14209e;

    /* renamed from: f */
    private final C3857c f14210f;

    /* renamed from: com.bumptech.glide.load.resource.bitmap.aa$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/aa$a.class */
    public static final class C3854a implements AbstractC3858d<AssetFileDescriptor> {
        private C3854a() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.C3851aa.AbstractC3858d
        /* renamed from: a */
        public final /* synthetic */ void mo37286a(MediaMetadataRetriever mediaMetadataRetriever, AssetFileDescriptor assetFileDescriptor) {
            AssetFileDescriptor assetFileDescriptor2 = assetFileDescriptor;
            mediaMetadataRetriever.setDataSource(assetFileDescriptor2.getFileDescriptor(), assetFileDescriptor2.getStartOffset(), assetFileDescriptor2.getLength());
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.aa$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/aa$b.class */
    public static final class C3855b implements AbstractC3858d<ByteBuffer> {
        C3855b() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.C3851aa.AbstractC3858d
        /* renamed from: a */
        public final /* synthetic */ void mo37286a(MediaMetadataRetriever mediaMetadataRetriever, ByteBuffer byteBuffer) {
            final ByteBuffer byteBuffer2 = byteBuffer;
            mediaMetadataRetriever.setDataSource(new MediaDataSource() { // from class: com.bumptech.glide.load.resource.bitmap.aa.b.1
                @Override // java.io.Closeable, java.lang.AutoCloseable
                public final void close() {
                }

                @Override // android.media.MediaDataSource
                public final long getSize() {
                    return byteBuffer2.limit();
                }

                @Override // android.media.MediaDataSource
                public final int readAt(long j, byte[] bArr, int i, int i2) {
                    if (j >= byteBuffer2.limit()) {
                        return -1;
                    }
                    byteBuffer2.position((int) j);
                    int min = Math.min(i2, byteBuffer2.remaining());
                    byteBuffer2.get(bArr, i, min);
                    return min;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.resource.bitmap.aa$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/aa$c.class */
    public static final class C3857c {
        C3857c() {
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.aa$d */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/aa$d.class */
    public interface AbstractC3858d<T> {
        /* renamed from: a */
        void mo37286a(MediaMetadataRetriever mediaMetadataRetriever, T t);
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.aa$e */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/aa$e.class */
    public static final class C3859e implements AbstractC3858d<ParcelFileDescriptor> {
        C3859e() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.C3851aa.AbstractC3858d
        /* renamed from: a */
        public final /* synthetic */ void mo37286a(MediaMetadataRetriever mediaMetadataRetriever, ParcelFileDescriptor parcelFileDescriptor) {
            mediaMetadataRetriever.setDataSource(parcelFileDescriptor.getFileDescriptor());
        }
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.aa$f */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/aa$f.class */
    static final class C3860f extends RuntimeException {
        C3860f() {
            super("MediaMetadataRetriever failed to retrieve a frame without throwing, check the adb logs for .*MetadataRetriever.* prior to this exception for details");
        }
    }

    C3851aa(AbstractC3712e abstractC3712e, AbstractC3858d<T> abstractC3858d) {
        this(abstractC3712e, abstractC3858d, f14207c);
    }

    C3851aa(AbstractC3712e abstractC3712e, AbstractC3858d<T> abstractC3858d, C3857c c3857c) {
        this.f14209e = abstractC3712e;
        this.f14208d = abstractC3858d;
        this.f14210f = c3857c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0035, code lost:
        if (r0 == 270) goto L7;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.graphics.Bitmap m37291a(android.media.MediaMetadataRetriever r8, long r9, int r11, int r12, int r13, com.bumptech.glide.load.resource.bitmap.AbstractC3870k r14) {
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
            float r0 = r0.mo37282a(r1, r2, r3, r4)     // Catch: java.lang.Throwable -> L6a
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
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.bitmap.C3851aa.m37291a(android.media.MediaMetadataRetriever, long, int, int, int, com.bumptech.glide.load.resource.bitmap.k):android.graphics.Bitmap");
    }

    /* renamed from: a */
    public static AbstractC3824j<AssetFileDescriptor, Bitmap> m37290a(AbstractC3712e abstractC3712e) {
        return new C3851aa(abstractC3712e, new C3854a());
    }

    /* renamed from: b */
    public static AbstractC3824j<ParcelFileDescriptor, Bitmap> m37289b(AbstractC3712e abstractC3712e) {
        return new C3851aa(abstractC3712e, new C3859e());
    }

    /* renamed from: c */
    public static AbstractC3824j<ByteBuffer, Bitmap> m37288c(AbstractC3712e abstractC3712e) {
        return new C3851aa(abstractC3712e, new C3855b());
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.bumptech.glide.load.AbstractC3824j
    /* renamed from: a */
    public final AbstractC3811u<Bitmap> mo37196a(T t, int i, int i2, C3822h c3822h) throws IOException {
        long longValue = ((Long) c3822h.m37322a(f14205a)).longValue();
        if (longValue >= 0 || longValue == -1) {
            Integer num = (Integer) c3822h.m37322a(f14206b);
            Integer num2 = num;
            if (num == null) {
                num2 = 2;
            }
            AbstractC3870k abstractC3870k = (AbstractC3870k) c3822h.m37322a(AbstractC3870k.f14234h);
            AbstractC3870k abstractC3870k2 = abstractC3870k;
            if (abstractC3870k == null) {
                abstractC3870k2 = AbstractC3870k.f14233g;
            }
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            try {
                this.f14208d.mo37286a(mediaMetadataRetriever, t);
                int intValue = num2.intValue();
                Bitmap bitmap = null;
                if (Build.VERSION.SDK_INT >= 27) {
                    bitmap = null;
                    if (i != Integer.MIN_VALUE) {
                        bitmap = null;
                        if (i2 != Integer.MIN_VALUE) {
                            bitmap = null;
                            if (abstractC3870k2 != AbstractC3870k.f14232f) {
                                bitmap = m37291a(mediaMetadataRetriever, longValue, intValue, i, i2, abstractC3870k2);
                            }
                        }
                    }
                }
                Bitmap bitmap2 = bitmap;
                if (bitmap == null) {
                    bitmap2 = mediaMetadataRetriever.getFrameAtTime(longValue, intValue);
                }
                if (bitmap2 == null) {
                    throw new C3860f();
                }
                mediaMetadataRetriever.release();
                return C3864e.m37283a(bitmap2, this.f14209e);
            } catch (Throwable th) {
                mediaMetadataRetriever.release();
                throw th;
            }
        }
        throw new IllegalArgumentException("Requested frame must be non-negative, or DEFAULT_FRAME, given: ".concat(String.valueOf(longValue)));
    }

    @Override // com.bumptech.glide.load.AbstractC3824j
    /* renamed from: a */
    public final boolean mo37195a(T t, C3822h c3822h) {
        return true;
    }
}
