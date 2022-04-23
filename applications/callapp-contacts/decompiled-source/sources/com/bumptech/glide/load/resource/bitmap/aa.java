package com.bumptech.glide.load.resource.bitmap;

import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.media.MediaDataSource;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import com.bumptech.glide.load.engine.u;
import com.bumptech.glide.load.g;
import com.bumptech.glide.load.h;
import com.bumptech.glide.load.j;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/aa.class */
public final class aa<T> implements j<T, Bitmap> {

    /* renamed from: a  reason: collision with root package name */
    public static final g<Long> f7644a = g.a("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame", -1L, new g.a<Long>() { // from class: com.bumptech.glide.load.resource.bitmap.aa.1

        /* renamed from: a  reason: collision with root package name */
        private final ByteBuffer f7648a = ByteBuffer.allocate(8);

        @Override // com.bumptech.glide.load.g.a
        public final /* synthetic */ void a(byte[] bArr, Long l, MessageDigest messageDigest) {
            Long l2 = l;
            messageDigest.update(bArr);
            synchronized (this.f7648a) {
                this.f7648a.position(0);
                messageDigest.update(this.f7648a.putLong(l2.longValue()).array());
            }
        }
    });

    /* renamed from: b  reason: collision with root package name */
    public static final g<Integer> f7645b = g.a("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption", 2, new g.a<Integer>() { // from class: com.bumptech.glide.load.resource.bitmap.aa.2

        /* renamed from: a  reason: collision with root package name */
        private final ByteBuffer f7649a = ByteBuffer.allocate(4);

        @Override // com.bumptech.glide.load.g.a
        public final /* synthetic */ void a(byte[] bArr, Integer num, MessageDigest messageDigest) {
            Integer num2 = num;
            if (num2 != null) {
                messageDigest.update(bArr);
                synchronized (this.f7649a) {
                    this.f7649a.position(0);
                    messageDigest.update(this.f7649a.putInt(num2.intValue()).array());
                }
            }
        }
    });

    /* renamed from: c  reason: collision with root package name */
    private static final c f7646c = new c();

    /* renamed from: d  reason: collision with root package name */
    private final d<T> f7647d;
    private final com.bumptech.glide.load.engine.a.e e;
    private final c f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/aa$a.class */
    public static final class a implements d<AssetFileDescriptor> {
        private a() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.aa.d
        public final /* synthetic */ void a(MediaMetadataRetriever mediaMetadataRetriever, AssetFileDescriptor assetFileDescriptor) {
            AssetFileDescriptor assetFileDescriptor2 = assetFileDescriptor;
            mediaMetadataRetriever.setDataSource(assetFileDescriptor2.getFileDescriptor(), assetFileDescriptor2.getStartOffset(), assetFileDescriptor2.getLength());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/aa$b.class */
    public static final class b implements d<ByteBuffer> {
        b() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.aa.d
        public final /* synthetic */ void a(MediaMetadataRetriever mediaMetadataRetriever, ByteBuffer byteBuffer) {
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

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/aa$c.class */
    static final class c {
        c() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/aa$d.class */
    public interface d<T> {
        void a(MediaMetadataRetriever mediaMetadataRetriever, T t);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/aa$e.class */
    public static final class e implements d<ParcelFileDescriptor> {
        e() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.aa.d
        public final /* synthetic */ void a(MediaMetadataRetriever mediaMetadataRetriever, ParcelFileDescriptor parcelFileDescriptor) {
            mediaMetadataRetriever.setDataSource(parcelFileDescriptor.getFileDescriptor());
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/bitmap/aa$f.class */
    static final class f extends RuntimeException {
        f() {
            super("MediaMetadataRetriever failed to retrieve a frame without throwing, check the adb logs for .*MetadataRetriever.* prior to this exception for details");
        }
    }

    aa(com.bumptech.glide.load.engine.a.e eVar, d<T> dVar) {
        this(eVar, dVar, f7646c);
    }

    aa(com.bumptech.glide.load.engine.a.e eVar, d<T> dVar, c cVar) {
        this.e = eVar;
        this.f7647d = dVar;
        this.f = cVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0035, code lost:
        if (r0 == 270) goto L_0x0038;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static android.graphics.Bitmap a(android.media.MediaMetadataRetriever r8, long r9, int r11, int r12, int r13, com.bumptech.glide.load.resource.bitmap.k r14) {
        /*
            r0 = r8
            r1 = 18
            java.lang.String r0 = r0.extractMetadata(r1)     // Catch: all -> 0x006a
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: all -> 0x006a
            r15 = r0
            r0 = r8
            r1 = 19
            java.lang.String r0 = r0.extractMetadata(r1)     // Catch: all -> 0x006a
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: all -> 0x006a
            r16 = r0
            r0 = r8
            r1 = 24
            java.lang.String r0 = r0.extractMetadata(r1)     // Catch: all -> 0x006a
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: all -> 0x006a
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
            float r0 = r0.a(r1, r2, r3, r4)     // Catch: all -> 0x006a
            r20 = r0
            r0 = r8
            r1 = r9
            r2 = r11
            r3 = r18
            float r3 = (float) r3     // Catch: all -> 0x006a
            r4 = r20
            float r3 = r3 * r4
            int r3 = java.lang.Math.round(r3)     // Catch: all -> 0x006a
            r4 = r20
            r5 = r19
            float r5 = (float) r5     // Catch: all -> 0x006a
            float r4 = r4 * r5
            int r4 = java.lang.Math.round(r4)     // Catch: all -> 0x006a
            android.graphics.Bitmap r0 = r0.getScaledFrameAtTime(r1, r2, r3, r4)     // Catch: all -> 0x006a
            r8 = r0
            r0 = r8
            return r0
        L_0x006a:
            r8 = move-exception
            java.lang.String r0 = "VideoDecoder"
            r1 = 3
            boolean r0 = android.util.Log.isLoggable(r0, r1)
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.bitmap.aa.a(android.media.MediaMetadataRetriever, long, int, int, int, com.bumptech.glide.load.resource.bitmap.k):android.graphics.Bitmap");
    }

    public static j<AssetFileDescriptor, Bitmap> a(com.bumptech.glide.load.engine.a.e eVar) {
        return new aa(eVar, new a());
    }

    public static j<ParcelFileDescriptor, Bitmap> b(com.bumptech.glide.load.engine.a.e eVar) {
        return new aa(eVar, new e());
    }

    public static j<ByteBuffer, Bitmap> c(com.bumptech.glide.load.engine.a.e eVar) {
        return new aa(eVar, new b());
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.bumptech.glide.load.j
    public final u<Bitmap> a(T t, int i, int i2, h hVar) throws IOException {
        long longValue = ((Long) hVar.a(f7644a)).longValue();
        if (longValue >= 0 || longValue == -1) {
            Integer num = (Integer) hVar.a(f7645b);
            Integer num2 = num;
            if (num == null) {
                num2 = 2;
            }
            k kVar = (k) hVar.a(k.h);
            k kVar2 = kVar;
            if (kVar == null) {
                kVar2 = k.g;
            }
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            try {
                this.f7647d.a(mediaMetadataRetriever, t);
                int intValue = num2.intValue();
                Bitmap bitmap = null;
                if (Build.VERSION.SDK_INT >= 27) {
                    bitmap = null;
                    if (i != Integer.MIN_VALUE) {
                        bitmap = null;
                        if (i2 != Integer.MIN_VALUE) {
                            bitmap = null;
                            if (kVar2 != k.f) {
                                bitmap = a(mediaMetadataRetriever, longValue, intValue, i, i2, kVar2);
                            }
                        }
                    }
                }
                Bitmap bitmap2 = bitmap;
                if (bitmap == null) {
                    bitmap2 = mediaMetadataRetriever.getFrameAtTime(longValue, intValue);
                }
                if (bitmap2 != null) {
                    mediaMetadataRetriever.release();
                    return com.bumptech.glide.load.resource.bitmap.e.a(bitmap2, this.e);
                }
                throw new f();
            } catch (Throwable th) {
                mediaMetadataRetriever.release();
                throw th;
            }
        } else {
            throw new IllegalArgumentException("Requested frame must be non-negative, or DEFAULT_FRAME, given: ".concat(String.valueOf(longValue)));
        }
    }

    @Override // com.bumptech.glide.load.j
    public final boolean a(T t, h hVar) {
        return true;
    }
}
