package p193e.p1451f.p1452a.p1457n.p1466q.p1467d;

import android.content.res.AssetFileDescriptor;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.ParcelFileDescriptor;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1451f.p1452a.p1457n.AbstractC22269k;
import p193e.p1451f.p1452a.p1457n.C22264h;
import p193e.p1451f.p1452a.p1457n.C22267i;
import p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22394w;
import p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.AbstractC22303d;
/* renamed from: e.f.a.n.q.d.e0 */
/* loaded from: classes-dex2jar.jar:e/f/a/n/q/d/e0.class */
public class C22491e0<T> implements AbstractC22269k<T, Bitmap> {

    /* renamed from: d */
    public static final C22264h<Long> f62360d = new C22264h<>("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.TargetFrame", -1L, new C22492a());

    /* renamed from: e */
    public static final C22264h<Integer> f62361e = new C22264h<>("com.bumptech.glide.load.resource.bitmap.VideoBitmapDecode.FrameOption", 2, new C22493b());

    /* renamed from: f */
    public static final C22495d f62362f = new C22495d();

    /* renamed from: a */
    public final AbstractC22496e<T> f62363a;

    /* renamed from: b */
    public final AbstractC22303d f62364b;

    /* renamed from: c */
    public final C22495d f62365c;

    /* renamed from: e.f.a.n.q.d.e0$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/q/d/e0$a.class */
    public class C22492a implements C22264h.AbstractC22266b<Long> {

        /* renamed from: a */
        public final ByteBuffer f62366a = ByteBuffer.allocate(8);

        @Override // p193e.p1451f.p1452a.p1457n.C22264h.AbstractC22266b
        /* renamed from: a */
        public void mo8201a(byte[] bArr, Long l, MessageDigest messageDigest) {
            Long l2 = l;
            messageDigest.update(bArr);
            synchronized (this.f62366a) {
                this.f62366a.position(0);
                messageDigest.update(this.f62366a.putLong(l2.longValue()).array());
            }
        }
    }

    /* renamed from: e.f.a.n.q.d.e0$b */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/q/d/e0$b.class */
    public class C22493b implements C22264h.AbstractC22266b<Integer> {

        /* renamed from: a */
        public final ByteBuffer f62367a = ByteBuffer.allocate(4);

        @Override // p193e.p1451f.p1452a.p1457n.C22264h.AbstractC22266b
        /* renamed from: a */
        public void mo8201a(byte[] bArr, Integer num, MessageDigest messageDigest) {
            Integer num2 = num;
            if (num2 == null) {
                return;
            }
            messageDigest.update(bArr);
            synchronized (this.f62367a) {
                this.f62367a.position(0);
                messageDigest.update(this.f62367a.putInt(num2.intValue()).array());
            }
        }
    }

    /* renamed from: e.f.a.n.q.d.e0$c */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/q/d/e0$c.class */
    public static final class C22494c implements AbstractC22496e<AssetFileDescriptor> {
        public C22494c(C22492a c22492a) {
        }

        @Override // p193e.p1451f.p1452a.p1457n.p1466q.p1467d.C22491e0.AbstractC22496e
        /* renamed from: a */
        public void mo8200a(MediaMetadataRetriever mediaMetadataRetriever, AssetFileDescriptor assetFileDescriptor) {
            AssetFileDescriptor assetFileDescriptor2 = assetFileDescriptor;
            mediaMetadataRetriever.setDataSource(assetFileDescriptor2.getFileDescriptor(), assetFileDescriptor2.getStartOffset(), assetFileDescriptor2.getLength());
        }
    }

    /* renamed from: e.f.a.n.q.d.e0$d */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/q/d/e0$d.class */
    public static class C22495d {
    }

    /* renamed from: e.f.a.n.q.d.e0$e */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/q/d/e0$e.class */
    public interface AbstractC22496e<T> {
        /* renamed from: a */
        void mo8200a(MediaMetadataRetriever mediaMetadataRetriever, T t);
    }

    /* renamed from: e.f.a.n.q.d.e0$f */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/q/d/e0$f.class */
    public static final class C22497f implements AbstractC22496e<ParcelFileDescriptor> {
        @Override // p193e.p1451f.p1452a.p1457n.p1466q.p1467d.C22491e0.AbstractC22496e
        /* renamed from: a */
        public void mo8200a(MediaMetadataRetriever mediaMetadataRetriever, ParcelFileDescriptor parcelFileDescriptor) {
            mediaMetadataRetriever.setDataSource(parcelFileDescriptor.getFileDescriptor());
        }
    }

    public C22491e0(AbstractC22303d abstractC22303d, AbstractC22496e<T> abstractC22496e) {
        C22495d c22495d = f62362f;
        this.f62364b = abstractC22303d;
        this.f62363a = abstractC22496e;
        this.f62365c = c22495d;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0053, code lost:
        if (r0 == 270) goto L15;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x009f  */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap m8202c(android.media.MediaMetadataRetriever r8, long r9, int r11, int r12, int r13, p193e.p1451f.p1452a.p1457n.p1466q.p1467d.AbstractC22505m r14) {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 27
            if (r0 < r1) goto L93
            r0 = r12
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 == r1) goto L93
            r0 = r13
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 == r1) goto L93
            r0 = r14
            e.f.a.n.q.d.m r1 = p193e.p1451f.p1452a.p1457n.p1466q.p1467d.AbstractC22505m.f62379e
            if (r0 == r1) goto L93
            r0 = r8
            r1 = 18
            java.lang.String r0 = r0.extractMetadata(r1)     // Catch: java.lang.Throwable -> L8a
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: java.lang.Throwable -> L8a
            r15 = r0
            r0 = r8
            r1 = 19
            java.lang.String r0 = r0.extractMetadata(r1)     // Catch: java.lang.Throwable -> L8a
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: java.lang.Throwable -> L8a
            r16 = r0
            r0 = r8
            r1 = 24
            java.lang.String r0 = r0.extractMetadata(r1)     // Catch: java.lang.Throwable -> L8a
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: java.lang.Throwable -> L8a
            r17 = r0
            r0 = r17
            r1 = 90
            if (r0 == r1) goto L56
            r0 = r15
            r18 = r0
            r0 = r16
            r19 = r0
            r0 = r17
            r1 = 270(0x10e, float:3.78E-43)
            if (r0 != r1) goto L5e
        L56:
            r0 = r15
            r19 = r0
            r0 = r16
            r18 = r0
        L5e:
            r0 = r14
            r1 = r18
            r2 = r19
            r3 = r12
            r4 = r13
            float r0 = r0.mo8190b(r1, r2, r3, r4)     // Catch: java.lang.Throwable -> L8a
            r20 = r0
            r0 = r8
            r1 = r9
            r2 = r11
            r3 = r18
            float r3 = (float) r3     // Catch: java.lang.Throwable -> L8a
            r4 = r20
            float r3 = r3 * r4
            int r3 = java.lang.Math.round(r3)     // Catch: java.lang.Throwable -> L8a
            r4 = r20
            r5 = r19
            float r5 = (float) r5     // Catch: java.lang.Throwable -> L8a
            float r4 = r4 * r5
            int r4 = java.lang.Math.round(r4)     // Catch: java.lang.Throwable -> L8a
            android.graphics.Bitmap r0 = r0.getScaledFrameAtTime(r1, r2, r3, r4)     // Catch: java.lang.Throwable -> L8a
            r14 = r0
            goto L96
        L8a:
            r14 = move-exception
            java.lang.String r0 = "VideoDecoder"
            r1 = 3
            boolean r0 = android.util.Log.isLoggable(r0, r1)
        L93:
            r0 = 0
            r14 = r0
        L96:
            r0 = r14
            r21 = r0
            r0 = r14
            if (r0 != 0) goto La7
            r0 = r8
            r1 = r9
            r2 = r11
            android.graphics.Bitmap r0 = r0.getFrameAtTime(r1, r2)
            r21 = r0
        La7:
            r0 = r21
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1451f.p1452a.p1457n.p1466q.p1467d.C22491e0.m8202c(android.media.MediaMetadataRetriever, long, int, int, int, e.f.a.n.q.d.m):android.graphics.Bitmap");
    }

    @Override // p193e.p1451f.p1452a.p1457n.AbstractC22269k
    /* renamed from: a */
    public boolean mo8147a(T t, C22267i c22267i) {
        return true;
    }

    @Override // p193e.p1451f.p1452a.p1457n.AbstractC22269k
    /* renamed from: b */
    public AbstractC22394w<Bitmap> mo8146b(T t, int i, int i2, C22267i c22267i) throws IOException {
        long longValue = ((Long) c22267i.m8361c(f62360d)).longValue();
        if (longValue >= 0 || longValue == -1) {
            Integer num = (Integer) c22267i.m8361c(f62361e);
            Integer num2 = num;
            if (num == null) {
                num2 = 2;
            }
            AbstractC22505m abstractC22505m = (AbstractC22505m) c22267i.m8361c(AbstractC22505m.f62381g);
            AbstractC22505m abstractC22505m2 = abstractC22505m;
            if (abstractC22505m == null) {
                abstractC22505m2 = AbstractC22505m.f62380f;
            }
            Objects.requireNonNull(this.f62365c);
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            try {
                try {
                    this.f62363a.mo8200a(mediaMetadataRetriever, t);
                    Bitmap m8202c = m8202c(mediaMetadataRetriever, longValue, num2.intValue(), i, i2, abstractC22505m2);
                    mediaMetadataRetriever.release();
                    return C22490e.m8203d(m8202c, this.f62364b);
                } catch (RuntimeException e) {
                    throw new IOException(e);
                }
            } catch (Throwable th) {
                mediaMetadataRetriever.release();
                throw th;
            }
        }
        throw new IllegalArgumentException(C22128a.m8583p2("Requested frame must be non-negative, or DEFAULT_FRAME, given: ", longValue));
    }
}
