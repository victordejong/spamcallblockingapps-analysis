package com.bumptech.glide.load.p083c.p088e;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import com.bumptech.glide.load.AbstractC1782i;
import com.bumptech.glide.load.C1665e;
import com.bumptech.glide.load.C1781h;
import com.bumptech.glide.load.EnumC1493b;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.engine.p090a.AbstractC1673b;
import com.bumptech.glide.load.engine.p090a.AbstractC1678e;
import com.bumptech.glide.load.p083c.C1628b;
import com.bumptech.glide.p069b.AbstractC1355a;
import com.bumptech.glide.p069b.C1358c;
import com.bumptech.glide.p069b.C1359d;
import com.bumptech.glide.p069b.C1360e;
import com.bumptech.glide.p077h.C1452e;
import com.bumptech.glide.p077h.C1457j;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.Queue;
/* renamed from: com.bumptech.glide.load.c.e.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/e/a.class */
public class C1639a implements AbstractC1782i<ByteBuffer, C1643c> {

    /* renamed from: a */
    private static final C1640a f5034a = new C1640a();

    /* renamed from: b */
    private static final C1641b f5035b = new C1641b();

    /* renamed from: c */
    private final Context f5036c;

    /* renamed from: d */
    private final List<ImageHeaderParser> f5037d;

    /* renamed from: e */
    private final C1641b f5038e;

    /* renamed from: f */
    private final C1640a f5039f;

    /* renamed from: g */
    private final C1642b f5040g;

    /* renamed from: com.bumptech.glide.load.c.e.a$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/e/a$a.class */
    public static class C1640a {
        C1640a() {
        }

        /* renamed from: a */
        AbstractC1355a m16672a(AbstractC1355a.AbstractC1356a abstractC1356a, C1358c c1358c, ByteBuffer byteBuffer, int i) {
            return new C1360e(abstractC1356a, c1358c, byteBuffer, i);
        }
    }

    /* renamed from: com.bumptech.glide.load.c.e.a$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/e/a$b.class */
    public static class C1641b {

        /* renamed from: a */
        private final Queue<C1359d> f5041a = C1457j.m16981a(0);

        C1641b() {
        }

        /* renamed from: a */
        C1359d m16670a(ByteBuffer byteBuffer) {
            C1359d m17347a;
            synchronized (this) {
                C1359d poll = this.f5041a.poll();
                C1359d c1359d = poll;
                if (poll == null) {
                    c1359d = new C1359d();
                }
                m17347a = c1359d.m17347a(byteBuffer);
            }
            return m17347a;
        }

        /* renamed from: a */
        void m16671a(C1359d c1359d) {
            synchronized (this) {
                c1359d.m17349a();
                this.f5041a.offer(c1359d);
            }
        }
    }

    public C1639a(Context context, List<ImageHeaderParser> list, AbstractC1678e abstractC1678e, AbstractC1673b abstractC1673b) {
        this(context, list, abstractC1678e, abstractC1673b, f5035b, f5034a);
    }

    C1639a(Context context, List<ImageHeaderParser> list, AbstractC1678e abstractC1678e, AbstractC1673b abstractC1673b, C1641b c1641b, C1640a c1640a) {
        this.f5036c = context.getApplicationContext();
        this.f5037d = list;
        this.f5039f = c1640a;
        this.f5040g = new C1642b(abstractC1678e, abstractC1673b);
        this.f5038e = c1641b;
    }

    /* renamed from: a */
    private static int m16676a(C1358c c1358c, int i, int i2) {
        int min = Math.min(c1358c.m17353a() / i2, c1358c.m17352b() / i);
        int max = Math.max(1, min == 0 ? 0 : Integer.highestOneBit(min));
        if (Log.isLoggable("BufferGifDecoder", 2) && max > 1) {
            Log.v("BufferGifDecoder", "Downsampling GIF, sampleSize: " + max + ", target dimens: [" + i + "x" + i2 + "], actual dimens: [" + c1358c.m17352b() + "x" + c1358c.m17353a() + "]");
        }
        return max;
    }

    /* renamed from: a */
    private C1646e m16675a(ByteBuffer byteBuffer, int i, int i2, C1359d c1359d, C1781h c1781h) {
        C1646e c1646e;
        long m17002a = C1452e.m17002a();
        try {
            C1358c m17346b = c1359d.m17346b();
            if (m17346b.m17351c() <= 0 || m17346b.m17350d() != 0) {
                c1646e = null;
                if (Log.isLoggable("BufferGifDecoder", 2)) {
                    Log.v("BufferGifDecoder", "Decoded GIF from stream in " + C1452e.m17001a(m17002a));
                    c1646e = null;
                }
            } else {
                Bitmap.Config config = c1781h.m16324a(C1654i.f5078a) == EnumC1493b.PREFER_RGB_565 ? Bitmap.Config.RGB_565 : Bitmap.Config.ARGB_8888;
                AbstractC1355a m16672a = this.f5039f.m16672a(this.f5040g, m17346b, byteBuffer, m16676a(m17346b, i, i2));
                m16672a.mo17328a(config);
                m16672a.mo17324b();
                Bitmap mo17316h = m16672a.mo17316h();
                if (mo17316h == null) {
                    c1646e = null;
                    if (Log.isLoggable("BufferGifDecoder", 2)) {
                        Log.v("BufferGifDecoder", "Decoded GIF from stream in " + C1452e.m17001a(m17002a));
                        c1646e = null;
                    }
                } else {
                    c1646e = new C1646e(new C1643c(this.f5036c, m16672a, C1628b.m16699a(), i, i2, mo17316h));
                    if (Log.isLoggable("BufferGifDecoder", 2)) {
                        Log.v("BufferGifDecoder", "Decoded GIF from stream in " + C1452e.m17001a(m17002a));
                    }
                }
            }
            return c1646e;
        } catch (Throwable th) {
            if (Log.isLoggable("BufferGifDecoder", 2)) {
                Log.v("BufferGifDecoder", "Decoded GIF from stream in " + C1452e.m17001a(m17002a));
            }
            throw th;
        }
    }

    /* renamed from: a */
    public C1646e mo16319a(ByteBuffer byteBuffer, int i, int i2, C1781h c1781h) {
        C1359d m16670a = this.f5038e.m16670a(byteBuffer);
        try {
            return m16675a(byteBuffer, i, i2, m16670a, c1781h);
        } finally {
            this.f5038e.m16671a(m16670a);
        }
    }

    /* renamed from: a */
    public boolean mo16318a(ByteBuffer byteBuffer, C1781h c1781h) {
        return !((Boolean) c1781h.m16324a(C1654i.f5079b)).booleanValue() && C1665e.m16610a(this.f5037d, byteBuffer) == ImageHeaderParser.ImageType.GIF;
    }
}
