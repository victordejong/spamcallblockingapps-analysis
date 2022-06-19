package com.bumptech.glide.load.p083c.p084a;

import android.annotation.TargetApi;
import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.Build;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.bumptech.glide.load.AbstractC1782i;
import com.bumptech.glide.load.C1778g;
import com.bumptech.glide.load.C1781h;
import com.bumptech.glide.load.engine.AbstractC1771t;
import com.bumptech.glide.load.engine.p090a.AbstractC1678e;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
/* renamed from: com.bumptech.glide.load.c.a.x */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/x.class */
public class C1621x<T> implements AbstractC1782i<T, Bitmap> {

    /* renamed from: a */
    public static final C1778g<Long> f5020a = C1778g.m16328a("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame", -1L, new C1778g.AbstractC1780a<Long>() { // from class: com.bumptech.glide.load.c.a.x.1

        /* renamed from: a */
        private final ByteBuffer f5026a = ByteBuffer.allocate(8);

        /* renamed from: a */
        public void mo16325a(byte[] bArr, Long l, MessageDigest messageDigest) {
            messageDigest.update(bArr);
            synchronized (this.f5026a) {
                this.f5026a.position(0);
                messageDigest.update(this.f5026a.putLong(l.longValue()).array());
            }
        }
    });

    /* renamed from: b */
    public static final C1778g<Integer> f5021b = C1778g.m16328a("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption", 2, new C1778g.AbstractC1780a<Integer>() { // from class: com.bumptech.glide.load.c.a.x.2

        /* renamed from: a */
        private final ByteBuffer f5027a = ByteBuffer.allocate(4);

        /* renamed from: a */
        public void mo16325a(byte[] bArr, Integer num, MessageDigest messageDigest) {
            if (num == null) {
                return;
            }
            messageDigest.update(bArr);
            synchronized (this.f5027a) {
                this.f5027a.position(0);
                messageDigest.update(this.f5027a.putInt(num.intValue()).array());
            }
        }
    });

    /* renamed from: c */
    private static final C1625b f5022c = new C1625b();

    /* renamed from: d */
    private final AbstractC1626c<T> f5023d;

    /* renamed from: e */
    private final AbstractC1678e f5024e;

    /* renamed from: f */
    private final C1625b f5025f;

    /* renamed from: com.bumptech.glide.load.c.a.x$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/x$a.class */
    public static final class C1624a implements AbstractC1626c<AssetFileDescriptor> {
        private C1624a() {
        }

        /* renamed from: a */
        public void mo16700a(MediaMetadataRetriever mediaMetadataRetriever, AssetFileDescriptor assetFileDescriptor) {
            mediaMetadataRetriever.setDataSource(assetFileDescriptor.getFileDescriptor(), assetFileDescriptor.getStartOffset(), assetFileDescriptor.getLength());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.c.a.x$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/x$b.class */
    public static class C1625b {
        C1625b() {
        }

        /* renamed from: a */
        public MediaMetadataRetriever m16702a() {
            return new MediaMetadataRetriever();
        }
    }

    /* renamed from: com.bumptech.glide.load.c.a.x$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/x$c.class */
    public interface AbstractC1626c<T> {
        /* renamed from: a */
        void mo16700a(MediaMetadataRetriever mediaMetadataRetriever, T t);
    }

    /* renamed from: com.bumptech.glide.load.c.a.x$d */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a/x$d.class */
    public static final class C1627d implements AbstractC1626c<ParcelFileDescriptor> {
        C1627d() {
        }

        /* renamed from: a */
        public void mo16700a(MediaMetadataRetriever mediaMetadataRetriever, ParcelFileDescriptor parcelFileDescriptor) {
            mediaMetadataRetriever.setDataSource(parcelFileDescriptor.getFileDescriptor());
        }
    }

    C1621x(AbstractC1678e abstractC1678e, AbstractC1626c<T> abstractC1626c) {
        this(abstractC1678e, abstractC1626c, f5022c);
    }

    C1621x(AbstractC1678e abstractC1678e, AbstractC1626c<T> abstractC1626c, C1625b c1625b) {
        this.f5024e = abstractC1678e;
        this.f5023d = abstractC1626c;
        this.f5025f = c1625b;
    }

    /* renamed from: a */
    private static Bitmap m16710a(MediaMetadataRetriever mediaMetadataRetriever, long j, int i) {
        return mediaMetadataRetriever.getFrameAtTime(j, i);
    }

    /* renamed from: a */
    private static Bitmap m16709a(MediaMetadataRetriever mediaMetadataRetriever, long j, int i, int i2, int i3, AbstractC1594k abstractC1594k) {
        Bitmap bitmap = null;
        if (Build.VERSION.SDK_INT >= 27) {
            bitmap = null;
            if (i2 != Integer.MIN_VALUE) {
                bitmap = null;
                if (i3 != Integer.MIN_VALUE) {
                    bitmap = null;
                    if (abstractC1594k != AbstractC1594k.f4973f) {
                        bitmap = m16707b(mediaMetadataRetriever, j, i, i2, i3, abstractC1594k);
                    }
                }
            }
        }
        Bitmap bitmap2 = bitmap;
        if (bitmap == null) {
            bitmap2 = m16710a(mediaMetadataRetriever, j, i);
        }
        return bitmap2;
    }

    /* renamed from: a */
    public static AbstractC1782i<AssetFileDescriptor, Bitmap> m16708a(AbstractC1678e abstractC1678e) {
        return new C1621x(abstractC1678e, new C1624a());
    }

    @TargetApi(27)
    /* renamed from: b */
    private static Bitmap m16707b(MediaMetadataRetriever mediaMetadataRetriever, long j, int i, int i2, int i3, AbstractC1594k abstractC1594k) {
        Bitmap bitmap;
        try {
            int parseInt = Integer.parseInt(mediaMetadataRetriever.extractMetadata(18));
            int parseInt2 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(19));
            int parseInt3 = Integer.parseInt(mediaMetadataRetriever.extractMetadata(24));
            if (parseInt3 != 90 && parseInt3 != 270) {
                parseInt2 = parseInt;
                parseInt = parseInt2;
            }
            float mo16775a = abstractC1594k.mo16775a(parseInt2, parseInt, i2, i3);
            bitmap = mediaMetadataRetriever.getScaledFrameAtTime(j, i, Math.round(parseInt2 * mo16775a), Math.round(parseInt * mo16775a));
        } catch (Throwable th) {
            if (Log.isLoggable("VideoDecoder", 3)) {
                Log.d("VideoDecoder", "Exception trying to decode frame on oreo+", th);
            }
            bitmap = null;
        }
        return bitmap;
    }

    /* renamed from: b */
    public static AbstractC1782i<ParcelFileDescriptor, Bitmap> m16706b(AbstractC1678e abstractC1678e) {
        return new C1621x(abstractC1678e, new C1627d());
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.bumptech.glide.load.AbstractC1782i
    /* renamed from: a */
    public AbstractC1771t<Bitmap> mo16319a(T t, int i, int i2, C1781h c1781h) {
        long longValue = ((Long) c1781h.m16324a(f5020a)).longValue();
        if (longValue >= 0 || longValue == -1) {
            Integer num = (Integer) c1781h.m16324a(f5021b);
            if (num == null) {
                num = 2;
            }
            AbstractC1594k abstractC1594k = (AbstractC1594k) c1781h.m16324a(AbstractC1594k.f4975h);
            if (abstractC1594k == null) {
                abstractC1594k = AbstractC1594k.f4974g;
            }
            MediaMetadataRetriever m16702a = this.f5025f.m16702a();
            try {
                try {
                    this.f5023d.mo16700a(m16702a, t);
                    Bitmap m16709a = m16709a(m16702a, longValue, num.intValue(), i, i2, abstractC1594k);
                    m16702a.release();
                    return C1583d.m16797a(m16709a, this.f5024e);
                } catch (RuntimeException e) {
                    throw new IOException(e);
                }
            } catch (Throwable th) {
                m16702a.release();
                throw th;
            }
        }
        throw new IllegalArgumentException("Requested frame must be non-negative, or DEFAULT_FRAME, given: " + longValue);
    }

    @Override // com.bumptech.glide.load.AbstractC1782i
    /* renamed from: a */
    public boolean mo16318a(T t, C1781h c1781h) {
        return true;
    }
}
